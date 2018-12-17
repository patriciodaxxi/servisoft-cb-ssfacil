object frmCadNotaEntrada_Itens: TfrmCadNotaEntrada_Itens
  Left = 296
  Top = 74
  Width = 678
  Height = 588
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
    Height = 73
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 105
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP:'
    end
    object Label2: TLabel
      Left = 41
      Top = 34
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia Produto:'
    end
    object SpeedButton1: TSpeedButton
      Left = 554
      Top = 46
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 578
      Top = 46
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
    object SpeedButton3: TSpeedButton
      Left = 227
      Top = 3
      Width = 23
      Height = 22
      Hint = 'Abre a tela de CFOP'
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 251
      Top = 3
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
      OnClick = SpeedButton5Click
    end
    object Label10: TLabel
      Left = 21
      Top = 55
      Width = 115
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto (C'#243'digo/Nome):'
    end
    object Label12: TLabel
      Left = 314
      Top = 29
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
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 138
      Top = 4
      Width = 89
      Height = 21
      DropDownCount = 8
      DataField = 'ID_CFOP'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP'
      LookupSource = DMCadNotaFiscal.dsCFOP
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 138
      Top = 47
      Width = 87
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 2
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 226
      Top = 47
      Width = 329
      Height = 21
      DropDownCount = 15
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadNotaFiscal.dsProduto
      TabOrder = 3
      OnEnter = RxDBLookupCombo2Enter
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 138
      Top = 26
      Width = 173
      Height = 21
      DropDownCount = 8
      DropDownWidth = 550
      DataField = 'ID_PRODUTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA;NOME'
      LookupSource = DMCadNotaFiscal.dsProduto
      TabOrder = 1
      OnEnter = RxDBLookupCombo4Enter
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 523
    Width = 670
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 4
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
    Top = 125
    Width = 670
    Height = 398
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 3
    OnEnter = Panel2Enter
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
      Top = 36
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 69
      Top = 100
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = '% ICMS:'
    end
    object Label6: TLabel
      Left = 82
      Top = 123
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = '% IPI:'
    end
    object Label7: TLabel
      Left = 55
      Top = 59
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 67
      Top = 189
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label11: TLabel
      Left = 56
      Top = 79
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'CST ICMS:'
    end
    object Label13: TLabel
      Left = 49
      Top = 145
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = '% Desconto:'
    end
    object Label14: TLabel
      Left = 45
      Top = 167
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Desconto:'
    end
    object Label9: TLabel
      Left = 8
      Top = 211
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta de Or'#231'amento:'
    end
    object Label15: TLabel
      Left = 30
      Top = 233
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Centro de Custo:'
    end
    object Label16: TLabel
      Left = 17
      Top = 308
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Obs. Complementar:'
    end
    object Label17: TLabel
      Left = 26
      Top = 330
      Width = 80
      Height = 52
      Alignment = taRightJustify
      Caption = 'Esta observa'#231#227'o'#13#10'vai ser copiada '#13#10'para a Nota de'#13#10'Sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTamanho: TLabel
      Left = 228
      Top = 32
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho:'
      Visible = False
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
    object Label20: TLabel
      Left = 28
      Top = 255
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Lote Controle:'
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 27
      Width = 115
      Height = 21
      DataField = 'QTD'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 93
      Width = 115
      Height = 21
      DataField = 'PERC_ICMS'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 115
      Width = 115
      Height = 21
      DataField = 'PERC_IPI'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 112
      Top = 49
      Width = 115
      Height = 21
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 4
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 112
      Top = 181
      Width = 115
      Height = 21
      DataField = 'VLR_TOTAL'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 10
    end
    object DBCheckBox1: TDBCheckBox
      Left = 113
      Top = 279
      Width = 70
      Height = 17
      Caption = 'Estoque'
      DataField = 'GERAR_ESTOQUE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 112
      Top = 71
      Width = 115
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      DataField = 'ID_CSTICMS'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'COD_CST;PERCENTUAL'
      LookupSource = DMCadNotaFiscal.dsTab_CSTICMS
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 112
      Top = 137
      Width = 115
      Height = 21
      DataField = 'PERC_DESCONTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 8
      OnExit = DBEdit7Exit
    end
    object DBEdit8: TDBEdit
      Left = 112
      Top = 159
      Width = 115
      Height = 21
      DataField = 'VLR_DESCONTO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 9
      OnExit = DBEdit8Exit
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 112
      Top = 203
      Width = 300
      Height = 21
      DropDownCount = 8
      DropDownWidth = 550
      DataField = 'CONTA_ORCAMENTO_ID'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'DESCRICAO'
      LookupSource = DMCadNotaFiscal.dsContaOrcamento
      TabOrder = 11
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 112
      Top = 225
      Width = 300
      Height = 21
      DropDownCount = 8
      DropDownWidth = 550
      DataField = 'CENTRO_CUSTO_ID'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID'
      LookupDisplay = 'DESCRICAO'
      LookupSource = DMCadNotaFiscal.dsCentroCusto
      TabOrder = 12
    end
    object DBMemo1: TDBMemo
      Left = 113
      Top = 300
      Width = 424
      Height = 80
      Ctl3D = True
      DataField = 'OBS_COMPLEMENTAR'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      MaxLength = 100
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 15
    end
    object btnGrade: TNxButton
      Left = 226
      Top = 25
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
      TabOrder = 2
      Transparent = True
      Visible = False
      OnClick = btnGradeClick
    end
    object dblcTamanho: TRxDBLookupCombo
      Left = 278
      Top = 25
      Width = 115
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'TAMANHO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'TAMANHO'
      LookupDisplay = 'TAMANHO'
      LookupSource = DMInformar_Tam.dsProduto_Tam
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
    end
    object DBEdit9: TDBEdit
      Left = 112
      Top = 5
      Width = 115
      Height = 21
      Color = clSilver
      DataField = 'UNIDADE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
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
      ReadOnly = True
      TabOrder = 16
      Visible = False
      OnKeyDown = DBEdit9KeyDown
    end
    object DBEdit11: TDBEdit
      Left = 112
      Top = 247
      Width = 298
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUM_LOTE_CONTROLE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      TabOrder = 13
    end
    object RzGroupBox2: TRzGroupBox
      Left = 472
      Top = 61
      Width = 185
      Height = 108
      Caption = ' PIS/COFINS '
      Color = clMoneyGreen
      FlatColor = clBlack
      TabOrder = 17
      object Label21: TLabel
        Left = 38
        Top = 20
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = '% PIS:'
      end
      object Label22: TLabel
        Left = 16
        Top = 66
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = '% COFINS:'
      end
      object Label23: TLabel
        Left = 12
        Top = 88
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.COFINS:'
      end
      object Label24: TLabel
        Left = 31
        Top = 42
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. PIS:'
      end
      object DBEdit12: TDBEdit
        Left = 72
        Top = 12
        Width = 88
        Height = 21
        DataField = 'PERC_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 72
        Top = 58
        Width = 88
        Height = 21
        DataField = 'PERC_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 72
        Top = 80
        Width = 88
        Height = 21
        DataField = 'VLR_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 72
        Top = 34
        Width = 88
        Height = 21
        DataField = 'VLR_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 1
      end
    end
  end
  object pnlCombinacao: TPanel
    Left = 0
    Top = 99
    Width = 670
    Height = 26
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    object Label53: TLabel
      Left = 52
      Top = 10
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor/Combina'#231#227'o:'
    end
    object RxDBLookupCombo14: TRxDBLookupCombo
      Left = 137
      Top = 2
      Width = 457
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'ID_COR'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      LookupField = 'ID_COR_COMBINACAO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadNotaFiscal.dsCombinacao
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 73
    Width = 670
    Height = 26
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    object lblFinalidade: TLabel
      Left = 45
      Top = 10
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Finalidade Compra:'
    end
    object rxcbFinalidade: TRxDBComboBox
      Left = 138
      Top = 2
      Width = 303
      Height = 21
      Style = csDropDownList
      DataField = 'FINALIDADE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'C=Consumo'
        'R=Revenda'
        'I=Industrializa'#231#227'o'
        'O=Outros')
      TabOrder = 0
      Values.Strings = (
        'C'
        'R'
        'I'
        'O')
    end
  end
end
