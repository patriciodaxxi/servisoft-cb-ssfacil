object frmCadRecNF_Itens: TfrmCadRecNF_Itens
  Left = 100
  Top = 52
  Width = 1183
  Height = 644
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro dos Itens do Recibo'
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
    Top = 579
    Width = 1175
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
    Width = 1175
    Height = 106
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object Panel5: TPanel
      Left = 1
      Top = 26
      Width = 1173
      Height = 79
      Align = alClient
      Color = clMoneyGreen
      TabOrder = 1
      OnEnter = Panel5Enter
      OnExit = Panel5Exit
      object Shape1: TShape
        Left = 698
        Top = 22
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
      object Label30: TLabel
        Left = 719
        Top = 25
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
        Left = 711
        Top = 42
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
      object pnlNomeProduto: TPanel
        Left = 1
        Top = 51
        Width = 696
        Height = 20
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 3
        object Label22: TLabel
          Left = 112
          Top = 7
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object DBEdit1: TDBEdit
          Left = 146
          Top = 1
          Width = 498
          Height = 19
          Ctl3D = False
          DataField = 'NOME_PRODUTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit5Exit
        end
      end
    end
    object pnlCod_Barras: TPanel
      Left = 1
      Top = 1
      Width = 1173
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
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 106
    Width = 1175
    Height = 473
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
        Left = 74
        Top = 32
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Quantidade:'
      end
      object Label7: TLabel
        Left = 78
        Top = 54
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Unit'#225'rio:'
      end
      object Label8: TLabel
        Left = 90
        Top = 77
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Total:'
      end
      object lblTamanho: TLabel
        Left = 251
        Top = 31
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho:'
        Visible = False
      end
      object Label28: TLabel
        Left = 435
        Top = 47
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = '% Desconto:'
      end
      object Label29: TLabel
        Left = 431
        Top = 69
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Desconto:'
      end
      object DBEdit2: TDBEdit
        Left = 133
        Top = 24
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'QTD'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
      end
      object DBEdit5: TDBEdit
        Left = 133
        Top = 46
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'VLR_UNITARIO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 133
        Top = 69
        Width = 115
        Height = 21
        Ctl3D = True
        DataField = 'VLR_TOTAL'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        ParentCtl3D = False
        TabOrder = 7
      end
      object gbxVendedor: TRzGroupBox
        Left = 71
        Top = 105
        Width = 642
        Height = 153
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
        object Label3: TLabel
          Left = 40
          Top = 40
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Unidade:'
        end
        object SpeedButton2: TSpeedButton
          Left = 185
          Top = 31
          Width = 15
          Height = 22
          Hint = 'Abre a tela de Unidades'
          Caption = '...'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton6: TSpeedButton
          Left = 199
          Top = 31
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
        object Label44: TLabel
          Left = 84
          Top = 17
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
          Left = 318
          Top = 31
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd.Unid. Conv:'
          Visible = False
        end
        object Label54: TLabel
          Left = 14
          Top = 82
          Width = 66
          Height = 26
          Alignment = taRightJustify
          Caption = 'Qtd.j'#225' Gerada'#13#10'Estoque:'
        end
        object Label56: TLabel
          Left = 39
          Top = 114
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd. KG:'
          Visible = False
        end
        object Label58: TLabel
          Left = 21
          Top = 136
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = '% Comiss'#227'o:'
          Visible = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 82
          Top = 56
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
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit23: TDBEdit
          Left = 84
          Top = 34
          Width = 99
          Height = 19
          Color = clSilver
          Ctl3D = False
          DataField = 'UNIDADE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnKeyDown = DBEdit23KeyDown
        end
        object DBEdit24: TDBEdit
          Left = 398
          Top = 25
          Width = 73
          Height = 19
          TabStop = False
          Color = clSilver
          Ctl3D = False
          DataField = 'QTD_PACOTE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Visible = False
        end
        object DBEdit29: TDBEdit
          Left = 84
          Top = 84
          Width = 115
          Height = 19
          Color = clSilver
          Ctl3D = False
          DataField = 'QTD_DESC_ESTOQUE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit31: TDBEdit
          Left = 84
          Top = 108
          Width = 73
          Height = 19
          TabStop = False
          Color = clSilver
          Ctl3D = False
          DataField = 'QTD_LANCAR_ESTOQUE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          OnEnter = DBEdit31Enter
          OnExit = DBEdit31Exit
        end
        object DBEdit33: TDBEdit
          Left = 84
          Top = 130
          Width = 73
          Height = 19
          TabStop = False
          Color = clSilver
          Ctl3D = False
          DataField = 'PERC_COMISSAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          OnEnter = DBEdit31Enter
          OnExit = DBEdit31Exit
        end
      end
      object btnGrade: TNxButton
        Left = 249
        Top = 23
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
        Left = 301
        Top = 23
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
      object pnlCor: TPanel
        Left = 0
        Top = 0
        Width = 1171
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 0
        object Label53: TLabel
          Left = 48
          Top = 10
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor/Combina'#231#227'o:'
        end
        object RxDBLookupCombo14: TRxDBLookupCombo
          Left = 133
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
      object DBEdit11: TDBEdit
        Left = 496
        Top = 39
        Width = 94
        Height = 21
        TabStop = False
        DataField = 'PERC_DESCONTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 5
      end
      object DBEdit12: TDBEdit
        Left = 496
        Top = 61
        Width = 94
        Height = 21
        TabStop = False
        DataField = 'VLR_DESCONTO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
        TabOrder = 6
      end
    end
  end
end
