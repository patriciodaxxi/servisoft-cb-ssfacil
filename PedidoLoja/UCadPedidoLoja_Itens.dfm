object frmCadPedidoLoja_Itens: TfrmCadPedidoLoja_Itens
  Left = 246
  Top = 28
  Width = 781
  Height = 696
  BorderIcons = [biSystemMenu]
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
    Height = 89
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object Shape1: TShape
      Left = 633
      Top = 45
      Width = 113
      Height = 36
      Brush.Color = clMoneyGreen
    end
    object Label30: TLabel
      Left = 644
      Top = 46
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
      Top = 65
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
        TabOrder = 1
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
        TabOrder = 2
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
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 624
    Width = 765
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 3
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
    Top = 112
    Width = 765
    Height = 512
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 2
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
      Top = 67
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
    object Label32: TLabel
      Left = 50
      Top = 96
      Width = 59
      Height = 13
      Caption = '% Comiss'#227'o:'
    end
    object DBEdit2: TDBEdit
      Left = 111
      Top = 5
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 111
      Top = 23
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 1
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 111
      Top = 61
      Width = 115
      Height = 19
      Ctl3D = False
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
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
      TabOrder = 2
      StartOfWeek = Sun
      OnExit = DBDateEdit1Exit
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 365
      Width = 763
      Height = 146
      ActivePage = TabSheet1
      ActivePageDefault = TabSheet1
      Align = alBottom
      TabIndex = 0
      TabOrder = 5
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
    end
    object gbxVendedor: TRzGroupBox
      Left = 397
      Top = 129
      Width = 233
      Height = 152
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
      TabOrder = 6
      VisualStyle = vsGradient
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
        TabOrder = 2
      end
    end
    object gbxDesconto: TRzGroupBox
      Left = 282
      Top = 9
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
      TabOrder = 4
      TabStop = True
      VisualStyle = vsGradient
      object Label34: TLabel
        Left = 52
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
        OnEnter = dbedtVlrDescEnter
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
    object DBEdit13: TDBEdit
      Left = 113
      Top = 90
      Width = 82
      Height = 19
      Ctl3D = False
      DataField = 'PERC_COMISSAO'
      DataSource = DMCadPedido.dsPedido_Itens
      ParentCtl3D = False
      TabOrder = 7
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
  end
end
