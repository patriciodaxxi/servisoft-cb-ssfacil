object frmConsPedido_Lib: TfrmConsPedido_Lib
  Left = 131
  Top = 103
  Width = 1116
  Height = 548
  BorderIcons = [biSystemMenu]
  Caption = 'Pedidos liberados para faturamento'
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
    Width = 1100
    Height = 40
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object btnPesquisar: TNxButton
      Left = 7
      Top = 4
      Width = 153
      Height = 30
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
      TabOrder = 0
      Transparent = True
      OnClick = btnPesquisarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 40
    Width = 1100
    Height = 470
    Align = alClient
    Ctl3D = False
    DataSource = DMConsPedido.dsLiberado
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    TabOrder = 1
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 25
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido Interno'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        ReadOnly = True
        Title.Caption = 'Pedido Cliente'
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTREGA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186'  OS (Remessa)'
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clQtd_Restante'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Title.Color = clMoneyGreen
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_FATURADO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. J'#225' Faturada'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_FUT'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Enviada (N'#227'o Cobr.)'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 381
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ / CPF'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CFOP'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID CFOP'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IMP_OC_NOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Imp. N'#186' OC na Nota'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Item no Cliente'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Documento'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_TALAO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Tal'#227'o'
        Width = 48
        Visible = True
      end>
  end
end
