object fCupomFiscalImposto: TfCupomFiscalImposto
  Left = 272
  Top = 187
  Width = 698
  Height = 310
  BorderIcons = [biSystemMenu]
  Caption = 'fCupomFiscalImposto - Imposto'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 26
    Top = 49
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'd. Pis:'
  end
  object Label18: TLabel
    Left = 11
    Top = 71
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'd. Cofins:'
  end
  object Label19: TLabel
    Left = 300
    Top = 49
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label20: TLabel
    Left = 300
    Top = 71
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label21: TLabel
    Left = 449
    Top = 49
    Width = 11
    Height = 13
    Alignment = taRightJustify
    Caption = '%:'
  end
  object Label22: TLabel
    Left = 449
    Top = 71
    Width = 11
    Height = 13
    Alignment = taRightJustify
    Caption = '%:'
  end
  object Label26: TLabel
    Left = 15
    Top = 93
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'CST ICMS:'
  end
  object Label27: TLabel
    Left = 28
    Top = 115
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'CST IPI:'
  end
  object Label33: TLabel
    Left = 357
    Top = 94
    Width = 105
    Height = 13
    Alignment = taRightJustify
    Caption = '% C'#225'lculo Base ICMS:'
  end
  object Label1: TLabel
    Left = 28
    Top = 157
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = '% ICMS:'
  end
  object Label2: TLabel
    Left = 187
    Top = 157
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = '% IPI:'
  end
  object Label4: TLabel
    Left = 12
    Top = 183
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Base ICMS:'
  end
  object Label5: TLabel
    Left = 167
    Top = 181
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. ICMS:'
  end
  object Label6: TLabel
    Left = 328
    Top = 158
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Base ICMS Ret:'
  end
  object Label7: TLabel
    Left = 338
    Top = 180
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. ICMS Ret:'
  end
  object Label8: TLabel
    Left = 505
    Top = 177
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. ICMS Efet.'
  end
  object Label9: TLabel
    Left = 512
    Top = 155
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = '% ICMS Efet:'
  end
  object Label10: TLabel
    Left = 496
    Top = 133
    Width = 78
    Height = 13
    Alignment = taRightJustify
    Caption = 'Base ICMS Efet:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 238
    Width = 690
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 12
    object btConfirmar: TNxButton
      Left = 157
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
    object brCancelar: TNxButton
      Left = 344
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
  end
  object RxDBLookupCombo8: TRxDBLookupCombo
    Left = 70
    Top = 41
    Width = 225
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'CODIGO;NOME'
    LookupSource = dmCupomFiscal.dsTab_Pis
    TabOrder = 1
  end
  object RxDBLookupCombo9: TRxDBLookupCombo
    Left = 70
    Top = 63
    Width = 225
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'CODIGO;NOME'
    LookupSource = dmCupomFiscal.dsTab_Cofins
    TabOrder = 4
  end
  object RxDBLookupCombo11: TRxDBLookupCombo
    Left = 70
    Top = 85
    Width = 225
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'COD_CST;PERCENTUAL'
    LookupSource = dmCupomFiscal.dsTab_CSTICMS
    TabOrder = 7
  end
  object RxDBLookupCombo12: TRxDBLookupCombo
    Left = 70
    Top = 107
    Width = 225
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'ID'
    LookupDisplay = 'COD_IPI;NOME'
    LookupSource = dmCupomFiscal.dsTab_CSTIPI
    TabOrder = 9
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 0
    OnEnter = Panel2Enter
    OnExit = Panel2Exit
    object Label3: TLabel
      Left = 115
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP:'
    end
    object SpeedButton5: TSpeedButton
      Left = 238
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
    end
    object Label15: TLabel
      Left = 294
      Top = 11
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Varia'#231#227'o CFOP:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 148
      Top = 4
      Width = 89
      Height = 21
      DropDownCount = 15
      DataField = 'ID_CFOP'
      DataSource = dmCupomFiscal.dsCupom_Itens
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP'
      LookupSource = dmCupomFiscal.dsCFOP
      TabOrder = 0
      OnEnter = RxDBLookupCombo2Enter
      OnExit = RxDBLookupCombo2Exit
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 371
      Top = 3
      Width = 265
      Height = 21
      DropDownCount = 8
      LookupField = 'ITEM'
      LookupDisplay = 'NOME'
      LookupSource = dmCupomFiscal.dsCFOP_Variacao
      TabOrder = 1
    end
  end
  object ComboBox1: TComboBox
    Left = 328
    Top = 41
    Width = 97
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Percentual'
      'Valor')
  end
  object ComboBox2: TComboBox
    Left = 328
    Top = 64
    Width = 97
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Percentual'
      'Valor')
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 70
    Top = 149
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    TabOrder = 10
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 215
    Top = 149
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    TabOrder = 11
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 463
    Top = 41
    Width = 66
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    TabOrder = 3
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 463
    Top = 64
    Width = 66
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    TabOrder = 6
  end
  object CurrencyEdit5: TCurrencyEdit
    Left = 463
    Top = 86
    Width = 66
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    TabOrder = 8
  end
  object CurrencyEdit6: TCurrencyEdit
    Left = 70
    Top = 175
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 13
  end
  object CurrencyEdit7: TCurrencyEdit
    Left = 215
    Top = 172
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 14
  end
  object CurrencyEdit8: TCurrencyEdit
    Left = 406
    Top = 150
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 15
  end
  object CurrencyEdit9: TCurrencyEdit
    Left = 406
    Top = 171
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 16
  end
  object CurrencyEdit10: TCurrencyEdit
    Left = 575
    Top = 169
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 17
  end
  object CurrencyEdit11: TCurrencyEdit
    Left = 575
    Top = 147
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 18
  end
  object CurrencyEdit12: TCurrencyEdit
    Left = 575
    Top = 125
    Width = 81
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    DecimalPlaces = 3
    DisplayFormat = '0.00#'
    ReadOnly = True
    TabOrder = 19
  end
end
