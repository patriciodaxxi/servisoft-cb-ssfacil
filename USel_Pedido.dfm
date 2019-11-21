object frmSel_Pedido: TfrmSel_Pedido
  Left = 118
  Top = 27
  Width = 1116
  Height = 664
  BorderIcons = [biSystemMenu]
  Caption = 'Selecionar os Pedidos'
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
  object Splitter1: TSplitter
    Left = 888
    Top = 52
    Width = 8
    Height = 462
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 52
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Shape1: TShape
      Left = 464
      Top = 2
      Width = 28
      Height = 15
      Brush.Color = clRed
    end
    object Label1: TLabel
      Left = 494
      Top = 4
      Width = 410
      Height = 13
      Caption = 
        'Selecionado e n'#227'o informada a qtd. a faturar ('#201' obrigat'#243'rio info' +
        'rmar a qtde. para copiar)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 464
      Top = 18
      Width = 28
      Height = 15
      Brush.Color = clGreen
    end
    object Label2: TLabel
      Left = 494
      Top = 20
      Width = 118
      Height = 13
      Caption = 'Item copiado para a nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 50
      Top = 32
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object Shape3: TShape
      Left = 656
      Top = 18
      Width = 28
      Height = 15
      Brush.Color = clSilver
    end
    object Label4: TLabel
      Left = 686
      Top = 20
      Width = 191
      Height = 13
      Caption = 'Item copiado para a nota Sem Cobran'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 896
      Top = 19
      Width = 28
      Height = 15
      Brush.Color = clYellow
    end
    object Label6: TLabel
      Left = 926
      Top = 21
      Width = 169
      Height = 13
      Caption = 'Produto n'#227'o copiado, falta erstoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 14
      Top = 14
      Width = 71
      Height = 13
      Caption = 'Pedido Cliente:'
    end
    object Shape5: TShape
      Left = 464
      Top = 34
      Width = 28
      Height = 15
      Brush.Color = 9812223
    end
    object Label9: TLabel
      Left = 494
      Top = 36
      Width = 139
      Height = 13
      Caption = 'Item esta no Pr'#233' Faturamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape11: TShape
      Left = 656
      Top = 34
      Width = 28
      Height = 15
      Brush.Color = 33023
    end
    object Label68: TLabel
      Left = 688
      Top = 37
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
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 86
      Top = 24
      Width = 121
      Height = 21
      DropDownCount = 15
      DropDownWidth = 300
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME'
      LookupSource = DMCadNotaFiscal.dsCFOP
      ParentCtl3D = False
      TabOrder = 1
    end
    object btnPesquisar: TNxButton
      Left = 273
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
      TabOrder = 2
      Transparent = True
      OnClick = btnPesquisarClick
    end
    object edtPedido: TEdit
      Left = 86
      Top = 6
      Width = 185
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = edtPedidoKeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 52
    Width = 888
    Height = 462
    Align = alClient
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsPedido
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ColCount = 35
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_CONSUMIDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Consumidor'
        Width = 190
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido Interno'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        ReadOnly = True
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        ReadOnly = True
        Width = 28
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM_ORIGINAL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item Agrupamento'
        Width = 72
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
        Expanded = False
        FieldName = 'NUMOS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186'  OS (Remessa)'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_GRUPO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DOC'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Documento'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_TALAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Tal'#227'o'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        ReadOnly = True
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTREGA'
        ReadOnly = True
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clQtd_NaoLiberada'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. N'#227'o Liberada'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clQtd_Restante'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Color = clMoneyGreen
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_AFATURAR'
        Title.Alignment = taCenter
        Title.Color = clYellow
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FATURADO'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FUT'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Enviada (N'#227'o Cobr.)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_OS_SERVICO'
        Title.Alignment = taRightJustify
        Title.Caption = 'N'#186' OS Servi'#231'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO_OS'
        Title.Alignment = taCenter
        Title.Caption = 'Data OS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTRECEBIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Recebimento OS'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DT_AGENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Previs'#227'o Final OS'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COR'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor / Combina'#231#227'o'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        ReadOnly = True
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        ReadOnly = True
        Width = 381
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        ReadOnly = True
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        ReadOnly = True
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CFOP'
        ReadOnly = True
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IMP_OC_NOTA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Imp. N'#186' OC na Nota'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Caption = 'ID'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        ReadOnly = True
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM_CLIENTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item no Cliente'
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 596
    Width = 1108
    Height = 37
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object Label5: TLabel
      Left = 496
      Top = 8
      Width = 252
      Height = 13
      Caption = 'Duplo Clique on Enter para Informar os lotes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 248
      Top = 8
      Width = 208
      Height = 13
      Caption = 'F2 para consultar Estoque por LOTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnImportar: TNxButton
      Left = 5
      Top = 3
      Width = 214
      Height = 30
      Caption = 'Copiar Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F0DCCFBAB697669E712A97681C9767
        1C9F7029B99664DCCEB9F7F4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE1D5B7996C9D7334B08B4FD7C7A6
        E6DBC5E5D5BAE1D4B9E1D9C6D4C6A8AF8A4F9D7233B8986CE8E0D2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF9CEBA97A07C41C5AC85D3
        B783BE923C9A5B008F4B008F50008C4C00844600895100AC863AC8AE82C3AA84
        A47B3FCDB791FCFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF9C0A577A783
        48E2CFA8B9821BA46400A56600A87104A77205A47104A26F02A16E019C6A0091
        5A008B53009D6F1ADAC8AAA78548C0A274FCFAF7FFFFFFFFFFFFFFFFFFFFFFFF
        D1B998A58047EBDDBDAA5C00AF7100B17709AE7609AA7307A87006A56F06A26D
        03A06C039F6A029D6A029A6701945D00814100DDD3B9A88348CFB891FFFFFFFF
        FFFFFFFFFFE9E1D5A07B42E6D3A7B06200BA7E09B87B0DB3780AB07707AE7509
        AC7307A97205A67006A26D03A16D039F6B029D69019B6901996700814100D8C7
        ABA37C3EE8DFD1FFFFFFFFFFFFB5976CC8AE84CC901DBA7700BB7F0FB77B0AB6
        7A0AB2780BB07708AE7508AC7307A97107A66E05A36E03A16C039D69019C6800
        996800945E009D701BC5A985B6966AFFFFFFF7F5F1986F32E6C484BD7600C081
        0FBD7E0BB87700B87A06B67909B2780BB07709AE7608AB7407A87105A56E05A3
        6C029E68019A62009A67009A68008C5300CBB0839B7032F8F3EFDCCFBAB18C53
        E2B055C17C03C0810EBD7807D0A657C6953DB16E00B67A0BB3780BB07707AD75
        08AC7406A871039D6100B08436BA96549760029A6700915A00AD863DAE8B52DC
        CDB4B39564E5D4AFD28F1ACC8F24C78513D9B47AFEFFFFECDDBFC08A2CB47200
        B67A0BB2790BB07609AD7406A46700AF7D29E4D6BBFFFFFFC8AE889A63089B67
        008A5200D6C5A5B59560996D28FFF8DECF8E1AD39B39CF9126EDDBBAFDFCFAFE
        FCF6EDDFC3C28C31B37000B77B0AB27708A96800B4822CE8DBC1FFFFFFFFFFFF
        EAE2C89D65139F6A00864700E4D9C69C6E27936116FFFFE7D49A31DAA44CD49A
        39CF9633E8CFA2F9F1E8FDFBF6EADBBBC18C2EB27000AF6C00B88327E6D7BAFF
        FFFFFFFFFFE3D1B1AB771C9F6800A36F038B4E00E5D7BC966316926114FFFFF1
        DAA244DEAD5BDAA64FD29936D39C3EE7CCA0F9F3E9FBF5ECE7D5B0C18A31BE86
        2BE6D2AFFCFAF9FFFFFFE2D0AAB07D1FA36800A66D04A371048E4F00E7D8BB96
        6517996A23FFFFF6E2AC53E2B56ADEAF5EDAA751D49E3DD39F43E7CDA0FBF5F2
        F7EDE0EAD6B3E8D6B3F7F2E4FFFFFFE2D0ABB4801EA96D00AB7205A97105A772
        058F4C00E8DDC59B7028B49460E9DDC3F0C57BE6BD77E2B86EDFB263DCAD59D5
        A145D19E41E6CA9CF9F2EDF8EDE0F8EFE3FDFFFFE2CAA4B77D16AF7000B07608
        AE7507AB7407AA70039B5C00D9CAA7B59562DBCEB7B1905AFFF0C7E8BF7CE7C1
        7FE3BB73E1B56ADEB060D5A248D3A147E7CFA4F8EFE6F9F3EDE4CCA0BD7F15B2
        7000B77C0CB4790BB07607AE7608A46700C0943DAE8A4FDBCEB7F7F3F0986C2A
        FFF6DEEFCC8FEAC88DE7C382E4BD79E3B76FDEB367D8A650D8A855EBD4ACE8CF
        A2C48A20B97200BA7A09B97D0CB87B0DB5780AB17608A46500D6BA849B6F32F7
        F5F1FFFFFFB49364CDB796FFEEC8EDCC96EBCA91E8C688E7BF7EE4BB76DFB46A
        D9AA59DCAD5ED5A652CA932FC48A20BF8112BA7A08B87806B57807AE6E00B984
        1BC5AC85B7956BFFFFFFFFFFFFEBE4D89B7130F7EDE0F8DDAAEECF9DECCD95EA
        C78CE7C282E3BD78DFB66DDDAF61D8A857D5A452D09F45CA9737C68F2CC18821
        BC8115AA6300E3D1ACA1783DEAE2D5FFFFFFFFFFFFFFFFFFD0BE9E9B712CFEFC
        F8FBE1B4EED2A1EDCE9DECCB95E8C789E5C17FE2BB77DEB46DDAB063D6A958D3
        A34FCF9D44C7912FBA7901F3E7CEA27D41CFBA98FFFFFFFFFFFFFFFFFFFFFFFF
        FEFDFCC2A77D987029F6EEE1FFF7DAF4DAACEDCD9AE9CC97E8C990E6C488E3BE
        7EE0B975DAB065D2A24CD39F46DDB060ECDEBFA17A3CBFA77BFCFBFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFCFCD1BD9E9A6E2CCAB693FFFCECFFFFECF8DEB2
        ECC98EE7C17FE4B975E1B569E6BE75F5DAA8F2DDB5C8AF899E7434D0BB99FDFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5D9B4926497
        6925AE8950E6D9C3FFFFFFFFFFFFFFFFFFFFFFF5E2D3B7AE884E976B2AB49466
        EBE4D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF8F6F3DBD1BAB394619B6B249360119361119A6E24B49562DC
        CFBBF7F5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnImportarClick
    end
    object Memo1: TMemo
      Left = 816
      Top = 3
      Width = 277
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object SMDBGrid6: TSMDBGrid
    Left = 0
    Top = 531
    Width = 1108
    Height = 65
    Align = alBottom
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsPedido_Tipo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
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
    ColCount = 16
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
        Title.Caption = '# (mm)'
        Title.Color = 16764831
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTURA'
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
  object SMDBGrid2: TSMDBGrid
    Left = 896
    Top = 52
    Width = 212
    Height = 462
    TabStop = False
    Align = alRight
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsmLoteConrole
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Title.Color = 16777166
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Lote_Controle'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lote'
        Title.Color = 16777166
        Width = 107
        Visible = True
      end>
  end
  object pgbItens: TProgressBar
    Left = 0
    Top = 514
    Width = 1108
    Height = 17
    Align = alBottom
    TabOrder = 5
  end
end
