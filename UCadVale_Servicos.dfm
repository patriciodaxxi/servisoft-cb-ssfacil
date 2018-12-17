object frmCadVale_Servicos: TfrmCadVale_Servicos
  Left = 253
  Top = 115
  Width = 601
  Height = 310
  Caption = 'frmCadVale_Servicos'
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
  object Panel2: TPanel
    Left = 0
    Top = 238
    Width = 585
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 293
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
      Left = 194
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 104
    Width = 585
    Height = 134
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
    TabOrder = 0
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
      object Label6: TLabel
        Left = 65
        Top = 36
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
      end
      object DBEdit2: TDBEdit
        Left = 110
        Top = 6
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'QTD'
        DataSource = DmCadVale.dsValeServico
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
        DataSource = DmCadVale.dsValeServico
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 110
        Top = 72
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'VLR_TOTAL'
        DataSource = DmCadVale.dsValeServico
        ParentCtl3D = False
        TabOrder = 3
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 110
        Top = 28
        Width = 115
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'UNIDADE'
        DataSource = DmCadVale.dsValeServico
        LookupField = 'UNIDADE'
        LookupDisplay = 'UNIDADE'
        LookupSource = DmCadVale.dsUnidade
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 104
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    OnExit = Panel5Exit
    object SpeedButton1: TSpeedButton
      Left = 522
      Top = 31
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 546
      Top = 31
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela Servi'#231'os'
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
      OnClick = SpeedButton2Click
    end
    object Label13: TLabel
      Left = 90
      Top = 17
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID Servi'#231'o:'
    end
    object Label3: TLabel
      Left = 37
      Top = 63
      Width = 106
      Height = 13
      Alignment = taRightJustify
      Caption = 'Complemento Servi'#231'o:'
    end
    object Label1: TLabel
      Left = 104
      Top = 40
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Servi'#231'o:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 146
      Top = 32
      Width = 374
      Height = 21
      DropDownCount = 15
      DataField = 'ID_SERVICO_INT'
      DataSource = DmCadVale.dsValeServico
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCadVale.dsServico_Int
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DBEdit1: TDBEdit
      Left = 146
      Top = 9
      Width = 121
      Height = 21
      DataField = 'ID_SERVICO_INT'
      DataSource = DmCadVale.dsValeServico
      TabOrder = 0
      OnKeyDown = DBEdit1KeyDown
    end
    object DBEdit3: TDBEdit
      Left = 146
      Top = 55
      Width = 423
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO_SERVICO'
      DataSource = DmCadVale.dsValeServico
      TabOrder = 2
    end
  end
end
