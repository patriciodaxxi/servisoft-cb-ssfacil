object fCupomFiscalPgtoMulti: TfCupomFiscalPgtoMulti
  Left = 289
  Top = 15
  Width = 703
  Height = 621
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCupomFiscalPgtoMulti'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 34
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label4: TLabel
      Left = 18
      Top = 15
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cart'#227'o:'
    end
    object ceNumCartao: TCurrencyEdit
      Left = 57
      Top = 7
      Width = 152
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnKeyDown = ceNumCartaoKeyDown
    end
    object btnInserir: TNxButton
      Left = 211
      Top = 2
      Width = 142
      Height = 30
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
      TabOrder = 1
      Transparent = True
      OnClick = btnInserirClick
    end
    object btnCancelar: TNxButton
      Left = 353
      Top = 2
      Width = 142
      Height = 30
      Hint = 'Exclui cart'#227'o selecionado'
      Caption = 'E&xcluir'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Transparent = True
      OnClick = btnCancelarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 34
    Width = 687
    Height = 127
    TabStop = False
    Align = alTop
    DataSource = dmCupomFiscal.dsmCupom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 20
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CARTAO'
        Title.Caption = 'CART'#195'O'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CUPOM'
        Width = 100
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 211
    Width = 687
    Height = 224
    TabStop = False
    Align = alClient
    DataSource = dmCupomFiscal.dsmCupomItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 20
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CARTAO'
        Title.Caption = 'CART'#195'O'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNIT'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Width = 90
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 435
    Width = 687
    Height = 106
    Align = alBottom
    Color = clSilver
    TabOrder = 4
    object Label15: TLabel
      Left = 29
      Top = 80
      Width = 93
      Height = 22
      Alignment = taRightJustify
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 35
      Top = 46
      Width = 87
      Height = 22
      Alignment = taRightJustify
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 322
      Top = 46
      Width = 136
      Height = 22
      Alignment = taRightJustify
      Caption = 'Valor Recebido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 404
      Top = 80
      Width = 54
      Height = 22
      Alignment = taRightJustify
      Caption = 'Troco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 62
      Top = 13
      Width = 60
      Height = 22
      Alignment = taRightJustify
      Caption = 'Forma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 200
      Top = 3
      Width = 428
      Height = 31
      DropDownCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOME;ID'
      LookupSource = dmCupomFiscal.dsTipoCobranca
      ParentFont = False
      TabOrder = 1
      OnChange = RxDBLookupCombo3Change
    end
    object ceDesconto: TCurrencyEdit
      Left = 128
      Top = 36
      Width = 163
      Height = 31
      AutoSize = False
      DisplayFormat = '0.00##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = ceVlrRecebidoExit
    end
    object ceVlrRecebido: TCurrencyEdit
      Left = 464
      Top = 36
      Width = 163
      Height = 31
      AutoSize = False
      DisplayFormat = '0.00##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = ceVlrRecebidoExit
      OnKeyDown = ceVlrRecebidoKeyDown
    end
    object ceVlrTotal: TCurrencyEdit
      Left = 128
      Top = 70
      Width = 163
      Height = 31
      TabStop = False
      AutoSize = False
      DisplayFormat = '0.00##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object ceVlrTroco: TCurrencyEdit
      Left = 464
      Top = 70
      Width = 163
      Height = 31
      TabStop = False
      AutoSize = False
      DisplayFormat = '0.00##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object ceFormaPgto: TCurrencyEdit
      Left = 128
      Top = 3
      Width = 70
      Height = 31
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = ceFormaPgtoEnter
      OnExit = ceFormaPgtoExit
      OnKeyDown = ceFormaPgtoKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 687
    Height = 50
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label3: TLabel
      Left = 5
      Top = 9
      Width = 51
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Qtd.'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 58
      Top = 9
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'C'#243'd. Produto'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 136
      Top = 9
      Width = 228
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nome do produto'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object btConfirmar: TNxButton
      Left = 365
      Top = 10
      Width = 160
      Height = 30
      Caption = 'Confirmar &produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
    object btCancelar: TNxButton
      Left = 525
      Top = 10
      Width = 160
      Height = 30
      Caption = 'C&ancelar produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = btCancelarClick
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 4
      Top = 23
      Width = 52
      Height = 21
      TabStop = False
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0.000##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Value = 1.000000000000000000
    end
    object Edit1: TEdit
      Left = 57
      Top = 23
      Width = 77
      Height = 21
      TabOrder = 3
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 135
      Top = 23
      Width = 229
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCupomFiscal.dsProduto
      TabOrder = 4
      OnChange = RxDBLookupCombo1Change
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 541
    Width = 687
    Height = 41
    Align = alBottom
    TabOrder = 5
    object brCancelar: TNxButton
      Left = 240
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
    object NxButton1: TNxButton
      Left = 53
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = NxButton1Click
    end
    object btGaveta: TNxButton
      Left = 427
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Gaveta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Transparent = True
    end
  end
end
