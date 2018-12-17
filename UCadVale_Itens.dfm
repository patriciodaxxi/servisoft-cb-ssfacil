object frmCadVale_Itens: TfrmCadVale_Itens
  Left = 262
  Top = 185
  Width = 715
  Height = 429
  Caption = 'frmCadVale_Itens'
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 357
    Width = 699
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 350
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
      Left = 251
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 117
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object Panel5: TPanel
      Left = 1
      Top = 30
      Width = 697
      Height = 86
      Align = alClient
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Panel5Exit
      object SpeedButton1: TSpeedButton
        Left = 645
        Top = 24
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 669
        Top = 24
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
        Left = 9
        Top = 32
        Width = 134
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto (Refer'#234'ncia/Nome):'
      end
      object Label12: TLabel
        Left = 319
        Top = 7
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
      object Label13: TLabel
        Left = 89
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'ID Produto:'
      end
      object Label3: TLabel
        Left = 51
        Top = 55
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento Prod:'
      end
      object Label5: TLabel
        Left = 147
        Top = 69
        Width = 402
        Height = 13
        Caption = 
          'O campo complemento do prod, vai gravar no complemento do produt' +
          'o da nota fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 314
        Top = 25
        Width = 329
        Height = 21
        DropDownCount = 15
        DataField = 'ID_PRODUTO'
        DataSource = DmCadVale.dsValeItens
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCadVale.dsProduto
        TabOrder = 2
        OnEnter = RxDBLookupCombo2Enter
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 146
        Top = 25
        Width = 167
        Height = 21
        DropDownCount = 15
        DropDownWidth = 550
        DataField = 'ID_PRODUTO'
        DataSource = DmCadVale.dsValeItens
        LookupField = 'ID'
        LookupDisplay = 'REFERENCIA;NOME'
        LookupSource = DmCadVale.dsProduto
        TabOrder = 1
        OnEnter = RxDBLookupCombo4Enter
      end
      object DBEdit15: TDBEdit
        Left = 146
        Top = 3
        Width = 121
        Height = 21
        DataField = 'ID_PRODUTO'
        DataSource = DmCadVale.dsValeItens
        TabOrder = 0
        OnKeyDown = DBEdit15KeyDown
      end
      object DBEdit3: TDBEdit
        Left = 146
        Top = 47
        Width = 497
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO_PROD'
        DataSource = DmCadVale.dsValeItens
        TabOrder = 3
      end
    end
    object pnlCod_Barras: TPanel
      Left = 1
      Top = 1
      Width = 697
      Height = 29
      Align = alTop
      Color = clMoneyGreen
      TabOrder = 0
      object Label11: TLabel
        Left = 58
        Top = 12
        Width = 84
        Height = 13
        Caption = 'C'#243'digo de Barras:'
      end
      object Edit1: TEdit
        Left = 146
        Top = 4
        Width = 153
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 117
    Width = 699
    Height = 240
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    BackgroundColor = clGray
    Color = clGray
    UseColoredTabs = True
    FlatColor = 8421440
    ParentBackgroundColor = False
    ParentColor = False
    TabColors.Shadow = clGray
    TabIndex = 0
    TabOrder = 1
    TextColors.DisabledShadow = 8421440
    TextColors.Selected = clBlue
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Dados'
      object Label4: TLabel
        Left = 50
        Top = 14
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Quantidade:'
      end
      object Label7: TLabel
        Left = 54
        Top = 58
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Unit'#225'rio:'
      end
      object Label8: TLabel
        Left = 66
        Top = 81
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Total:'
      end
      object Label2: TLabel
        Left = 94
        Top = 203
        Width = 416
        Height = 13
        Caption = 
          'Obs: Campo "Quantidade" n'#227'o pode  ser alterado quando for item f' +
          'or retorno de material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblTamanho: TLabel
        Left = 236
        Top = 11
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho:'
        Visible = False
      end
      object Label1: TLabel
        Left = 265
        Top = 36
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. Pe'#231'a:'
      end
      object Label6: TLabel
        Left = 65
        Top = 36
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object SpeedButton6: TSpeedButton
        Left = 226
        Top = 30
        Width = 23
        Height = 20
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
        Transparent = False
      end
      object Label56: TLabel
        Left = 551
        Top = 77
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. KG:'
        Visible = False
      end
      object Label9: TLabel
        Left = 44
        Top = 103
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Ped. (OC):'
      end
      object DBEdit2: TDBEdit
        Left = 110
        Top = 6
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'QTD'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit2Exit
      end
      object DBEdit5: TDBEdit
        Left = 110
        Top = 50
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'VLR_UNITARIO'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 5
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 110
        Top = 72
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'VLR_TOTAL'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 6
      end
      object btnGrade: TNxButton
        Left = 226
        Top = 3
        Width = 142
        Height = 25
        Hint = 'Abre a tela de tamanhos'
        Caption = 'Grade'
        Color = 16752448
        Glyph.Data = {
          A2000000424DA2000000000000003E000000280000001A000000190000000100
          010000000000640000000000000000000000020000000200000000000000FFFF
          FF00BFFFFF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80B80E0180B00E0180B386
          7980BFC7F980BF87F180BF0FE180BF0FE180BF0FE180BF8FF180BF8FF980B00E
          0180B01E0180BC7F8780BE7FCF80BFFFFF80BFFFFF80BFFFFF80BFFFFF80C000
          0000FFFFFFC0}
        GlyphSpacing = 5
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Transparent = True
        Visible = False
        OnClick = btnGradeClick
      end
      object dblcTamanho: TRxDBLookupCombo
        Left = 369
        Top = 6
        Width = 115
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'TAMANHO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'TAMANHO'
        LookupDisplay = 'TAMANHO'
        LookupSource = DMInformar_Tam.dsProduto_Tam
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 318
        Top = 28
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'QTD_PECA'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit2Exit
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 110
        Top = 28
        Width = 115
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'UNIDADE'
        DataSource = DmCadVale.dsValeItens
        LookupField = 'UNIDADE'
        LookupDisplay = 'UNIDADE'
        LookupSource = DmCadVale.dsUnidade
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBCheckBox2: TDBCheckBox
        Left = 320
        Top = 71
        Width = 110
        Height = 17
        Caption = 'Gerar Estoque'
        Ctl3D = True
        DataField = 'GERAR_ESTOQUE'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit31: TDBEdit
        Left = 596
        Top = 71
        Width = 85
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'QTD_LANCAR_ESTOQUE'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 10
        Visible = False
      end
      object gbxDesconto: TRzGroupBox
        Left = 110
        Top = 121
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
        TabOrder = 8
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
          DataSource = DmCadVale.dsValeItens
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
          DataSource = DmCadVale.dsValeItens
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
          DataSource = DmCadVale.dsValeItens
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
      object DBEdit4: TDBEdit
        Left = 110
        Top = 94
        Width = 195
        Height = 21
        Ctl3D = True
        DataField = 'NUMERO_OC'
        DataSource = DmCadVale.dsValeItens
        ParentCtl3D = False
        TabOrder = 7
        OnEnter = DBEdit4Enter
      end
    end
  end
end
