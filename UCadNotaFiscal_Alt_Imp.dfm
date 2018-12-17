object frmCadNotaFiscal_Alt_Imp: TfrmCadNotaFiscal_Alt_Imp
  Left = 207
  Top = 11
  Width = 1035
  Height = 717
  Caption = 'Altera'#231#227'o do item (Importa'#231#227'o)'
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
    Top = 652
    Width = 1027
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1027
    Height = 652
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
    TabOrder = 0
    TextColors.DisabledShadow = 8421440
    TextColors.Selected = clBlue
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Dados'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 629
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          1023
          629)
        object Label5: TLabel
          Left = 87
          Top = 37
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS:'
        end
        object Label6: TLabel
          Left = 100
          Top = 59
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = '% IPI:'
        end
        object Label8: TLabel
          Left = 85
          Top = 15
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object Label9: TLabel
          Left = 21
          Top = 557
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs. Complementar:'
        end
        object Label16: TLabel
          Left = 80
          Top = 243
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Origem:'
        end
        object Label17: TLabel
          Left = 74
          Top = 265
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Pis:'
        end
        object Label18: TLabel
          Left = 59
          Top = 287
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Cofins:'
        end
        object Label19: TLabel
          Left = 348
          Top = 265
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo:'
        end
        object Label20: TLabel
          Left = 348
          Top = 287
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo:'
        end
        object Label21: TLabel
          Left = 497
          Top = 265
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = '%:'
        end
        object Label22: TLabel
          Left = 497
          Top = 287
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = '%:'
        end
        object Label23: TLabel
          Left = 589
          Top = 265
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label24: TLabel
          Left = 589
          Top = 287
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label26: TLabel
          Left = 63
          Top = 309
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST ICMS:'
        end
        object Label27: TLabel
          Left = 76
          Top = 331
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'CST IPI:'
        end
        object Label33: TLabel
          Left = 405
          Top = 309
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = '% C'#225'lculo Base ICMS:'
        end
        object Label28: TLabel
          Left = 67
          Top = 81
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = '% Desconto:'
        end
        object Label29: TLabel
          Left = 280
          Top = 81
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Desconto:'
        end
        object Label31: TLabel
          Left = 286
          Top = 37
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS:'
        end
        object Label32: TLabel
          Left = 683
          Top = 37
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.ICMS:'
        end
        object Label35: TLabel
          Left = 471
          Top = 59
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.IPI:'
        end
        object Label25: TLabel
          Left = 16
          Top = 535
          Width = 100
          Height = 13
          Alignment = taRightJustify
          Caption = 'Somar Nos Produtos:'
        end
        object Label38: TLabel
          Left = 82
          Top = 109
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Frete:'
        end
        object Label41: TLabel
          Left = 72
          Top = 131
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Seguro:'
        end
        object Label47: TLabel
          Left = 531
          Top = 107
          Width = 44
          Height = 13
          Caption = 'Valor Pis:'
        end
        object Label48: TLabel
          Left = 283
          Top = 109
          Width = 59
          Height = 13
          Caption = 'Valor Cofins:'
        end
        object Label50: TLabel
          Left = 13
          Top = 153
          Width = 114
          Height = 13
          Caption = 'Vlr. Imposto Importa'#231#227'o:'
        end
        object Label51: TLabel
          Left = 58
          Top = 175
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Aduaneira:'
        end
        object Label2: TLabel
          Left = 47
          Top = 197
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Outras Desp:'
        end
        object Label1: TLabel
          Left = 30
          Top = 378
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base ICMS Subst:'
        end
        object Label3: TLabel
          Left = 39
          Top = 400
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. ICMS Subst:'
        end
        object Label4: TLabel
          Left = 214
          Top = 378
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = '% MVA:'
        end
        object Label7: TLabel
          Left = 370
          Top = 378
          Width = 123
          Height = 13
          Alignment = taRightJustify
          Caption = '% Red. Base ICMS Subst:'
        end
        object Label12: TLabel
          Left = 254
          Top = 131
          Width = 90
          Height = 13
          Caption = '% Imp. Importa'#231#227'o:'
        end
        object Label13: TLabel
          Left = 45
          Top = 423
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome Produto:'
        end
        object Label46: TLabel
          Left = 9
          Top = 469
          Width = 105
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.ICMS Desonerado:'
        end
        object Label14: TLabel
          Left = 21
          Top = 492
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Motivo Desonerado'
        end
        object Label49: TLabel
          Left = 852
          Top = 70
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
        object Label40: TLabel
          Left = 89
          Top = 221
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'NCM:'
        end
        object Label42: TLabel
          Left = 758
          Top = 279
          Width = 66
          Height = 26
          Alignment = taRightJustify
          Caption = 'Qtd.j'#225' Gerada'#13#10'Estoque:'
        end
        object Label43: TLabel
          Left = 633
          Top = 60
          Width = 94
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.ICMS Opera'#231#227'o:'
        end
        object Label44: TLabel
          Left = 644
          Top = 82
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.ICMS Diferido:'
        end
        object Label45: TLabel
          Left = 419
          Top = 331
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = '% Diferido (Parcial):'
        end
        object Label15: TLabel
          Left = 35
          Top = 513
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Lote Controle:'
        end
        object Label52: TLabel
          Left = 53
          Top = 353
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Enq.IPI:'
        end
        object Label59: TLabel
          Left = 280
          Top = 175
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Siscomex:'
        end
        object Label61: TLabel
          Left = 271
          Top = 197
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outros Valores:'
        end
        object Label62: TLabel
          Left = 67
          Top = 446
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Duplicata:'
        end
        object Label63: TLabel
          Left = 236
          Top = 446
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Duplicata:'
        end
        object Label60: TLabel
          Left = 284
          Top = 153
          Width = 60
          Height = 13
          Caption = 'Vlr. AFRMM:'
        end
        object Label65: TLabel
          Left = 735
          Top = 260
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Escala:'
        end
        object Label74: TLabel
          Left = 219
          Top = 469
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS Suframa:'
        end
        object Label75: TLabel
          Left = 809
          Top = 195
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. IPI Devolvido:'
        end
        object Label76: TLabel
          Left = 828
          Top = 172
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = '% Devolu'#231#227'o:'
        end
        object Label77: TLabel
          Left = 299
          Top = 59
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Base IPI:'
        end
        object DBEdit3: TDBEdit
          Left = 129
          Top = 29
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_ICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 129
          Top = 51
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_IPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 129
          Top = 7
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_TOTAL'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 118
          Top = 549
          Width = 491
          Height = 68
          DataField = 'OBS_COMPLEMENTAR'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          MaxLength = 250
          ScrollBars = ssVertical
          TabOrder = 43
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 118
          Top = 235
          Width = 225
          Height = 21
          DropDownCount = 8
          DataField = 'ORIGEM_PROD'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ORIGEM'
          LookupDisplay = 'NOME'
          LookupSource = DMCadNotaFiscal.dsOrigem_Prod
          TabOrder = 20
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 118
          Top = 257
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_PIS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'CODIGO;NOME'
          LookupSource = DMCadNotaFiscal.dsTab_Pis
          TabOrder = 21
        end
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 118
          Top = 279
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_COFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'CODIGO;NOME'
          LookupSource = DMCadNotaFiscal.dsTab_Cofins
          TabOrder = 25
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 372
          Top = 257
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
          TabOrder = 22
          Values.Strings = (
            'P'
            'V')
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 372
          Top = 279
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
          TabOrder = 26
          Values.Strings = (
            'P'
            'V')
        end
        object DBEdit7: TDBEdit
          Left = 511
          Top = 257
          Width = 74
          Height = 21
          DataField = 'PERC_PIS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 23
        end
        object DBEdit8: TDBEdit
          Left = 511
          Top = 279
          Width = 74
          Height = 21
          DataField = 'PERC_COFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 27
        end
        object DBEdit9: TDBEdit
          Left = 619
          Top = 257
          Width = 90
          Height = 21
          DataField = 'VLR_PIS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 24
        end
        object DBEdit10: TDBEdit
          Left = 619
          Top = 279
          Width = 90
          Height = 21
          DataField = 'VLR_COFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 28
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 118
          Top = 301
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_CSTICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'COD_CST;PERCENTUAL'
          LookupSource = DMCadNotaFiscal.dsTab_CSTICMS
          TabOrder = 29
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 118
          Top = 323
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_CSTIPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'COD_IPI;NOME'
          LookupSource = DMCadNotaFiscal.dsTab_CSTIPI
          TabOrder = 31
        end
        object DBEdit14: TDBEdit
          Left = 511
          Top = 301
          Width = 74
          Height = 21
          DataField = 'PERC_TRIBICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 30
        end
        object DBEdit11: TDBEdit
          Left = 129
          Top = 73
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_DESCONTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 8
        end
        object DBEdit12: TDBEdit
          Left = 345
          Top = 73
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_DESCONTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 9
        end
        object DBEdit1: TDBEdit
          Left = 345
          Top = 29
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'BASE_ICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 729
          Top = 29
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_ICMS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 505
          Top = 51
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_IPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 6
        end
        object RxDBComboBox3: TRxDBComboBox
          Left = 118
          Top = 527
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
          TabOrder = 42
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit2: TDBEdit
          Left = 129
          Top = 101
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'VLR_FRETE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 11
        end
        object DBEdit5: TDBEdit
          Left = 129
          Top = 123
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'VLR_SEGURO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 14
        end
        object DBEdit20: TDBEdit
          Left = 577
          Top = 99
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_PIS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 13
        end
        object DBEdit21: TDBEdit
          Left = 345
          Top = 101
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_COFINS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 12
        end
        object DBEdit23: TDBEdit
          Left = 129
          Top = 145
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_IMPORTACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 15
        end
        object DBEdit31: TDBEdit
          Left = 129
          Top = 167
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_ADUANEIRA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 17
        end
        object DBEdit17: TDBEdit
          Left = 129
          Top = 189
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_OUTRASDESPESAS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 18
        end
        object DBEdit15: TDBEdit
          Left = 118
          Top = 370
          Width = 90
          Height = 21
          DataField = 'BASE_ICMSSUBST'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 34
        end
        object DBEdit18: TDBEdit
          Left = 118
          Top = 392
          Width = 90
          Height = 21
          DataField = 'VLR_ICMSSUBST'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 37
        end
        object DBEdit19: TDBEdit
          Left = 252
          Top = 370
          Width = 90
          Height = 21
          DataField = 'PERC_MVA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 35
        end
        object DBEdit22: TDBEdit
          Left = 494
          Top = 370
          Width = 90
          Height = 21
          DataField = 'PERC_REDUCAO_ICMSSUBST'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 36
        end
        object DBEdit26: TDBEdit
          Left = 345
          Top = 123
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_IMPORTACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 16
        end
        object DBEdit27: TDBEdit
          Left = 118
          Top = 415
          Width = 491
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME_PRODUTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ReadOnly = True
          TabOrder = 38
          OnKeyDown = DBEdit27KeyDown
        end
        object DBEdit28: TDBEdit
          Left = 117
          Top = 461
          Width = 96
          Height = 21
          DataField = 'VLR_ICMSDESONERADO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 40
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 117
          Top = 483
          Width = 302
          Height = 21
          DropDownCount = 8
          DataField = 'COD_DESONERACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'COD_DESONERACAO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadNotaFiscal.dsDesoneracao
          TabOrder = 41
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 118
          Top = 213
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_NCM'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'NCM'
          LookupSource = DMCadNotaFiscal.dsTab_NCM
          TabOrder = 19
        end
        object DBEdit36: TDBEdit
          Left = 828
          Top = 281
          Width = 90
          Height = 21
          DataField = 'QTD_DESC_ESTOQUE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ReadOnly = True
          TabOrder = 39
        end
        object DBEdit37: TDBEdit
          Left = 729
          Top = 52
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_ICMSOPERACAO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 7
        end
        object DBEdit38: TDBEdit
          Left = 729
          Top = 74
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_ICMSDIFERIDO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 10
        end
        object DBEdit39: TDBEdit
          Left = 511
          Top = 323
          Width = 74
          Height = 21
          DataField = 'PERC_DIFERIMENTO'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 32
        end
        object DBEdit29: TDBEdit
          Left = 118
          Top = 505
          Width = 301
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUM_LOTE_CONTROLE'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          ReadOnly = True
          TabOrder = 44
          OnKeyDown = DBEdit27KeyDown
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 118
          Top = 345
          Width = 225
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DataField = 'ID_ENQIPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          LookupField = 'ID'
          LookupDisplay = 'CODIGO;DESCRICAO'
          LookupSource = DMCadNotaFiscal.dsEnqIPI
          TabOrder = 33
          OnKeyDown = RxDBLookupCombo2KeyDown
        end
        object gbxVendedor: TRzGroupBox
          Left = 490
          Top = 128
          Width = 288
          Height = 94
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Tributos Lei 12.741/12 '
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
          TabOrder = 45
          VisualStyle = vsGradient
          object Label10: TLabel
            Left = 12
            Top = 25
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = '% Federal::'
          end
          object Label30: TLabel
            Left = 9
            Top = 43
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = '% Estadual:'
          end
          object Label36: TLabel
            Left = 5
            Top = 61
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = '% Municipal:'
          end
          object Label11: TLabel
            Left = 148
            Top = 25
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor:'
          end
          object Label34: TLabel
            Left = 148
            Top = 43
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor:'
          end
          object Label37: TLabel
            Left = 148
            Top = 61
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor:'
          end
          object Label39: TLabel
            Left = 105
            Top = 77
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Tributos:'
          end
          object DBEdit25: TDBEdit
            Left = 65
            Top = 17
            Width = 74
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_TRIBUTO_FEDERAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 65
            Top = 35
            Width = 74
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_TRIBUTO_ESTADUAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit33: TDBEdit
            Left = 65
            Top = 53
            Width = 74
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_TRIBUTO_MUNICIPAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 176
            Top = 17
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_TRIBUTOS_FEDERAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit32: TDBEdit
            Left = 176
            Top = 35
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_TRIBUTOS_ESTADUAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBEdit34: TDBEdit
            Left = 176
            Top = 53
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_TRIBUTOS_MUNICIPAL'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 5
          end
          object DBEdit35: TDBEdit
            Left = 176
            Top = 71
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_TRIBUTOS'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 6
          end
        end
        object RzGroupBox1: TRzGroupBox
          Left = 637
          Top = 428
          Width = 181
          Height = 131
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' ICMS Para UF Destino '
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
          TabOrder = 46
          VisualStyle = vsGradient
          object Label54: TLabel
            Left = 16
            Top = 59
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = '% UF Interna:'
          end
          object Label55: TLabel
            Left = 31
            Top = 77
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = '% Partilha:'
          end
          object Label57: TLabel
            Left = 20
            Top = 95
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr. UF Dest:'
          end
          object Label58: TLabel
            Left = 11
            Top = 113
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr. UF Remet:'
          end
          object Label72: TLabel
            Left = 30
            Top = 21
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base FCP:'
          end
          object Label73: TLabel
            Left = 30
            Top = 39
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor FCP:'
          end
          object DBEdit41: TDBEdit
            Left = 81
            Top = 51
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_ICMS_UF_DEST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit42: TDBEdit
            Left = 81
            Top = 69
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_ICMS_PARTILHA'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit44: TDBEdit
            Left = 81
            Top = 87
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_ICMS_UF_DEST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit45: TDBEdit
            Left = 81
            Top = 105
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_ICMS_UF_REMET'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit57: TDBEdit
            Left = 81
            Top = 15
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'BASE_ICMS_FCP_DEST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBEdit58: TDBEdit
            Left = 81
            Top = 33
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_ICMS_FCP_DEST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 5
          end
        end
        object DBEdit46: TDBEdit
          Left = 345
          Top = 167
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_TAXACISCOMEX'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 47
        end
        object DBEdit48: TDBEdit
          Left = 345
          Top = 189
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_OUTROS'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 48
        end
        object RxDBComboBox4: TRxDBComboBox
          Left = 117
          Top = 438
          Width = 100
          Height = 21
          Style = csDropDownList
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
          TabOrder = 49
          TabStop = False
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit49: TDBEdit
          Left = 304
          Top = 438
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_DUPLICATA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 50
        end
        object DBEdit47: TDBEdit
          Left = 345
          Top = 145
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_AFRMM'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 51
        end
        object RzGroupBox2: TRzGroupBox
          Left = 829
          Top = 431
          Width = 181
          Height = 83
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Unidade Tribut'#225'vel '
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
          TabOrder = 52
          VisualStyle = vsGradient
          object Label67: TLabel
            Left = 37
            Top = 25
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unidade:'
          end
          object Label68: TLabel
            Left = 51
            Top = 43
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtde.:'
          end
          object Label69: TLabel
            Left = 26
            Top = 61
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr.Unit'#225'rio:'
          end
          object DBEdit53: TDBEdit
            Left = 81
            Top = 17
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'UNIDADE_TRIB'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit54: TDBEdit
            Left = 81
            Top = 35
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'QTD_TRIB'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit55: TDBEdit
            Left = 81
            Top = 53
            Width = 87
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_UNITARIO_TRIB'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 2
          end
        end
        object RzGroupBox3: TRzGroupBox
          Left = 637
          Top = 320
          Width = 172
          Height = 75
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Fundo de Combate a Pobreza '
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
          TabOrder = 53
          VisualStyle = vsGradient
          object Label53: TLabel
            Left = 14
            Top = 21
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = '% FCP:'
          end
          object Label56: TLabel
            Left = 21
            Top = 57
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor:'
          end
          object Label64: TLabel
            Left = 21
            Top = 39
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base:'
          end
          object DBEdit40: TDBEdit
            Left = 49
            Top = 15
            Width = 48
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_ICMS_FCP'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit43: TDBEdit
            Left = 49
            Top = 51
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_ICMS_FCP'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit50: TDBEdit
            Left = 49
            Top = 33
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'BASE_ICMS_FCP'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object RxDBComboBox5: TRxDBComboBox
          Left = 772
          Top = 252
          Width = 237
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO_ESCALA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          DropDownCount = 4
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Produzido em Escala Relevante'
            'Produzido em Escala N'#195'O Relevante'
            'Nenhuma')
          TabOrder = 54
          Values.Strings = (
            'S'
            'N'
            'X')
        end
        object RzGroupBox4: TRzGroupBox
          Left = 821
          Top = 320
          Width = 172
          Height = 75
          Anchors = [akLeft, akTop, akRight]
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' FCP ST'
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
          TabOrder = 55
          VisualStyle = vsGradient
          object Label66: TLabel
            Left = 14
            Top = 21
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = '% FCP:'
          end
          object Label70: TLabel
            Left = 21
            Top = 57
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor:'
          end
          object Label71: TLabel
            Left = 21
            Top = 39
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base:'
          end
          object DBEdit51: TDBEdit
            Left = 49
            Top = 15
            Width = 48
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'PERC_FCP_ST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit52: TDBEdit
            Left = 49
            Top = 51
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'VLR_FCP_ST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit56: TDBEdit
            Left = 49
            Top = 33
            Width = 96
            Height = 19
            Color = clWhite
            Ctl3D = False
            DataField = 'BASE_FCP_ST'
            DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object DBEdit59: TDBEdit
          Left = 303
          Top = 461
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_ICMS_SUFRAMA'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 56
        end
        object DBEdit60: TDBEdit
          Left = 897
          Top = 187
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'VLR_IPI_DEVOL'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 57
        end
        object DBEdit61: TDBEdit
          Left = 897
          Top = 164
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'PERC_DEVOL'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 58
        end
        object DBEdit62: TDBEdit
          Left = 345
          Top = 51
          Width = 115
          Height = 21
          Color = clWhite
          DataField = 'BASE_IPI'
          DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
          TabOrder = 5
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Dados Importa'#231#227'o'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 40
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 6
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
          Left = 81
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
          Left = 156
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
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 40
        Width = 1023
        Height = 161
        Align = alTop
        Caption = ' Documento '
        TabOrder = 1
        object SMDBGrid2: TSMDBGrid
          Left = 2
          Top = 15
          Width = 1019
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
          ColCount = 10
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
              Width = 77
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
              FieldName = 'UF'
              Title.Alignment = taCenter
              Title.Caption = 'UF Desembara'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCAL_DESEMBARACO'
              Title.Alignment = taCenter
              Title.Caption = 'Local Desembara'#231'o'
              Width = 200
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 201
        Width = 1023
        Height = 161
        Align = alTop
        Caption = ' Adi'#231#245'es'
        TabOrder = 2
        object SMDBGrid1: TSMDBGrid
          Left = 2
          Top = 15
          Width = 1019
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
          ColCount = 6
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM_IMP'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMADICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_SEQ'
              Title.Alignment = taCenter
              Title.Caption = 'Item Adi'#231#227'o'
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
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Dados Exporta'#231#227'o'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 629
        Align = alClient
        Color = clMoneyGreen
        TabOrder = 0
        object SMDBGrid3: TSMDBGrid
          Left = 1
          Top = 1
          Width = 1021
          Height = 627
          Align = alClient
          Ctl3D = False
          DataSource = DMCadNotaFiscal.dsNotaFiscal_DrawBack
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
end
