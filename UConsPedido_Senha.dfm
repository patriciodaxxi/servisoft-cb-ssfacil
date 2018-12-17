object frmConsPedido_Senha: TfrmConsPedido_Senha
  Left = 176
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsPedido_Senha'
  ClientHeight = 482
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 71
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 24
      Top = 52
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
    end
    object Label3: TLabel
      Left = 192
      Top = 52
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final:'
    end
    object Label4: TLabel
      Left = 7
      Top = 30
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Documento:'
    end
    object Label5: TLabel
      Left = 33
      Top = 10
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Doc:'
    end
    object DateEdit1: TDateEdit
      Left = 82
      Top = 44
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 244
      Top = 44
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 82
      Top = 23
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
    end
    object btnConsultar: TNxButton
      Left = 346
      Top = 37
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
    object ComboBox1: TComboBox
      Left = 82
      Top = 2
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Pedido'
      Items.Strings = (
        'Pedido'
        'Nota Fiscal'
        'Ordem de Compra')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 71
    Width = 912
    Height = 394
    Align = alClient
    Ctl3D = False
    DataSource = dsHist_Senha
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM_DOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_TIPO_HIST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SENHA_PERTENCE_AO_USUARIO'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 465
    Width = 912
    Height = 17
    Align = alBottom
    Caption = 'Duplo clique para abrir o Log'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object sdsHist_Senha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT HS.*,'#13#10'  CASE'#13#10'  WHEN HS.TIPO_DOC = '#39'NTS'#39' THEN '#39'NOTA FISC' +
      'AL'#39#13#10'  WHEN HS.TIPO_DOC = '#39'NTE'#39' THEN '#39'NOTA ENTRADA'#39#13#10'  WHEN HS.T' +
      'IPO_DOC = '#39'PED'#39' THEN '#39'PEDIDO'#39#13#10'  WHEN HS.TIPO_DOC = '#39'OC'#39' THEN '#39'O' +
      'RDEM DE COMPRA'#39#13#10'  END DESC_TIPO,'#13#10'  CASE'#13#10'  WHEN HS.TIPO_HIST =' +
      ' '#39'ATR'#39' THEN '#39'LIBERA'#199#195'O CLIENTE COM ATRASO'#39#13#10'  WHEN HS.TIPO_HIST ' +
      '= '#39'ALT'#39' THEN '#39'ALTERA'#199#195'O'#39#13#10'  WHEN HS.TIPO_HIST = '#39'EXC'#39' THEN '#39'EXCL' +
      'US'#195'O'#39#13#10'  WHEN HS.TIPO_HIST = '#39'EST'#39' THEN '#39'LIBERA'#199#195'O ESTOQUE NEGAT' +
      'IVO'#39#13#10'  WHEN HS.TIPO_HIST = '#39'LCR'#39' THEN '#39'LIMITE DE CR'#201'DITO'#39#13#10'  WH' +
      'EN HS.TIPO_HIST = '#39'CPG'#39' THEN '#39'CONDI'#199#195'O DE PAGAMENTO'#39#13#10'  END DESC' +
      '_TIPO_HIST'#13#10#13#10'FROM HIST_SENHA HS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 344
    object sdsHist_SenhaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsHist_SenhaID_DOC: TIntegerField
      FieldName = 'ID_DOC'
    end
    object sdsHist_SenhaITEM_DOC: TIntegerField
      FieldName = 'ITEM_DOC'
    end
    object sdsHist_SenhaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object sdsHist_SenhaTIPO_ARQ: TStringField
      FieldName = 'TIPO_ARQ'
      Size = 3
    end
    object sdsHist_SenhaTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object sdsHist_SenhaTIPO_HIST: TStringField
      FieldName = 'TIPO_HIST'
      Size = 3
    end
    object sdsHist_SenhaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField
      FieldName = 'SENHA_PERTENCE_AO_USUARIO'
      Size = 15
    end
    object sdsHist_SenhaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsHist_SenhaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsHist_SenhaHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsHist_SenhaDESC_TIPO: TStringField
      FieldName = 'DESC_TIPO'
      FixedChar = True
      Size = 15
    end
    object sdsHist_SenhaDESC_TIPO_HIST: TStringField
      FieldName = 'DESC_TIPO_HIST'
      FixedChar = True
      Size = 28
    end
  end
  object dspHist_Senha: TDataSetProvider
    DataSet = sdsHist_Senha
    Left = 432
    Top = 344
  end
  object cdsHist_Senha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHist_Senha'
    Left = 472
    Top = 344
    object cdsHist_SenhaID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsHist_SenhaID_DOC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Doc'
      FieldName = 'ID_DOC'
    end
    object cdsHist_SenhaITEM_DOC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item Doc'
      FieldName = 'ITEM_DOC'
    end
    object cdsHist_SenhaNUM_DOC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Documento'
      FieldName = 'NUM_DOC'
    end
    object cdsHist_SenhaTIPO_ARQ: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Arq'
      FieldName = 'TIPO_ARQ'
      Size = 3
    end
    object cdsHist_SenhaTIPO_DOC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Doc.'
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object cdsHist_SenhaTIPO_HIST: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Hist'
      FieldName = 'TIPO_HIST'
      Size = 3
    end
    object cdsHist_SenhaSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField
      DisplayLabel = 'Senha Pertence ao Usu'#225'rio'
      FieldName = 'SENHA_PERTENCE_AO_USUARIO'
      Size = 15
    end
    object cdsHist_SenhaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsHist_SenhaDATA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsHist_SenhaHORA: TTimeField
      Alignment = taCenter
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
    end
    object cdsHist_SenhaDESC_TIPO: TStringField
      DisplayLabel = 'Tipo Doc.'
      FieldName = 'DESC_TIPO'
      FixedChar = True
      Size = 15
    end
    object cdsHist_SenhaDESC_TIPO_HIST: TStringField
      DisplayLabel = 'Tipo Hist'#243'rico'
      FieldName = 'DESC_TIPO_HIST'
      FixedChar = True
      Size = 28
    end
  end
  object dsHist_Senha: TDataSource
    DataSet = cdsHist_Senha
    Left = 520
    Top = 344
  end
end
