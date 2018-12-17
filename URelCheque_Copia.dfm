object fRelCheque_Copia: TfRelCheque_Copia
  Left = 86
  Top = 100
  Width = 1233
  Height = 573
  VertScrollBar.Position = 12
  Caption = 'fRelCheque_Copia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 160
    Top = 12
    Width = 794
    Height = 559
    DataSource = dmCadCheque.dsCheque_Imp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 148.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 331
      DataSource = dmCadCheque.dsCheque_Imp
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 206
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand1BeforePrint
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 161
          Align = faTop
        end
        object RLDraw6: TRLDraw
          Left = 9
          Top = 45
          Width = 76
          Height = 53
          Pen.Style = psDot
        end
        object RLDraw5: TRLDraw
          Left = 85
          Top = 45
          Width = 620
          Height = 53
          Pen.Style = psDot
        end
        object RLLabel1: TRLLabel
          Left = 328
          Top = 25
          Width = 125
          Height = 16
          Caption = 'C'#243'pia de Cheque N'#186':'
        end
        object RLDBText1: TRLDBText
          Left = 456
          Top = 22
          Width = 99
          Height = 20
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataField = 'NUM_CHEQUE'
          DataSource = dmCadCheque.dsCheque_Imp
        end
        object RLLabel2: TRLLabel
          Left = 24
          Top = 25
          Width = 55
          Height = 16
          Caption = 'Ag'#234'ncia:'
        end
        object RLLabel3: TRLLabel
          Left = 82
          Top = 22
          Width = 59
          Height = 20
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = 'Ag'#234'ncia:'
        end
        object RLLabel4: TRLLabel
          Left = 160
          Top = 25
          Width = 26
          Height = 16
          Caption = 'CC:'
        end
        object RLLabel5: TRLLabel
          Left = 189
          Top = 22
          Width = 59
          Height = 20
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = 'Ag'#234'ncia:'
        end
        object RLMemo1: TRLMemo
          Left = 88
          Top = 49
          Width = 609
          Height = 44
          AutoSize = False
          Behavior = [beSiteExpander]
        end
        object RLLabel6: TRLLabel
          Left = 8
          Top = 100
          Width = 70
          Height = 16
          Caption = 'Favorecido:'
        end
        object RLDBText2: TRLDBText
          Left = 81
          Top = 101
          Width = 608
          Height = 15
          AutoSize = False
          DataField = 'NOMINAL'
          DataSource = dmCadCheque.dsCheque_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 8
          Top = 128
          Width = 321
          Height = 16
          DataField = 'NOME_BANCO'
          DataSource = dmCadCheque.dsCheque_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 392
          Top = 144
          Width = 313
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 167
          Width = 718
          Height = 21
          Align = faTop
        end
        object RLPanel1: TRLPanel
          Left = 0
          Top = 161
          Width = 718
          Height = 6
          Align = faTop
        end
        object RLLabel8: TRLLabel
          Left = 456
          Top = 170
          Width = 66
          Height = 16
          Caption = 'Bom Para:'
        end
        object RLDBText4: TRLDBText
          Left = 528
          Top = 170
          Width = 93
          Height = 16
          DataField = 'DTBOM_PARA'
          DataSource = dmCadCheque.dsCheque_Imp
        end
        object RLLabel9: TRLLabel
          Left = 24
          Top = 190
          Width = 79
          Height = 14
          Caption = 'Utilizado para:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 605
          Top = 22
          Width = 59
          Height = 20
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = 'Ag'#234'ncia:'
        end
        object RLLabel37: TRLLabel
          Left = 32
          Top = 52
          Width = 40
          Height = 14
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 40
          Top = 67
          Width = 24
          Height = 14
          Caption = 'POR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 24
          Top = 81
          Width = 50
          Height = 14
          Caption = 'EXTENSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 2
          Top = 18
          Width = 716
          Height = 2
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel15: TRLLabel
          Left = 8
          Top = 2
          Width = 46
          Height = 14
          Caption = 'Emitente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 56
          Top = 2
          Width = 46
          Height = 14
          Caption = 'Emitente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 229
        Width = 718
        Height = 66
        DataSource = dmCadCheque.dsCheque_Imp_Tit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 20
          BandType = btHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel10: TRLLabel
            Left = 8
            Top = 3
            Width = 62
            Height = 14
            Caption = 'N'#186' Duplicata'
          end
          object RLLabel11: TRLLabel
            Left = 112
            Top = 3
            Width = 39
            Height = 14
            Caption = 'Parcela'
          end
          object RLLabel12: TRLLabel
            Left = 200
            Top = 3
            Width = 57
            Height = 14
            Caption = 'Valor T'#237'tulo'
          end
          object RLLabel13: TRLLabel
            Left = 280
            Top = 3
            Width = 69
            Height = 14
            Caption = 'Nome Pessoa'
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 20
          Width = 718
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText5: TRLDBText
            Left = 8
            Top = 3
            Width = 82
            Height = 14
            DataField = 'NUMDUPLICATA'
            DataSource = dmCadCheque.dsCheque_Imp_Tit
          end
          object RLDBText6: TRLDBText
            Left = 104
            Top = 2
            Width = 51
            Height = 14
            Alignment = taCenter
            DataField = 'PARCELA'
            DataSource = dmCadCheque.dsCheque_Imp_Tit
          end
          object RLDBText7: TRLDBText
            Left = 198
            Top = 2
            Width = 60
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_PAGO'
            DataSource = dmCadCheque.dsCheque_Imp_Tit
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText9: TRLDBText
            Left = 280
            Top = 2
            Width = 428
            Height = 14
            AutoSize = False
            DataField = 'NOME_PESSOA'
            DataSource = dmCadCheque.dsCheque_Imp_Tit
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 206
        Width = 718
        Height = 23
        BeforePrint = RLBand2BeforePrint
        object RLMemo2: TRLMemo
          Left = 26
          Top = 5
          Width = 681
          Height = 15
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 369
      Width = 718
      Height = 8
      BandType = btFooter
      object RLDraw4: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 2
        Align = faTop
        DrawKind = dkLine
      end
    end
  end
  object ValorPorExtenso1: TValorPorExtenso
    MoedaNoSingular = 'Real'
    MoedaNoPlural = 'Reais'
    TipoDoTexto = ttMaiuscula
    Genero = gMasculino
    Left = 786
    Top = 18
  end
end
