object frmCadNotaFiscal_OutrosDados: TfrmCadNotaFiscal_OutrosDados
  Left = 154
  Top = 168
  Width = 773
  Height = 508
  Caption = 'Dados da Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 436
    Width = 757
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 5
      Top = 5
      Width = 124
      Height = 25
      Caption = '&Voltar'
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
    Top = 0
    Width = 757
    Height = 436
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Transporte'
      object Label2: TLabel
        Left = 30
        Top = 22
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Redespacho:'
      end
      object Label58: TLabel
        Left = 61
        Top = 46
        Width = 33
        Height = 13
        Caption = 'RNTC:'
      end
      object Label59: TLabel
        Left = 264
        Top = 34
        Width = 117
        Height = 26
        Caption = 'Registro Nacional de'#13#10'Transportador de Cargas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label60: TLabel
        Left = 5
        Top = 70
        Width = 89
        Height = 13
        Caption = 'Tipo Vag'#227'o/Balsa:'
      end
      object Label62: TLabel
        Left = 1
        Top = 94
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Identifica'#231#227'o Balsa:'
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 98
        Top = 14
        Width = 350
        Height = 21
        DropDownCount = 8
        DataField = 'ID_REDESPACHO'
        DataSource = DMCadNotaFiscal.dsNotaFiscal
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DMCadNotaFiscal.dsTransportadora
        TabOrder = 0
      end
      object DBEdit45: TDBEdit
        Left = 98
        Top = 38
        Width = 150
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RNTC'
        DataSource = DMCadNotaFiscal.dsNotaFiscal
        TabOrder = 1
      end
      object RxDBComboBox7: TRxDBComboBox
        Left = 98
        Top = 62
        Width = 150
        Height = 21
        Style = csDropDownList
        DataField = 'VAGAOBALSA_TIPOIDENTIF'
        DataSource = DMCadNotaFiscal.dsNotaFiscal
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          ''
          'Vag'#227'o'
          'Balsa')
        TabOrder = 2
        Values.Strings = (
          ''
          'V'
          'B')
      end
      object DBEdit46: TDBEdit
        Left = 98
        Top = 86
        Width = 252
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VAGAOBALSA_IDENTIF'
        DataSource = DMCadNotaFiscal.dsNotaFiscal
        TabOrder = 3
      end
      object btnReboque: TBitBtn
        Left = 99
        Top = 116
        Width = 105
        Height = 26
        Caption = 'Reboque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnReboqueClick
      end
      object btnLacre: TBitBtn
        Left = 204
        Top = 116
        Width = 105
        Height = 26
        Caption = 'Lacres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btnLacreClick
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Parcelas (Duplicatas)'
      object pnlDuplicata: TPanel
        Left = 0
        Top = 0
        Width = 753
        Height = 122
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Label71: TLabel
          Left = 108
          Top = 55
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entrada:'
        end
        object Label73: TLabel
          Left = 264
          Top = 56
          Width = 30
          Height = 13
          Caption = 'In'#237'cio:'
        end
        object Label74: TLabel
          Left = 72
          Top = 79
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Cobran'#231'a.:'
        end
        object Label75: TLabel
          Left = 114
          Top = 103
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco:'
        end
        object Label77: TLabel
          Left = 465
          Top = 83
          Width = 106
          Height = 13
          Caption = '% de Transf. de ICMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TLabel
          Left = 478
          Top = 105
          Width = 92
          Height = 13
          Caption = 'Valor Transf. ICMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton7: TSpeedButton
          Left = 396
          Top = 71
          Width = 23
          Height = 22
          Hint = 'Atualiza tabela de Tipo de Cobran'#231'a'
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
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 396
          Top = 95
          Width = 23
          Height = 22
          Hint = 'Atualiza tabela de Banco'
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
        object DBEdit43: TDBEdit
          Left = 150
          Top = 47
          Width = 99
          Height = 21
          DataField = 'VLR_ENTRADA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 0
        end
        object DBDateEdit3: TDBDateEdit
          Left = 296
          Top = 48
          Width = 100
          Height = 21
          Hint = 'Selecione uma data'
          CalendarHints.Strings = (
            'Ano Anterior'
            'M'#234's Anterior'
            'Pr'#243'ximo M'#234's'
            'Pr'#243'ximo Ano')
          DataField = 'DTINICIO_DUPLICATA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          DialogTitle = 'Clique no '#237'cone para selecionar uma data'
          GlyphKind = gkCustom
          Glyph.Data = {
            E2020000424DE20200000000000042000000280000001C0000000C0000000100
            100003000000A002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7CEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
            EF3D1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1F7C
            1F7C000000000F0000000F000F0000000F00000000000F00EF3D1F7CEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7F1F7C1F7CFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F0F00EF3D1F7CEF3DFF7F1F7CFF7FFF7FFF7F
            1F7CFF7FFF7FFF7F1F7CEF3DFF7F1F7C1F7CFF7F000000000000FF7F00000000
            0000F75EFF7F0F00EF3D1F7CEF3DFF7FEF3DEF3DEF3D1F7CEF3DEF3DEF3D1F7C
            FF7FEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7FF75EFF7FF75E0000FF7F0F00
            EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7C1F7C1F7C1F7CEF3DFF7FEF3DFF7F1F7C
            1F7CFF7FFF7F0000FF7FFF7FFF7FFF7FFF7F0000FF7F0F00EF3D1F7CEF3DFF7F
            1F7CEF3DFF7F1F7C1F7CFF7FFF7FEF3D1F7CEF3DFF7F1F7C1F7CFF7FFF7F0000
            FF7FFF7F000000000000F75EFF7F0F00EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7C
            EF3DEF3DEF3D1F7C1F7CEF3DFF7F1F7C1F7CFF7F00000000FF7FFF7F0000FF7F
            FF7FFF7FFF7F0F00EF3D1F7CEF3DFF7FEF3DEF3DFF7F1F7CEF3DFF7FFF7FFF7F
            FF7FEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7F0000000000000000FF7F0F00
            EF3D1F7CEF3DFF7F1F7CEF3D1F7C1F7CEF3DEF3DEF3DEF3D1F7CEF3DFF7F1F7C
            1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0F00EF3D1F7CEF3DFF7F
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3DFF7F1F7C1F7CFF7FF75EF75E
            F75EF75EF75EF75EF75EF75EFF7F0F00EF3D1F7CEF3DFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FEF3DFF7F1F7C1F7C0000000000000000000000000000
            0000000000001F7C1F7C1F7CEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
            EF3DEF3D1F7C}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          StartOfWeek = Sun
          YearDigits = dyFour
        end
        object rxdbTipoCobranca: TRxDBLookupCombo
          Left = 150
          Top = 71
          Width = 246
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadNotaFiscal.dsTipoCobranca
          TabOrder = 2
        end
        object rxdbBanco: TRxDBLookupCombo
          Left = 150
          Top = 95
          Width = 246
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadNotaFiscal.dsContas
          TabOrder = 3
        end
        object DBEdit49: TDBEdit
          Left = 573
          Top = 75
          Width = 102
          Height = 21
          DataField = 'PERC_TRANSF'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 6
        end
        object DBEdit50: TDBEdit
          Left = 573
          Top = 97
          Width = 102
          Height = 21
          DataField = 'VLR_TRANSF'
          DataSource = DMCadNotaFiscal.dsNotaFiscal
          TabOrder = 7
        end
        object btnParcelas: TBitBtn
          Left = 4
          Top = 5
          Width = 99
          Height = 23
          Caption = 'Gerar parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object BitBtn2: TBitBtn
          Left = 678
          Top = 95
          Width = 35
          Height = 23
          Hint = 'C'#225'lculo o valor da tranfer'#234'ncia do Icms'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BitBtn2Click
          Glyph.Data = {
            1E020000424D1E0200000000000042000000280000000D000000110000000100
            100003000000DC01000000000000000000000000000000000000007C0000E003
            00001F000000F75EF75EF75EF75E0000EF3DF75EF75EF75EF75EF75EF75EF75E
            2003F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75EF75E2003F75E
            F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75E6400F75EF75EF75E
            F75EF75E0000E07F0000EF3DF75EF75EF75EF75E2003F75EF75EF75E00000000
            00000000E07F0000EF3DF75EF75EF75E0D02F75EF75EF75E0000E07FE07FFF7F
            E07FE07F0000EF3DF75EF75E6C00F75EF75EF75EF75E0000FF7FE07F00000000
            00000000F75EF75E0A00F75EF75EF75EF75E0000E07FFF7FE07F0000EF3DF75E
            F75EF75E0600F75E00000000000000000000E07FFF7FE07F0000EF3DF75EF75E
            2003F75E0000FF7FE07FFF7FE07FFF7FE07FFF7FE07F0000EF3DF75E0D00F75E
            F75E0000FF7FE07FFF7FE07F0000000000000000F75EF75E2003F75EF75E0000
            E07FFF7FE07FFF7FE07F0000EF3DF75EF75EF75E8D00F75EF75EF75E0000E07F
            FF7FE07FFF7FE07F0000EF3DF75EF75E4E02F75EF75EF75E0000FF7FFF7FFF7F
            E07FFF7FFF7F0000EF3DF75E2003F75EF75EF75EF75E0000FF7FE07FFF7FFF7F
            E07FFF7F0000EF3D2003F75EF75EF75EF75E0000000000000000000000000000
            000000002003F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
            7F01}
        end
        object btnExcluir_Parcela: TBitBtn
          Left = 103
          Top = 5
          Width = 99
          Height = 23
          Caption = 'Excluir Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnExcluir_ParcelaClick
        end
      end
      object SMDBGrid_Dupl2: TSMDBGrid
        Left = 0
        Top = 122
        Width = 753
        Height = 291
        Align = alClient
        Ctl3D = False
        DataSource = DMCadNotaFiscal.dsNotaFiscal_Parc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
            FieldName = 'ITEM'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Vecto.'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Vecto.'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TIPOCOBRANCA'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTA'
            Width = 77
            Visible = True
          end>
      end
    end
  end
end
