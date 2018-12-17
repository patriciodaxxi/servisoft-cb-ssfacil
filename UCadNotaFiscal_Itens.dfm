object frmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens
  Left = 273
  Top = 75
  Width = 800
  Height = 640
  BorderIcons = [biSystemMenu]
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 575
    Width = 792
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 374
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
      Left = 275
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
    Width = 792
    Height = 172
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object pnlCFOP: TPanel
      Left = 1
      Top = 116
      Width = 790
      Height = 29
      Align = alBottom
      Color = clMoneyGreen
      TabOrder = 2
      OnEnter = pnlCFOPEnter
      OnExit = pnlCFOPExit
      object Label1: TLabel
        Left = 115
        Top = 12
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'CFOP:'
      end
      object SpeedButton3: TSpeedButton
        Left = 238
        Top = 3
        Width = 23
        Height = 22
        Hint = 'Abre a tela de CFOP'
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object SpeedButton5: TSpeedButton
        Left = 262
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
      object Label15: TLabel
        Left = 294
        Top = 11
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Varia'#231#227'o CFOP:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 148
        Top = 4
        Width = 89
        Height = 21
        DropDownCount = 15
        DataField = 'ID_CFOP'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'CODCFOP'
        LookupSource = DMCadNotaFiscal.dsCFOP
        TabOrder = 0
        OnChange = RxDBLookupCombo1Change
        OnEnter = RxDBLookupCombo1Enter
        OnExit = RxDBLookupCombo1Exit
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 371
        Top = 3
        Width = 265
        Height = 21
        DropDownCount = 8
        DataField = 'ID_VARIACAO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ITEM'
        LookupDisplay = 'NOME'
        LookupSource = DMCadNotaFiscal.dsCFOP_Variacao
        TabOrder = 1
        OnExit = RxDBLookupCombo6Exit
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 26
      Width = 790
      Height = 90
      Align = alClient
      Color = clMoneyGreen
      TabOrder = 1
      OnEnter = Panel5Enter
      OnExit = Panel5Exit
      object Shape1: TShape
        Left = 608
        Top = 54
        Width = 113
        Height = 36
        Brush.Color = clMoneyGreen
      end
      object SpeedButton1: TSpeedButton
        Left = 647
        Top = 24
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 671
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
        Left = 10
        Top = 32
        Width = 134
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto (Refer'#234'ncia/Nome):'
      end
      object lblOperacao: TLabel
        Left = 94
        Top = 55
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Opera'#231#227'o:'
      end
      object Label12: TLabel
        Left = 322
        Top = 7
        Width = 173
        Height = 13
        Caption = 'F2 para pesquisar Produto  F3 Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFinalidade: TLabel
        Left = 39
        Top = 75
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = 'Finalidade Comprador:'
      end
      object Label30: TLabel
        Left = 628
        Top = 57
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
        Left = 616
        Top = 74
        Width = 94
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
      object Label13: TLabel
        Left = 90
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'ID Produto:'
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 319
        Top = 25
        Width = 329
        Height = 21
        DropDownCount = 15
        DataField = 'ID_PRODUTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        ListStyle = lsDelimited
        LookupField = 'ID'
        LookupDisplay = 'NOME;UNIDADE'
        LookupSource = DMCadNotaFiscal.dsProduto
        TabOrder = 2
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo2Enter
        OnKeyDown = RxDBLookupCombo2KeyDown
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 147
        Top = 25
        Width = 173
        Height = 21
        DropDownCount = 15
        DropDownWidth = 550
        DataField = 'ID_PRODUTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'REFERENCIA;NOME'
        LookupSource = DMCadNotaFiscal.dsProduto
        TabOrder = 1
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo4Enter
        OnKeyDown = RxDBLookupCombo4KeyDown
      end
      object rxdbOperacao: TRxDBLookupCombo
        Left = 147
        Top = 47
        Width = 359
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_OPERACAO_NOTA'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadNotaFiscal.dsOperacao_Nota
        TabOrder = 3
        OnChange = rxdbOperacaoChange
      end
      object rxcbFinalidade: TRxDBComboBox
        Left = 147
        Top = 69
        Width = 173
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
        TabOrder = 4
        Values.Strings = (
          'C'
          'R'
          'I'
          'O')
      end
      object DBEdit15: TDBEdit
        Left = 147
        Top = 3
        Width = 121
        Height = 21
        DataField = 'ID_PRODUTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 0
        OnExit = DBEdit15Exit
        OnKeyDown = DBEdit15KeyDown
      end
    end
    object pnlCod_Barras: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 25
      Align = alTop
      Color = clMoneyGreen
      TabOrder = 0
      object Label11: TLabel
        Left = 59
        Top = 10
        Width = 84
        Height = 13
        Caption = 'C'#243'digo de Barras:'
      end
      object Edit1: TEdit
        Left = 147
        Top = 2
        Width = 153
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
    end
    object pnlCor: TPanel
      Left = 1
      Top = 145
      Width = 790
      Height = 26
      Align = alBottom
      Color = clMoneyGreen
      TabOrder = 3
      object Label53: TLabel
        Left = 62
        Top = 10
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cor/Combina'#231#227'o:'
      end
      object RxDBLookupCombo14: TRxDBLookupCombo
        Left = 147
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
        OnEnter = RxDBLookupCombo14Enter
        OnExit = RxDBLookupCombo14Exit
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 172
    Width = 792
    Height = 403
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
      object Panel6: TPanel
        Left = 0
        Top = 22
        Width = 788
        Height = 358
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clMoneyGreen
        TabOrder = 1
        object Label4: TLabel
          Left = 74
          Top = 9
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade:'
        end
        object Label5: TLabel
          Left = 92
          Top = 53
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS:'
        end
        object Label6: TLabel
          Left = 105
          Top = 75
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = '% IPI:'
        end
        object Label7: TLabel
          Left = 78
          Top = 31
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Unit'#225'rio:'
        end
        object Label8: TLabel
          Left = 90
          Top = 97
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object Label9: TLabel
          Left = 37
          Top = 119
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs. Complementar:'
        end
        object Label2: TLabel
          Left = 6
          Top = 321
          Width = 306
          Height = 26
          Caption = 
            'obs: Campo "Quantidade" n'#227'o pode  ser alterado quando o item '#13#10'f' +
            'or o retorno de material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblTamanho: TLabel
          Left = 251
          Top = 8
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tamanho:'
          Visible = False
        end
        object Label39: TLabel
          Left = 99
          Top = 228
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' OC:'
        end
        object Label40: TLabel
          Left = 315
          Top = 228
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' OS/Remessa:'
        end
        object Label42: TLabel
          Left = 7
          Top = 272
          Width = 125
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' FCI (Ficha Importa'#231#227'o):'
          Visible = False
        end
        object Label43: TLabel
          Left = 47
          Top = 294
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = '% Usado na Prod:'
          Visible = False
        end
        object Label57: TLabel
          Left = 51
          Top = 250
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Lote Controle:'
          Visible = False
        end
        object Label64: TLabel
          Left = 323
          Top = 250
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Lote Cliente:'
        end
        object DBEdit2: TDBEdit
          Left = 133
          Top = 1
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'QTD'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
        end
        object DBEdit3: TDBEdit
          Left = 133
          Top = 45
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'PERC_ICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 133
          Top = 67
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'PERC_IPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 5
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 133
          Top = 23
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'VLR_UNITARIO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 3
          OnExit = DBEdit5Exit
        end
        object DBEdit6: TDBEdit
          Left = 133
          Top = 89
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'VLR_TOTAL'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBMemo1: TDBMemo
          Left = 133
          Top = 111
          Width = 379
          Height = 107
          Ctl3D = True
          DataField = 'OBS_COMPLEMENTAR'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          MaxLength = 250
          ParentCtl3D = False
          ScrollBars = ssVertical
          TabOrder = 7
          OnKeyPress = DBMemo1KeyPress
        end
        object gbxVendedor: TRzGroupBox
          Left = 551
          Top = 3
          Width = 222
          Height = 349
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Dados cadastrais do produto '
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
          VisualStyle = vsGradient
          OnExit = gbxVendedorExit
          object Label3: TLabel
            Left = 40
            Top = 71
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unidade:'
          end
          object SpeedButton2: TSpeedButton
            Left = 185
            Top = 62
            Width = 15
            Height = 22
            Hint = 'Abre a tela de Unidades'
            Caption = '...'
            Flat = True
            OnClick = SpeedButton2Click
          end
          object SpeedButton6: TSpeedButton
            Left = 199
            Top = 62
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
          object Label14: TLabel
            Left = 56
            Top = 91
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'NCM:'
          end
          object SpeedButton7: TSpeedButton
            Left = 185
            Top = 83
            Width = 15
            Height = 22
            Hint = 'Abre a tela de Unidades'
            Caption = '...'
            Flat = True
            OnClick = SpeedButton7Click
          end
          object SpeedButton8: TSpeedButton
            Left = 199
            Top = 83
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
            OnClick = SpeedButton8Click
          end
          object Label34: TLabel
            Left = 35
            Top = 111
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Duplicata:'
          end
          object lblPerc_Importacao: TLabel
            Left = 16
            Top = 130
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = '% Importa'#231#227'o:'
            Visible = False
          end
          object lblVlr_Aduaneira: TLabel
            Left = 4
            Top = 148
            Width = 79
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desp.Aduaneira:'
            Visible = False
          end
          object Label37: TLabel
            Left = 47
            Top = 30
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Adi'#231#227'o:'
          end
          object Label41: TLabel
            Left = 42
            Top = 247
            Width = 38
            Height = 26
            Alignment = taRightJustify
            Caption = 'Item do '#13#10'Cliente:'
          end
          object Label44: TLabel
            Left = 84
            Top = 48
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
          object Label45: TLabel
            Left = 46
            Top = 231
            Width = 76
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtd.Unid. Conv:'
            Visible = False
          end
          object Label54: TLabel
            Left = 14
            Top = 274
            Width = 66
            Height = 26
            Alignment = taRightJustify
            Caption = 'Qtd.j'#225' Gerada'#13#10'Estoque:'
          end
          object Label56: TLabel
            Left = 39
            Top = 306
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtd. KG:'
            Visible = False
          end
          object Label58: TLabel
            Left = 21
            Top = 328
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = '% Comiss'#227'o:'
            Visible = False
          end
          object RxDBLookupCombo5: TRxDBLookupCombo
            Left = 84
            Top = 83
            Width = 99
            Height = 21
            DropDownCount = 15
            Color = clSilver
            DataField = 'ID_NCM'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            LookupField = 'ID'
            LookupDisplay = 'NCM'
            LookupSource = DMCadNotaFiscal.dsTab_NCM
            TabOrder = 2
            TabStop = False
            OnEnter = RxDBLookupCombo5Enter
            OnExit = RxDBLookupCombo5Exit
          end
          object RxDBComboBox4: TRxDBComboBox
            Left = 84
            Top = 103
            Width = 100
            Height = 21
            Style = csDropDownList
            Color = clSilver
            Ctl3D = False
            DataField = 'GERAR_DUPLICATA'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            DropDownCount = 2
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentCtl3D = False
            TabOrder = 3
            TabStop = False
            Values.Strings = (
              'S'
              'N')
          end
          object DBCheckBox1: TDBCheckBox
            Left = 18
            Top = 168
            Width = 70
            Height = 17
            TabStop = False
            Caption = 'Estoque'
            Color = clSilver
            Ctl3D = False
            DataField = 'GERAR_ESTOQUE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnExit = DBCheckBox1Exit
          end
          object dbedtPerc_Importacao: TDBEdit
            Left = 85
            Top = 122
            Width = 98
            Height = 19
            Color = clSilver
            DataField = 'PERC_IMPORTACAO'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            TabOrder = 4
            Visible = False
          end
          object dbedtVlr_Aduaneira: TDBEdit
            Left = 85
            Top = 140
            Width = 98
            Height = 19
            Color = clSilver
            DataField = 'VLR_ADUANEIRA'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            TabOrder = 5
            Visible = False
          end
          object DBCheckBox2: TDBCheckBox
            Left = 18
            Top = 186
            Width = 178
            Height = 17
            TabStop = False
            Caption = 'Somar IPI na Base do ICMS'
            Color = clSilver
            Ctl3D = False
            DataField = 'CALCULARICMSSOBREIPI'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object RxDBLookupCombo10: TRxDBLookupCombo
            Left = 84
            Top = 22
            Width = 109
            Height = 21
            DropDownCount = 8
            Color = clSilver
            ListStyle = lsDelimited
            LookupField = 'ITEM'
            LookupDisplay = 'NUM_ADICAO;NUM_SEQ;NUM_DI'
            LookupSource = DMCadNotaFiscal.dsNotaFiscal_Imp_Aux
            TabOrder = 0
            TabStop = False
          end
          object DBEdit20: TDBEdit
            Left = 84
            Top = 252
            Width = 115
            Height = 19
            Color = clSilver
            Ctl3D = False
            DataField = 'ITEM_CLIENTE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 10
          end
          object DBEdit23: TDBEdit
            Left = 84
            Top = 65
            Width = 99
            Height = 19
            Color = clSilver
            Ctl3D = False
            DataField = 'UNIDADE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = DBEdit23KeyDown
          end
          object DBEdit24: TDBEdit
            Left = 126
            Top = 225
            Width = 73
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'QTD_PACOTE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 9
            Visible = False
          end
          object DBEdit29: TDBEdit
            Left = 84
            Top = 276
            Width = 115
            Height = 19
            Color = clSilver
            Ctl3D = False
            DataField = 'QTD_DESC_ESTOQUE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 11
          end
          object dbckDiferenca_ICMS: TDBCheckBox
            Left = 18
            Top = 204
            Width = 177
            Height = 17
            TabStop = False
            Caption = 'Calcular Diferencial ICMS'
            Color = clSilver
            Ctl3D = False
            DataField = 'DIFERENCA_ICMS'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            Visible = False
          end
          object DBEdit31: TDBEdit
            Left = 84
            Top = 300
            Width = 73
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'QTD_LANCAR_ESTOQUE'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 12
            Visible = False
            OnEnter = DBEdit31Enter
            OnExit = DBEdit31Exit
          end
          object DBEdit33: TDBEdit
            Left = 84
            Top = 322
            Width = 73
            Height = 19
            TabStop = False
            Color = clSilver
            Ctl3D = False
            DataField = 'PERC_COMISSAO'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 13
            Visible = False
            OnEnter = DBEdit31Enter
            OnExit = DBEdit31Exit
          end
        end
        object btnGrade: TNxButton
          Left = 249
          Top = 0
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
        object dblcTamanho: TRxDBLookupCombo
          Left = 301
          Top = 0
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
          TabOrder = 2
          Visible = False
        end
        object DBEdit18: TDBEdit
          Left = 133
          Top = 220
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'NUMERO_OC'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 398
          Top = 220
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'NUMERO_OS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit21: TDBEdit
          Left = 133
          Top = 264
          Width = 380
          Height = 21
          Ctl3D = True
          DataField = 'NUM_FCI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit22: TDBEdit
          Left = 133
          Top = 286
          Width = 84
          Height = 21
          Ctl3D = True
          DataField = 'PERC_USADO_FCI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 12
          Visible = False
        end
        object DBEdit32: TDBEdit
          Left = 133
          Top = 242
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'NUM_LOTE_CONTROLE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 13
          Visible = False
        end
        object DBEdit35: TDBEdit
          Left = 398
          Top = 242
          Width = 115
          Height = 21
          Ctl3D = True
          DataField = 'NUM_TALAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 14
        end
      end
      object pnlNomeProduto: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 0
        object Label63: TLabel
          Left = 61
          Top = 9
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome Produto:'
        end
        object DBEdit34: TDBEdit
          Left = 133
          Top = 1
          Width = 612
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'NOME_PRODUTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DBEdit34Enter
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Impostos'
      DesignSize = (
        788
        380)
      object Label16: TLabel
        Left = 35
        Top = 23
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Origem:'
      end
      object Label17: TLabel
        Left = 29
        Top = 48
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'd. Pis:'
      end
      object Label18: TLabel
        Left = 14
        Top = 71
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'd. Cofins:'
      end
      object Label19: TLabel
        Left = 303
        Top = 48
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
      end
      object Label20: TLabel
        Left = 303
        Top = 71
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
      end
      object Label21: TLabel
        Left = 452
        Top = 48
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = '%:'
      end
      object Label22: TLabel
        Left = 452
        Top = 71
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = '%:'
      end
      object Label23: TLabel
        Left = 544
        Top = 48
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor:'
      end
      object Label24: TLabel
        Left = 544
        Top = 71
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor:'
      end
      object Label25: TLabel
        Left = 4
        Top = 239
        Width = 100
        Height = 13
        Alignment = taRightJustify
        Caption = 'Somar Nos Produtos:'
      end
      object Label26: TLabel
        Left = 18
        Top = 94
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'CST ICMS:'
      end
      object Label27: TLabel
        Left = 31
        Top = 117
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'CST IPI:'
      end
      object Label28: TLabel
        Left = 11
        Top = 183
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = '% Desconto:'
      end
      object Label29: TLabel
        Left = 7
        Top = 205
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Desconto:'
      end
      object Label31: TLabel
        Left = 407
        Top = 215
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Base ICMS:'
      end
      object Label32: TLabel
        Left = 419
        Top = 237
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.ICMS:'
      end
      object Label33: TLabel
        Left = 358
        Top = 94
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = '% C'#225'lculo Base ICMS:'
      end
      object Label35: TLabel
        Left = 432
        Top = 259
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.IPI:'
      end
      object Label36: TLabel
        Left = 313
        Top = 164
        Width = 122
        Height = 13
        Alignment = taRightJustify
        Caption = '% Tributos Lei 12.741/12:'
      end
      object Label50: TLabel
        Left = 445
        Top = 164
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Federal:'
      end
      object Label51: TLabel
        Left = 565
        Top = 164
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estadual:'
      end
      object Label52: TLabel
        Left = 435
        Top = 185
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Municipal:'
      end
      object Label55: TLabel
        Left = 396
        Top = 117
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = '% Diferimento:'
      end
      object Label59: TLabel
        Left = 11
        Top = 140
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'd.Enq IPI:'
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 72
        Top = 15
        Width = 225
        Height = 23
        DropDownCount = 8
        DropDownWidth = 700
        DataField = 'ORIGEM_PROD'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ORIGEM'
        LookupDisplay = 'ORIGEM;NOME'
        LookupSource = DMCadNotaFiscal.dsOrigem_Prod
        TabOrder = 0
        OnExit = RxDBLookupCombo7Exit
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 72
        Top = 40
        Width = 225
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'CODIGO;NOME'
        LookupSource = DMCadNotaFiscal.dsTab_Pis
        TabOrder = 1
      end
      object RxDBLookupCombo9: TRxDBLookupCombo
        Left = 72
        Top = 63
        Width = 225
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'CODIGO;NOME'
        LookupSource = DMCadNotaFiscal.dsTab_Cofins
        TabOrder = 2
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 327
        Top = 40
        Width = 118
        Height = 21
        Style = csDropDownList
        DataField = 'TIPO_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Percentual'
          'Valor')
        TabOrder = 3
        Values.Strings = (
          'P'
          'V')
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 327
        Top = 63
        Width = 118
        Height = 21
        Style = csDropDownList
        DataField = 'TIPO_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Percentual'
          'Valor')
        TabOrder = 4
        Values.Strings = (
          'P'
          'V')
      end
      object DBEdit7: TDBEdit
        Left = 466
        Top = 40
        Width = 74
        Height = 21
        DataField = 'PERC_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 466
        Top = 63
        Width = 74
        Height = 21
        DataField = 'PERC_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 574
        Top = 40
        Width = 90
        Height = 21
        DataField = 'VLR_PIS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 574
        Top = 63
        Width = 90
        Height = 21
        DataField = 'VLR_COFINS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 8
      end
      object RxDBComboBox3: TRxDBComboBox
        Left = 105
        Top = 231
        Width = 118
        Height = 21
        Style = csDropDownList
        DataField = 'SOMAR_VLRTOTALPRODUTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 16
        Values.Strings = (
          'S'
          'N')
      end
      object RxDBLookupCombo11: TRxDBLookupCombo
        Left = 72
        Top = 86
        Width = 225
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_CSTICMS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'COD_CST;PERCENTUAL'
        LookupSource = DMCadNotaFiscal.dsTab_CSTICMS
        TabOrder = 9
        OnEnter = RxDBLookupCombo11Enter
        OnExit = RxDBLookupCombo11Exit
      end
      object RxDBLookupCombo12: TRxDBLookupCombo
        Left = 72
        Top = 109
        Width = 225
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_CSTIPI'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'COD_IPI;NOME'
        LookupSource = DMCadNotaFiscal.dsTab_CSTIPI
        TabOrder = 12
      end
      object DBEdit11: TDBEdit
        Left = 72
        Top = 175
        Width = 94
        Height = 21
        DataField = 'PERC_DESCONTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 14
        OnExit = DBEdit11Exit
      end
      object DBEdit12: TDBEdit
        Left = 72
        Top = 197
        Width = 94
        Height = 21
        DataField = 'VLR_DESCONTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 15
      end
      object DBEdit1: TDBEdit
        Left = 466
        Top = 207
        Width = 94
        Height = 21
        DataField = 'BASE_ICMS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 20
      end
      object DBEdit13: TDBEdit
        Left = 466
        Top = 229
        Width = 94
        Height = 21
        DataField = 'VLR_ICMS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 21
      end
      object DBEdit14: TDBEdit
        Left = 466
        Top = 86
        Width = 74
        Height = 21
        TabStop = False
        DataField = 'PERC_TRIBICMS'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 10
      end
      object DBEdit16: TDBEdit
        Left = 466
        Top = 251
        Width = 94
        Height = 21
        DataField = 'VLR_IPI'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 22
      end
      object DBEdit17: TDBEdit
        Left = 486
        Top = 156
        Width = 74
        Height = 21
        DataField = 'PERC_TRIBUTO_FEDERAL'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 17
      end
      object DBEdit27: TDBEdit
        Left = 612
        Top = 156
        Width = 74
        Height = 21
        DataField = 'PERC_TRIBUTO_ESTADUAL'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 18
      end
      object DBEdit28: TDBEdit
        Left = 486
        Top = 177
        Width = 74
        Height = 21
        DataField = 'PERC_TRIBUTO_MUNICIPAL'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 19
      end
      object DBEdit30: TDBEdit
        Left = 466
        Top = 109
        Width = 74
        Height = 21
        TabStop = False
        DataField = 'PERC_DIFERIMENTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 11
      end
      object RxDBLookupCombo15: TRxDBLookupCombo
        Left = 72
        Top = 132
        Width = 225
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DataField = 'ID_ENQIPI'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        LookupField = 'ID'
        LookupDisplay = 'CODIGO'
        LookupSource = DMCadNotaFiscal.dsEnqIPI
        TabOrder = 13
        OnKeyDown = RxDBLookupCombo15KeyDown
      end
      object RzGroupBox1: TRzGroupBox
        Left = 6
        Top = 312
        Width = 179
        Height = 56
        Anchors = [akLeft, akTop, akRight]
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' ICMS Para UF Destino (Difal) '
        Color = clMoneyGreen
        Ctl3D = True
        FlatColor = clNavy
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
        VisualStyle = vsGradient
        object Label61: TLabel
          Left = 8
          Top = 20
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = '% UF Interna:'
        end
        object Label62: TLabel
          Left = 23
          Top = 38
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = '% Partilha:'
        end
        object DBEdit41: TDBEdit
          Left = 73
          Top = 14
          Width = 61
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'PERC_ICMS_UF_DEST'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit42: TDBEdit
          Left = 73
          Top = 32
          Width = 61
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'PERC_ICMS_PARTILHA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 344
        Top = 277
        Width = 417
        Height = 89
        Anchors = [akLeft, akTop, akRight]
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = 'ICMS Desonerado'
        Color = clMoneyGreen
        Ctl3D = True
        FlatColor = clNavy
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
        VisualStyle = vsGradient
        object Label46: TLabel
          Left = 6
          Top = 23
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.ICMS Desonerado:'
        end
        object Label47: TLabel
          Left = 18
          Top = 46
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motivo Desonerado'
        end
        object Label48: TLabel
          Left = 18
          Top = 67
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Icms Opera'#231#227'o:'
        end
        object Label49: TLabel
          Left = 211
          Top = 67
          Width = 119
          Height = 13
          Caption = 'Campo usado na CST 51'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit25: TDBEdit
          Left = 114
          Top = 15
          Width = 94
          Height = 21
          DataField = 'VLR_ICMSDESONERADO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 0
        end
        object DBEdit26: TDBEdit
          Left = 114
          Top = 59
          Width = 94
          Height = 21
          DataField = 'VLR_ICMSOPERACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 1
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 114
          Top = 37
          Width = 287
          Height = 21
          DropDownCount = 8
          DataField = 'COD_DESONERACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'COD_DESONERACAO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadNotaFiscal.dsDesoneracao
          TabOrder = 2
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 6
        Top = 263
        Width = 179
        Height = 46
        Anchors = [akLeft, akTop, akRight]
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Ref. ICMS Fundo Comb. Pobreza '
        Color = clMoneyGreen
        Ctl3D = True
        FlatColor = clNavy
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 25
        VisualStyle = vsGradient
        object Label60: TLabel
          Left = 14
          Top = 25
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = '% FCP:'
        end
        object DBEdit40: TDBEdit
          Left = 49
          Top = 19
          Width = 61
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'PERC_ICMS_FCP'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Dados Importa'#231#227'o'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 40
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Label38: TLabel
          Left = 404
          Top = 19
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Adi'#231#227'o:'
        end
        object BitBtn3: TBitBtn
          Left = 14
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn5: TBitBtn
          Left = 89
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn5Click
        end
        object BitBtn2: TBitBtn
          Left = 164
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object RxDBLookupCombo13: TRxDBLookupCombo
          Left = 441
          Top = 11
          Width = 99
          Height = 21
          DropDownCount = 8
          Color = clSilver
          LookupField = 'ITEM'
          LookupDisplay = 'NUM_ADICAO;NUM_SEQ;NUM_DI'
          LookupSource = DMCadNotaFiscal.dsNotaFiscal_Imp_Aux
          TabOrder = 3
          TabStop = False
        end
        object BitBtn6: TBitBtn
          Left = 542
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Copiar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn6Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080
            8080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF606060808080808080000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080808080808080
            8080000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF6060608080808080808080808080800000000000000000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080808080808080808080808080
            8080000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF202020
            4040404040404040406060608080808080800000000000000000000000000000
            00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
            8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
            8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
            8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040808080B0
            B0B0303030000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF404040B0B0B0C0C0C0C0C0C0303030000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060C0C0C0C0
            C0C0C0C0C0C0C0C0303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 40
        Width = 788
        Height = 161
        Align = alTop
        Caption = ' Documento '
        TabOrder = 1
        object SMDBGrid2: TSMDBGrid
          Left = 2
          Top = 15
          Width = 784
          Height = 145
          Align = alTop
          Ctl3D = False
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Imp
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 14
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_IMP'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMDI'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTREGISTRO'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTDESEMBARACO'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODEXPORTADOR'
              Width = 142
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFATURA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Fatura'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCAL_DESEMBARACO'
              Title.Alignment = taCenter
              Title.Caption = 'Local Desembara'#231'o'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TIPO_VIA_TRANSORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Via Transporte'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_AFRMM'
              Title.Alignment = taCenter
              Title.Caption = 'Valor AFRMM'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TIPO_INTERMEDIO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Interm'#233'dio'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CNPJ'
              Title.Alignment = taCenter
              Title.Caption = 'CNPJ Terceiro'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UF_TERCEIRO'
              Title.Alignment = taCenter
              Title.Caption = 'UF Terceiro'
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 201
        Width = 788
        Height = 161
        Align = alTop
        Caption = ' Adi'#231#245'es'
        TabOrder = 2
        object SMDBGrid1: TSMDBGrid
          Left = 2
          Top = 15
          Width = 784
          Height = 145
          Align = alTop
          Ctl3D = False
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Imp_Ad
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 6
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMADICAO'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUM_SEQ'
              Title.Alignment = taCenter
              Title.Caption = 'Sequ'#234'ncia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODFABRICANTE'
              Width = 295
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESCONTO_DI'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_DRAWBACK'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Drawback'
              Width = 122
              Visible = True
            end>
        end
      end
    end
    object TS_DrawBack: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Exporta'#231#227'o DrawBack'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 37
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object BitBtn7: TBitBtn
          Left = 14
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 89
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 164
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn9Click
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 37
        Width = 788
        Height = 343
        Align = alClient
        Ctl3D = False
        DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = True
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_DRAWBACK'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_DRAWBACK'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' DrawBack'
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_REG_EXPORTACAO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Reg. Exporta'#231#227'o'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_CHAVE_ACESSO_NFE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Chave Acesso'
            Width = 334
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 90
            Visible = True
          end>
      end
    end
  end
end
