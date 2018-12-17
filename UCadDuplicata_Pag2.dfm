object frmCadDuplicata_Pag2: TfrmCadDuplicata_Pag2
  Left = 275
  Top = 145
  Width = 682
  Height = 494
  Caption = 'Pagamento Duplicata'
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
    Top = 421
    Width = 666
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 317
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
      Left = 219
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
    Top = 96
    Width = 666
    Height = 325
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label4: TLabel
      Left = 46
      Top = 77
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Pagamento:'
    end
    object Label7: TLabel
      Left = 75
      Top = 117
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Juros:'
    end
    object Label9: TLabel
      Left = 75
      Top = 306
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico:'
    end
    object Label13: TLabel
      Left = 38
      Top = 57
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Pagamento:'
    end
    object Label2: TLabel
      Left = 43
      Top = 157
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Despesa (+):'
    end
    object Label6: TLabel
      Left = 227
      Top = 63
      Width = 146
      Height = 26
      Caption = 'Referente a parcela (juros n'#227'o '#13#10's'#227'o inclu'#237'dos neste campo)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 54
      Top = 97
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Desconto:'
    end
    object Label20: TLabel
      Left = 227
      Top = 117
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label22: TLabel
      Left = 63
      Top = 204
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total  ==>'
      Color = 14675679
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 411
      Top = 117
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Juros Calculado:'
    end
    object Label24: TLabel
      Left = 192
      Top = 202
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Color = 14675679
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label25: TLabel
      Left = 37
      Top = 177
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Taxa Banc'#225'ria (-):'
    end
    object Label1: TLabel
      Left = 74
      Top = 137
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Multa:'
    end
    object Label26: TLabel
      Left = 481
      Top = 206
      Width = 104
      Height = 13
      Caption = 'Total de Cheques:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label28: TLabel
      Left = 512
      Top = 224
      Width = 73
      Height = 13
      Caption = 'Vlr.Cheques:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label29: TLabel
      Left = 585
      Top = 224
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label30: TLabel
      Left = 585
      Top = 206
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label31: TLabel
      Left = 525
      Top = 240
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label32: TLabel
      Left = 585
      Top = 240
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object cePagamento: TCurrencyEdit
      Left = 122
      Top = 69
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = cePagamentoEnter
      OnExit = cePagamentoExit
      OnKeyPress = cePagamentoKeyPress
    end
    object ceJuros: TCurrencyEdit
      Left = 122
      Top = 109
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 4
      OnExit = ceJurosExit
      OnKeyPress = ceJurosKeyPress
    end
    object ceDespesas: TCurrencyEdit
      Left = 122
      Top = 149
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 6
      OnExit = ceDespesasExit
      OnKeyPress = ceDespesasKeyPress
    end
    object ckCartorio: TCheckBox
      Left = 490
      Top = 150
      Width = 121
      Height = 17
      Caption = 'Pago em cart'#243'rio'
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 122
      Top = 298
      Width = 489
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 70
      TabOrder = 10
    end
    object DtPagamento: TDateEdit
      Left = 122
      Top = 49
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 1
      OnExit = DtPagamentoExit
    end
    object ceDesconto: TCurrencyEdit
      Left = 122
      Top = 89
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 3
      OnExit = ceDescontoExit
      OnKeyPress = ceDescontoKeyPress
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 664
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = Panel1Exit
      object Label3: TLabel
        Left = 88
        Top = 11
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta:'
      end
      object Label12: TLabel
        Left = 30
        Top = 31
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Forma Pagamento:'
      end
      object SpeedButton1: TSpeedButton
        Left = 379
        Top = 22
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 379
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Unidades'
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object SpeedButton6: TSpeedButton
        Left = 402
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Atualiza tabela Unidade'
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
      object SpeedButton3: TSpeedButton
        Left = 402
        Top = 22
        Width = 23
        Height = 22
        Hint = 'Atualiza tabela Unidade'
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
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 121
        Top = 3
        Width = 259
        Height = 21
        DropDownCount = 15
        Ctl3D = False
        DataField = 'ID_CONTA'
        DataSource = DMCadDuplicata.dsDuplicata
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadDuplicata.dsContas
        ParentCtl3D = False
        TabOrder = 0
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 121
        Top = 23
        Width = 259
        Height = 21
        DropDownCount = 15
        Ctl3D = False
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadDuplicata.dsTipoCobranca
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object gbxCheque: TRzGroupBox
      Left = 124
      Top = 259
      Width = 325
      Height = 37
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Cheque  Pr'#243'prio '
      Color = clMoneyGreen
      Ctl3D = True
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Visible = False
      VisualStyle = vsGradient
      OnEnter = gbxChequeEnter
      OnExit = gbxChequeExit
      object Label21: TLabel
        Left = 32
        Top = 20
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 145
        Top = 20
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bom Para:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DateEdit1: TDateEdit
        Left = 196
        Top = 13
        Width = 100
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        StartOfWeek = Sun
        TabOrder = 1
      end
      object ceNumCheque: TCurrencyEdit
        Left = 50
        Top = 13
        Width = 89
        Height = 21
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object ceJuros_Calculado: TCurrencyEdit
      Left = 490
      Top = 109
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
      OnKeyPress = ceJurosKeyPress
    end
    object ceTaxaBancaria: TCurrencyEdit
      Left = 122
      Top = 169
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 7
      OnExit = ceTaxaBancariaExit
      OnKeyPress = ceTaxaBancariaKeyPress
    end
    object ceMulta: TCurrencyEdit
      Left = 122
      Top = 129
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 5
      OnExit = ceMultaExit
      OnKeyPress = ceJurosKeyPress
    end
    object btnInformarCheque: TNxButton
      Left = 121
      Top = 225
      Width = 200
      Caption = 'Informar Cheque Terceiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnClick = btnInformarChequeClick
    end
    object btnBuscarCheque: TNxButton
      Left = 321
      Top = 225
      Width = 184
      Caption = 'Repassar Cheque de Terceiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Visible = False
      OnClick = btnBuscarChequeClick
    end
    object btnAtualizaVlr: TNxButton
      Left = 528
      Top = 256
      Width = 113
      Caption = 'Atualiza Valor Pagto.'
      TabOrder = 14
      Visible = False
      OnClick = btnAtualizaVlrClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 96
    Align = alTop
    Color = clSilver
    Enabled = False
    TabOrder = 2
    object Label5: TLabel
      Left = 33
      Top = 10
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Duplicata:'
    end
    object Label10: TLabel
      Left = 439
      Top = 10
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota/S'#233'rie:'
    end
    object Label14: TLabel
      Left = 40
      Top = 28
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o:'
    end
    object Label15: TLabel
      Left = 8
      Top = 77
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Vencimento:'
      Color = 15329769
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 255
      Top = 77
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Parcela:'
    end
    object Label17: TLabel
      Left = 431
      Top = 77
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Pendente:'
      Color = 15329769
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 47
      Top = 46
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label19: TLabel
      Left = 450
      Top = 46
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = '% Comiss'#227'o:'
    end
    object Label11: TLabel
      Left = 241
      Top = 10
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Parcela:'
    end
    object DBEdit1: TDBEdit
      Left = 99
      Top = 4
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'NUMDUPLICATA'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 510
      Top = 4
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'NUMNOTA'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 626
      Top = 4
      Width = 49
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'SERIE'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 99
      Top = 22
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'DTEMISSAO'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 99
      Top = 71
      Width = 115
      Height = 19
      Color = 15329769
      Ctl3D = False
      DataField = 'DTVENCIMENTO'
      DataSource = DMCadDuplicata.dsDuplicata
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 310
      Top = 71
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'VLR_PARCELA'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 512
      Top = 71
      Width = 115
      Height = 19
      Color = 15329769
      Ctl3D = False
      DataField = 'VLR_RESTANTE'
      DataSource = DMCadDuplicata.dsDuplicata
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 512
      Top = 40
      Width = 115
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'PERC_COMISSAO'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 99
      Top = 40
      Width = 329
      Height = 19
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 283
      Top = 4
      Width = 46
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'PARCELA'
      DataSource = DMCadDuplicata.dsDuplicata
      ParentCtl3D = False
      TabOrder = 9
    end
  end
end
