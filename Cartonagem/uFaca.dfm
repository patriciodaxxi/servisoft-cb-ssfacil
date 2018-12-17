object fFaca: TfFaca
  Left = 415
  Top = 24
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fFaca'
  ClientHeight = 662
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 29
    Align = alTop
    TabOrder = 2
    object DBText1: TDBText
      Left = 654
      Top = 6
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'ID'
      DataSource = dmFaca.dsCartoFaca
      ParentColor = False
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 58
    Width = 725
    Height = 604
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Medidas'
      DesignSize = (
        717
        576)
      object Shape3: TShape
        Left = 7
        Top = 364
        Width = 705
        Height = 176
        Brush.Color = 8963327
        Pen.Color = 8963327
        Pen.Width = 0
      end
      object Shape2: TShape
        Left = 7
        Top = 184
        Width = 705
        Height = 176
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
        Pen.Width = 0
      end
      object Shape1: TShape
        Left = 7
        Top = 3
        Width = 705
        Height = 176
        Brush.Color = 13743257
        Pen.Color = clActiveCaption
        Pen.Width = 0
      end
      object Bevel3: TBevel
        Left = 12
        Top = 368
        Width = 692
        Height = 167
        Anchors = [akLeft, akTop, akRight]
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 12
        Top = 190
        Width = 692
        Height = 166
        Anchors = [akLeft, akTop, akRight]
        Shape = bsFrame
      end
      object Bevel1: TBevel
        Left = 12
        Top = 8
        Width = 692
        Height = 166
        Anchors = [akLeft, akTop, akRight]
        Shape = bsFrame
      end
      object Label2: TLabel
        Left = 24
        Top = 107
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label3: TLabel
        Left = 24
        Top = 289
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label4: TLabel
        Left = 25
        Top = 468
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Suporte:'
        Color = 8963327
        ParentColor = False
      end
      object Label6: TLabel
        Left = 66
        Top = 83
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label7: TLabel
        Left = 150
        Top = 83
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label8: TLabel
        Left = 227
        Top = 83
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
        Color = 13743257
        ParentColor = False
      end
      object Label56: TLabel
        Left = 288
        Top = 70
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = 13743257
        ParentColor = False
      end
      object Label57: TLabel
        Left = 366
        Top = 70
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = 13743257
        ParentColor = False
      end
      object Label59: TLabel
        Left = 144
        Top = 253
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label60: TLabel
        Left = 366
        Top = 253
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label61: TLabel
        Left = 72
        Top = 253
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label62: TLabel
        Left = 292
        Top = 253
        Width = 40
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label63: TLabel
        Left = 74
        Top = 444
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 8963327
        ParentColor = False
      end
      object Label64: TLabel
        Left = 158
        Top = 444
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 8963327
        ParentColor = False
      end
      object Label65: TLabel
        Left = 235
        Top = 444
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
        Color = 8963327
        ParentColor = False
      end
      object Label66: TLabel
        Left = 296
        Top = 431
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = 8963327
        ParentColor = False
      end
      object Label67: TLabel
        Left = 374
        Top = 431
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = 8963327
        ParentColor = False
      end
      object Label28: TLabel
        Left = 562
        Top = 196
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label29: TLabel
        Left = 646
        Top = 196
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label17: TLabel
        Left = 562
        Top = 12
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label25: TLabel
        Left = 646
        Top = 12
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label30: TLabel
        Left = 19
        Top = 204
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label31: TLabel
        Left = 22
        Top = 22
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label32: TLabel
        Left = 15
        Top = 384
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Suporte:'
        Color = 8963327
        ParentColor = False
      end
      object Label35: TLabel
        Left = 562
        Top = 372
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 8963327
        ParentColor = False
      end
      object Label36: TLabel
        Left = 646
        Top = 372
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 8963327
        ParentColor = False
      end
      object Label1: TLabel
        Left = 518
        Top = 36
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'pias:'
        Color = 13743257
        ParentColor = False
      end
      object Label5: TLabel
        Left = 518
        Top = 220
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'pias:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label9: TLabel
        Left = 518
        Top = 396
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'pias:'
        Color = 8963327
        ParentColor = False
      end
      object Label11: TLabel
        Left = 509
        Top = 60
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Intervalo:'
        Color = 13743257
        ParentColor = False
      end
      object Label12: TLabel
        Left = 509
        Top = 244
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Intervalo:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label13: TLabel
        Left = 509
        Top = 420
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Intervalo:'
        Color = 8963327
        ParentColor = False
      end
      object Label14: TLabel
        Left = 490
        Top = 84
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio unit.:'
        Color = 13743257
        ParentColor = False
      end
      object Label15: TLabel
        Left = 490
        Top = 268
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio unit.:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label16: TLabel
        Left = 490
        Top = 444
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio unit.:'
        Color = 8963327
        ParentColor = False
      end
      object Label18: TLabel
        Left = 513
        Top = 108
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio:'
        Color = 13743257
        ParentColor = False
      end
      object Label19: TLabel
        Left = 513
        Top = 292
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label20: TLabel
        Left = 513
        Top = 468
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fio a fio:'
        Color = 8963327
        ParentColor = False
      end
      object Label21: TLabel
        Left = 59
        Top = 46
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Color = 13743257
        ParentColor = False
      end
      object Label22: TLabel
        Left = 59
        Top = 228
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label24: TLabel
        Left = 26
        Top = 131
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fechamento:'
        Color = 13743257
        ParentColor = False
      end
      object Label23: TLabel
        Left = 42
        Top = 131
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cartucho:'
        Color = 13743257
        ParentColor = False
        Visible = False
      end
      object Label26: TLabel
        Left = 26
        Top = 313
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fechamento:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label27: TLabel
        Left = 34
        Top = 492
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fechamento:'
        Color = 8963327
        ParentColor = False
      end
      object Label33: TLabel
        Left = 27
        Top = 155
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
        Color = 13743257
        ParentColor = False
      end
      object Label34: TLabel
        Left = 28
        Top = 337
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label37: TLabel
        Left = 35
        Top = 516
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
        Color = 8963327
        ParentColor = False
      end
      object Label38: TLabel
        Left = 68
        Top = 553
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cadastro:'
      end
      object SpeedButton1: TSpeedButton
        Left = 419
        Top = 100
        Width = 23
        Height = 22
        Hint = 'Pesquia facas de fundo'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 419
        Top = 281
        Width = 23
        Height = 22
        Hint = 'Pesquia facas de tampa'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 427
        Top = 460
        Width = 23
        Height = 22
        Hint = 'Pesquia facas de suporte'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object Label39: TLabel
        Left = 239
        Top = 46
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere'#231'o:'
        Color = 13743257
        ParentColor = False
      end
      object Label41: TLabel
        Left = 247
        Top = 228
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere'#231'o:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label42: TLabel
        Left = 247
        Top = 408
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere'#231'o:'
        Color = 8963327
        ParentColor = False
      end
      object Label43: TLabel
        Left = 59
        Top = 408
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Color = 8963327
        ParentColor = False
      end
      object Label44: TLabel
        Left = 237
        Top = 553
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inativo:'
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 99
        Width = 65
        Height = 21
        DataField = 'FD_COMPR'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 99
        Width = 65
        Height = 21
        DataField = 'FD_LARGURA'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 208
        Top = 99
        Width = 65
        Height = 21
        DataField = 'FD_ALTURA'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 281
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_CAB'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 24
      end
      object DBEdit6: TDBEdit
        Left = 64
        Top = 281
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_CAB'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 23
      end
      object DBEdit7: TDBEdit
        Left = 352
        Top = 281
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_LAT'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 26
      end
      object DBEdit30: TDBEdit
        Left = 72
        Top = 460
        Width = 65
        Height = 21
        DataField = 'SP_COMPR'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 41
      end
      object DBEdit44: TDBEdit
        Left = 144
        Top = 460
        Width = 65
        Height = 21
        DataField = 'SP_LARGURA'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 42
      end
      object DBEdit45: TDBEdit
        Left = 216
        Top = 460
        Width = 65
        Height = 21
        DataField = 'SP_ALTURA'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 43
      end
      object DBEdit73: TDBEdit
        Left = 280
        Top = 99
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_CAB'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 6
      end
      object DBEdit74: TDBEdit
        Left = 280
        Top = 281
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_LAT'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 25
      end
      object DBEdit75: TDBEdit
        Left = 288
        Top = 460
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_CAB'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 44
      end
      object DBEdit76: TDBEdit
        Left = 352
        Top = 99
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_LAT'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 7
      end
      object DBEdit78: TDBEdit
        Left = 360
        Top = 460
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_LAT'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 45
      end
      object DBEdit1: TDBEdit
        Left = 560
        Top = 100
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO1'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnDblClick = DBEdit1DblClick
      end
      object DBEdit9: TDBEdit
        Left = 632
        Top = 100
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO2'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnDblClick = DBEdit9DblClick
      end
      object DBEdit11: TDBEdit
        Left = 560
        Top = 284
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO1'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 33
        OnDblClick = DBEdit11DblClick
      end
      object DBEdit12: TDBEdit
        Left = 632
        Top = 284
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO2'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 34
        OnDblClick = DBEdit12DblClick
      end
      object BitBtn10: TBitBtn
        Left = 631
        Top = 543
        Width = 75
        Height = 25
        Caption = 'Ca&lcular'
        TabOrder = 59
        OnClick = BitBtn10Click
      end
      object RxDBComboBox5: TRxDBComboBox
        Left = 96
        Top = 196
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'TP_TIPO_MAT'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 20
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object RxDBComboBox11: TRxDBComboBox
        Left = 96
        Top = 14
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'FD_TIPO_MAT'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object RxDBComboBox13: TRxDBComboBox
        Left = 96
        Top = 376
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'SP_TIPO_MAT'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 38
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit13: TDBEdit
        Left = 560
        Top = 460
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'SP_DIMENSAO1'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 52
        OnChange = DBEdit13Change
      end
      object DBEdit14: TDBEdit
        Left = 632
        Top = 460
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'SP_DIMENSAO2'
        DataSource = dmFaca.dsCartoFaca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 53
        OnDblClick = DBEdit14DblClick
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 560
        Top = 28
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'FD_COPIAS_C'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 8
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 560
        Top = 212
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'TP_COPIAS_C'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 27
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object RxDBComboBox3: TRxDBComboBox
        Left = 560
        Top = 388
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'SP_COPIAS_C'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 46
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object DBEdit10: TDBEdit
        Left = 560
        Top = 52
        Width = 65
        Height = 21
        DataField = 'FD_INT_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 560
        Top = 236
        Width = 65
        Height = 21
        DataField = 'TP_INT_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 29
      end
      object DBEdit16: TDBEdit
        Left = 560
        Top = 412
        Width = 65
        Height = 21
        DataField = 'SP_INT_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 48
      end
      object DBEdit17: TDBEdit
        Left = 632
        Top = 412
        Width = 65
        Height = 21
        DataField = 'SP_INT_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 49
      end
      object DBEdit18: TDBEdit
        Left = 632
        Top = 236
        Width = 65
        Height = 21
        DataField = 'TP_INT_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 30
      end
      object DBEdit19: TDBEdit
        Left = 632
        Top = 52
        Width = 65
        Height = 21
        DataField = 'FD_INT_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 11
      end
      object RxDBComboBox4: TRxDBComboBox
        Left = 632
        Top = 28
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'FD_COPIAS_L'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 9
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object RxDBComboBox6: TRxDBComboBox
        Left = 632
        Top = 212
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'TP_COPIAS_L'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 28
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object RxDBComboBox7: TRxDBComboBox
        Left = 632
        Top = 388
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'SP_COPIAS_L'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        TabOrder = 47
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object DBEdit20: TDBEdit
        Left = 560
        Top = 76
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_FIO_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 12
      end
      object DBEdit21: TDBEdit
        Left = 632
        Top = 76
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_FIO_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 13
      end
      object DBEdit22: TDBEdit
        Left = 560
        Top = 260
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_FIO_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 31
      end
      object DBEdit23: TDBEdit
        Left = 632
        Top = 260
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_FIO_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 32
      end
      object DBEdit24: TDBEdit
        Left = 560
        Top = 436
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'SP_FIO_C'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 50
      end
      object DBEdit25: TDBEdit
        Left = 632
        Top = 436
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'SP_FIO_L'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 51
      end
      object RxDBComboBox10: TRxDBComboBox
        Left = 96
        Top = 123
        Width = 322
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_FD'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'AA - AUTO ADESIVO NORMAL'
          'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MM - MONTAGEM MANUAL (sem cola)'
          'SAC - SACOLA')
        TabOrder = 16
        Values.Strings = (
          'N'
          'AA'
          'AAA'
          'ME'
          'MM'
          'SAC')
      end
      object RxDBComboBox9: TRxDBComboBox
        Left = 96
        Top = 123
        Width = 320
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_CT'
        DataSource = dmFaca.dsCartoFaca
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
        TabOrder = 17
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
      object RxDBComboBox12: TRxDBComboBox
        Left = 96
        Top = 305
        Width = 323
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_TP'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'AA - AUTO ADESIVO NORMAL'
          'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MM - MONTAGEM MANUAL (sem cola)')
        TabOrder = 35
        Values.Strings = (
          'N'
          'AA'
          'AAA'
          'ME'
          'MM')
      end
      object RxDBComboBox14: TRxDBComboBox
        Left = 104
        Top = 484
        Width = 323
        Height = 21
        Style = csDropDownList
        DataField = 'FECHAMENTO_SP'
        DataSource = dmFaca.dsCartoFaca
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N - N'#195'O'
          'AA - AUTO ADESIVO NORMAL'
          'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'
          'ME - MONTAGEM POR ENCAIXE (com cola)'
          'MM - MONTAGEM MANUAL (sem cola)')
        TabOrder = 54
        Values.Strings = (
          'N'
          'AA'
          'AAA'
          'ME'
          'MM')
      end
      object DBEdit26: TDBEdit
        Left = 96
        Top = 147
        Width = 498
        Height = 21
        DataField = 'FD_OBS'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 18
      end
      object DBEdit27: TDBEdit
        Left = 96
        Top = 329
        Width = 498
        Height = 21
        DataField = 'TP_OBS'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 36
      end
      object DBEdit28: TDBEdit
        Left = 104
        Top = 508
        Width = 498
        Height = 21
        DataField = 'SP_OBS'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 55
      end
      object DBDateEdit1: TDBDateEdit
        Left = 120
        Top = 545
        Width = 90
        Height = 21
        TabStop = False
        DataField = 'DT_CADASTRO'
        DataSource = dmFaca.dsCartoFaca
        NumGlyphs = 2
        TabOrder = 57
        StartOfWeek = Sun
      end
      object DBEdit31: TDBEdit
        Left = 96
        Top = 38
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'FACA_FD'
        DataSource = dmFaca.dsCartoFaca
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit32: TDBEdit
        Left = 96
        Top = 220
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'FACA_TP'
        DataSource = dmFaca.dsCartoFaca
        ReadOnly = True
        TabOrder = 21
      end
      object DBEdit29: TDBEdit
        Left = 296
        Top = 38
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_FD'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 2
      end
      object DBEdit33: TDBEdit
        Left = 304
        Top = 220
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_TP'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 22
      end
      object DBEdit34: TDBEdit
        Left = 304
        Top = 400
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_SP'
        DataSource = dmFaca.dsCartoFaca
        TabOrder = 40
      end
      object DBEdit35: TDBEdit
        Left = 96
        Top = 400
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'FACA_SP'
        DataSource = dmFaca.dsCartoFaca
        ReadOnly = True
        TabOrder = 39
      end
      object RxDBComboBox16: TRxDBComboBox
        Left = 280
        Top = 545
        Width = 132
        Height = 21
        Style = csDropDownList
        DataField = 'INATIVO'
        DataSource = dmFaca.dsCartoFaca
        DropDownCount = 3
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N'#227'o'
          'Sim')
        TabOrder = 58
        Values.Strings = (
          'N'
          'S')
      end
      object BitBtn3: TBitBtn
        Left = 616
        Top = 146
        Width = 75
        Height = 25
        Caption = 'Arquivo PDF'
        TabOrder = 19
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 616
        Top = 327
        Width = 75
        Height = 25
        Caption = 'Arquivo PDF'
        TabOrder = 37
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 616
        Top = 506
        Width = 75
        Height = 25
        Caption = 'Arquivo PDF'
        TabOrder = 56
        OnClick = BitBtn5Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Processos'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 29
        Align = alTop
        TabOrder = 0
        object BitBtn6: TBitBtn
          Left = 2
          Top = 2
          Width = 74
          Height = 25
          Caption = 'Gerar'
          TabOrder = 0
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 29
        Width = 717
        Height = 547
        Align = alClient
        DataSource = dmFaca.dsCartoFacaProcesso
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            ReadOnly = True
            Title.Caption = 'POSI'#199#195'O'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROCESSO'
            ReadOnly = True
            Width = 261
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Title.Caption = 'OBSERVA'#199#195'O'
            Width = 349
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 725
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 10
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label79: TLabel
      Left = 169
      Top = 12
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object Label40: TLabel
      Left = 435
      Top = 12
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object DBEdit8: TDBEdit
      Left = 48
      Top = 4
      Width = 113
      Height = 21
      DataField = 'NOME'
      DataSource = dmFaca.dsCartoFaca
      TabOrder = 0
      OnExit = DBEdit8Exit
    end
    object RxDBComboBox8: TRxDBComboBox
      Left = 200
      Top = 4
      Width = 225
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO'
      DataSource = dmFaca.dsCartoFaca
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'CAIXA NORMAL'
        'TAMPA ACOPLADA'
        'CARTUCHO'
        'SACOLA'
        'DISPLAY')
      TabOrder = 1
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      OnChange = RxDBComboBox8Change
    end
    object RxDBComboBox15: TRxDBComboBox
      Left = 488
      Top = 4
      Width = 133
      Height = 21
      Style = csDropDownList
      DataField = 'SITUACAO'
      DataSource = dmFaca.dsCartoFaca
      DropDownCount = 3
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Or'#231'amento'
        'Produ'#231#227'o')
      TabOrder = 2
      Values.Strings = (
        'O'
        'P')
    end
  end
end
