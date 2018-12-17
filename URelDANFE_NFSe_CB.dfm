object fRelDanfe_NFSe_CB: TfRelDanfe_NFSe_CB
  Left = 238
  Top = 11
  Width = 829
  Height = 708
  VertScrollBar.Position = 132
  Caption = 'fRelDanfe_NFSe_CB'
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
    Top = -124
    Width = 794
    Height = 1123
    DataSource = DMCadNotaServico.dsmImpNota
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 19
      Width = 742
      Height = 998
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      DataSource = DMCadNotaServico.dsmImpNota
      object RLBand2: TRLBand
        Left = 1
        Top = 0
        Width = 740
        Height = 344
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand2BeforePrint
        object RLLabel8: TRLLabel
          Left = 462
          Top = 322
          Width = 35
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Qtd.'
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 428
          Top = 322
          Width = 35
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Un.'
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 394
          Top = 322
          Width = 35
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'ST'
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 73
          Top = 322
          Width = 322
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Descri'#231#227'o do Servi'#231'o'
          Transparent = False
        end
        object RLDraw18: TRLDraw
          Left = 532
          Top = 142
          Width = 210
          Height = 156
        end
        object RLDraw34: TRLDraw
          Left = 532
          Top = 170
          Width = 210
          Height = 19
        end
        object RLDraw50: TRLDraw
          Left = -1
          Top = 0
          Width = 595
          Height = 128
        end
        object RLDraw17: TRLDraw
          Left = 593
          Top = 0
          Width = 147
          Height = 128
        end
        object RLLabel64: TRLLabel
          Left = 152
          Top = 2
          Width = 281
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 152
          Top = 38
          Width = 304
          Height = 14
          AutoSize = False
          DataField = 'NOME_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 152
          Top = 23
          Width = 304
          Height = 14
          AutoSize = False
          Caption = 'NOTA FISCAL - FATURA DE SERVI'#199'OS ELETR'#212'NICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 152
          Top = 66
          Width = 350
          Height = 12
          AutoSize = False
          DataField = 'ENDERECO_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 152
          Top = 78
          Width = 25
          Height = 12
          Alignment = taRightJustify
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 178
          Top = 78
          Width = 22
          Height = 12
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 152
          Top = 90
          Width = 26
          Height = 11
          Alignment = taRightJustify
          Caption = 'I.Est:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText52: TRLDBText
          Left = 456
          Top = 2
          Width = 132
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          DisplayMask = '000000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'N'#218'MERO: '
        end
        object RLDraw53: TRLDraw
          Left = -1
          Top = 142
          Width = 532
          Height = 100
        end
        object RLLabel1: TRLLabel
          Left = 8
          Top = 146
          Width = 113
          Height = 14
          Caption = 'TOMADOR / SACADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText56: TRLDBText
          Left = 62
          Top = 222
          Width = 141
          Height = 12
          AutoSize = False
          DataField = 'CNPJ_CPF_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel83: TRLLabel
          Left = 2
          Top = 222
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ / CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 263
          Top = 222
          Width = 96
          Height = 12
          AutoSize = False
          DataField = 'INSC_ESTADUAL_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 233
          Top = 223
          Width = 29
          Height = 11
          Alignment = taRightJustify
          Caption = 'I.EST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText53: TRLDBText
          Left = 62
          Top = 162
          Width = 464
          Height = 12
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel80: TRLLabel
          Left = 2
          Top = 162
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText54: TRLDBText
          Left = 62
          Top = 174
          Width = 378
          Height = 12
          AutoSize = False
          DataField = 'ENDERECO_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel94: TRLLabel
          Left = 2
          Top = 174
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText62: TRLDBText
          Left = 62
          Top = 186
          Width = 164
          Height = 12
          AutoSize = False
          DataField = 'BAIRRO_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel97: TRLLabel
          Left = 2
          Top = 186
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText63: TRLDBText
          Left = 62
          Top = 210
          Width = 99
          Height = 12
          AutoSize = False
          DataField = 'CEP_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel98: TRLLabel
          Left = 2
          Top = 210
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel99: TRLLabel
          Left = 2
          Top = 198
          Width = 60
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Munic'#237'pio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel100: TRLLabel
          Left = 62
          Top = 198
          Width = 251
          Height = 12
          Caption = 'Cidade / UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText64: TRLDBText
          Left = 263
          Top = 210
          Width = 24
          Height = 12
          AutoSize = False
          DataField = 'DDD_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel102: TRLLabel
          Left = 234
          Top = 210
          Width = 28
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText65: TRLDBText
          Left = 289
          Top = 210
          Width = 89
          Height = 12
          AutoSize = False
          DataField = 'FONE_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = -1
          Top = 299
          Width = 743
          Height = 22
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 303
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'DESCRI'#199#195'O DOS SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 152
          Top = 52
          Width = 350
          Height = 14
          AutoSize = False
          DataField = 'FANTASIA_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw19: TRLDraw
          Left = 532
          Top = 142
          Width = 210
          Height = 29
        end
        object RLLabel35: TRLLabel
          Left = 534
          Top = 173
          Width = 67
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 603
          Top = 173
          Width = 69
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 674
          Top = 173
          Width = 67
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 618
          Top = 158
          Width = 38
          Height = 11
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Faturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw37: TRLDraw
          Left = -1
          Top = 243
          Width = 532
          Height = 55
        end
        object RLLabel40: TRLLabel
          Left = 34
          Top = 244
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 1
          Top = 258
          Width = 94
          Height = 14
          Alignment = taRightJustify
          Caption = 'COND. ESPECIAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo3: TRLMemo
          Left = 9
          Top = 272
          Width = 490
          Height = 24
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            
              'Deve para Emitente desta Nota Fiscal de Servi'#231'os Eletr'#244'nica a im' +
              'port'#226'ncia indicada no campo Valor L'#237'quido da Nota  correspondent' +
              'e aos servi'#231'os descritos adiante.')
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = -1
          Top = 322
          Width = 31
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Item'
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 29
          Top = 322
          Width = 45
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 496
          Top = 322
          Width = 55
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Vlr. Unit.'
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 550
          Top = 322
          Width = 55
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Vlr. Bruto'
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 604
          Top = 322
          Width = 55
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Desconto'
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 658
          Top = 322
          Width = 55
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Vlr. L'#237'q.'
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 712
          Top = 322
          Width = 30
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdAll
          Caption = 'Al'#237'q.'
          Transparent = False
        end
        object RLImage1: TRLImage
          Left = 5
          Top = 4
          Width = 141
          Height = 105
        end
        object RLDBText23: TRLDBText
          Left = 113
          Top = 244
          Width = 121
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_DESCONTO_COND'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 101
          Top = 258
          Width = 133
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_OUTRAS_DESPESAS'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 152
          Top = 101
          Width = 85
          Height = 11
          Alignment = taRightJustify
          Caption = 'Simples Nacional:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 239
          Top = 100
          Width = 85
          Height = 12
          Caption = 'Inscri'#231#227'o Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 152
          Top = 112
          Width = 70
          Height = 11
          Alignment = taRightJustify
          Caption = 'Nat. Opera'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 239
          Top = 112
          Width = 98
          Height = 11
          Caption = 'Presta'#231#227'o de Servi'#231'os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Dup1: TRLLabel
          Left = 553
          Top = 196
          Width = 28
          Height = 14
          Alignment = taCenter
          Visible = False
        end
        object Dup2: TRLLabel
          Left = 553
          Top = 212
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Dup3: TRLLabel
          Left = 553
          Top = 228
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Dup4: TRLLabel
          Left = 553
          Top = 244
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Dup5: TRLLabel
          Left = 553
          Top = 260
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vct1: TRLLabel
          Left = 624
          Top = 196
          Width = 26
          Height = 14
          Alignment = taCenter
          Visible = False
        end
        object Vct2: TRLLabel
          Left = 623
          Top = 212
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vct3: TRLLabel
          Left = 623
          Top = 228
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vct4: TRLLabel
          Left = 623
          Top = 244
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vct5: TRLLabel
          Left = 623
          Top = 260
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vlr1: TRLLabel
          Left = 687
          Top = 196
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Visible = False
        end
        object Vlr2: TRLLabel
          Left = 687
          Top = 212
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dup1'
          Visible = False
        end
        object Vlr3: TRLLabel
          Left = 687
          Top = 228
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dup1'
          Visible = False
        end
        object Vlr4: TRLLabel
          Left = 687
          Top = 244
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dup1'
          Visible = False
        end
        object Vlr5: TRLLabel
          Left = 687
          Top = 260
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dup1'
          Visible = False
        end
        object Dup6: TRLLabel
          Left = 553
          Top = 276
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vct6: TRLLabel
          Left = 623
          Top = 276
          Width = 28
          Height = 14
          Alignment = taCenter
          Caption = 'Dup1'
          Visible = False
        end
        object Vlr6: TRLLabel
          Left = 688
          Top = 276
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dup1'
          Visible = False
        end
        object RLImage2: TRLImage
          Left = 593
          Top = 12
          Width = 141
          Height = 105
          Picture.Data = {
            0A544A504547496D616765CB1C0000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108006C009C03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDC5
            FD99BC596BE3DFD9BFE1F6BB64B3259EB5E1AD3AFE059401208E5B58DD430048
            070C3382467BD76F5C97C02D1ED3C3BF02BC15A7D85BC3696363A0D8DBDBC10A
            048E18D2DE3554551C05000000E0015D6D377BFBDB8E52A6DDE92B47A27AD974
            5F70514514841451450014514500145145001451450014514500145145001451
            450014514500737F069258BE10785167B5BAB19D747B4125B5CF97E75BB79099
            47F2DDE3DCA783B1DD720E198609E92B8AF117C60F0CFC15F869A56ABE2BD66C
            B42D39E186117174C550B94185E3BD71FF00F0F0CF829FF451FC37FF007F5BFF
            0089A6DDDDC518D9591ECB4573DF0CFE2BF873E3278686B1E16D62CB5CD30C8D
            0FDA2D5F726F5C657EA323F3A9BE217C47D0FE147852E35CF11EA76DA4691685
            44D7570488E32CC15727DC903F1A4336E8AF1B4FF8284FC15964555F88FE1C2C
            C4281E6B724F4FE1AD2F187EDB3F0A3E1FF8867D275AF1D685A76A36D8F36DE6
            9183A67919E280B1EA54578D7FC3C33E0A7FD147F0DFFDFD6FFE268FF87867C1
            4FFA28FE1BFF00BFADFF00C4D03B1ECB4571BF09BF684F057C754BC6F08788F4
            EF102D810B706D1CB7924F4CE40EB52FC53F8F3E0DF825A77DABC59E24D27428
            48C8FB54E15D87A851963F80A0475B457CE771FF000566FD9FADEF0C07E2269A
            CC0E372C1315FCF657A17C2CFDB0FE187C6AB9583C31E37D0754B87FBB0ADC79
            7237B057C127E945C2C7A5514678A69900F5A2E03A8AF3DF899FB52F81FE1296
            8F57D6E0172BD6DE0FDECBF90E07E26B838FFE0A4FF0D5E6DA65D690671BCDAA
            EDFF00D0EBE7B19C5B92E12AFB1C4E2A119767257F9F639AA632841F2CA693F5
            3DFA8AE3FE1AFC7BF09FC5BB659342D66D6EDCF5849D92AFD54F3F957600E457
            B185C650C4D355B0F3538BD9A69AFBD1BC2719AE68BBA0A28A2BA4A3E09FF82E
            8A07FD80BC3F900FFC4CACBA8FFA675F8DFE4A7F757F2AFD50FF00828DF8EF55
            F8A5FF000459F827E27D76E85EEB7E23D17C3BAA6A170224845C5C4F6114B2BE
            C40A8BB9D98ED550A338000E2BF31FC09E11B8F1FF008CF4CD0ED36FDAB559C5
            BC393805C8381F8918FC6A19713EE0FF008210FED78BF08BE355FF00C37D62E7
            CBD0FC6A04D6059B096F7D183F2F2781221FCE35F5AFB93FE0B4CA1BFE09D5E3
            704023CDB1EBFF005F7157E1F89356F849F10CB2192C75CF0D6A071D9A19E193
            FC57F2AFD65FDA9FF691B2FDB03FE08B1AE78B2DDBFD3425941A8C59F9A0B98A
            EA10E0FD410DFF0002A6989A3F21749853FB5ECBE45FF8F88BB7FB62BDD7FE0A
            71129FDB57C604AA93BA1EDFEC5786691CEAD65FF5F117FE862BDD7FE0A6FF00
            F27A9E30FF007A1FFD02A0A3C234FD12E35694A5A595C5DC8A3252081A5603D7
            0A09AB9FF0816B5FF401D67FF05F2FFF00135F60FF00C10FFC7BE13F87DFB496
            BF75E2FD5341D274F9746F2E397559A38A267DF9C02FC66BF547FE1A77E05FFD
            0EBF0CFF00F03ED3FC6A921367E57FFC13D3F6ACB8FD82FF00660F8A9E21934A
            9D35ED5AFADACB46B7BA85E15926F2F9739032AB919C7A8AF943E2BFC60F137C
            72F175CEB9E2BD62F359D4AEE467669E42C91E493B517A2A8CF0057E8AFF00C1
            77AFF44F895F07BC07E24F04DF68DAC786AC353B9B4BDB9D2648E58229D9232A
            1DA3E338F5AFCD5F0A6B8BE18F15699A93DB4778BA7DD47726DE4FB938460DB4
            FB1C62860BB9B5A7FC06F1B6ABA42DFDAF82FC517362EBB9278B4A99A361EA08
            5E457AB7FC1347E0CDF7C47FDBD7C05A24B6F7960D637ADA95DABC6F048B1DBA
            349820E0E0B845FF008157E9DFECA5FF000586F823F19B44D3F49D4EE60F016B
            423484D8EA76FE55A96C6311CCA0C7B7FDE2A7DABEA3D07C0BE12D435CB6F14E
            95A76892DF3C2D1C1A95A4719678DB0480EBC10703F2A7615CE948F2E3E070A3
            815F327ED51FB496BDE20F1C47F0DBE1E299B5DBB6115DDDA363ECD9EAA0F418
            19CB1E95ED3E2EF8DBE1FB0F0378A352D2F5AD2354B8F0DDA4B2DCC369771CEF
            6F22A12AAE1492A490060E2BC13FE09FFE1586C3C1BE24F895AD1F32EEF6499F
            CF7E4A44B96908FAE2BE0F8BF195F118AA191E16A3A6EAA94AA4D6F1A71DECFA
            393D13E87998DA9294E38783B5F56FB25FE64567FB327C31FD9B7428B56F895A
            B8D6F59986F659199848DE8883E66FA922A0FF0086A1F801A8B8B397C237315B
            93B7CC6D39028F7F964DD5F307C5AF8A7A9FC71F88973ABEA57186BC976C28ED
            88EDA3CFCAA3D0015DF7C58F80DF0FBC21F0C56FF43F88161AD6BF6EAA67B543
            F2CC71F36CEFC1E99EB5F88C38AA76ACB20C2D0861E8ABBF68A2E735DFDE69C9
            BB5ECAED1E0AC63F7BEAD08A8C7BEEFEF3D8FC63FB20787BC75E1E4F19FC1DD7
            1ACAF23FDF24314A7CA948FE107EF237B366BBFF00D8DBF6A39FE2C59DDF867C
            4882D3C5DA1131CCAC40FB5A8382C0766046187D08EBC7CC9FB0B7C5ABDF047C
            4B9B4413B8D3F5DB6950C5B8ED494212AE3DEBB7F8ADAEC7F0875AF83BE23B18
            92DEF6E7CF37D32F0D741A601B79EFF789AFA1C8788B0D469C33FCBE1EC637E5
            AF4D7C0FDE8479A2BECB5CEA5E89A7DCE9C3E2A118AC4D35CBFCCBA6E95D7DE7
            DBC0E4515059DF2DE59C3320CA4E8245FA119FEB5329DC335FD131926AE8FA54
            CFCB3FDB6FFE5039FB3C7FD8ADE16FFD35C15F9FFF00B344FF0066FDA27C0F27
            F775AB6FFD0C57E807EDB7FF00281CFD9E3FEC56F0B7FE9AE0AFCF9FD9E5B67C
            7BF059F4D6AD7FF460A19A44FA93FE0B83FB2A3FC0FF00DA621F17E9F6863F0F
            78FE233EF45C2457B1E04A87D0B29461EBF37A5794FECB5FB403683FB36FC64F
            8637F3FF00A078AB468F52D395DB85BCB6B985CA8F7688C87FED98AFD8EFF828
            9FECB307ED6DFB2AEB7E1D5895F57B38FF00B474A723E64B88D4E00FF794B2FE
            22BF9FAD434FB9D0355B9B3B947B7BCB295EDE643C323A92ACA7F51498213473
            9D56CBFEBE22FF00D0C57BAFFC14DFFE4F53C61FEF43FF00A05785693FF218B2
            FF00AF88BFF4315EEBFF000537FF0093D4F187FBD0FF00E81486782C70BCED84
            4773E8AA49FD29FF00D9D71FF3ED73FF007E9BFC2BEE9FF8200E976DAAFED51E
            228EEADE1B88C68648591030077FBD7EC17FC213A3FF00D02EC3FEFC2FF85348
            96CFCF0FF8236FC04D07F68AFF00827478BFC21E2AB06B8D3353F115C82AEB87
            89BCA8B6BAE7A107BD7CB3FB60FF00C11C3E28FECE3ABDD5EF8774BBCF1D7853
            71686EB4C88CD75027A4B0AE5F207F10047BD7EB5FED69FB50786BF61EF8489E
            2AD5AC257D39EF63B436F648A2462F9F980EF8C5727F0CFF00E0AAFF0001FE29
            69E925BF8FF45D3A56505EDF539459C8A4F6C498CD3B20BB3F026F6CE5D3AF65
            B6B9865B6B981B6C90CA852489BD194F20FD6BE8EFD843FE0A1FE2AFD957C50B
            A35EEAB7B79E03D701B2D46D1E42ED62B20D9F688727E574CEEC7700D7D4DFF0
            5AAF8C9F00BE2A7C27B37F0CEA7E1CD73E22A5EA1B7BAD25D259120C37982574
            C8DBC2E013D7A57E62CD1996264504B38DAA07524F0296C3DCFD70FD9DBFE099
            1AC7ECCFE11F8A3E376F19C7E24B0F13F87AE3EC36F6FBCF9B1B9137992E460B
            00BDB3D4D7BDFEC84DFF00099FEC41AAE9164435E0B6BDB4DABC9DEC8C17F3AF
            52FD97BC333D8FECB7E0FD2B578D9A6FEC48A0B947EAC193907F035F3D7C20F1
            4CBFB12FED0BA9F8535F7687C2DAFCBE65ADDBF11C793F2B93D87383E99AFCDF
            8A797059DE1B31C46946A4254272FE5E669C5BEC9BD2FD0F2717686221565F0B
            4E2FCAFB1F24471E2509266320ED6C8FB9F515ECDE1FFD8D24F12E910DF5978E
            FC0925BCE81D49D49518023A329C153EA0D7B1FED2BFF04FE97C73E219FC43E0
            89AD15B502679AC9DC2A331E4B2374E7AD7883FEC31F1396664FF846E63B7A91
            32E0FD0E6BF01ABC13986558A9D0C5E025888FD9941C927E778A7BF66AE8F9B9
            65F568CDC674DC97468DDF865F0324F85DF1620D4AE357D3F55D3742CBDF5E69
            81EEADAD0B4676ABC8AA541C11DF8C8CD7BEF86BC09A67C44B4F030D4B4F8F54
            B04F0DDFC91B3C7BE347F394AB03D0375C579DFC09F82BF10BF660D1F57D7359
            4B0B6F0F5DC3E5EA16524EACFB482BE60C1C02B9E9E95F55FC16F0FC3E1FF859
            A25A453C1771476E1A39A2FB922B12E08F6C357EADC07C39174DE1EAD0746F79
            CA13576BDF872EEF58B51EA959A7E47B197E1935CB28F2F5B3F556FC8F13F0C7
            84B56D03FE10DFEC8D6F58D36F757B6BF6BAF39CCA8DE43AF94A50E303071F4A
            F75F855E2A9FC6BF0FB4CD4EE5152E2EA33E605E9B958A93F8E33F8D69EB16F1
            8D3EE1B62E5207C1C7232A735CCFECF5FF00247344FF00724FFD1AF5FA4E5596
            FF0067E3161E136E328376D6DEEFB38DED7766DF3376FE6D6E7A7469FB3A9CA9
            F4FCAC7E797ED7BE1BD47C53FF000429FD9E6DB4CB0BBD42E07857C2EDE55BC4
            647C7F65C1CE076AF83BE017C1FF00165B7C72F07CB2F8675D8E38F58B66676B
            270AA0483249C715F7C7ECF3FF000540D73F67AF801F0A3C14DE1BB2B9D374FF
            0001783ADF4FBDDB213334BA1D9CF346F86C6E0245DB8C75E735E9B7FF00F052
            EF89773A0C5A969DA17825A0D7B4ABDD77498DDE6792CADAD2E0C2F1DD0120FD
            E3E51811B403B860E2BEA19DC8FBAE2FF54BF415F8D3FF0005A2FD86F53F86FF
            00B4747E2EF0B68B7979A2F8D95A69E3B380B8B6BB4C6FC851C065208F7535F6
            37C21FF8297F88B5BFDA5BC13E00F14D8786238FC4BA4C5757779A7F9AA2DAEE
            E2369E0846E7618F290EECF3B88C62B3F5EFF8296F8F349F1F78D2D23D03C3F2
            693E19F10DAE8706EB79C3CFE6DC5BC658CBE66CDDB656F942F5C1E808269612
            3F2274BF835E2F5D5ACC9F0BEBE00B88C926CA4E3E71ED5EDBFF000525F85BE2
            6D6BF6C8F16DCD9F87B59BAB791A2DB2C568EC8DF2762057E81E81FF000537F1
            DEB5AD9F0BCDA478434DF1B6AFAE47A4D8D9DD89920D26331CB219AE5FCCFDE0
            658B0BB4A659856FF8AFFE0A51ACFC3DFDA5F4FF00873A95AF86AE9D745924BF
            BFB5320886A5F6679A38A3CB91E5B326DE493CF5A561DCF943FE0821F0FF005D
            F0AFED47E219F53D1B53D3A16D10AABDCDBB46AC77F4048AFD78AF98FC6DFB6C
            6BF61FB14783BE226916BE1D97C45E286D32192DE7666B3B492EDD14EE0AE180
            5DFDDBB57955B7FC151FC79A97C62D1FC191F877C3715EAEA577A66A97714535
            CDBCCF6F70F1192DF12AE1182E724B60E7AD35A0B71BFF0005D7F82DF113E36F
            C2DF09D9F837C3B7DAF699A65D4D77A92DA29925438509F20E48183F9D7E42EB
            FF000EF5EF0C5D1B7D4F43D52C661D527B57423F022BF67BF6A5FF00828BF8D3
            E007C5BF1BE8DFD8DE1CB4B0D074E175A2ADEA4B24DAD90911675749000159D9
            4A6D07E51CF35C1EAFFF000538F1F5DF897C29A55C7857C197F79AF69F0DC98E
            E2C668C6F9A7B88D501695BCB03C907273BB27A52634CFCA1F0BFC31F1178CF5
            08ED347D0356D46E6660A91DBDABBB313D3A0AFD01FF00826DFF00C1193C4BA9
            7C44D2BC6BF15B4EFEC9D1B48916EED3469BFD7DE4CA41432AFF000A29E707A9
            03B66BDB6D3FE0A95E20D3E1F3F4FF0008787ADED7C3D716FA6789D6385D5E1B
            D967BB5F262C30FF009656A5F9CFFAC15D4D8FEDF1F12B5EB0F094F6963F0FED
            CFC4BBF96D34059E4948D2D228E695DAF08906599612140DBF330EBD280BB3ED
            08A25B785511422200AA00C00076AE23E3B7C03D0FE3DF849B4CD621C3A65ADA
            E53896D9FB329FE95F327C28FF00829578B3E22FC58F00693A8E8BA0786F43F1
            3DC3E9F35ECE25985F5E2B15315BB070133D57706CD656ADFF00053CF1B699F1
            03C5764FA27871749D03C4F068313BC132B3A497B1DBB3B49E6ED2C15C9C051C
            8F4AE7C6E0E862E8CB0F898A9424ACD3D534673A719C5C64AE99D2699E01F8E3
            FB2B3B5A787E43E2CF0F46DFBA876F9DB17D94E593F0C55B3FB697C5BBC416B6
            FF000E196F8E06FF00B3CA467E99AAFE25FDB9FE216B5FB5278CBC03E11D3FC2
            325A7872012DB5DDE4134AB707C81290D224CAA3D0616BCD67FF0082B07C4AF0
            BD87806FB59D03C1B2C1E35D1A1D72382D23B80DE54B232AC7BCCA423617EF10
            464F4AF878F03E230CBD965D9855A54FA4749A4BB45C95D2FBCE0597CE3A52A8
            D2EDBFDD73D2E3FD9DFE2BFED47AB4373F10F539344D12360C2C633B323D0463
            807DC8CD7AF7C13F1A68DF0834ED57C1BAA6B36F6ABE1ABE30597DAA6C3BDB3C
            69227279382EC33ED5F29EA3FF00052BF893E044D4BC6371168BAD685E344BF7
            F0CE858026D11AC6E7ECCCB70570CDE691BB9C609C0A8CFF00C159A4D7AFE5BF
            BDF00F87E782DE592D2EA19AD49BB8AE23B581DD0B127812CAC338FB807D6BB7
            2FE10865D5562F0951CABBF8E751B9392B6CECD59276692EC694B02A93E783BC
            BAB7ADCFB0FE2CFC71D11BC0D756DA36B76173AA6A4C9636E914C19834AE10B0
            1FECAB13F8577BE0CF0EC5E13F0A5869B08C47690AC7F53DCFE2726BE26F8C5F
            B6DEB5FB37FC2DF06EBDAEF86FE18DF6B3E2ED4A39E08B4BB6252C74C58D1E67
            63BC9F394C91E0E40EBC57DBDE18D761F14786EC352B660D05FDBC771190720A
            BA861FCEBE870785AEABCB1189926ECA2924D595DB7BB7BE9F723A2109737348
            F903F617F0D7C32F17FECD7F04BC39ADF866C6F35EBDF873E18D765BA9D0959A
            58749B68A36CE78654451C7602BBDF00E93F0764D4F5D9345F0358C0FE27D6A5
            F0F6A122C640BA6C79AE40CE1236249213009E4D7967EC97F057C51E23FD8E7E
            12F88B448523D420F87BE144D36567004917F645B2CCA47D73F957ADD97C05D7
            BC0D7170DA6E99F6CB7D2358B3D4ADA3F34235F2AD9A453107B36F04F3D79AF9
            2C466F9DC713284693E45396BCADDE1776FB94657EF78F738E55ABF3349697ED
            D3FA5F90CF19E9BF087E155FEA10DCF82AD53FB1357D3A79278D0968EE1A1923
            82556CEE0238E265C67183D2B5BC6EBF0CB4BB2D5B47B8F0C5BDFE9F7F7565AF
            5DA264C7777134E91453F5FBC1821FC2A9EBDF08BC45F10B56BFD66F745FB247
            ACEB76123E9F2CAAF2456B0433ABB4847CB9265E809E075ACAD47F674F14E93A
            D788AD208BFB474ACE9C34A94B8575863BD499E26F740188F6E2B3AF9CE7B173
            953A4DC5B972FBAEEADCEE375BDA4947A5D3D1EE2957C42BB4B4E9A7ADBF41F6
            FF0006FE146A6356F0E68DF0A62D7349BEBC886AB768BB912656CA9123B19014
            249F908C76AE77C33E1BF870BA44762DF0C6CB536D4AFA5BE86DECD1BCC845A9
            C07691DCB3301E8403E95EADF0BEC7C4FF0006DE7D01FC353EAFA7CD7ED3DBEA
            36B708A1524233E6AB6082BFECE735C8F83FF66DD6B53D7F418F574D434DB1B5
            4BFF00B4496974A921F35F2AA4E0F0C3D39AAAF8FCE27EC9D0E6E76DF32E4B28
            BE68AB5DC6CD24E5ABE65D472A95DD9C6F7EBA6DAA33B4FF00077C0AB0F865AB
            6816DE0EB75F0A5C476BAA49688D2B2DDC8FB7C90837EE0E095000239AD7F097
            C16F855E2FF12E8FA2EA3F0D61F0EEABA05B993498250D16D8B796251A361B8E
            E249DD92493926AC78DBF679D562F165E5C787F4EB78ACF488EC27D32DDE4DB1
            DC35BB231889E48C85C64835D5E87A2EBDF117E30699E23D4B439FC3B61A0DAC
            90C515C4C924F75249D4FC9901076E727D0575E1730CDDE2153C42D5492B283E
            592E66A4F9ADA72A49C7557F3BA2A156B735A5DFB79F73CF7C7DE15F85FE24F1
            DF8C355D5FE17CBAC112FF00676B5AB1065538442D852DF28DBB325704E051E1
            EF869F0A8789E7D0FC3DF0C86A56D6F1D9B4B7914AC638D0933C272EE5B0A5D9
            863B935D2FF62F8BF44BCF1DE9163E1892E0789B5479EDB5096E512DA289E28D
            0B30E5891B4F18AC5F08FC12D47E1DFC4A9BED1E1FD6B59B48A1B082D6F6CEFC
            4118F2A1547674DC370DD93820F15CB2CD737552115CDCAE6D49F235CAAF3B25
            EEBBA69475B3E9EF6BA4BAD5AEBB5F5D36DFC8DBF1C7803E1C782F5A9348B5F0
            1DBEB1AD7882FD7C413D95A45869A7846C5BA9093804062A3D7278EB5CCF8F7E
            107C19F03785E0B8D77E1B59D9FF00C26BA8C515CD9846DF0CBB89F3BE56C460
            1EAD1EDFBDCF535E8BE31F0F6BDE0DF8C83C5DA5E8EDAFDA6A1A62E9B776B14C
            B1DC5B94919D1D377CA54EF60464741D6B9DF1E7C24F127ED01E249EE6F96EBC
            2B616BA4496B6B137973C92CD311BB3D400022F239F9B835DD8FCC3338FB68E1
            E2DD5E6B423C9EEDB47CCE4EC9DD5FED2B376B5D1A54A9557372EFD15B4F5BFF
            00C11B1FC38F84BE1FFDA0BC2FA4C3E0FD36DFC45636067D1AE563221B554524
            044CEDDE14B10D8CF5E6B86F12F833E08F8AEEFC4D787E1CC3ACDDDDEB71E9B7
            6A92483FB46EA490157037ED197C1CE2B575AF837E3DD7E26D723B24B4F14689
            A7DA47A64924AACB2CC8FB64CE3B18C9A92F7F662D6AC6E3FB2ECA0B98F4D7D4
            F4BB97BA866549408D97CE9149CE18727A1E95E4D7CF33E9397B1A2D26DB4F97
            5B34D456BD54A2DB76D9C7B98CB1188D7963F87DDF8AFC887C1FE08F83DE0CD5
            ADF54D07E1F49078BBCD7D345844F21BA5745D8CAF972A5428EA73C5753E0AF8
            51F0BFC7FE1D9F4E97C0F67632785EC57469B4CB98DB7D95BC799122186E53E6
            C83EF57B58F82D71F0BBC5FA17887C33A7DC6B46C4CC9A8412DC0FB55D79A0E6
            50EDC1704F43818F4AD6F873E0ED6AFBC4DE2DF146AB6034AB8F104696F6D606
            512491471C6115A4238DEC4138190011C9AF67098CCD562234B10AED3B34A3EE
            F2F25F9F9AD6BF35A2D5FE5D4DA152B73DA5FF0002D6DEFEBA1E5FE0AD0BE0C6
            BFAC6A7A94FF000EECB477F13D9C97D25DCF1E52F6247F9C800FEEC970090A06
            E27272735A5A27873E176A7E33B7D42FBE1A47A4C9E249249ED2FEEEDC797A83
            B4091B165DD80CD1468391C85F5AC0F04FECCFE23D4341B6D3FF00B26EB40993
            4C9ED350B9BBBB13C778C64DF1889013B075C90475E9C5771AE787BC5FF14F47
            F0F68D79E1A6D113C3E45C5CDD3DCA3A5C491C2D1A2C0073862D9CB63038E6BC
            6C0E719DCE8A9578B52D2CB91FBCDF2F327A2E5E54DEB65AF5928DDE34EBD771
            F796BE9BEC723E15F07FC09F0F7C28D7BC5B61E05D3E0B0D31AEB48B9B6915A5
            7C48C8B2468ACC4287DA87E50385E3A57D0FF0E6DB4DB4F01E911E8F6C2CF4B5
            B54FB2C0092218F190BCE4F02BE7AD3FF65AF10EE4B37B711E8B7FA6CF7B7F6C
            6404BEA2BE72443E8567CFD6315F407C2CD2EEF43F875A3D9DF47E4DDDB5B2C7
            2A641DA4718E2BDBE1CCC335C455E5CC29F2A515D2D795EEDFA34D69D1A66F86
            A95A4ED515B4FC4F38FF0082727FCA3D3E03FF00D93BF0FF00FE9B6DEBD9AB99
            F82BF0AB4EF811F06FC25E07D226BDB9D27C1BA2D9E87652DE3ABDC4B05AC090
            46D232AAA972A80B155504E7000E2BA6AFB03B028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9}
        end
        object RLDBText5: TRLDBText
          Left = 464
          Top = 19
          Width = 81
          Height = 14
          AutoSize = False
          DataField = 'SERIE'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'S'#201'RIE: '
        end
        object RLDBText6: TRLDBText
          Left = 180
          Top = 89
          Width = 113
          Height = 12
          AutoSize = False
          DataField = 'INSCR_EST_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlInscMun: TRLLabel
          Left = 297
          Top = 90
          Width = 33
          Height = 11
          Alignment = taRightJustify
          Caption = 'I.MUN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 332
          Top = 89
          Width = 101
          Height = 12
          AutoSize = False
          DataField = 'INSCMUNICIPAL_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlCNPJ: TRLLabel
          Left = 443
          Top = 90
          Width = 31
          Height = 11
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 476
          Top = 89
          Width = 113
          Height = 12
          AutoSize = False
          DataField = 'CNPJ_CPF_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 461
          Top = 112
          Width = 67
          Height = 11
          Alignment = taRightJustify
          Caption = 'Data Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 529
          Top = 112
          Width = 63
          Height = 11
          AutoSize = False
          DataField = 'DTEMISSAO_CAD'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 292
          Top = 186
          Width = 82
          Height = 12
          Alignment = taRightJustify
          Caption = 'Local Tributa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 376
          Top = 186
          Width = 150
          Height = 12
          Caption = 'Local Tributa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 437
          Top = 222
          Width = 90
          Height = 12
          AutoSize = False
          DataField = 'INSC_MUNICIPAL_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 402
          Top = 223
          Width = 33
          Height = 11
          Alignment = taRightJustify
          Caption = 'I.MUN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 449
          Top = 174
          Width = 21
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 471
          Top = 174
          Width = 55
          Height = 12
          AutoSize = False
          DataField = 'NUM_END_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel51: TRLLabel
          Left = 319
          Top = 199
          Width = 31
          Height = 11
          Alignment = taRightJustify
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 350
          Top = 198
          Width = 176
          Height = 12
          AutoSize = False
          DataField = 'EMAIL_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 1
        Top = 344
        Width = 740
        Height = 424
        DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 740
          Height = 18
          Completion = ctFullPage
          BeforePrint = RLBand5BeforePrint
          object RLDBText2: TRLDBText
            Left = 0
            Top = 0
            Width = 28
            Height = 14
            AutoSize = False
            DataField = 'ITEM'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 28
            Top = 0
            Width = 48
            Height = 14
            AutoSize = False
            DataField = 'COD_SERVICO'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 462
            Top = 0
            Width = 36
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 496
            Top = 0
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_UNITARIO'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 550
            Top = 0
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 604
            Top = 0
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DESCONTO_COND'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 658
            Top = 0
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_LIQUIDO_NFSE'
            DataSource = DMCadNotaServico.dsNotaServico_Imp_Itens
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 712
            Top = 0
            Width = 30
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERC_ALIQUOTA'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 394
            Top = 0
            Width = 36
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'N'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 77
            Top = 0
            Width = 311
            Height = 14
            AutoSize = False
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 430
            Top = 0
            Width = 32
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'UN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 18
          Width = 740
          Height = 402
          BandType = btFooter
          BeforePrint = RLBand1BeforePrint
          object RLDraw7: TRLDraw
            Left = 336
            Top = 39
            Width = 406
            Height = 93
          end
          object rllbRetencao6: TRLLabel
            Left = 344
            Top = 118
            Width = 64
            Height = 14
            Caption = 'INSS: % Ret:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw10: TRLDraw
            Left = 0
            Top = 308
            Width = 742
            Height = 33
          end
          object RLDraw9: TRLDraw
            Left = 0
            Top = 131
            Width = 742
            Height = 159
          end
          object RLDraw8: TRLDraw
            Left = 0
            Top = 289
            Width = 742
            Height = 20
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 74
            Width = 169
            Height = 58
          end
          object RLDraw5: TRLDraw
            Left = 168
            Top = 74
            Width = 169
            Height = 58
          end
          object RLDraw4: TRLDraw
            Left = 168
            Top = 17
            Width = 169
            Height = 58
          end
          object RLDraw6: TRLDraw
            Left = 336
            Top = 17
            Width = 406
            Height = 23
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 17
            Width = 169
            Height = 58
          end
          object RLLabel15: TRLLabel
            Left = 8
            Top = 19
            Width = 122
            Height = 14
            Caption = 'TOTAL DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 8
            Top = 76
            Width = 105
            Height = 14
            Caption = 'OUTRAS DESPESAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 176
            Top = 19
            Width = 51
            Height = 14
            Caption = 'BASE ISS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 176
            Top = 76
            Width = 105
            Height = 14
            Caption = 'IMPOSTO A PAGAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 344
            Top = 40
            Width = 110
            Height = 14
            Caption = 'RETEN'#199#213'ES FISCAIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 488
            Top = 22
            Width = 135
            Height = 14
            Caption = 'VALOR TOTAL DA NOTA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 8
            Top = 133
            Width = 146
            Height = 14
            Caption = 'INFORMA'#199#213'ES ADICIONAIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 508
            Top = 292
            Width = 142
            Height = 14
            Caption = 'VALOR L'#205'QUIDO A PAGAR:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 8
            Top = 311
            Width = 118
            Height = 14
            Caption = 'CONFIRA A VALIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 151
            Top = 311
            Width = 102
            Height = 14
            Alignment = taRightJustify
            Caption = 'Chave de Acesso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 56
            Top = 43
            Width = 82
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_SERVICOS'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 236
            Top = 43
            Width = 86
            Height = 14
            Alignment = taRightJustify
            DataField = 'BASE_CALCULO'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 5
            Top = 102
            Width = 133
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_OUTRAS_DESPESAS'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 276
            Top = 102
            Width = 46
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_ISS'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 648
            Top = 22
            Width = 82
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_SERVICOS'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 636
            Top = 292
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_LIQUIDO_NFSE'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 8
            Top = 146
            Width = 729
            Height = 141
            AutoSize = False
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Linha 1'
              'Linha 2'
              'Linha 3')
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 256
            Top = 311
            Width = 102
            Height = 14
            Caption = 'Chave de Acesso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 168
            Top = 326
            Width = 85
            Height = 14
            Alignment = taRightJustify
            Caption = 'Endere'#231'o web:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 257
            Top = 326
            Width = 184
            Height = 14
            Caption = 'https://nfse.campobom.rs.gov.br'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 320
            Top = 2
            Width = 57
            Height = 11
            Caption = 'Total Bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 380
            Top = 1
            Width = 54
            Height = 12
            DataField = 'VLR_TOTAL'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 456
            Top = 2
            Width = 74
            Height = 11
            Caption = 'Total Desconto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 532
            Top = 2
            Width = 66
            Height = 12
            AutoSize = False
            DataField = 'VLR_DESCONTO_COND'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel47: TRLLabel
            Left = 600
            Top = 2
            Width = 67
            Height = 11
            Caption = 'Total L'#237'quido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 669
            Top = 2
            Width = 69
            Height = 12
            AutoSize = False
            DataField = 'VLR_LIQUIDO_NFSE'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw11: TRLDraw
            Left = 0
            Top = 346
            Width = 742
            Height = 56
          end
          object RLDBText31: TRLDBText
            Left = 16
            Top = 383
            Width = 132
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUMNOTA'
            DataSource = DMCadNotaServico.dsNotaServico_Imp
            DisplayMask = '000000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = 'NFSe N'#186': '
          end
          object RLLabel38: TRLLabel
            Left = 200
            Top = 382
            Width = 213
            Height = 16
            Caption = 'Data:............................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel48: TRLLabel
            Left = 432
            Top = 382
            Width = 250
            Height = 16
            Caption = 'Assinatura:............................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel49: TRLLabel
            Left = 5
            Top = 350
            Width = 64
            Height = 16
            Caption = 'Recibo....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rllbRetencao1: TRLLabel
            Left = 344
            Top = 53
            Width = 63
            Height = 14
            Caption = 'IRRF: % Ret:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rllbRetencao2: TRLLabel
            Left = 344
            Top = 66
            Width = 63
            Height = 14
            Caption = 'IRRF: % Ret:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rllbRetencao3: TRLLabel
            Left = 344
            Top = 79
            Width = 63
            Height = 14
            Caption = 'IRRF: % Ret:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rllbRetencao4: TRLLabel
            Left = 344
            Top = 92
            Width = 63
            Height = 14
            Caption = 'IRRF: % Ret:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rllbRetencao5: TRLLabel
            Left = 344
            Top = 105
            Width = 57
            Height = 14
            Caption = 'ISS: % Ret:'
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
end
