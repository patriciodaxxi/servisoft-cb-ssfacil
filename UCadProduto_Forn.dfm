object frmCadProduto_Forn: TfrmCadProduto_Forn
  Left = 327
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro dos Itens'
  ClientHeight = 326
  ClientWidth = 650
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 292
    Width = 650
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 320
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 222
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 292
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label4: TLabel
      Left = 36
      Top = 54
      Width = 137
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Produto no Fornecedor:'
    end
    object Label10: TLabel
      Left = 116
      Top = 16
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fornecedor:'
    end
    object SpeedButton1: TSpeedButton
      Left = 503
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 527
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela Produtos'
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
    object Label1: TLabel
      Left = 30
      Top = 36
      Width = 143
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Produto no Fornecedor:'
    end
    object Label2: TLabel
      Left = 120
      Top = 92
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Barra:'
    end
    object Label3: TLabel
      Left = 112
      Top = 110
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Custo:'
    end
    object Label5: TLabel
      Left = 31
      Top = 165
      Width = 142
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho Fornecedor/Cliente:'
    end
    object Label6: TLabel
      Left = 66
      Top = 146
      Width = 107
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho na Empresa:'
    end
    object Label7: TLabel
      Left = 139
      Top = 183
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' FCI:'
    end
    object Label8: TLabel
      Left = 154
      Top = 72
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor:'
    end
    object Label9: TLabel
      Left = 116
      Top = 128
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Custo Total:'
    end
    object Label11: TLabel
      Left = 72
      Top = 201
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Cor Fornecedor:'
    end
    object Label12: TLabel
      Left = 36
      Top = 219
      Width = 137
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome da Cor do Fornecedor:'
    end
    object Label13: TLabel
      Left = 75
      Top = 249
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ do Fabricante:'
    end
    object Label14: TLabel
      Left = 83
      Top = 267
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Barra Pacote:'
    end
    object DBEdit2: TDBEdit
      Left = 174
      Top = 46
      Width = 216
      Height = 19
      Ctl3D = False
      DataField = 'COD_MATERIAL_FORN'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 2
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 174
      Top = 8
      Width = 329
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'ID_FORNECEDOR'
      DataSource = dmCadProduto.dsProduto_Forn
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsFornecedor
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 174
      Top = 28
      Width = 327
      Height = 19
      Ctl3D = False
      DataField = 'NOME_MATERIAL_FORN'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 174
      Top = 84
      Width = 216
      Height = 19
      Ctl3D = False
      DataField = 'COD_BARRA'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 174
      Top = 102
      Width = 216
      Height = 19
      Ctl3D = False
      DataField = 'PRECO_CUSTO'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 5
    end
    object ckTamanho: TCheckBox
      Left = 416
      Top = 158
      Width = 121
      Height = 17
      Caption = 'Gerar os Tamanhos'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBEdit5: TDBEdit
      Left = 174
      Top = 158
      Width = 107
      Height = 19
      Ctl3D = False
      DataField = 'TAMANHO_CLIENTE'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 8
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 174
      Top = 138
      Width = 107
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'TAMANHO'
      DataSource = dmCadProduto.dsProduto_Forn
      LookupField = 'TAMANHO'
      LookupDisplay = 'TAMANHO'
      LookupSource = dmCadProduto.dsProduto_Tam
      ParentCtl3D = False
      TabOrder = 7
      OnExit = RxDBLookupCombo1Exit
    end
    object DBEdit6: TDBEdit
      Left = 174
      Top = 176
      Width = 459
      Height = 19
      Ctl3D = False
      DataField = 'NUM_FCI'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 10
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 174
      Top = 64
      Width = 329
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'ID_COR'
      DataSource = dmCadProduto.dsProduto_Forn
      LookupField = 'ID_COR_COMBINACAO'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsProduto_Cor
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 174
      Top = 120
      Width = 216
      Height = 19
      Ctl3D = False
      DataField = 'PRECO_CUSTO_TOTAL'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 174
      Top = 194
      Width = 107
      Height = 19
      Ctl3D = False
      DataField = 'COD_COR_FORN'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 174
      Top = 212
      Width = 459
      Height = 19
      Ctl3D = False
      DataField = 'NOME_COR_FORN'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 174
      Top = 242
      Width = 187
      Height = 19
      Ctl3D = False
      DataField = 'CNPJ_FABRICANTE'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 13
      OnEnter = DBEdit10Enter
      OnExit = DBEdit10Exit
    end
    object DBEdit11: TDBEdit
      Left = 174
      Top = 260
      Width = 187
      Height = 19
      Ctl3D = False
      DataField = 'COD_BARRA_PACOTE'
      DataSource = dmCadProduto.dsProduto_Forn
      ParentCtl3D = False
      TabOrder = 14
    end
  end
end
