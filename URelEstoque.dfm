object fRelEstoque: TfRelEstoque
  Left = 80
  Top = 42
  Width = 1224
  Height = 657
  HorzScrollBar.Position = 780
  Caption = 'fRelEstoque'
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
    Left = -732
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DMConsEstoque.dsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 69
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 128
        Top = 21
        Width = 465
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'RELAT'#211'RIO DO ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 675
        Top = 3
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 629
        Top = 18
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 675
        Top = 19
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 39
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbFilial: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 39
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 665
        Top = 40
        Width = 59
        Height = 14
        Caption = 'Saldo Geral'
      end
      object RLLabel5: TRLLabel
        Left = 665
        Top = 54
        Width = 73
        Height = 14
        Caption = 'Nas Empresas'
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 53
        Width = 56
        Height = 14
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel7: TRLLabel
        Left = 118
        Top = 53
        Width = 70
        Height = 14
        Caption = 'Nome Produto'
      end
      object RLLabel8: TRLLabel
        Left = 605
        Top = 53
        Width = 30
        Height = 14
        Caption = 'Saldo'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 67
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 491
        Top = 52
        Width = 47
        Height = 14
        Caption = 'Tamanho'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 95
      Width = 742
      Height = 145
      DataSource = DMConsEstoque.dsEstoque
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 13
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 1
          Top = 0
          Width = 115
          Height = 11
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 551
          Top = 0
          Width = 85
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 661
          Top = 0
          Width = 79
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDGERAL'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 11
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText11: TRLDBText
          Left = 479
          Top = 0
          Width = 68
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'TAMPRODUTO'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 120
          Top = 0
          Width = 353
          Height = 11
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = 68
    Top = 19
    Width = 1123
    Height = 794
    DataSource = DMConsEstoque.dsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand3: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 69
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel9: TRLLabel
        Left = 272
        Top = 21
        Width = 168
        Height = 16
        Caption = 'RELAT'#211'RIO DO ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 977
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 1003
        Top = 3
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 957
        Top = 18
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 1003
        Top = 19
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 39
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 35
        Top = 39
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 993
        Top = 40
        Width = 59
        Height = 14
        Caption = 'Saldo Geral'
      end
      object RLLabel17: TRLLabel
        Left = 993
        Top = 54
        Width = 73
        Height = 14
        Caption = 'Nas Empresas'
      end
      object RLLabel18: TRLLabel
        Left = 1
        Top = 53
        Width = 56
        Height = 14
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel19: TRLLabel
        Left = 120
        Top = 53
        Width = 70
        Height = 14
        Caption = 'Nome Produto'
      end
      object RLLabel20: TRLLabel
        Left = 597
        Top = 53
        Width = 30
        Height = 14
        Caption = 'Saldo'
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 67
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel23: TRLLabel
        Left = 665
        Top = 52
        Width = 47
        Height = 14
        Caption = 'Pr. Custo'
      end
      object RLLabel24: TRLLabel
        Left = 830
        Top = 52
        Width = 51
        Height = 14
        Caption = 'Pr. Venda'
      end
      object RLLabel25: TRLLabel
        Left = 730
        Top = 52
        Width = 68
        Height = 14
        Caption = 'V.Total Custo'
      end
      object RLLabel26: TRLLabel
        Left = 895
        Top = 52
        Width = 72
        Height = 14
        Caption = 'V.Total Venda'
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 26
      Top = 95
      Width = 1071
      Height = 145
      DataSource = DMConsEstoque.dsEstoque
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 17
        BeforePrint = RLBand4BeforePrint
        object RLDBText2: TRLDBText
          Left = 1
          Top = 2
          Width = 115
          Height = 12
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 543
          Top = 2
          Width = 85
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 989
          Top = 2
          Width = 79
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDGERAL'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 15
          Width = 1071
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText7: TRLDBText
          Left = 630
          Top = 2
          Width = 83
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_CUSTO'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 801
          Top = 2
          Width = 82
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECO_VENDA'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 714
          Top = 2
          Width = 86
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clTotal_Custo'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 884
          Top = 2
          Width = 84
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clTotal_Venda'
          DataSource = DMConsEstoque.dsEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo2: TRLMemo
          Left = 120
          Top = 2
          Width = 415
          Height = 11
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 17
        Width = 1071
        Height = 16
        BandType = btSummary
        object RLLabel27: TRLLabel
          Left = 496
          Top = 1
          Width = 78
          Height = 11
          Caption = 'Total Geral === >'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 672
          Top = 0
          Width = 128
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clTotal_Custo'
          DataSource = DMConsEstoque.dsEstoque
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 839
          Top = 0
          Width = 128
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clTotal_Venda'
          DataSource = DMConsEstoque.dsEstoque
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
      end
    end
  end
end
