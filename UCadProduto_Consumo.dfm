object frmCadProduto_Consumo: TfrmCadProduto_Consumo
  Left = 407
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro dos Itens'
  ClientHeight = 319
  ClientWidth = 773
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
    Top = 285
    Width = 773
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 393
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
      Left = 294
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
    Width = 773
    Height = 185
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    TabStop = True
    object Label4: TLabel
      Left = 79
      Top = 113
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Consumo:'
    end
    object Label10: TLabel
      Left = 52
      Top = 47
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia/Material:'
    end
    object SpeedButton4: TSpeedButton
      Left = 655
      Top = 37
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
      Left = 106
      Top = 70
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object Label2: TLabel
      Left = 428
      Top = 113
      Width = 140
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Por Unidade do Produto:'
    end
    object SpeedButton2: TSpeedButton
      Left = 254
      Top = 61
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 278
      Top = 61
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
      OnClick = SpeedButton3Click
    end
    object SpeedButton1: TSpeedButton
      Left = 631
      Top = 37
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Produtos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 108
      Top = 135
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Posi'#231#227'o:'
    end
    object Label5: TLabel
      Left = 78
      Top = 91
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Consumo:'
    end
    object Label12: TLabel
      Left = 410
      Top = 24
      Width = 124
      Height = 13
      Caption = 'F2 para pesquisar Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 496
      Top = 91
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Imp. no R'#243'tulo:'
    end
    object Label7: TLabel
      Left = 500
      Top = 135
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Imp. no Tal'#227'o:'
    end
    object Label8: TLabel
      Left = 121
      Top = 157
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Setor:'
    end
    object lblID: TLabel
      Left = 135
      Top = 25
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object DBEdit2: TDBEdit
      Left = 150
      Top = 105
      Width = 152
      Height = 21
      DataField = 'QTD_CONSUMO'
      DataSource = dmCadProduto.dsProduto_Consumo
      TabOrder = 5
      OnExit = DBEdit2Exit
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 303
      Top = 39
      Width = 329
      Height = 21
      DropDownCount = 8
      DataField = 'ID_MATERIAL'
      DataSource = dmCadProduto.dsProduto_Consumo
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsMaterial
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
      OnExit = RxDBLookupCombo2Exit
    end
    object DBEdit3: TDBEdit
      Left = 570
      Top = 105
      Width = 107
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'QTD_UNIDADE'
      DataSource = dmCadProduto.dsProduto_Consumo
      ReadOnly = True
      TabOrder = 9
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 150
      Top = 39
      Width = 152
      Height = 21
      DropDownCount = 8
      DataField = 'ID_MATERIAL'
      DataSource = dmCadProduto.dsProduto_Consumo
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = dmCadProduto.dsMaterial
      TabOrder = 1
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 150
      Top = 61
      Width = 104
      Height = 21
      DropDownCount = 8
      DataField = 'UNIDADE'
      DataSource = dmCadProduto.dsProduto_Consumo
      LookupField = 'UNIDADE'
      LookupDisplay = 'UNIDADE'
      LookupSource = dmCadProduto.dsUnidade
      TabOrder = 3
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 150
      Top = 127
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'ID_POSICAO'
      DataSource = dmCadProduto.dsProduto_Consumo
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsPosicao
      TabOrder = 6
      OnExit = RxDBLookupCombo4Exit
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 150
      Top = 83
      Width = 152
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO_CONSUMO'
      DataSource = dmCadProduto.dsProduto_Consumo
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Geral'
        'Tamanho')
      TabOrder = 4
      Values.Strings = (
        'G'
        'T')
      OnEnter = RxDBComboBox1Enter
      OnExit = RxDBComboBox1Exit
    end
    object RxDBComboBox2: TRxDBComboBox
      Left = 570
      Top = 83
      Width = 75
      Height = 21
      Style = csDropDownList
      DataField = 'IMP_ROTULO'
      DataSource = dmCadProduto.dsProduto_Consumo
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 8
      Values.Strings = (
        'S'
        'N')
      OnEnter = RxDBComboBox1Enter
      OnExit = RxDBComboBox1Exit
    end
    object RxDBComboBox3: TRxDBComboBox
      Left = 570
      Top = 127
      Width = 75
      Height = 21
      Style = csDropDownList
      DataField = 'IMP_TALAO'
      DataSource = dmCadProduto.dsProduto_Consumo
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 10
      Values.Strings = (
        'S'
        'N')
      OnEnter = RxDBComboBox1Enter
      OnExit = RxDBComboBox1Exit
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 150
      Top = 149
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'ID_SETOR'
      DataSource = dmCadProduto.dsProduto_Consumo
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsSetor
      TabOrder = 7
      OnExit = RxDBLookupCombo4Exit
    end
    object DBCheckBox1: TDBCheckBox
      Left = 570
      Top = 150
      Width = 97
      Height = 17
      Caption = 'Tingimento'
      DataField = 'TINGIMENTO'
      DataSource = dmCadProduto.dsProduto_Consumo
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object dbedtID: TDBEdit
      Left = 150
      Top = 17
      Width = 107
      Height = 21
      Color = clWhite
      DataField = 'ID_MATERIAL'
      DataSource = dmCadProduto.dsProduto_Consumo
      TabOrder = 0
      OnEnter = dbedtIDEnter
      OnExit = dbedtIDExit
    end
    object DBCheckBox2: TDBCheckBox
      Left = 570
      Top = 64
      Width = 183
      Height = 17
      Caption = 'Espec'#237'fico para um Cliente'
      DataField = 'ESPECIFICO'
      DataSource = dmCadProduto.dsProduto_Consumo
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object VDBGrid1: TVDBGrid
    Left = 0
    Top = 185
    Width = 773
    Height = 100
    Align = alBottom
    Color = clSilver
    Ctl3D = True
    DataSource = dmCadProduto.dsProduto_Consumo_Tam
    FixedColor = 16765606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    DefaultColWidth = 80
    TitlesWidth = 90
    Columns = <
      item
        Alignment = taCenter
        Color = 13893544
        FieldName = 'TAMANHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        PickList.Strings = (
          'ttt')
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
      end
      item
        Alignment = taCenter
        Color = clWindow
        FieldName = 'QTD_CONSUMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
      end>
  end
end
