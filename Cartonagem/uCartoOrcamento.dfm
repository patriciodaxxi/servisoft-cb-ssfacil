object fCartoOrcamento: TfCartoOrcamento
  Left = 220
  Top = 60
  Width = 1008
  Height = 647
  Caption = 'fCartoOrcamento'
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
    Top = 30
    Width = 992
    Height = 244
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 550
      Top = 14
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object Label3: TLabel
      Left = 240
      Top = 36
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Validade:'
    end
    object Label27: TLabel
      Left = 73
      Top = 58
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label6: TLabel
      Left = 35
      Top = 80
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Representante:'
    end
    object Label8: TLabel
      Left = 16
      Top = 102
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto (Acabado):'
    end
    object Label12: TLabel
      Left = 82
      Top = 36
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 50
      Top = 188
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label29: TLabel
      Left = 64
      Top = 14
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object Label33: TLabel
      Left = 365
      Top = 36
      Width = 24
      Height = 13
      Caption = 'Dias.'
    end
    object Label37: TLabel
      Left = 81
      Top = 134
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Faca:'
    end
    object Label38: TLabel
      Left = 37
      Top = 155
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ficha T'#233'cnica:'
    end
    object Label39: TLabel
      Left = 240
      Top = 97
      Width = 401
      Height = 17
      AutoSize = False
      Color = clWindow
      ParentColor = False
    end
    object Label40: TLabel
      Left = 240
      Top = 149
      Width = 401
      Height = 17
      AutoSize = False
      Color = clWindow
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 568
      Top = 6
      Width = 121
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit3: TDBEdit
      Left = 288
      Top = 28
      Width = 73
      Height = 21
      DataField = 'VALIDADE'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 2
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 112
      Top = 50
      Width = 321
      Height = 21
      DropDownCount = 15
      DataField = 'CLIENTE_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmCartoOrcamento.dsCliente
      TabOrder = 4
      OnChange = RxDBLookupCombo2Change
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 112
      Top = 72
      Width = 321
      Height = 21
      DropDownCount = 15
      DataField = 'REPRESENTANTE_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmCartoOrcamento.dsRepresentante
      TabOrder = 5
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 112
      Top = 94
      Width = 127
      Height = 21
      DropDownCount = 15
      DropDownWidth = 657
      DataField = 'PRODUTO_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA;NOME'
      LookupSource = dmCartoOrcamento.dsProduto
      TabOrder = 7
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
      OnKeyDown = RxDBLookupCombo3KeyDown
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 180
      Width = 73
      Height = 21
      DataField = 'QTD1'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 11
    end
    object BitBtn3: TBitBtn
      Left = 111
      Top = 202
      Width = 65
      Height = 25
      Caption = 'C'#225'lculo 1'
      TabOrder = 15
      OnClick = BitBtn3Click
    end
    object DBEdit20: TDBEdit
      Left = 192
      Top = 180
      Width = 73
      Height = 21
      DataField = 'QTD2'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 12
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 191
      Top = 202
      Width = 75
      Height = 25
      Caption = 'C'#225'lculo 2'
      TabOrder = 16
      Visible = False
    end
    object DBEdit21: TDBEdit
      Left = 272
      Top = 180
      Width = 73
      Height = 21
      DataField = 'QTD3'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 13
      Visible = False
    end
    object BitBtn5: TBitBtn
      Left = 271
      Top = 202
      Width = 75
      Height = 25
      Caption = 'C'#225'lculo 3'
      TabOrder = 17
      Visible = False
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 112
      Top = 6
      Width = 321
      Height = 21
      DropDownCount = 8
      DataField = 'FILIAL_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCartoOrcamento.dsFilial
      TabOrder = 0
      OnEnter = RxDBLookupCombo4Enter
    end
    object DBDateEdit1: TDBDateEdit
      Left = 112
      Top = 28
      Width = 90
      Height = 21
      DataField = 'DATA'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      NumGlyphs = 2
      TabOrder = 1
      StartOfWeek = Sun
    end
    object DBEdit29: TDBEdit
      Left = 112
      Top = 50
      Width = 301
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CLIENTE_NOME'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 3
    end
    object DBEdit30: TDBEdit
      Left = 112
      Top = 94
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ACABADO_NOME'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      TabOrder = 6
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 240
      Top = 125
      Width = 105
      Height = 21
      DropDownCount = 15
      DataField = 'FACA_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCartoOrcamento.dsFaca
      TabOrder = 9
      OnEnter = RxDBLookupCombo5Enter
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 112
      Top = 147
      Width = 127
      Height = 21
      DropDownCount = 15
      DropDownWidth = 657
      DataField = 'FICHA_TECNICA_ID'
      DataSource = dmCartoOrcamento.dsCartoOrcamento
      LookupField = 'ID'
      LookupDisplay = 'ID;NOME'
      LookupSource = dmCartoOrcamento.dsCartoFT
      TabOrder = 10
      OnChange = RxDBLookupCombo6Change
      OnEnter = RxDBLookupCombo6Enter
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 125
      Width = 127
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'PRODU'#199#195'O'
      OnChange = ComboBox1Change
      Items.Strings = (
        'PRODU'#199#195'O'
        'OR'#199'AMENTO')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 30
    Align = alTop
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 274
    Width = 992
    Height = 335
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet3: TTabSheet
      Caption = 'Faca'
      object Shape2: TShape
        Left = 0
        Top = 116
        Width = 984
        Height = 86
        Align = alTop
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
        Pen.Width = 0
      end
      object Shape1: TShape
        Left = 0
        Top = 30
        Width = 984
        Height = 86
        Align = alTop
        Brush.Color = 13743257
        Pen.Color = clActiveCaption
        Pen.Width = 0
      end
      object Shape3: TShape
        Left = 0
        Top = 202
        Width = 984
        Height = 105
        Align = alClient
        Brush.Color = 8963327
        Pen.Color = 8963327
        Pen.Width = 0
      end
      object Label4: TLabel
        Left = 10
        Top = 76
        Width = 34
        Height = 13
        Alignment = taCenter
        Caption = 'COMP.'
        Color = 13743257
        ParentColor = False
      end
      object Label7: TLabel
        Left = 62
        Top = 76
        Width = 32
        Height = 13
        Alignment = taCenter
        Caption = 'LARG.'
        Color = 13743257
        ParentColor = False
      end
      object Label5: TLabel
        Left = 115
        Top = 76
        Width = 23
        Height = 13
        Alignment = taCenter
        Caption = 'ALT.'
        Color = 13743257
        ParentColor = False
      end
      object Label56: TLabel
        Left = 160
        Top = 76
        Width = 17
        Height = 13
        Alignment = taCenter
        Caption = 'AIC'
        Color = 13743257
        ParentColor = False
      end
      object Label57: TLabel
        Left = 198
        Top = 76
        Width = 16
        Height = 13
        Alignment = taCenter
        Caption = 'AIL'
        Color = 13743257
        ParentColor = False
      end
      object Label9: TLabel
        Left = 458
        Top = 76
        Width = 79
        Height = 13
        Alignment = taCenter
        Caption = 'FIO A FIO UNIT.'
        Color = 13743257
        ParentColor = False
      end
      object Label10: TLabel
        Left = 359
        Top = 76
        Width = 39
        Height = 13
        Alignment = taCenter
        Caption = 'C'#211'PIAS'
        Color = 13743257
        ParentColor = False
      end
      object Label11: TLabel
        Left = 559
        Top = 76
        Width = 85
        Height = 13
        Alignment = taCenter
        Caption = 'FIO A FIO TOTAL'
        Color = 13743257
        ParentColor = False
      end
      object Label14: TLabel
        Left = 352
        Top = 36
        Width = 77
        Height = 13
        Alignment = taCenter
        Caption = 'FECHAMENTO:'
        Color = 13743257
        ParentColor = False
      end
      object Label15: TLabel
        Left = 10
        Top = 179
        Width = 21
        Height = 13
        Alignment = taCenter
        Caption = 'AEC'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label16: TLabel
        Left = 68
        Top = 162
        Width = 17
        Height = 13
        Alignment = taCenter
        Caption = 'AIC'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label17: TLabel
        Left = 115
        Top = 162
        Width = 20
        Height = 13
        Alignment = taCenter
        Caption = 'AEL'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label18: TLabel
        Left = 160
        Top = 162
        Width = 16
        Height = 13
        Alignment = taCenter
        Caption = 'AIL'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label20: TLabel
        Left = 458
        Top = 162
        Width = 79
        Height = 13
        Alignment = taCenter
        Caption = 'FIO A FIO UNIT.'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label21: TLabel
        Left = 359
        Top = 162
        Width = 39
        Height = 13
        Alignment = taCenter
        Caption = 'C'#211'PIAS'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label22: TLabel
        Left = 559
        Top = 162
        Width = 85
        Height = 13
        Alignment = taCenter
        Caption = 'FIO A FIO TOTAL'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label23: TLabel
        Left = 351
        Top = 122
        Width = 77
        Height = 13
        Alignment = taCenter
        Caption = 'FECHAMENTO:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label31: TLabel
        Left = 72
        Top = 36
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'MATERIAL'
        Color = 13743257
        ParentColor = False
      end
      object Label19: TLabel
        Left = 10
        Top = 36
        Width = 48
        Height = 13
        Alignment = taCenter
        Caption = 'N'#218'MERO'
        Color = 13743257
        ParentColor = False
      end
      object Label24: TLabel
        Left = 10
        Top = 122
        Width = 48
        Height = 13
        Alignment = taCenter
        Caption = 'N'#218'MERO'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label25: TLabel
        Left = 73
        Top = 122
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'MATERIAL'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label26: TLabel
        Left = 601
        Top = 94
        Width = 7
        Height = 13
        Caption = 'X'
        Color = 13743257
        ParentColor = False
      end
      object Label34: TLabel
        Left = 601
        Top = 180
        Width = 7
        Height = 13
        Caption = 'X'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label35: TLabel
        Left = 10
        Top = 206
        Width = 48
        Height = 13
        Alignment = taCenter
        Caption = 'N'#218'MERO'
        Color = 8963327
        ParentColor = False
      end
      object Label36: TLabel
        Left = 73
        Top = 206
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'MATERIAL'
        Color = 8963327
        ParentColor = False
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 984
        Height = 30
        Align = alTop
        Brush.Color = clTeal
        Pen.Color = clActiveCaption
        Pen.Width = 0
      end
      object Label28: TLabel
        Left = 10
        Top = 13
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label79: TLabel
        Left = 169
        Top = 13
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 22
        Top = 162
        Width = 21
        Height = 13
        Alignment = taCenter
        Caption = 'AEC'
        Color = clMoneyGreen
        ParentColor = False
      end
      object RxDBComboBox10: TRxDBComboBox
        Left = 351
        Top = 49
        Width = 322
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_FD'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'AA - AUTO ADESIVO NORMAL'
          'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MM - MONTAGEM MANUAL (sem cola)'
          'SAC - SACOLA')
        TabOrder = 30
        Values.Strings = (
          'N'
          'AA'
          'AAA'
          'ME'
          'MM'
          'SAC')
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 89
        Width = 45
        Height = 21
        DataField = 'FD_COMPR'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 54
        Top = 89
        Width = 45
        Height = 21
        DataField = 'FD_LARGURA'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 100
        Top = 89
        Width = 45
        Height = 21
        DataField = 'FD_ALTURA'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit73: TDBEdit
        Left = 146
        Top = 89
        Width = 45
        Height = 21
        DataField = 'FD_ABA_INT_CAB'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit76: TDBEdit
        Left = 192
        Top = 89
        Width = 45
        Height = 21
        DataField = 'FD_ABA_INT_LAT'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 351
        Top = 89
        Width = 43
        Height = 21
        DataField = 'FD_COPIAS_C'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 5
      end
      object RxDBComboBox9: TRxDBComboBox
        Left = 351
        Top = 49
        Width = 306
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_CT'
        DataSource = dmCartoOrcamento.dsFaca
        DropDownCount = 15
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'FN - FUNDO NORMAL'
          'FNT - FUNDO NORMAL COM TRAVA'
          'FA - FUNDO AUTOM'#193'TICO'
          'FAT - FUNDO AUTOM'#193'TICO COM TRAVA'
          'FAM - FUNDO AMERICANO'
          'FAMT - FUNDO AMERICANO COM TRAVA'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MET - MONTAGEM POR ENCAIXE TRAVA (com cola)'
          'MM - MONTAGEM MANUAL (sem cola) '
          'MMT - MONTAGEM MANUAL COM TRAVA (sem cola) '
          '4P - 4 PONTOS'
          '6P - 6 PONTOS'
          '8P - 8 PONTOS'
          'DIS - DISPLAY'
          'ENV - ENVOLT'#211'RIO')
        ReadOnly = True
        TabOrder = 6
        Values.Strings = (
          'N'
          'FN'
          'FNT'
          'FA'
          'FAT'
          'FAM'
          'FAMT'
          'ME'
          'MET'
          'MM'
          'MMT'
          '4P'
          '6P'
          '8P'
          'DIS'
          'ENV')
        Visible = False
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 175
        Width = 45
        Height = 21
        DataField = 'FD_COMPR'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 54
        Top = 175
        Width = 45
        Height = 21
        DataField = 'FD_LARGURA'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 100
        Top = 175
        Width = 45
        Height = 21
        DataField = 'FD_ALTURA'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit13: TDBEdit
        Left = 146
        Top = 175
        Width = 45
        Height = 21
        DataField = 'FD_ABA_INT_CAB'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 10
      end
      object RxDBComboBox11: TRxDBComboBox
        Left = 69
        Top = 49
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'FD_TIPO_MAT'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        ReadOnly = True
        TabOrder = 11
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit14: TDBEdit
        Left = 8
        Top = 49
        Width = 60
        Height = 21
        DataField = 'FACA_FD'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit18: TDBEdit
        Left = 8
        Top = 135
        Width = 60
        Height = 21
        DataField = 'FACA_TP'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 13
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 69
        Top = 136
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'FD_TIPO_MAT'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        ReadOnly = True
        TabOrder = 14
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit9: TDBEdit
        Left = 553
        Top = 89
        Width = 44
        Height = 21
        DataField = 'FD_DIMENSAO1'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 15
      end
      object DBEdit19: TDBEdit
        Left = 610
        Top = 89
        Width = 44
        Height = 21
        DataField = 'FD_DIMENSAO2'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit17: TDBEdit
        Left = 553
        Top = 175
        Width = 44
        Height = 21
        DataField = 'TP_DIMENSAO1'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit25: TDBEdit
        Left = 610
        Top = 175
        Width = 44
        Height = 21
        DataField = 'TP_DIMENSAO2'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit26: TDBEdit
        Left = 8
        Top = 219
        Width = 60
        Height = 21
        DataField = 'FACA_SP'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 19
      end
      object RxDBComboBox3: TRxDBComboBox
        Left = 69
        Top = 219
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'SP_TIPO_MAT'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        ReadOnly = True
        TabOrder = 20
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit22: TDBEdit
        Left = 395
        Top = 89
        Width = 43
        Height = 21
        DataField = 'FD_COPIAS_L'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 21
      end
      object DBEdit8: TDBEdit
        Left = 455
        Top = 89
        Width = 43
        Height = 21
        DataField = 'FD_FIO_C'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 22
      end
      object DBEdit23: TDBEdit
        Left = 500
        Top = 89
        Width = 43
        Height = 21
        DataField = 'FD_FIO_L'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 23
      end
      object DBEdit15: TDBEdit
        Left = 351
        Top = 175
        Width = 43
        Height = 21
        DataField = 'TP_COPIAS_C'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 24
      end
      object DBEdit16: TDBEdit
        Left = 397
        Top = 175
        Width = 43
        Height = 21
        DataField = 'TP_COPIAS_L'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 25
      end
      object DBEdit24: TDBEdit
        Left = 455
        Top = 175
        Width = 43
        Height = 21
        DataField = 'TP_FIO_C'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 26
      end
      object DBEdit27: TDBEdit
        Left = 500
        Top = 175
        Width = 43
        Height = 21
        DataField = 'TP_FIO_L'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 27
      end
      object DBEdit28: TDBEdit
        Left = 48
        Top = 5
        Width = 113
        Height = 21
        DataField = 'NOME'
        DataSource = dmCartoOrcamento.dsFaca
        ReadOnly = True
        TabOrder = 28
      end
      object RxDBComboBox4: TRxDBComboBox
        Left = 200
        Top = 5
        Width = 225
        Height = 21
        Style = csDropDownList
        DataField = 'TIPO'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'CAIXA NORMAL'
          'TAMPA ACOPLADA'
          'CARTUCHO'
          'SACOLA'
          'DISPLAY')
        ReadOnly = True
        TabOrder = 29
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object RxDBComboBox12: TRxDBComboBox
        Left = 351
        Top = 136
        Width = 323
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_TP'
        DataSource = dmCartoOrcamento.dsFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'AA - AUTO ADESIVO NORMAL'
          'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MM - MONTAGEM MANUAL (sem cola)')
        TabOrder = 31
        Values.Strings = (
          'N'
          'AA'
          'AAA'
          'ME'
          'MM')
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Materiais 1'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 30
        Width = 984
        Height = 277
        Align = alClient
        DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        OnGetCellParams = SMDBGrid1GetCellParams
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
            ReadOnly = True
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            ReadOnly = True
            Title.Caption = 'POS.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATERIAL'
            ReadOnly = True
            Width = 247
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRAMATURA'
            ReadOnly = True
            Title.Caption = 'GR.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CI1'
            ReadOnly = True
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CI2'
            ReadOnly = True
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF1'
            ReadOnly = True
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF2'
            ReadOnly = True
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            ReadOnly = True
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUEBRA'
            ReadOnly = True
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 30
        Align = alTop
        Color = clTeal
        TabOrder = 1
        object BitBtn6: TBitBtn
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn6Click
        end
        object BitBtn8: TBitBtn
          Left = 78
          Top = 3
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn8Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Processos 1'
      ImageIndex = 1
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 307
        Align = alClient
        DataSource = dmCartoOrcamento.dsCartoOrcamentoProc
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROCESSO'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEMPO_SETUP'
            Title.Caption = 'SETUP (MIN)'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEMPO_PROD'
            Title.Caption = 'PRODU'#199#195'O (MIN)'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAQUINA_ID'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Width = 236
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'CEV'
      ImageIndex = 3
      object Label30: TLabel
        Left = 136
        Top = 152
        Width = 199
        Height = 13
        Caption = 'Impostos, taxas, margens, comiss'#227'o..........'
      end
      object Label32: TLabel
        Left = 136
        Top = 128
        Width = 140
        Height = 13
        Caption = 'Custos Espec'#237'ficos de Venda'
      end
      object Label41: TLabel
        Left = 40
        Top = 21
        Width = 27
        Height = 13
        Caption = 'Frete:'
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 80
        Top = 16
        Width = 145
        Height = 21
        EnableValues = False
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
end
