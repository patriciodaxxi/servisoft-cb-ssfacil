object frmCadNotaEntrada_Itens_Ajuste: TfrmCadNotaEntrada_Itens_Ajuste
  Left = 425
  Top = 133
  Width = 678
  Height = 252
  Caption = 'Cadastro dos Itens da Nota'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 63
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label2: TLabel
      Left = 41
      Top = 18
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia Produto:'
    end
    object SpeedButton1: TSpeedButton
      Left = 554
      Top = 30
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
    end
    object SpeedButton4: TSpeedButton
      Left = 578
      Top = 30
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
    end
    object Label10: TLabel
      Left = 21
      Top = 39
      Width = 115
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto (C'#243'digo/Nome):'
    end
    object Label12: TLabel
      Left = 314
      Top = 13
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
    object DBEdit1: TDBEdit
      Left = 138
      Top = 31
      Width = 87
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 1
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 226
      Top = 31
      Width = 329
      Height = 21
      DropDownCount = 15
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadNotaFiscal.dsProduto
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 138
      Top = 10
      Width = 173
      Height = 21
      DropDownCount = 8
      DropDownWidth = 550
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA;NOME'
      LookupSource = DMCadNotaFiscal.dsProduto
      TabOrder = 0
      OnEnter = RxDBLookupCombo4Enter
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 187
    Width = 670
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 322
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
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
      Left = 246
      Top = 5
      Width = 75
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
    Top = 63
    Width = 670
    Height = 124
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 1
    object Label3: TLabel
      Left = 66
      Top = 13
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object Label4: TLabel
      Left = 51
      Top = 32
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 55
      Top = 51
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 67
      Top = 67
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label18: TLabel
      Left = 232
      Top = 9
      Width = 127
      Height = 13
      Caption = 'F2 Trocar Unidade Medida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 473
      Top = 13
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd.Unid. Conv:'
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 23
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'QTD'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 112
      Top = 41
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 112
      Top = 59
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'VLR_TOTAL'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 121
      Top = 90
      Width = 70
      Height = 17
      Caption = 'Estoque'
      DataField = 'GERAR_ESTOQUE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit9: TDBEdit
      Left = 112
      Top = 5
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'UNIDADE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = DBEdit9KeyDown
    end
    object DBEdit10: TDBEdit
      Left = 552
      Top = 5
      Width = 73
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'QTD_PACOTE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      OnKeyDown = DBEdit9KeyDown
    end
  end
end
