object frmCadPedido_Itens: TfrmCadPedido_Itens
  Left = 282
  Top = 27
  Width = 781
  Height = 696
  BorderIcons = [biSystemMenu]
  Caption = 'Itens do Pedido'
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
    Top = 23
    Width = 765
    Height = 108
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 106
      Top = 73
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP:'
    end
    object SpeedButton3: TSpeedButton
      Left = 266
      Top = 66
      Width = 23
      Height = 19
      Hint = 'Abre a tela de CFOP'
      Caption = '...'
      Flat = True
      Transparent = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 290
      Top = 66
      Width = 23
      Height = 20
      Hint = 'Atualiza tabela Produtos'
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
      Transparent = False
      OnClick = SpeedButton5Click
    end
    object Shape1: TShape
      Left = 633
      Top = 69
      Width = 113
      Height = 36
      Brush.Color = clMoneyGreen
    end
    object Label30: TLabel
      Left = 644
      Top = 70
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
      Left = 636
      Top = 89
      Width = 101
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
    object Label15: TLabel
      Left = 61
      Top = 93
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Varia'#231#227'o CFOP:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 139
      Top = 65
      Width = 127
      Height = 21
      DropDownCount = 15
      Ctl3D = False
      DataField = 'ID_CFOP'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP'
      LookupSource = DMCadPedido.dsCFOP
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object pnlTipo1: TPanel
      Left = 1
      Top = 1
      Width = 763
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = pnlTipo1Exit
      object Label2: TLabel
        Left = 2
        Top = 29
        Width = 134
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto (Refer'#234'ncia/Nome):'
      end
      object SpeedButton1: TSpeedButton
        Left = 674
        Top = 20
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 698
        Top = 20
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
        Left = 314
        Top = 6
        Width = 182
        Height = 13
        Caption = 'F2 para pesquisar Produto     F3 Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 82
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'ID Produto:'
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 138
        Top = 21
        Width = 173
        Height = 21
        DropDownCount = 15
        DropDownWidth = 550
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'REFERENCIA;NOME'
        LookupSource = DMCadPedido.dsProduto
        ParentCtl3D = False
        TabOrder = 2
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo4Enter
        OnKeyDown = RxDBLookupCombo4KeyDown
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 312
        Top = 21
        Width = 361
        Height = 21
        DropDownCount = 15
        DropDownWidth = 600
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        ListStyle = lsDelimited
        LookupField = 'ID'
        LookupDisplay = 'NOME;UNIDADE'
        LookupSource = DMCadPedido.dsProduto
        ParentCtl3D = False
        TabOrder = 3
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo2Enter
        OnKeyDown = RxDBLookupCombo2KeyDown
      end
      object DBEdit15: TDBEdit
        Left = 138
        Top = 3
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit15Exit
        OnKeyDown = DBEdit15KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 138
        Top = 21
        Width = 154
        Height = 21
        AutoSize = False
        Ctl3D = False
        DataField = 'REFERENCIA'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyDown = DBEdit2KeyDown
      end
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 139
      Top = 85
      Width = 265
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'ID_VARIACAO'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ITEM'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsCFOP_Variacao
      ParentCtl3D = False
      TabOrder = 3
    end
    object pnlNomeProduto: TPanel
      Left = 1
      Top = 43
      Width = 763
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 1
      object Label22: TLabel
        Left = 103
        Top = 7
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
      end
      object DBEdit5: TDBEdit
        Left = 138
        Top = -1
        Width = 534
        Height = 19
        Ctl3D = False
        DataField = 'NOMEPRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit5Exit
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 623
    Width = 765
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 6
    object BitBtn4: TBitBtn
      Left = 365
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
      Left = 266
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F7) &Confirmar'
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
    Top = 217
    Width = 765
    Height = 406
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 5
    OnEnter = Panel2Enter
    object Label4: TLabel
      Left = 52
      Top = 11
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 56
      Top = 29
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 68
      Top = 87
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label13: TLabel
      Left = 53
      Top = 49
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Entrega:'
    end
    object Label10: TLabel
      Left = 37
      Top = 105
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'OS / Remessa:'
    end
    object lblTamanho: TLabel
      Left = 229
      Top = 11
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho:'
      Visible = False
    end
    object Label25: TLabel
      Left = 69
      Top = 123
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Carimbo:'
    end
    object Label26: TLabel
      Left = 44
      Top = 69
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Produ'#231#227'o:'
    end
    object Label28: TLabel
      Left = 378
      Top = 105
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Lote/Tal'#227'o:'
    end
    object Label33: TLabel
      Left = 68
      Top = 161
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Terceiro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 43
      Top = 179
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'OBS Etiqueta:'
    end
    object Label23: TLabel
      Left = 67
      Top = 141
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Caixinha:'
    end
    object dbedtQtd: TDBEdit
      Left = 111
      Top = 5
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = dbedtQtdEnter
      OnExit = dbedtQtdExit
    end
    object DBDateEdit1: TDBDateEdit
      Left = 111
      Top = 41
      Width = 115
      Height = 21
      DataField = 'DTENTREGA'
      DataSource = DMCadPedido.dsPedido_Itens
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
      StartOfWeek = Sun
      OnExit = DBDateEdit1Exit
    end
    object DBEdit1: TDBEdit
      Left = 111
      Top = 99
      Width = 226
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMOS'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 7
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 259
      Width = 763
      Height = 146
      ActivePage = TabSheet1
      ActivePageDefault = TabSheet1
      Align = alBottom
      TabIndex = 0
      TabOrder = 12
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
          Height = 107
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
        object Label11: TLabel
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
      object TS_Atelier: TRzTabSheet
        Color = clMoneyGreen
        Caption = 'Atelier'
        object gbxAtelier: TRzGroupBox
          Left = 24
          Top = 3
          Width = 689
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Dados Atelier '
          Color = clSilver
          Ctl3D = True
          FlatColor = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          VisualStyle = vsGradient
          object pnlVendedor: TPanel
            Left = 5
            Top = 18
            Width = 679
            Height = 82
            Align = alClient
            BevelOuter = bvNone
            Color = clMoneyGreen
            TabOrder = 0
            object Label16: TLabel
              Left = 46
              Top = 14
              Width = 32
              Height = 13
              Alignment = taRightJustify
              Caption = 'Atelier:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton7: TSpeedButton
              Left = 397
              Top = 5
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Atelier'
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
              OnClick = SpeedButton7Click
            end
            object Label17: TLabel
              Left = 24
              Top = 34
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr.Unit'#225'rio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton8: TSpeedButton
              Left = 373
              Top = 5
              Width = 23
              Height = 22
              Hint = 'Abre a tela de Unidades'
              Caption = '...'
              OnClick = SpeedButton8Click
            end
            object Label18: TLabel
              Left = 34
              Top = 52
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = 'Dt.Envio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 239
              Top = 52
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Dt.Retorno:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDBLookupCombo5: TRxDBLookupCombo
              Left = 81
              Top = 6
              Width = 291
              Height = 21
              DropDownCount = 15
              DropDownWidth = 500
              Ctl3D = False
              DataField = 'ID_ATELIER'
              DataSource = DMCadPedido.dsPedido_Itens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'CODIGO'
              LookupDisplay = 'NOME'
              LookupSource = DMCadPedido.dsAtelier
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 81
              Top = 26
              Width = 100
              Height = 19
              Ctl3D = False
              DataField = 'VLR_UNITARIO_ATELIER'
              DataSource = DMCadPedido.dsPedido_Itens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBDateEdit2: TDBDateEdit
              Left = 81
              Top = 44
              Width = 100
              Height = 21
              DataField = 'DT_ENVIO_ATELIER'
              DataSource = DMCadPedido.dsPedido_Itens
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              NumGlyphs = 2
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              StartOfWeek = Sun
            end
            object DBDateEdit3: TDBDateEdit
              Left = 297
              Top = 44
              Width = 99
              Height = 21
              DataField = 'DT_RETORNO_ATELIER'
              DataSource = DMCadPedido.dsPedido_Itens
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              NumGlyphs = 2
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              StartOfWeek = Sun
            end
          end
        end
      end
      object TS_Servico: TRzTabSheet
        Color = clMoneyGreen
        Caption = 'Servi'#231'o / Descri'#231#227'o'
        object Label37: TLabel
          Left = 24
          Top = 8
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o Item:'
        end
        object Label38: TLabel
          Left = 11
          Top = 27
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' OS Servi'#231'o Int:'
        end
        object Label39: TLabel
          Left = 23
          Top = 87
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Servi'#231'o Interno:'
        end
        object Label40: TLabel
          Left = 22
          Top = 67
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Servi'#231'o Padr'#227'o:'
        end
        object Label41: TLabel
          Left = 322
          Top = 27
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' OC/OP/Rem:'
        end
        object Label44: TLabel
          Left = 57
          Top = 44
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Nota:'
        end
        object Label45: TLabel
          Left = 218
          Top = 44
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie:'
        end
        object DBEdit16: TDBEdit
          Left = 101
          Top = 2
          Width = 558
          Height = 19
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NOMEPRODUTO'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 101
          Top = 20
          Width = 116
          Height = 19
          AutoSize = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NUM_OS_SERV'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 101
          Top = 80
          Width = 558
          Height = 21
          DropDownCount = 15
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'ID_SERVICO_INT'
          DataSource = DMCadPedido.dsPedido_Itens
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadPedido.dsServico_Int
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 101
          Top = 60
          Width = 558
          Height = 21
          DropDownCount = 15
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'ID_SERVICO'
          DataSource = DMCadPedido.dsPedido_Itens
          LookupField = 'ID'
          LookupDisplay = 'NOME_SERVICO'
          LookupSource = DMCadPedido.dsServico
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 405
          Top = 20
          Width = 116
          Height = 19
          AutoSize = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NUMOS'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 101
          Top = 100
          Width = 558
          Height = 19
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NOMEPRODUTO'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 101
          Top = 38
          Width = 116
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NUM_NOTA_ENT'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 248
          Top = 38
          Width = 49
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'SERIE_NOTA_ENT'
          DataSource = DMCadPedido.dsPedido_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    object btnTab_Preco: TBitBtn
      Left = 450
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Tab. Pre'#231'o'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      TabStop = False
      OnClick = btnTab_PrecoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF3F3F00202020000000FFFFFFFFFFFFFFFFFF000000000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F005F5F00BFBFBFB0B0B000
        0000FFFFFF0000003FBFBF60DFDF303030CFCFCFC0C0C0303030FFFFFFFFFFFF
        3F3F009F9F00505030B0B0B0BFBFBF4040402020200000006FEFEF6FEFEF6060
        60DFDFDFCFCFCF606060FFFFFF3F3F009F9F0080BF6060DF60205F004040007F
        7F00606060202020003F3F306F6F303030CFCFCFCFCFCF3030300000009F9F00
        70AF3060DF6060DF6050CF3050CF3050CF309F9F00606060202020FFFFFFFFFF
        FF000000000000FFFFFFFFFFFF0000009F9F0040BF0050CF3060DF6080BF6070
        AF3040BF009F9F00606060202020FFFFFF000000000000FFFFFF0000009F9F00
        7070309F9F0040BF0050CF3040BF0040BF0080800050CF309F9F006060602020
        20606060CFCFCF000000FFFFFF3F3F007FBF00508F309F9F0040BF0080800060
        9F0040BF0060DF6050CF309F9F00606060505050606060000000FFFFFFFFFFFF
        3F3F007FBF00407F009F9F0040BF00609F0080BF6080BF6060DF6070AF307FBF
        00606060202020FFFFFFFFFFFFFFFFFFFFFFFF3F3F007FBF00609F609F9F0040
        BF0050CF3060DF6080BF6050CF309F9F005F5F20202020FFFFFFFFFFFFFFFFFF
        0000000000003F3F007FBF00609F609F9F0040BF0060DF6080BF609F9F003F3F
        00606060FFFFFFFFFFFFFFFFFF003F3F6FEFEF3FBFBF0000003F3F007FBF0050
        8F309F9F0040BF009F9F005F5F009F9F005F5F20404040FFFFFFFFFFFF306F6F
        6FEFEF6FEFEF000000FFFFFF3F3F007FBF00407F009F9F005F5F008080009F9F
        00404040FFFFFFFFFFFFFFFFFF000000306F6F003F3F000000000000FFFFFF3F
        3F007FBF008080608080009F9F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF606060CFCFCF000000FFFFFF3F3F007FBF009F9F00404040FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF303030606060000000FF
        FFFFFFFFFF3F3F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnGrade: TNxButton
      Left = 226
      Top = 5
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
    object gbxVendedor: TRzGroupBox
      Left = 560
      Top = 1
      Width = 204
      Height = 258
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
      TabOrder = 14
      VisualStyle = vsGradient
      object Label5: TLabel
        Left = 20
        Top = 52
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = '% ICMS:'
      end
      object Label6: TLabel
        Left = 33
        Top = 70
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = '% IPI:'
      end
      object Label27: TLabel
        Left = 20
        Top = 119
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'NCM:'
      end
      object SpeedButton11: TSpeedButton
        Left = 149
        Top = 110
        Width = 18
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        Flat = True
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 169
        Top = 110
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
      object Label29: TLabel
        Left = 12
        Top = 223
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Item do Cliente:'
      end
      object Label3: TLabel
        Left = 17
        Top = 14
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object SpeedButton13: TSpeedButton
        Left = 147
        Top = 7
        Width = 19
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        Flat = True
        OnClick = SpeedButton13Click
      end
      object SpeedButton6: TSpeedButton
        Left = 167
        Top = 7
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
        OnClick = SpeedButton6Click
      end
      object Label32: TLabel
        Left = 26
        Top = 240
        Width = 59
        Height = 13
        Caption = '% Comiss'#227'o:'
      end
      object Label46: TLabel
        Left = 12
        Top = 32
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Und.Prod:'
      end
      object Label47: TLabel
        Left = 124
        Top = 32
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conv:'
      end
      object DBEdit3: TDBEdit
        Left = 61
        Top = 46
        Width = 85
        Height = 19
        Color = clSilver
        DataField = 'PERC_ICMS'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 61
        Top = 64
        Width = 85
        Height = 19
        Color = clSilver
        DataField = 'PERC_IPI'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 3
        OnExit = DBEdit4Exit
      end
      object BitBtn3: TBitBtn
        Left = 48
        Top = 85
        Width = 114
        Height = 25
        Caption = 'Impos&tos / Descontos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OnClick = BitBtn3Click
      end
      object DBCheckBox1: TDBCheckBox
        Left = 28
        Top = 135
        Width = 110
        Height = 17
        Caption = 'Gerar Lote/Tal'#227'o'
        DataField = 'GERAR_LOTE'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 48
        Top = 111
        Width = 99
        Height = 21
        DropDownCount = 8
        Color = clSilver
        DataField = 'ID_NCM'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'NCM'
        LookupSource = DMCadPedido.dsTab_NCM
        TabOrder = 5
        TabStop = False
      end
      object DBEdit12: TDBEdit
        Left = 89
        Top = 216
        Width = 82
        Height = 19
        DataField = 'ITEM_CLIENTE'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 7
      end
      object DBEdit23: TDBEdit
        Left = 61
        Top = 10
        Width = 85
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'UNIDADE'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = DBEdit23Enter
        OnExit = DBEdit23Exit
        OnKeyDown = DBEdit23KeyDown
      end
      object DBCheckBox2: TDBCheckBox
        Left = 28
        Top = 150
        Width = 110
        Height = 17
        Caption = 'Gerar Estoque'
        Ctl3D = True
        DataField = 'GERAR_ESTOQUE'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit13: TDBEdit
        Left = 89
        Top = 234
        Width = 82
        Height = 19
        DataField = 'PERC_COMISSAO'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 9
      end
      object DBCheckBox3: TDBCheckBox
        Left = 28
        Top = 166
        Width = 153
        Height = 17
        Caption = 'Somar IPI na Base do ICMS'
        Ctl3D = True
        DataField = 'CALCULARICMSSOBREIPI'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit21: TDBEdit
        Left = 61
        Top = 28
        Width = 51
        Height = 19
        Hint = 'Unidade de produ'#231#227'o'
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'UNIDADE_PROD'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        OnKeyDown = DBEdit21KeyDown
      end
      object DBEdit22: TDBEdit
        Left = 154
        Top = 28
        Width = 46
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'CONV_UNIDADE'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
      end
      object dbckDiferenca_ICMS: TDBCheckBox
        Left = 29
        Top = 183
        Width = 166
        Height = 16
        TabStop = False
        Caption = 'Calcular Diferencial ICMS'
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'DIFERENCA_ICMS'
        DataSource = DMCadPedido.dsPedido_Itens
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Visible = False
      end
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
    object DBEdit9: TDBEdit
      Left = 111
      Top = 117
      Width = 435
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CARIMBO'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBDateEdit4: TDBDateEdit
      Left = 111
      Top = 61
      Width = 115
      Height = 21
      DataField = 'DTPRODUCAO'
      DataSource = DMCadPedido.dsPedido_Itens
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
      StartOfWeek = Sun
    end
    object DBEdit11: TDBEdit
      Left = 452
      Top = 99
      Width = 94
      Height = 19
      Ctl3D = False
      DataField = 'NUM_TALAO'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 8
    end
    object RxDBLookupCombo9: TRxDBLookupCombo
      Left = 111
      Top = 153
      Width = 435
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      Ctl3D = False
      DataField = 'ID_ATELIER'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsAtelier
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object gbxDesconto: TRzGroupBox
      Left = 362
      Top = 33
      Width = 187
      Height = 61
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
        Left = 44
        Top = 30
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.'
      end
      object Label35: TLabel
        Left = 56
        Top = 13
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = '%:'
      end
      object Label36: TLabel
        Left = 11
        Top = 47
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. do Item:'
      end
      object dbedtVlrDesc: TDBEdit
        Left = 69
        Top = 24
        Width = 92
        Height = 19
        AutoSize = False
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
        OnExit = dbedtVlrDescExit
      end
      object dbedtPercDesc: TDBEdit
        Left = 69
        Top = 7
        Width = 92
        Height = 19
        AutoSize = False
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
        Top = 41
        Width = 92
        Height = 18
        AutoSize = False
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
    object dbrdgEncerado: TDBRadioGroup
      Left = 112
      Top = 193
      Width = 131
      Height = 65
      DataField = 'ENCERADO'
      DataSource = DMCadPedido.dsPedido_Itens
      Items.Strings = (
        'Encerado'
        'Engomado'
        'Nenhum')
      TabOrder = 15
      Values.Strings = (
        'S'
        'G'
        'N')
    end
    object DBEdit24: TDBEdit
      Left = 111
      Top = 173
      Width = 435
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'OBS_ETIQUETA'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 16
    end
    object dbedtVlrTotal: TDBEdit
      Left = 111
      Top = 81
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 17
    end
    object dbedtVlrUnitario: TDBEdit
      Left = 111
      Top = 23
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 3
      OnExit = dbedtVlrUnitarioExit
    end
    object btnProdCliente: TNxButton
      Left = 247
      Top = 198
      Width = 131
      Height = 25
      Caption = 'Produto Cliente'
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
      TabOrder = 18
      Transparent = True
      OnClick = btnProdClienteClick
    end
    object DBEdit6: TDBEdit
      Left = 111
      Top = 135
      Width = 435
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CAIXINHA'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 10
    end
  end
  object pnlCod_Barras: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 23
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label20: TLabel
      Left = 52
      Top = 8
      Width = 84
      Height = 13
      Caption = 'C'#243'digo de Barras:'
    end
    object Label42: TLabel
      Left = 324
      Top = 8
      Width = 75
      Height = 13
      Caption = 'C'#243'd. do Cliente:'
    end
    object Label43: TLabel
      Left = 565
      Top = 4
      Width = 162
      Height = 13
      Caption = 'Informe o c'#243'd.e pressione ENTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 140
      Top = 2
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 401
      Top = 2
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = Edit2KeyDown
    end
  end
  object pnlMaterial: TPanel
    Left = 0
    Top = 131
    Width = 765
    Height = 29
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    object btnDigMaterial: TNxButton
      Left = 243
      Top = 2
      Width = 147
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
    object btnServico: TNxButton
      Left = 111
      Top = 2
      Width = 127
      Height = 25
      Caption = 'Servi'#231'o/Descri'#231#227'o'
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
      OnClick = btnServicoClick
    end
  end
  object pnlTipoOrcamento: TPanel
    Left = 0
    Top = 160
    Width = 765
    Height = 30
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 3
    object NxButton1: TNxButton
      Left = 111
      Top = 3
      Width = 127
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
      Left = 242
      Top = 3
      Width = 148
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
      Left = 394
      Top = 3
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
  object pnlCor: TPanel
    Left = 0
    Top = 190
    Width = 765
    Height = 27
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 4
    object Label31: TLabel
      Left = 27
      Top = 11
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor/Combina'#231#227'o:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 112
      Top = 3
      Width = 457
      Height = 21
      DropDownCount = 15
      Ctl3D = False
      DataField = 'ID_COR'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'ID_COR_COMBINACAO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsCombinacao
      ParentCtl3D = False
      TabOrder = 0
    end
  end
end
