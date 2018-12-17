object frmCadPedidoLoja_Frete: TfrmCadPedidoLoja_Frete
  Left = 277
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedidoLoja_Frete'
  ClientHeight = 215
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 549
    Height = 30
    Align = alBottom
    TabOrder = 1
    object btnAlterar_Itens: TNxButton
      Left = 420
      Top = 3
      Width = 108
      Height = 24
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnAlterar_ItensClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 185
    Align = alClient
    TabOrder = 0
    object Label70: TLabel
      Left = 16
      Top = 158
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Atendimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 11
      Top = 12
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Frete:'
    end
    object Label71: TLabel
      Left = 164
      Top = 12
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = '% Icms Frete:'
    end
    object Label2: TLabel
      Left = 349
      Top = 12
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.M'#227'o de Obra'
    end
    object RxDBComboBox2: TRxDBComboBox
      Left = 105
      Top = 150
      Width = 332
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO_ATENDIMENTO'
      DataSource = DMCadPedido.dsPedido
      EnableValues = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Opera'#231#227'o presencial'
        'NFC-e em opera'#231#227'o com entrega em domic'#237'lio')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '1'
        '4')
      OnChange = RxDBComboBox2Change
    end
    object btnDadosCupom: TBitBtn
      Left = 446
      Top = 146
      Width = 83
      Height = 25
      Caption = 'Dados Cupom'
      TabOrder = 1
      OnClick = btnDadosCupomClick
    end
    object gbxTransportes: TRzGroupBox
      Left = 3
      Top = 35
      Width = 526
      Height = 107
      BorderColor = clBlue
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Transporte '
      Ctl3D = True
      FlatColor = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GradientColorStyle = gcsCustom
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      VisualStyle = vsGradient
      object pnlTransporte: TPanel
        Left = 5
        Top = 18
        Width = 516
        Height = 84
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label84: TLabel
          Left = 10
          Top = 8
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 52
          Top = 29
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 4
          Top = 50
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Transportadora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 433
          Top = 40
          Width = 23
          Height = 22
          Hint = 'Atualiza tabela de transportadora'
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
        object Label36: TLabel
          Left = 24
          Top = 72
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 268
          Top = 72
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDBComboBox3: TRxDBComboBox
          Left = 82
          Top = 0
          Width = 199
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'LOCALENTREGA'
          DataSource = DMCadPedido.dsPedido
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Endere'#231'o Cadastro'
            'Endere'#231'o de Entrega')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'N'
            'E')
        end
        object RxDBComboBox6: TRxDBComboBox
          Left = 82
          Top = 21
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO_FRETE'
          DataSource = DMCadPedido.dsPedido
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
            'Terceiros'
            'Sem Frete')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '9')
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 82
          Top = 42
          Width = 351
          Height = 21
          DropDownCount = 15
          DataField = 'ID_TRANSPORTADORA'
          DataSource = DMCadPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadPedido.dsTransportadora
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit29: TDBEdit
          Left = 82
          Top = 64
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESOBRUTO'
          DataSource = DMCadPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit30: TDBEdit
          Left = 335
          Top = 64
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESOLIQUIDO'
          DataSource = DMCadPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 5
        end
        object DBCheckBox2: TDBCheckBox
          Left = 291
          Top = 25
          Width = 164
          Height = 14
          Caption = 'Somar frete no total do pedido'
          DataField = 'FRETE_SOMAR'
          DataSource = DMCadPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object DBEdit14: TDBEdit
      Left = 57
      Top = 4
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'VLR_FRETE'
      DataSource = DMCadPedido.dsPedido
      TabOrder = 3
    end
    object DBEdit22: TDBEdit
      Left = 228
      Top = 4
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'PERC_ICMS_FRETE'
      DataSource = DMCadPedido.dsPedido
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 429
      Top = 4
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VLR_MAO_OBRA'
      DataSource = DMCadPedido.dsPedido
      TabOrder = 5
    end
  end
end
