object frmCadOrcamento_Itens: TfrmCadOrcamento_Itens
  Left = 294
  Top = 53
  Width = 755
  Height = 624
  Caption = 'Cadastro dos Itens dos Or'#231'amentos'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 159
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object Shape1: TShape
      Left = 609
      Top = 112
      Width = 113
      Height = 36
      Brush.Color = clMoneyGreen
    end
    object Label30: TLabel
      Left = 628
      Top = 115
      Width = 86
      Height = 16
      Caption = 'Qtd.Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEstoque: TLabel
      Left = 620
      Top = 132
      Width = 95
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 105
      Top = 121
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP:'
    end
    object SpeedButton3: TSpeedButton
      Left = 266
      Top = 114
      Width = 23
      Height = 21
      Hint = 'Abre a tela de CFOP'
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 290
      Top = 114
      Width = 23
      Height = 21
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
      OnClick = SpeedButton5Click
    end
    object Label16: TLabel
      Left = 61
      Top = 143
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Varia'#231#227'o CFOP:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 139
      Top = 113
      Width = 127
      Height = 21
      DropDownCount = 15
      DataField = 'ID_CFOP'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP'
      LookupSource = DMCadPedido.dsCFOP
      TabOrder = 3
      OnExit = RxDBLookupCombo1Exit
    end
    object pnlTipo2: TPanel
      Left = 1
      Top = 60
      Width = 745
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 2
      object Label2: TLabel
        Left = 96
        Top = 9
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto:'
      end
      object SpeedButton1: TSpeedButton
        Left = 606
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 630
        Top = 0
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
      object Label12: TLabel
        Left = 370
        Top = 22
        Width = 124
        Height = 13
        Caption = 'F2 para pesquisar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 99
        Top = 28
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Modelo:'
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 242
        Top = 1
        Width = 363
        Height = 21
        DropDownCount = 15
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsProduto
        TabOrder = 1
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo8Enter
        OnExit = RxDBLookupCombo8Exit
        OnKeyDown = RxDBLookupCombo8KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 138
        Top = 23
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'REFERENCIA'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 138
        Top = 1
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 0
        OnExit = DBEdit10Exit
        OnKeyDown = DBEdit10KeyDown
      end
    end
    object pnlTipo1: TPanel
      Left = 1
      Top = 1
      Width = 745
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = pnlTipo1Exit
      object Label5: TLabel
        Left = 2
        Top = 24
        Width = 134
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto (Refer'#234'ncia/Nome):'
      end
      object SpeedButton7: TSpeedButton
        Left = 674
        Top = 15
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton8: TSpeedButton
        Left = 698
        Top = 15
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
      object Label10: TLabel
        Left = 314
        Top = 0
        Width = 124
        Height = 13
        Caption = 'F2 para pesquisar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 310
        Top = 16
        Width = 363
        Height = 21
        DropDownCount = 15
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsProduto
        TabOrder = 1
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo8Enter
        OnKeyDown = RxDBLookupCombo5KeyDown
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 138
        Top = 16
        Width = 171
        Height = 21
        DropDownCount = 15
        DropDownWidth = 550
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'REFERENCIA;NOME'
        LookupSource = DMCadPedido.dsProduto
        TabOrder = 0
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo4Enter
        OnKeyDown = RxDBLookupCombo4KeyDown
      end
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 139
      Top = 135
      Width = 265
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'ID_VARIACAO'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ITEM'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsCFOP_Variacao
      ParentCtl3D = False
      TabOrder = 4
    end
    object Panel4: TPanel
      Left = 1
      Top = 39
      Width = 745
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 1
      object Label19: TLabel
        Left = 105
        Top = 8
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
      end
      object DBEdit1: TDBEdit
        Left = 139
        Top = 0
        Width = 534
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEPRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 559
    Width = 747
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 4
    object BitBtn4: TBitBtn
      Left = 377
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
      Left = 278
      Top = 5
      Width = 93
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
    Top = 223
    Width = 747
    Height = 336
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 3
    OnEnter = Panel2Enter
    object Label4: TLabel
      Left = 51
      Top = 13
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 55
      Top = 36
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 67
      Top = 82
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label13: TLabel
      Left = 52
      Top = 59
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Entrega:'
    end
    object lblTamanho: TLabel
      Left = 229
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho:'
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 110
      Top = 5
      Width = 115
      Height = 21
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 0
      OnExit = DBEdit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 110
      Top = 28
      Width = 115
      Height = 21
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 3
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 110
      Top = 74
      Width = 115
      Height = 21
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 5
    end
    object DBDateEdit1: TDBDateEdit
      Left = 110
      Top = 51
      Width = 115
      Height = 21
      DataField = 'DTENTREGA'
      DataSource = DMCadPedido.dsPedido_Itens
      NumGlyphs = 2
      TabOrder = 4
      StartOfWeek = Sun
    end
    object btnGrade: TNxButton
      Left = 226
      Top = 4
      Width = 142
      Height = 25
      Hint = 'Abre a tela de tamanhos'
      Caption = 'Grade'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        A2000000424DA2000000000000003E000000280000001A000000190000000100
        010000000000640000000000000000000000020000000200000000000000FFFF
        FF00BFFFFF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80B80E0180B00E0180B386
        7980BFC7F980BF87F180BF0FE180BF0FE180BF0FE180BF8FF180BF8FF980B00E
        0180B01E0180BC7F8780BE7FCF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80C000
        0000FFFFFFC0}
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      Visible = False
      OnClick = btnGradeClick
    end
    object dblcTamanho: TRxDBLookupCombo
      Left = 278
      Top = 6
      Width = 115
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'TAMANHO'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'TAMANHO'
      LookupDisplay = 'TAMANHO'
      LookupSource = DMInformar_Tam.dsProduto_Tam
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 171
      Width = 745
      Height = 164
      ActivePage = TabSheet1
      ActivePageDefault = TabSheet1
      Align = alBottom
      TabIndex = 0
      TabOrder = 7
      OnChange = RzPageControl1Change
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = clMoneyGreen
        Caption = 'Obs. do Item do Pedido'
        object Label14: TLabel
          Left = 28
          Top = 10
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs.:'
        end
        object DBMemo2: TDBMemo
          Left = 54
          Top = 3
          Width = 597
          Height = 141
          DataField = 'OBS'
          DataSource = DMCadPedido.dsPedido_Itens
          MaxLength = 250
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet2: TRzTabSheet
        Color = clMoneyGreen
        Caption = 'Obs. Complementar (Nota Fiscal)'
        object Label9: TLabel
          Left = 14
          Top = 34
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs. Complementar:'
        end
        object Label15: TLabel
          Left = 112
          Top = 16
          Width = 237
          Height = 13
          Caption = 'Esta observa'#231#227'o vai imprimir no item da nota fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 110
          Top = 30
          Width = 420
          Height = 73
          DataField = 'OBS_COMPLEMENTAR'
          DataSource = DMCadPedido.dsPedido_Itens
          MaxLength = 250
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TS_Foto: TRzTabSheet
        Color = clMoneyGreen
        Caption = 'Foto'
        object Label17: TLabel
          Left = 8
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Endere'#231'o da Foto:'
        end
        object Image1: TImage
          Left = 520
          Top = 8
          Width = 169
          Height = 128
          Stretch = True
        end
        object DBEdit19: TDBEdit
          Left = 6
          Top = 21
          Width = 440
          Height = 21
          DataField = 'END_FOTO'
          DataSource = DMCadPedido.dsPedido_Itens
          TabOrder = 0
        end
        object BitBtn20: TBitBtn
          Left = 449
          Top = 19
          Width = 25
          Height = 23
          Hint = 'Abre o caminho p/ localizar a foto'
          TabOrder = 1
          OnClick = BitBtn20Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
        end
      end
    end
    object gbxVendedor: TRzGroupBox
      Left = 559
      Top = 1
      Width = 187
      Height = 170
      Align = alRight
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Color = clMoneyGreen
      Ctl3D = False
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      VisualStyle = vsGradient
      object Label20: TLabel
        Left = 3
        Top = 40
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = '% ICMS:'
      end
      object Label21: TLabel
        Left = 16
        Top = 58
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = '% IPI:'
      end
      object Label27: TLabel
        Left = 16
        Top = 105
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'NCM:'
      end
      object SpeedButton11: TSpeedButton
        Left = 145
        Top = 96
        Width = 18
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        Flat = True
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 165
        Top = 96
        Width = 19
        Height = 22
        Hint = 'Atualiza tabela Unidade'
        Flat = True
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
        OnClick = SpeedButton12Click
      end
      object Label6: TLabel
        Left = 3
        Top = 22
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object SpeedButton9: TSpeedButton
        Left = 140
        Top = 13
        Width = 19
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        Flat = True
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 160
        Top = 13
        Width = 19
        Height = 22
        Hint = 'Atualiza tabela Unidade'
        Flat = True
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
        OnClick = SpeedButton10Click
      end
      object Label32: TLabel
        Left = 14
        Top = 147
        Width = 59
        Height = 13
        Caption = '% Comiss'#227'o:'
      end
      object DBEdit3: TDBEdit
        Left = 47
        Top = 34
        Width = 90
        Height = 19
        Color = clSilver
        DataField = 'PERC_ICMS'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 47
        Top = 52
        Width = 90
        Height = 19
        Color = clSilver
        DataField = 'PERC_IPI'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 45
        Top = 73
        Width = 114
        Height = 25
        Caption = 'Impos&tos / Descontos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = False
        OnClick = BitBtn3Click
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 47
        Top = 97
        Width = 97
        Height = 21
        DropDownCount = 8
        Color = clSilver
        DataField = 'ID_NCM'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'NCM'
        LookupSource = DMCadPedido.dsTab_NCM
        TabOrder = 4
        TabStop = False
      end
      object DBEdit23: TDBEdit
        Left = 47
        Top = 16
        Width = 90
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'UNIDADE'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = DBEdit23KeyDown
      end
      object DBEdit13: TDBEdit
        Left = 75
        Top = 141
        Width = 82
        Height = 19
        DataField = 'PERC_COMISSAO'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 5
      end
      object DBCheckBox3: TDBCheckBox
        Left = 26
        Top = 122
        Width = 153
        Height = 17
        Caption = 'Somar IPI na Base do ICMS'
        Ctl3D = True
        DataField = 'CALCULARICMSSOBREIPI'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object gbxDesconto: TRzGroupBox
      Left = 307
      Top = 33
      Width = 187
      Height = 72
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Desconto '
      Color = clMoneyGreen
      Ctl3D = False
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      TabStop = True
      VisualStyle = vsGradient
      object Label34: TLabel
        Left = 52
        Top = 37
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.'
      end
      object Label3: TLabel
        Left = 56
        Top = 19
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = '%:'
      end
      object Label18: TLabel
        Left = 11
        Top = 55
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. do Item:'
      end
      object dbedtVlrDesc: TDBEdit
        Left = 69
        Top = 31
        Width = 92
        Height = 19
        Ctl3D = False
        DataField = 'VLR_DESCONTO'
        DataSource = DMCadPedido.dsPedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = dbedtVlrDescEnter
        OnExit = dbedtVlrDescExit
      end
      object dbedtPercDesc: TDBEdit
        Left = 69
        Top = 13
        Width = 92
        Height = 19
        Ctl3D = False
        DataField = 'PERC_DESCONTO'
        DataSource = DMCadPedido.dsPedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = dbedtPercDescExit
      end
      object dbedtVlrProd: TDBEdit
        Left = 69
        Top = 49
        Width = 92
        Height = 19
        Ctl3D = False
        DataField = 'VLR_TOTAL'
        DataSource = DMCadPedido.dsPedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnEnter = dbedtVlrProdEnter
        OnExit = dbedtVlrProdExit
      end
    end
  end
  object pnlMaterial: TPanel
    Left = 0
    Top = 159
    Width = 747
    Height = 32
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    object btnDigMaterial: TNxButton
      Left = 110
      Top = 4
      Width = 139
      Height = 25
      Caption = 'Informar Material'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = btnDigMaterialClick
    end
  end
  object pnlTipoOrcamento: TPanel
    Left = 0
    Top = 191
    Width = 747
    Height = 32
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    object NxButton1: TNxButton
      Left = 111
      Top = 4
      Width = 129
      Height = 25
      Caption = 'Chapa'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 244
      Top = 4
      Width = 131
      Height = 25
      Caption = 'Redondo'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 377
      Top = 4
      Width = 131
      Height = 25
      Caption = 'Tubos'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Transparent = True
      OnClick = NxButton3Click
    end
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Filter = 
      'PCX Image (*.pcx)|*.pcx|JPG Image (*.JPG)|*.JPG|BMP Image (*.BMP' +
      ')|*.BMP|JPG Image (*.JPeg)|*.JPeg'
    InitialDir = 'C:\'
    Left = 556
    Top = 173
  end
end
