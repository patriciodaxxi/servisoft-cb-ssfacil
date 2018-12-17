object fRelLote_Res: TfRelLote_Res
  Left = 228
  Top = 40
  Width = 960
  Height = 667
  VertScrollBar.Position = 23
  Caption = 'fRelLote_Res'
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
    Left = 80
    Top = 17
    Width = 794
    Height = 1123
    DataSource = DMCadLote.dsmLote
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand13: TRLBand
      Left = 26
      Top = 374
      Width = 742
      Height = 28
      BandType = btSummary
      BeforePrint = RLBand13BeforePrint
      object RLDraw5: TRLDraw
        Left = 448
        Top = 7
        Width = 225
        Height = 19
      end
      object RLLabel14: TRLLabel
        Left = 457
        Top = 8
        Width = 142
        Height = 16
        Alignment = taRightJustify
        Caption = 'Quantidade Total ===> '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 607
        Top = 8
        Width = 11
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 0
        Top = 0
        Width = 742
        Height = 6
        Align = faTop
        Brush.Color = 14737632
        Pen.Style = psDot
      end
    end
    object RLGroup1: TRLGroup
      Left = 26
      Top = 30
      Width = 742
      Height = 344
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 354
        Width = 742
        Height = 222
        DataSource = DMCadLote.dsmMaterial
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 38
          BandType = btHeader
          BeforePrint = RLBand6BeforePrint
          object RLDraw13: TRLDraw
            Left = 0
            Top = 16
            Width = 742
            Height = 22
            Align = faBottom
            Brush.Color = 14737632
            Pen.Style = psDot
          end
          object RLLabel7: TRLLabel
            Left = 232
            Top = 19
            Width = 143
            Height = 16
            Caption = 'Materiais acumulados'
            Color = 14737632
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 631
            Top = 20
            Width = 107
            Height = 16
            Alignment = taRightJustify
            Caption = 'Qtd.Total Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 38
          Width = 742
          Height = 73
          BeforePrint = RLBand7BeforePrint
          object RLDBText7: TRLDBText
            Left = 166
            Top = 4
            Width = 472
            Height = 14
            AutoSize = False
            DataField = 'Nome_Material'
            DataSource = DMCadLote.dsmMaterial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 0
            Top = 0
            Width = 742
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object RLDBText15: TRLDBText
            Left = 649
            Top = 1
            Width = 91
            Height = 20
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.FixedLeft = True
            Borders.FixedTop = True
            Borders.FixedRight = True
            Borders.FixedBottom = True
            DataField = 'Qtd_Consumo'
            DataSource = DMCadLote.dsmMaterial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 3
            Top = 4
            Width = 161
            Height = 14
            AutoSize = False
            DataField = 'Referencia_Mat'
            DataSource = DMCadLote.dsmMaterial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaTam1: TRLDraw
            Left = 8
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam1: TRLLabel
            Left = 12
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd1: TRLDraw
            Left = 8
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd1: TRLLabel
            Left = 12
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam2: TRLDraw
            Left = 68
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam2: TRLLabel
            Left = 72
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd2: TRLDraw
            Left = 68
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd2: TRLLabel
            Left = 72
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam3: TRLDraw
            Left = 128
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam3: TRLLabel
            Left = 132
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd3: TRLDraw
            Left = 128
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd3: TRLLabel
            Left = 132
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam4: TRLDraw
            Left = 188
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam4: TRLLabel
            Left = 192
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd4: TRLDraw
            Left = 188
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd4: TRLLabel
            Left = 192
            Top = 45
            Width = 54
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam5: TRLDraw
            Left = 248
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam5: TRLLabel
            Left = 252
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd5: TRLDraw
            Left = 248
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd5: TRLLabel
            Left = 252
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam6: TRLDraw
            Left = 308
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam6: TRLLabel
            Left = 312
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd6: TRLDraw
            Left = 308
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd6: TRLLabel
            Left = 312
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam7: TRLDraw
            Left = 368
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam7: TRLLabel
            Left = 372
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd7: TRLDraw
            Left = 368
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd7: TRLLabel
            Left = 372
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam8: TRLDraw
            Left = 428
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam8: TRLLabel
            Left = 432
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd8: TRLDraw
            Left = 428
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd8: TRLLabel
            Left = 432
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam9: TRLDraw
            Left = 488
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam9: TRLLabel
            Left = 492
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd9: TRLDraw
            Left = 488
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd9: TRLLabel
            Left = 492
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam10: TRLDraw
            Left = 548
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam10: TRLLabel
            Left = 552
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd10: TRLDraw
            Left = 548
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd10: TRLLabel
            Left = 552
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam11: TRLDraw
            Left = 608
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam11: TRLLabel
            Left = 612
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd11: TRLDraw
            Left = 608
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd11: TRLLabel
            Left = 612
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldmaTam12: TRLDraw
            Left = 668
            Top = 22
            Width = 61
            Height = 21
          end
          object maTam12: TRLLabel
            Left = 672
            Top = 25
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldmaQtd12: TRLDraw
            Left = 668
            Top = 42
            Width = 61
            Height = 29
          end
          object maQtd12: TRLLabel
            Left = 672
            Top = 45
            Width = 54
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand9: TRLBand
          Left = 0
          Top = 111
          Width = 742
          Height = 16
          BandType = btFooter
          BeforePrint = RLBand9BeforePrint
          object RLDraw11: TRLDraw
            Left = 0
            Top = 0
            Width = 742
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 576
        Width = 742
        Height = 120
        DataSource = DMCadLote.dsmTamanho
        object RLDetailGrid2: TRLDetailGrid
          Left = 0
          Top = 25
          Width = 742
          Height = 35
          ColCount = 14
          ColSpacing = 0.500000000000000000
          BeforePrint = RLDetailGrid2BeforePrint
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 51
            Height = 18
            Align = faTop
          end
          object RLDBText3: TRLDBText
            Left = 3
            Top = 3
            Width = 42
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tamanho'
            DataSource = DMCadLote.dsmTamanho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 18
            Width = 51
            Height = 17
            Align = faClient
          end
          object RLDBText6: TRLDBText
            Left = 4
            Top = 20
            Width = 42
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DMCadLote.dsmTamanho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 25
          BandType = btHeader
          BeforePrint = RLBand2BeforePrint
          object RLDraw12: TRLDraw
            Left = 0
            Top = 5
            Width = 742
            Height = 20
            Align = faBottom
            Pen.Style = psDot
          end
          object RLLabel6: TRLLabel
            Left = 232
            Top = 8
            Width = 172
            Height = 16
            Caption = 'Total da grade acumulada'
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 82
        Width = 742
        Height = 272
        DataSource = DMCadLote.dsmLote
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand1BeforePrint
          object RLDBText2: TRLDBText
            Left = 3
            Top = 5
            Width = 61
            Height = 15
            DataField = 'Num_Lote'
            DataSource = DMCadLote.dsmLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 66
            Top = 4
            Width = 138
            Height = 15
            AutoSize = False
            DataField = 'Referencia'
            DataSource = DMCadLote.dsmLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 742
            Height = 3
            Align = faTop
            Brush.Color = clBlack
          end
          object RLDBMemo1: TRLDBMemo
            Left = 207
            Top = 5
            Width = 453
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'Nome_Produto'
            DataSource = DMCadLote.dsmLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 710
            Top = 2
            Width = 29
            Height = 20
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.FixedLeft = True
            Borders.FixedTop = True
            Borders.FixedRight = True
            Borders.FixedBottom = True
            DataField = 'Qtd'
            DataSource = DMCadLote.dsmLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldtam1: TRLDraw
            Left = 8
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho1: TRLLabel
            Left = 12
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd1: TRLDraw
            Left = 8
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd1: TRLLabel
            Left = 12
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldtam2: TRLDraw
            Left = 68
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho2: TRLLabel
            Left = 72
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd2: TRLDraw
            Left = 68
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd2: TRLLabel
            Left = 72
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldtam3: TRLDraw
            Left = 128
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho3: TRLLabel
            Left = 132
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd3: TRLDraw
            Left = 128
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd3: TRLLabel
            Left = 132
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldtam4: TRLDraw
            Left = 188
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho4: TRLLabel
            Left = 192
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd4: TRLDraw
            Left = 188
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd4: TRLLabel
            Left = 192
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldtam5: TRLDraw
            Left = 248
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho5: TRLLabel
            Left = 252
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd5: TRLDraw
            Left = 248
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd5: TRLLabel
            Left = 252
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldtam6: TRLDraw
            Left = 308
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho6: TRLLabel
            Left = 312
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd6: TRLDraw
            Left = 308
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd6: TRLLabel
            Left = 312
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam7: TRLDraw
            Left = 368
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho7: TRLLabel
            Left = 372
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd7: TRLDraw
            Left = 368
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd7: TRLLabel
            Left = 372
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam8: TRLDraw
            Left = 428
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho8: TRLLabel
            Left = 432
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd8: TRLDraw
            Left = 428
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd8: TRLLabel
            Left = 432
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam9: TRLDraw
            Left = 488
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho9: TRLLabel
            Left = 492
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd9: TRLDraw
            Left = 488
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd9: TRLLabel
            Left = 492
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam10: TRLDraw
            Left = 548
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho10: TRLLabel
            Left = 552
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd10: TRLDraw
            Left = 548
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd10: TRLLabel
            Left = 552
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam11: TRLDraw
            Left = 608
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho11: TRLLabel
            Left = 612
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd11: TRLDraw
            Left = 608
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd11: TRLLabel
            Left = 612
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldTam12: TRLDraw
            Left = 668
            Top = 21
            Width = 61
            Height = 29
          end
          object Tamanho12: TRLLabel
            Left = 672
            Top = 27
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldQtd12: TRLDraw
            Left = 668
            Top = 49
            Width = 61
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
          end
          object Qtd12: TRLLabel
            Left = 672
            Top = 58
            Width = 54
            Height = 23
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 246
            Top = 86
            Width = 40
            Height = 14
            Caption = 'Material'
          end
          object RLLabel12: TRLLabel
            Left = 690
            Top = 86
            Width = 48
            Height = 14
            Caption = 'Consumo'
          end
          object RLLabel16: TRLLabel
            Left = 69
            Top = 85
            Width = 41
            Height = 14
            Caption = 'Posi'#231#227'o'
            Visible = False
          end
          object RLDraw10: TRLDraw
            Left = 70
            Top = 100
            Width = 668
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDashDotDot
          end
          object Pos1: TRLLabel
            Left = 71
            Top = 101
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat1: TRLLabel
            Left = 245
            Top = 101
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor1: TRLMemo
            Left = 418
            Top = 101
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo1: TRLLabel
            Left = 673
            Top = 101
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos2: TRLLabel
            Left = 71
            Top = 116
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat2: TRLLabel
            Left = 245
            Top = 116
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor2: TRLMemo
            Left = 418
            Top = 116
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo2: TRLLabel
            Left = 673
            Top = 116
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos3: TRLLabel
            Left = 71
            Top = 131
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat3: TRLLabel
            Left = 245
            Top = 131
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor3: TRLMemo
            Left = 418
            Top = 131
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo3: TRLLabel
            Left = 673
            Top = 131
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos4: TRLLabel
            Left = 71
            Top = 146
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat4: TRLLabel
            Left = 245
            Top = 146
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor4: TRLMemo
            Left = 418
            Top = 146
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo4: TRLLabel
            Left = 673
            Top = 146
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos5: TRLLabel
            Left = 71
            Top = 161
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat5: TRLLabel
            Left = 245
            Top = 161
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor5: TRLMemo
            Left = 418
            Top = 161
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo5: TRLLabel
            Left = 673
            Top = 161
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos6: TRLLabel
            Left = 71
            Top = 176
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat6: TRLLabel
            Left = 245
            Top = 176
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor6: TRLMemo
            Left = 418
            Top = 176
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo6: TRLLabel
            Left = 673
            Top = 176
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos7: TRLLabel
            Left = 71
            Top = 191
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat7: TRLLabel
            Left = 245
            Top = 191
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor7: TRLMemo
            Left = 418
            Top = 191
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo7: TRLLabel
            Left = 673
            Top = 191
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
          object Pos8: TRLLabel
            Left = 71
            Top = 205
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Mat8: TRLLabel
            Left = 245
            Top = 205
            Width = 170
            Height = 14
            AutoSize = False
            Visible = False
          end
          object Cor8: TRLMemo
            Left = 418
            Top = 205
            Width = 253
            Height = 14
            Behavior = [beSiteExpander]
          end
          object Consumo8: TRLLabel
            Left = 673
            Top = 205
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Visible = False
          end
        end
        object RLBand10: TRLBand
          Left = 0
          Top = 221
          Width = 742
          Height = 24
          BandType = btFooter
          BeforePrint = RLBand10BeforePrint
          object RLDraw6: TRLDraw
            Left = 448
            Top = 2
            Width = 225
            Height = 20
          end
          object RLLabel10: TRLLabel
            Left = 457
            Top = 5
            Width = 142
            Height = 16
            Alignment = taRightJustify
            Caption = 'Quantidade Total ===> '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 607
            Top = 5
            Width = 11
            Height = 16
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 57
        BandType = btHeader
        object RLDBText1: TRLDBText
          Left = 0
          Top = 7
          Width = 169
          Height = 12
          AutoSize = False
          DataField = 'Nome_Filial'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 272
          Top = 5
          Width = 62
          Height = 16
          Caption = 'Carimbo:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 200
          Top = 24
          Width = 134
          Height = 16
          Caption = 'N'#186' Ordem Produ'#231#227'o:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 585
          Top = 5
          Width = 74
          Height = 16
          Caption = 'Dt. Entrega:'
        end
        object rlCarimbo: TRLLabel
          Left = 337
          Top = 5
          Width = 59
          Height = 16
        end
        object rlOrdemProducao: TRLLabel
          Left = 339
          Top = 24
          Width = 105
          Height = 16
        end
        object rlDataEntrega: TRLLabel
          Left = 662
          Top = 5
          Width = 83
          Height = 16
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 57
        Width = 742
        Height = 25
        object RLLabel4: TRLLabel
          Left = 11
          Top = 6
          Width = 29
          Height = 16
          Caption = 'Lote'
        end
        object RLLabel1: TRLLabel
          Left = 74
          Top = 6
          Width = 65
          Height = 16
          Caption = 'Refer'#235'ncia'
        end
        object RLLabel2: TRLLabel
          Left = 215
          Top = 6
          Width = 49
          Height = 16
          Caption = 'Produto'
        end
        object RLLabel8: TRLLabel
          Left = 678
          Top = 6
          Width = 64
          Height = 16
          Caption = 'Qtde Total'
        end
      end
    end
  end
end
