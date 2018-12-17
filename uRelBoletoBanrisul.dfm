object fRelBoletoBanrisul: TfRelBoletoBanrisul
  Left = 279
  Top = 65
  Width = 851
  Height = 650
  Caption = 'fRelBoletoBanrisul'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    AllowedBands = [btDetail]
    DataSource = DMCob_Eletronica.dsmBoleto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 1043
      DataSource = DMCob_Eletronica.dsmBoleto
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 1033
        BeforePrint = RLBand2BeforePrint
        object RLDraw28: TRLDraw
          Left = 425
          Top = 157
          Width = 114
          Height = 34
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 157
          Width = 73
          Height = 34
        end
        object RLDraw15: TRLDraw
          Left = 72
          Top = 157
          Width = 129
          Height = 34
        end
        object RLDraw16: TRLDraw
          Left = 200
          Top = 157
          Width = 89
          Height = 34
        end
        object RLDraw17: TRLDraw
          Left = 288
          Top = 157
          Width = 138
          Height = 34
        end
        object RLDraw12: TRLDraw
          Left = 425
          Top = 127
          Width = 114
          Height = 31
        end
        object RLDraw11: TRLDraw
          Left = 360
          Top = 127
          Width = 66
          Height = 31
        end
        object RLDraw10: TRLDraw
          Left = 240
          Top = 127
          Width = 121
          Height = 31
        end
        object RLDraw9: TRLDraw
          Left = 112
          Top = 127
          Width = 129
          Height = 31
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 127
          Width = 113
          Height = 31
        end
        object RLDraw24: TRLDraw
          Left = 538
          Top = 458
          Width = 202
          Height = 33
        end
        object RLDraw4: TRLDraw
          Left = 538
          Top = 34
          Width = 203
          Height = 33
        end
        object RLDraw44: TRLDraw
          Left = 0
          Top = 414
          Width = 755
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Pen.Style = psDot
        end
        object RLBarcode2: TRLBarcode
          Left = 3
          Top = 799
          Width = 432
          Height = 52
          Caption = '74893103210005770801807006430099822340000001000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          ParentFont = False
          Ratio = 3.000000000000000000
        end
        object RLDraw45: TRLDraw
          Left = 0
          Top = 458
          Width = 539
          Height = 33
        end
        object RLLabel48: TRLLabel
          Left = 1
          Top = 467
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 539
          Top = 459
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw47: TRLDraw
          Left = 0
          Top = 490
          Width = 539
          Height = 58
        end
        object RLLabel50: TRLLabel
          Left = 1
          Top = 491
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw48: TRLDraw
          Left = 538
          Top = 490
          Width = 202
          Height = 58
        end
        object RLLabel51: TRLLabel
          Left = 539
          Top = 491
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw49: TRLDraw
          Left = 0
          Top = 547
          Width = 113
          Height = 32
        end
        object RLLabel52: TRLLabel
          Left = 1
          Top = 548
          Width = 87
          Height = 12
          Caption = 'Data do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw50: TRLDraw
          Left = 538
          Top = 547
          Width = 202
          Height = 32
        end
        object RLLabel53: TRLLabel
          Left = 539
          Top = 548
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 112
          Top = 547
          Width = 129
          Height = 32
        end
        object RLLabel54: TRLLabel
          Left = 113
          Top = 548
          Width = 77
          Height = 12
          Caption = 'N'#186' do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw52: TRLDraw
          Left = 240
          Top = 547
          Width = 121
          Height = 32
        end
        object RLLabel55: TRLLabel
          Left = 241
          Top = 548
          Width = 57
          Height = 12
          Caption = 'Esp'#233'cie doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 360
          Top = 547
          Width = 66
          Height = 32
        end
        object RLLabel56: TRLLabel
          Left = 361
          Top = 548
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw54: TRLDraw
          Left = 425
          Top = 547
          Width = 114
          Height = 32
        end
        object RLLabel57: TRLLabel
          Left = 426
          Top = 548
          Width = 103
          Height = 12
          Caption = 'Data do processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw55: TRLDraw
          Left = 0
          Top = 578
          Width = 73
          Height = 35
        end
        object RLDraw56: TRLDraw
          Left = 538
          Top = 578
          Width = 202
          Height = 35
        end
        object RLLabel59: TRLLabel
          Left = 539
          Top = 581
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw58: TRLDraw
          Left = 200
          Top = 578
          Width = 89
          Height = 35
        end
        object RLLabel61: TRLLabel
          Left = 206
          Top = 579
          Width = 36
          Height = 12
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw59: TRLDraw
          Left = 288
          Top = 578
          Width = 138
          Height = 35
        end
        object RLLabel62: TRLLabel
          Left = 289
          Top = 579
          Width = 50
          Height = 12
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw60: TRLDraw
          Left = 425
          Top = 578
          Width = 114
          Height = 35
        end
        object RLLabel63: TRLLabel
          Left = 426
          Top = 579
          Width = 24
          Height = 12
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw61: TRLDraw
          Left = 0
          Top = 612
          Width = 539
          Height = 112
        end
        object RLDraw62: TRLDraw
          Left = 0
          Top = 723
          Width = 740
          Height = 62
        end
        object RLDraw63: TRLDraw
          Left = 538
          Top = 612
          Width = 202
          Height = 26
        end
        object RLDraw64: TRLDraw
          Left = 538
          Top = 637
          Width = 202
          Height = 22
        end
        object RLDraw65: TRLDraw
          Left = 538
          Top = 658
          Width = 202
          Height = 22
        end
        object RLDraw66: TRLDraw
          Left = 538
          Top = 699
          Width = 202
          Height = 25
        end
        object RLLabel64: TRLLabel
          Left = 498
          Top = 787
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 0
          Top = 504
          Width = 521
          Height = 13
          AutoSize = False
          DataField = 'NomeFilial'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 616
          Top = 474
          Width = 93
          Height = 16
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'DtVencimento'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText31: TRLDBText
          Left = 8
          Top = 565
          Width = 97
          Height = 12
          AutoSize = False
          DataField = 'DtEmissao'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel66: TRLLabel
          Left = 222
          Top = 593
          Width = 24
          Height = 14
          Caption = 'Real'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 243
          Top = 565
          Width = 102
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Especie'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 249
          Top = 435
          Width = 484
          Height = 19
          Alignment = taCenter
          Caption = '00000.00000  00000.000000  00000.000000  0  00000000000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          RealBounds.UsedUnit = buMilimeters
        end
        object RLLabel71: TRLLabel
          Left = 1
          Top = 615
          Width = 408
          Height = 12
          Caption = 
            'Instru'#231#245'es:  Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiv' +
            'a responsabilidade do cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel72: TRLLabel
          Left = 539
          Top = 614
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 539
          Top = 665
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 539
          Top = 700
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 646
          Top = 595
          Width = 63
          Height = 15
          Alignment = taRightJustify
          DataField = 'VlrParcela'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 80
          Top = 727
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 1
          Top = 726
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 703
          Top = 518
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 583
          Top = 11
          Width = 144
          Height = 19
          Caption = 'Recibo do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 363
          Top = 565
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Aceite'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 34
          Width = 539
          Height = 33
        end
        object RLLabel1: TRLLabel
          Left = 1
          Top = 43
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 543
          Top = 35
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 65
          Width = 539
          Height = 63
        end
        object RLLabel5: TRLLabel
          Left = 1
          Top = 67
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 538
          Top = 65
          Width = 203
          Height = 63
        end
        object RLLabel8: TRLLabel
          Left = 543
          Top = 67
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 538
          Top = 127
          Width = 203
          Height = 31
        end
        object RLLabel10: TRLLabel
          Left = 543
          Top = 128
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 538
          Top = 157
          Width = 203
          Height = 34
        end
        object RLLabel15: TRLLabel
          Left = 543
          Top = 159
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw18: TRLDraw
          Left = 0
          Top = 190
          Width = 539
          Height = 111
        end
        object RLDraw19: TRLDraw
          Left = 0
          Top = 300
          Width = 741
          Height = 60
        end
        object RLDraw20: TRLDraw
          Left = 538
          Top = 190
          Width = 203
          Height = 23
        end
        object RLDraw21: TRLDraw
          Left = 538
          Top = 212
          Width = 203
          Height = 21
        end
        object RLDraw22: TRLDraw
          Left = 538
          Top = 232
          Width = 203
          Height = 23
        end
        object RLDraw23: TRLDraw
          Left = 538
          Top = 276
          Width = 203
          Height = 25
        end
        object RLLabel19: TRLLabel
          Left = 499
          Top = 362
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 1
          Top = 79
          Width = 505
          Height = 13
          AutoSize = False
          DataField = 'NomeFilial'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 616
          Top = 49
          Width = 93
          Height = 16
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'DtVencimento'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 1
          Top = 191
          Width = 408
          Height = 12
          Caption = 
            'Instru'#231#245'es:  Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiv' +
            'a responsabilidade do cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 543
          Top = 191
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 551
          Top = 239
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 543
          Top = 277
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 640
          Top = 172
          Width = 71
          Height = 16
          Alignment = taRightJustify
          DataField = 'VlrParcela'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 83
          Top = 305
          Width = 62
          Height = 14
          DataField = 'NomeCliente'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 13
          Top = 304
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 703
          Top = 95
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 489
          Top = 344
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1: TRLLabel
          Left = 6
          Top = 204
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2: TRLLabel
          Left = 6
          Top = 219
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3: TRLLabel
          Left = 6
          Top = 234
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4: TRLLabel
          Left = 6
          Top = 249
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5: TRLLabel
          Left = 6
          Top = 264
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1A: TRLLabel
          Left = 4
          Top = 628
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2A: TRLLabel
          Left = 4
          Top = 642
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3A: TRLLabel
          Left = 4
          Top = 656
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4A: TRLLabel
          Left = 4
          Top = 670
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5A: TRLLabel
          Left = 4
          Top = 684
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 80
          Top = 769
          Width = 53
          Height = 14
          DataField = 'CNPJ_CPF'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 50
          Top = 344
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 47
          Top = 769
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 703
          Top = 141
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 90
          Top = 4
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLDraw2: TRLDraw
          Left = 233
          Top = 4
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel6: TRLLabel
          Left = 161
          Top = 4
          Width = 71
          Height = 30
          Caption = '041-8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -25
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 703
          Top = 562
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 1
          Top = 579
          Width = 62
          Height = 12
          Caption = 'Uso do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 72
          Top = 578
          Width = 129
          Height = 35
        end
        object RLLabel42: TRLLabel
          Left = 80
          Top = 579
          Width = 36
          Height = 12
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 99
          Top = 592
          Width = 54
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumCarteira'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 538
          Top = 679
          Width = 202
          Height = 21
        end
        object RLLabel31: TRLLabel
          Left = 80
          Top = 742
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 80
          Top = 756
          Width = 22
          Height = 14
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 83
          Top = 344
          Width = 53
          Height = 14
          DataField = 'CNPJ_CPF'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 83
          Top = 331
          Width = 22
          Height = 14
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 83
          Top = 318
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 481
          Top = 769
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 538
          Top = 254
          Width = 203
          Height = 23
        end
        object RLLabel9: TRLLabel
          Left = 1
          Top = 128
          Width = 87
          Height = 12
          Caption = 'Data do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 8
          Top = 144
          Width = 98
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtEmissao'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 113
          Top = 128
          Width = 77
          Height = 12
          Caption = 'N'#186' do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 241
          Top = 128
          Width = 57
          Height = 12
          Caption = 'Esp'#233'cie doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 243
          Top = 144
          Width = 102
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'Especie'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 361
          Top = 128
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 363
          Top = 144
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'Aceite'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 426
          Top = 128
          Width = 103
          Height = 12
          Caption = 'Data do processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 1
          Top = 158
          Width = 62
          Height = 12
          Caption = 'Uso do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 99
          Top = 171
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumCarteira'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 80
          Top = 158
          Width = 36
          Height = 12
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 222
          Top = 171
          Width = 24
          Height = 14
          Caption = 'Real'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 206
          Top = 158
          Width = 36
          Height = 12
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 289
          Top = 158
          Width = 50
          Height = 12
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 426
          Top = 158
          Width = 24
          Height = 12
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = -13
          Top = 868
          Width = 755
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Pen.Style = psDot
        end
        object RLDBText12: TRLDBText
          Left = 123
          Top = 144
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NumNota'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 181
          Top = 145
          Width = 6
          Height = 12
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 190
          Top = 144
          Width = 38
          Height = 13
          AutoSize = False
          DataField = 'Parcela'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 124
          Top = 564
          Width = 62
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NumNota'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 187
          Top = 565
          Width = 6
          Height = 12
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 196
          Top = 564
          Width = 38
          Height = 13
          AutoSize = False
          DataField = 'Parcela'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel58: TRLLabel
          Left = 9
          Top = 93
          Width = 31
          Height = 12
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 41
          Top = 93
          Width = 76
          Height = 12
          DataField = 'CNPJ_CPF_Filial'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 9
          Top = 518
          Width = 31
          Height = 12
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 41
          Top = 518
          Width = 76
          Height = 12
          DataField = 'CNPJ_CPF_Filial'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLImage1: TRLImage
          Left = 4
          Top = 1
          Width = 152
          Height = 31
          Picture.Data = {
            0A544A504547496D6167657F110000FFD8FFE000104A46494600010101006000
            600000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080026009503012200021101031101
            FFC4001D000100020300030100000000000000000000090A07080B01020506FF
            C400351000010402020102050302040701000000050203040601070809000A13
            111214151662A2E21721182237771935387578B4B6B5FFC40014010100000000
            000000000000000000000000FFC4001411010000000000000000000000000000
            0000FFDA000C03010002110311003F00BF1132C9163A7127224D98DC08922639
            14747726CF7DB8CD2DE5B50A1B29CBB2E4AD28CA588CD632EBEE652D349538A4
            A55A18CF683C42727323DEB8DAA03EE4C6E13AB25AE6F109884EADF4C75AA7BA
            F834FD1B319795665B8F25388C86DC5398C610AF86F5442A3083AFB1009409AF
            C55E1125989323C97A339F32D3843EDB0E2D6CAFE76DC4E30E612AF9DB5E3E1F
            142B18E7F1DC476CDC62D09D856EAD2DA0B565C774B94940B6B7017A11A1AD56
            2BFBC1C9047FA87540496879A54A6002F20E3D9A4E5E8C819B164DD2AE983191
            5F6B2F874178A4634D8D1E6C2798990E630CCA892E2BEDC88B2A2C86D2F47931
            9F6BE769F8EFB2B43ACBCD294DBADAD2B4294956339F3267B51234894F272966
            330EC87738F8AB386D9429C73384A53952B3842739C6318CE739F86318CE73E4
            38F471C9CD99CA6E0850B65ECEA111D6310A9FB38FD3B5CB658D9317735A980B
            B1878EB0158781A2DE1F0136162CA26BED7C9312E57048B9789286DF4468F2EE
            77FE4867FED447FF0051EF02BC243D57DD2E8B9F3864DDE7B39A983A64A832DA
            CF1F76EFC5B9311F5C77DBFEF58C67FCAEB6B4FF007C633FDBFBE319FED8CD9A
            1FD49BD38721AE41E8150E5B0BAADA8FCE8834443DB143D8DAAC64D204263502
            0426ED373AA8CA8A654D96FB2D478EE1E43B9CAF195A518F8FC39D6F4CBAA3AE
            EDC9D905EA9DD9D13D64238D59A9EE227899B637458B43D5917C82761AAB084D
            E2B17CD7447249C438453103AAC198E431EEFCD064B8CB596F2AF7D9C78EA2F5
            E6FCD1147E9BACD1763CFB4D7CAC2DAF41D3FB0EF1C83D7F06C4F4E0CCEBF4D2
            6EF62377B367ADF6744B36D1FAD86B7D8618F5C20CDB1084CE992223A1D72912
            90E212E37F2B8DB894ADB710E256DB885E30A4ADB5A7E295A149CE329527394A
            B19C6539CE33F1F3DBDFFD1FBBF8F90E40397D47EA97A93E2C6D5EC52D167AD5
            A35AF1CB456BED803E2072775D836ADD31B588B6265185C18686DB956B286051
            080A21622002BB0A634B9162B0068587A6220E1DF5AAF13193ACADCE1472651A
            F641154662E8BB1501B9F221A64290A90C5796E2473B371190B7BEDC9B67CB87
            9398EA9B84E152121754F7FF0047EEFE3E3DFF00D1FBBF8F910DB6BB9BE27D1F
            AC09DDAF6B7C59F7871E227E18C60255588B5EBE3062D3B42BFA98A564D08B2B
            915B0564A65A0EA9AB00F98EAE3C86202E7039C5439110567C2ED97D677C0813
            A8ABD7605A0B7E593661FB55984BDA7B1369E31FACD5ABF1032A05C6CF775CB9
            6163A6DE44ACE1F59AE068070BA19AC1E2765FC72249AAFE4C171BF7FF0047EE
            FE3E3DFF00D1FBBF8F90A1D517797C55ED9EAFB55CD4C06E9ACB6AE96151AC57
            BD3BB05621E3AE5488626207DBEA26C448746D9EBD99F0D614C3ADB3048D70C4
            818C981D1E19DAFCE2B19354F587F5F649DDC6DDDB516F2D76BD575D293C3432
            2F530D17DA36A8764835C8347A60C1A5D396C94ECCA927261635207850C00491
            953252E77DBC6900B12F3B39D3A1BAEBE355DF951C8D207616BAA53C1C624654
            85B276E56DB358A7A06D7AA5510D2668A8738E9796B565BC912C2448F831A716
            305468A1F366B1F89EB9BB27E35F687C7C4722B8CB3AD68ADC2B392A4DBA9FB0
            02C5AE5FE856F171A11078159860D296008EAA5882630C0C2B5CB11F073A0CF4
            328268290CB0D1D5EBDFBDBDF03BB5EE9279A3C86E49F1477646E396A0DD9AC3
            5358A8D5CBF541ADBADDB0DD9358669FB375D5A943DA055F2F5725B0A1487229
            5884E24F1D08C862708C08332C5CACF3D1D72D7AAFE31F4F5B7793BA3EB5B2F8
            CDC4DD2DBAEE8336FDC79027205FF6C5E7622036B1C47B09391451E9886899F4
            5E293AFE9551A85704B0E90871E3410492450812221691F7FF0047EEFE3E3DFF
            00D1FBBF8F94AB99EB60E19376D72140E1F7256550524B31916F9360D710CF28
            7FBA8C225AE9ED919B0513951B2E3EA1B8B8ADB4B884B3820B43997D12FBCCBE
            FBF8BDC44E0FF16F9EEAD67BA765E9EE599B8A1B5F858D5C6F5E5F03A9FAD9FB
            03AFD9EBD7DC8D5B0CC75D7480E6668C789033C8CC3B0D4CD586A65041D9E13A
            FEFF00E8FDDFC7CD7CE596FEFF000BDC64DF7C8DFC4FF39FE87EA8BB6CFF00C3
            BEFDF8CFE4FF0087039667EC7F90FD9AC1F65FB8FD2FD37DCFEC65BE93DCF7BE
            DF2BE5F695ACBA43B1DD6FBCBAD07BB380943B905D60C686DCDBF57AF4A480CE
            DDFEC1A55BBEB87026254492E03FBB16C5008246B9F55F488CCD89F52E27E577
            E10A82FBC7D1DDC175CDDB601D3DA7768EAD7B4370E6D060F49D893EAF31934D
            EC4AA6C787023894D7A6CB75B7472A9D29C98A96969B5A26C5C47CB8A4BD8404
            81747DDD1FFC65E81BF6F3FE1B3FC387F43AE14BA9FDAFFAC5FD60FCA3F2F0A6
            4C7D7FD6FF004B3577D93EDDF68FA7FA5FA42FF57F51EF7D4C6F6BDA75E418FA
            1F7FD01E7CFF00BC1A5FFF008BB9F8F024D7B76E416A7EB2B6B03DD23F7C8DE3
            D1DE58D3F62D3CA0F190DC78CCA2C2870F8C5EFC1C6430A661B04603F630E685
            1A2635F660DCE0FD6E5A9EDCF2B0A4684FA75B5375C5B2EB5CEAD25C7D3B6CDB
            1B1F670DA9DE763EFEB4AAC563B8048999D36255C366CD3EBB571102646BB3E4
            AFB120474E0CDE273C7BF2796583D7C3C711F17B64F4E0F663DA9F2F6E3C92BD
            F2CB8BB55A9311914DD2DAB5523721681ACB57089529E0A0F1255486A2CAB095
            7E549B05CCC42850982D642535D8B1230D607438B25FA67A4FDCFC1DEA52E9C1
            5E036D2D4743E556FF0083223F243977788D6E1850A48B340922AD52A83F8B04
            27631D9AE55E53F46D4ADC89835BA3459C62FD151F9F1C2D3E5841B8FED57897
            C52E4394982B92D46937FD33B12C75828402C6B59103639356313AB760871CD4
            0032592B5BB0B31264444C61C971E50E94DCA632FA70D6557ADA2EC215B73495
            3B6B838450704D9DAAEBDB0838F370250A330455D2A512C83A197173998F3869
            38B0C9B2C101F363B12E1CB6DE8D2196DE6D68C51F3817E8D9BF69EE55EA5DB1
            CC3DF9A3F6DE8DD6C79ABA1AD57AFC35D5F21B08E8153736AD593EAB75785876
            A9720D371A65B5A56083E604427EBA88486CD3C4C75F3668CCC8192C7C7F623A
            5E812213094A7E46184B91D4C3494B6DA318434D6329C25084FF009509F9518C
            6318C781C7D3A60EB834CF693D915EB8C9BDAD7B4A9B454D4B71DFD4675114AA
            87B5A4BD5CEC36C6C754CB8D36F21F031F59373131AC84C497558650C4C8F9CA
            B2A935EED7A54D79D0ED6B8F7CCEE0EF34F7182D873F6D44A1D7A9DB00D5363E
            E8844D557B658C8ECDD796ED7E1E86A7AB35D6430CADDA463F4679A832ADC155
            2AD2AC178A1A467521E8C0E7A26DB60B4D7B9A1C6A0124C17333DA7C763728E9
            CD45293DF97F4CE488351439F0CA1C425E6D2EA9B5293F0F8AF18C2B394759FA
            27B76592DA0CB726F9FB51915F626C34D8E26B4A0DB6D96C220987D4A7C684B5
            5FCC84861A638C2949873A756CEC382F3AB714266213943A1B47B7BD4274F1BD
            03F16F68733340D23963C86E6C57B74E9A7B4FDA1B641EA9BF39A26FA5F5F583
            746C86A1437A4C51CC3B0A9167295CA5B018893BE195C3A919D7F01B8E7EBF1A
            9CA5DCDDF6F287AB0BB58761F5E3C2FD2DD753BA4D8D822C75534FD6A8EFD235
            8310DA3B5DD91AB6BB6EDAF66B8D608B42E447255735046B64A50D94DCF61894
            C13764CCB1F766BE9ABD17CBBE0F716B8ADC61B58FE3CD8B85306CE33471DB44
            1256B0161097BC4627B1036C5706BD109FDD6FD721A36EC62EC3E0919B12C1F7
            2799AFCB8845705A8D51BE9D6EF1373F17A6F12396BDB35273A028B4562B5A87
            49EB435B2AE153B13D5A1CDB5AF2B7B56D87757EAEB3B9AEEA44A00576357E7C
            2D96DC51A1A0C201181C8843270E0836E1FD98D4FF004AD76DB529331D740D73
            96DC5A32220294ACB50C8D9B69E828E6E4B69CAB294AE6B35C0E877294A72A4C
            36B0ACABE54FC263FD249D7670A3941D7E725F6B72338E1AB775DDAC1CA5B9E8
            E598D8F58816692235D5774C692B5460F5C74821D72BAF4937B1EC1366920CA8
            24E43881D95CBCFDBA1FB1B39A23D341C9ED4FD44F39BAEC2DC84D0C536372A7
            70E8BD8D52BD8E87B05BA55645EABBA51ACC620589126B683AECF2516AD31819
            91832447C489319329D65BF75E44BBF41DD5A6D6EA4B87FB1F8E3B7B63EBDD9F
            63B9F25EE3BBA01FD6ED59190914159357699A246112D16712227E0BC723AD4A
            CC7F2CC7761E614F1F96E429FF00A86990A56FA4622360FB54E548380E3C81F0
            B82FC8C18DB4B772BCB9186EE6D10CC4F7F3FE5C3AE3696519F7329C67E6CAB3
            8C63E6CE3CC2BE9B1E1A71EF99DDB46C7ACF2535E82DAD43D6740DC1B247502D
            51573EAA66D716DE22B8225D845E1F6A31886218B04F9F185916A540749220CB
            798539059CE2D17D2D7A753925D64F35773F26F686F8D1FB12ADB3B8FF00B735
            10E01428D7C60F8E37B06FFAEADC2CA4DC586B838728543874E211A7E189CECB
            4CA930D31D890D29F759FBDD23FA7A7917D5DF37769F28F6A6F5D2BB1AAB7ED6
            B79A4C1ADEBF897966C10E7DAAE006C70E6CB5D8C00C1D8871A309798928664B
            CF65F79AF692A6D2B5E43217A8FB8E9A138E5D15733C0E82D39ADF4C83B45FB8
            D962B106D69510D4E1468F33BF74D846CC101E122C38B208A448C1E3BEAD6D65
            E545871DA52F29693F080EEAFF00AE9DA3D9D7A6377DF1FB48D86107DBD56EC6
            ED9B9B5E823451B075AD886E91A674E8C93AF6C265E6DC8E29A380AD26265766
            CDC32299BB8AAAFDEE78A0AA205615CF3B8EE07EC1EC8FAF9DCDC3FD6372A6D0
            AE5B30C6A99E36D37CC1B556073143DB14BBF144CE457C6152AB7A58BADCC890
            12C42710A9EFC6448723C753B21A89AE2E7417CB6D09D337203ACA15CD9ABEA5
            D9FBBB7CDAB6391DC9A8EA9613A08AEAEB652B5C54EC5A88F327974EB58D1F72
            669A46159CA56274292E829AD8679458213B103221522A6ED9ECDBA5BD10D71E
            B98FD5571F76D713CEEC18D6E9D3B927C7483741048810330677D085E46EB236
            80CD152EE876DDAB26EF32E13A1B0DB6C8F0B2ABD1B217C92AF50CF611ABFB39
            E93F80DCA8D534D2DADC711E5FD868D6ED6A59E60839AE2F950D3F718C66A30C
            EC1802875842478B20790AD9D86283609809D01D94080136E7821B9209FA60FB
            D5DADAFABDC5ADE9DA76B237C3EAE4B111C4D0DDDCFC9ED9238506ABB9F0A937
            0F5159B5B552A921AAF3686560EBD22FAD89AEB91E2B6224B698715D6E70764F
            A6C78FF67E9EAB1D5CD5F65981B6AA1DF59DFB55E421A12ECB7DFE46BF0C88AB
            15B4BD3219465A4526C5583666949A74530E6438470396FAF2D6506D1298181F
            80F73AA0AF4869FB011B088841A075E7CF5AF4A232A7C68B19BB0BE579195788
            030E497194ACD10B2CB875F183139CCC26667411F01A91266C56DDAC9FA76FFE
            82FD421FF83D4FFF00F0F90BE6FCE8EF47CF62D1405D34A6EEE7FEB2AA7180A4
            D2D786352E95BE6F7B256B60ED11A0E640A29DBCEBBB451E81420321A9AC0364
            CDB588F7DB28E00D4D1A11971F44296DC997581E9BEE4B70538E1D9B695BDEFD
            D197237CE3E3C82D3D4331528B7E48AA71C163F67C378A5B9B315B1D2DC14B5D
            E47ADAC066E74B52624CC2D86F3863DE0D75F43EFF00A03CF9FF007834BFFF00
            1773F1E4C07A7CBA72DCFD3EEB6E4952771ED5D61B4E6EEBBBD06D40E66B366D
            6CC5111AA604F889B14AA6D2143BAA7E4BA598762AA1A5F6F2DB6EE1DCB6AC23
            0B78161CF1E3C780F1E3C780F1E3C780F1E3C780F1E3C780F1E3C780F1E3C780
            F1E3C780F1E3C780F1E3C781FFD9}
        end
        object RLDraw30: TRLDraw
          Left = 236
          Top = 426
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel35: TRLLabel
          Left = 164
          Top = 426
          Width = 71
          Height = 30
          Caption = '041-8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -25
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLImage2: TRLImage
          Left = 7
          Top = 423
          Width = 152
          Height = 31
          Picture.Data = {
            0A544A504547496D6167657F110000FFD8FFE000104A46494600010101006000
            600000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080026009503012200021101031101
            FFC4001D000100020300030100000000000000000000090A07080B01020506FF
            C400351000010402020102050302040701000000050203040601070809000A13
            111214151662A2E21721182237771935387578B4B6B5FFC40014010100000000
            000000000000000000000000FFC4001411010000000000000000000000000000
            0000FFDA000C03010002110311003F00BF1132C9163A7127224D98DC08922639
            14747726CF7DB8CD2DE5B50A1B29CBB2E4AD28CA588CD632EBEE652D349538A4
            A55A18CF683C42727323DEB8DAA03EE4C6E13AB25AE6F109884EADF4C75AA7BA
            F834FD1B319795665B8F25388C86DC5398C610AF86F5442A3083AFB1009409AF
            C55E1125989323C97A339F32D3843EDB0E2D6CAFE76DC4E30E612AF9DB5E3E1F
            142B18E7F1DC476CDC62D09D856EAD2DA0B565C774B94940B6B7017A11A1AD56
            2BFBC1C9047FA87540496879A54A6002F20E3D9A4E5E8C819B164DD2AE983191
            5F6B2F874178A4634D8D1E6C2798990E630CCA892E2BEDC88B2A2C86D2F47931
            9F6BE769F8EFB2B43ACBCD294DBADAD2B4294956339F3267B51234894F272966
            330EC87738F8AB386D9429C73384A53952B3842739C6318CE739F86318CE73E4
            38F471C9CD99CA6E0850B65ECEA111D6310A9FB38FD3B5CB658D9317735A980B
            B1878EB0158781A2DE1F0136162CA26BED7C9312E57048B9789286DF4468F2EE
            77FE4867FED447FF0051EF02BC243D57DD2E8B9F3864DDE7B39A983A64A832DA
            CF1F76EFC5B9311F5C77DBFEF58C67FCAEB6B4FF007C633FDBFBE319FED8CD9A
            1FD49BD38721AE41E8150E5B0BAADA8FCE8834443DB143D8DAAC64D204263502
            0426ED373AA8CA8A654D96FB2D478EE1E43B9CAF195A518F8FC39D6F4CBAA3AE
            EDC9D905EA9DD9D13D64238D59A9EE227899B637458B43D5917C82761AAB084D
            E2B17CD7447249C438453103AAC198E431EEFCD064B8CB596F2AF7D9C78EA2F5
            E6FCD1147E9BACD1763CFB4D7CAC2DAF41D3FB0EF1C83D7F06C4F4E0CCEBF4D2
            6EF62377B367ADF6744B36D1FAD86B7D8618F5C20CDB1084CE992223A1D72912
            90E212E37F2B8DB894ADB710E256DB885E30A4ADB5A7E295A149CE329527394A
            B19C6539CE33F1F3DBDFFD1FBBF8F90E40397D47EA97A93E2C6D5EC52D167AD5
            A35AF1CB456BED803E2072775D836ADD31B588B6265185C18686DB956B286051
            080A21622002BB0A634B9162B0068587A6220E1DF5AAF13193ACADCE1472651A
            F641154662E8BB1501B9F221A64290A90C5796E2473B371190B7BEDC9B67CB87
            9398EA9B84E152121754F7FF0047EEFE3E3DFF00D1FBBF8F910DB6BB9BE27D1F
            AC09DDAF6B7C59F7871E227E18C60255588B5EBE3062D3B42BFA98A564D08B2B
            915B0564A65A0EA9AB00F98EAE3C86202E7039C5439110567C2ED97D677C0813
            A8ABD7605A0B7E593661FB55984BDA7B1369E31FACD5ABF1032A05C6CF775CB9
            6163A6DE44ACE1F59AE068070BA19AC1E2765FC72249AAFE4C171BF7FF0047EE
            FE3E3DFF00D1FBBF8F90A1D517797C55ED9EAFB55CD4C06E9ACB6AE96151AC57
            BD3BB05621E3AE5488626207DBEA26C448746D9EBD99F0D614C3ADB3048D70C4
            818C981D1E19DAFCE2B19354F587F5F649DDC6DDDB516F2D76BD575D293C3432
            2F530D17DA36A8764835C8347A60C1A5D396C94ECCA927261635207850C00491
            953252E77DBC6900B12F3B39D3A1BAEBE355DF951C8D207616BAA53C1C624654
            85B276E56DB358A7A06D7AA5510D2668A8738E9796B565BC912C2448F831A716
            305468A1F366B1F89EB9BB27E35F687C7C4722B8CB3AD68ADC2B392A4DBA9FB0
            02C5AE5FE856F171A11078159860D296008EAA5882630C0C2B5CB11F073A0CF4
            328268290CB0D1D5EBDFBDBDF03BB5EE9279A3C86E49F1477646E396A0DD9AC3
            5358A8D5CBF541ADBADDB0DD9358669FB375D5A943DA055F2F5725B0A1487229
            5884E24F1D08C862708C08332C5CACF3D1D72D7AAFE31F4F5B7793BA3EB5B2F8
            CDC4DD2DBAEE8336FDC79027205FF6C5E7622036B1C47B09391451E9886899F4
            5E293AFE9551A85704B0E90871E3410492450812221691F7FF0047EEFE3E3DFF
            00D1FBBF8F94AB99EB60E19376D72140E1F7256550524B31916F9360D710CF28
            7FBA8C225AE9ED919B0513951B2E3EA1B8B8ADB4B884B3820B43997D12FBCCBE
            FBF8BDC44E0FF16F9EEAD67BA765E9EE599B8A1B5F858D5C6F5E5F03A9FAD9FB
            03AFD9EBD7DC8D5B0CC75D7480E6668C789033C8CC3B0D4CD586A65041D9E13A
            FEFF00E8FDDFC7CD7CE596FEFF000BDC64DF7C8DFC4FF39FE87EA8BB6CFF00C3
            BEFDF8CFE4FF0087039667EC7F90FD9AC1F65FB8FD2FD37DCFEC65BE93DCF7BE
            DF2BE5F695ACBA43B1DD6FBCBAD07BB380943B905D60C686DCDBF57AF4A480CE
            DDFEC1A55BBEB87026254492E03FBB16C5008246B9F55F488CCD89F52E27E577
            E10A82FBC7D1DDC175CDDB601D3DA7768EAD7B4370E6D060F49D893EAF31934D
            EC4AA6C787023894D7A6CB75B7472A9D29C98A96969B5A26C5C47CB8A4BD8404
            81747DDD1FFC65E81BF6F3FE1B3FC387F43AE14BA9FDAFFAC5FD60FCA3F2F0A6
            4C7D7FD6FF004B3577D93EDDF68FA7FA5FA42FF57F51EF7D4C6F6BDA75E418FA
            1F7FD01E7CFF00BC1A5FFF008BB9F8F024D7B76E416A7EB2B6B03DD23F7C8DE3
            D1DE58D3F62D3CA0F190DC78CCA2C2870F8C5EFC1C6430A661B04603F630E685
            1A2635F660DCE0FD6E5A9EDCF2B0A4684FA75B5375C5B2EB5CEAD25C7D3B6CDB
            1B1F670DA9DE763EFEB4AAC563B8048999D36255C366CD3EBB571102646BB3E4
            AFB120474E0CDE273C7BF2796583D7C3C711F17B64F4E0F663DA9F2F6E3C92BD
            F2CB8BB55A9311914DD2DAB5523721681ACB57089529E0A0F1255486A2CAB095
            7E549B05CCC42850982D642535D8B1230D607438B25FA67A4FDCFC1DEA52E9C1
            5E036D2D4743E556FF0083223F243977788D6E1850A48B340922AD52A83F8B04
            27631D9AE55E53F46D4ADC89835BA3459C62FD151F9F1C2D3E5841B8FED57897
            C52E4394982B92D46937FD33B12C75828402C6B59103639356313AB760871CD4
            0032592B5BB0B31264444C61C971E50E94DCA632FA70D6557ADA2EC215B73495
            3B6B838450704D9DAAEBDB0838F370250A330455D2A512C83A197173998F3869
            38B0C9B2C101F363B12E1CB6DE8D2196DE6D68C51F3817E8D9BF69EE55EA5DB1
            CC3DF9A3F6DE8DD6C79ABA1AD57AFC35D5F21B08E8153736AD593EAB75785876
            A9720D371A65B5A56083E604427EBA88486CD3C4C75F3668CCC8192C7C7F623A
            5E812213094A7E46184B91D4C3494B6DA318434D6329C25084FF009509F9518C
            6318C781C7D3A60EB834CF693D915EB8C9BDAD7B4A9B454D4B71DFD4675114AA
            87B5A4BD5CEC36C6C754CB8D36F21F031F59373131AC84C497558650C4C8F9CA
            B2A935EED7A54D79D0ED6B8F7CCEE0EF34F7182D873F6D44A1D7A9DB00D5363E
            E8844D557B658C8ECDD796ED7E1E86A7AB35D6430CADDA463F4679A832ADC155
            2AD2AC178A1A467521E8C0E7A26DB60B4D7B9A1C6A0124C17333DA7C763728E9
            CD45293DF97F4CE488351439F0CA1C425E6D2EA9B5293F0F8AF18C2B394759FA
            27B76592DA0CB726F9FB51915F626C34D8E26B4A0DB6D96C220987D4A7C684B5
            5FCC84861A638C2949873A756CEC382F3AB714266213943A1B47B7BD4274F1BD
            03F16F68733340D23963C86E6C57B74E9A7B4FDA1B641EA9BF39A26FA5F5F583
            746C86A1437A4C51CC3B0A9167295CA5B018893BE195C3A919D7F01B8E7EBF1A
            9CA5DCDDF6F287AB0BB58761F5E3C2FD2DD753BA4D8D822C75534FD6A8EFD235
            8310DA3B5DD91AB6BB6EDAF66B8D608B42E447255735046B64A50D94DCF61894
            C13764CCB1F766BE9ABD17CBBE0F716B8ADC61B58FE3CD8B85306CE33471DB44
            1256B0161097BC4627B1036C5706BD109FDD6FD721A36EC62EC3E0919B12C1F7
            2799AFCB8845705A8D51BE9D6EF1373F17A6F12396BDB35273A028B4562B5A87
            49EB435B2AE153B13D5A1CDB5AF2B7B56D87757EAEB3B9AEEA44A00576357E7C
            2D96DC51A1A0C201181C8843270E0836E1FD98D4FF004AD76DB529331D740D73
            96DC5A32220294ACB50C8D9B69E828E6E4B69CAB294AE6B35C0E877294A72A4C
            36B0ACABE54FC263FD249D7670A3941D7E725F6B72338E1AB775DDAC1CA5B9E8
            E598D8F58816692235D5774C692B5460F5C74821D72BAF4937B1EC1366920CA8
            24E43881D95CBCFDBA1FB1B39A23D341C9ED4FD44F39BAEC2DC84D0C536372A7
            70E8BD8D52BD8E87B05BA55645EABBA51ACC620589126B683AECF2516AD31819
            91832447C489319329D65BF75E44BBF41DD5A6D6EA4B87FB1F8E3B7B63EBDD9F
            63B9F25EE3BBA01FD6ED59190914159357699A246112D16712227E0BC723AD4A
            CC7F2CC7761E614F1F96E429FF00A86990A56FA4622360FB54E548380E3C81F0
            B82FC8C18DB4B772BCB9186EE6D10CC4F7F3FE5C3AE3696519F7329C67E6CAB3
            8C63E6CE3CC2BE9B1E1A71EF99DDB46C7ACF2535E82DAD43D6740DC1B247502D
            51573EAA66D716DE22B8225D845E1F6A31886218B04F9F185916A540749220CB
            798539059CE2D17D2D7A753925D64F35773F26F686F8D1FB12ADB3B8FF00B735
            10E01428D7C60F8E37B06FFAEADC2CA4DC586B838728543874E211A7E189CECB
            4CA930D31D890D29F759FBDD23FA7A7917D5DF37769F28F6A6F5D2BB1AAB7ED6
            B79A4C1ADEBF897966C10E7DAAE006C70E6CB5D8C00C1D8871A309798928664B
            CF65F79AF692A6D2B5E43217A8FB8E9A138E5D15733C0E82D39ADF4C83B45FB8
            D962B106D69510D4E1468F33BF74D846CC101E122C38B208A448C1E3BEAD6D65
            E545871DA52F29693F080EEAFF00AE9DA3D9D7A6377DF1FB48D86107DBD56EC6
            ED9B9B5E823451B075AD886E91A674E8C93AF6C265E6DC8E29A380AD26265766
            CDC32299BB8AAAFDEE78A0AA205615CF3B8EE07EC1EC8FAF9DCDC3FD6372A6D0
            AE5B30C6A99E36D37CC1B556073143DB14BBF144CE457C6152AB7A58BADCC890
            12C42710A9EFC6448723C753B21A89AE2E7417CB6D09D337203ACA15CD9ABEA5
            D9FBBB7CDAB6391DC9A8EA9613A08AEAEB652B5C54EC5A88F327974EB58D1F72
            669A46159CA56274292E829AD8679458213B103221522A6ED9ECDBA5BD10D71E
            B98FD5571F76D713CEEC18D6E9D3B927C7483741048810330677D085E46EB236
            80CD152EE876DDAB26EF32E13A1B0DB6C8F0B2ABD1B217C92AF50CF611ABFB39
            E93F80DCA8D534D2DADC711E5FD868D6ED6A59E60839AE2F950D3F718C66A30C
            EC1802875842478B20790AD9D86283609809D01D94080136E7821B9209FA60FB
            D5DADAFABDC5ADE9DA76B237C3EAE4B111C4D0DDDCFC9ED9238506ABB9F0A937
            0F5159B5B552A921AAF3686560EBD22FAD89AEB91E2B6224B698715D6E70764F
            A6C78FF67E9EAB1D5CD5F65981B6AA1DF59DFB55E421A12ECB7DFE46BF0C88AB
            15B4BD3219465A4526C5583666949A74530E6438470396FAF2D6506D1298181F
            80F73AA0AF4869FB011B088841A075E7CF5AF4A232A7C68B19BB0BE579195788
            030E497194ACD10B2CB875F183139CCC26667411F01A91266C56DDAC9FA76FFE
            82FD421FF83D4FFF00F0F90BE6FCE8EF47CF62D1405D34A6EEE7FEB2AA7180A4
            D2D786352E95BE6F7B256B60ED11A0E640A29DBCEBBB451E81420321A9AC0364
            CDB588F7DB28E00D4D1A11971F44296DC997581E9BEE4B70538E1D9B695BDEFD
            D197237CE3E3C82D3D4331528B7E48AA71C163F67C378A5B9B315B1D2DC14B5D
            E47ADAC066E74B52624CC2D86F3863DE0D75F43EFF00A03CF9FF007834BFFF00
            1773F1E4C07A7CBA72DCFD3EEB6E4952771ED5D61B4E6EEBBBD06D40E66B366D
            6CC5111AA604F889B14AA6D2143BAA7E4BA598762AA1A5F6F2DB6EE1DCB6AC23
            0B78161CF1E3C780F1E3C780F1E3C780F1E3C780F1E3C780F1E3C780F1E3C780
            F1E3C780F1E3C780F1E3C781FFD9}
        end
        object RLDBText18: TRLDBText
          Left = 91
          Top = 41
          Width = 441
          Height = 15
          AutoSize = False
          DataField = 'LocalDePagamento'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 92
          Top = 466
          Width = 441
          Height = 15
          AutoSize = False
          DataField = 'LocalDePagamento'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 432
          Top = 144
          Width = 94
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtBoleto'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 436
          Top = 563
          Width = 94
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtBoleto'
          DataSource = DMCob_Eletronica.dsmBoleto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
