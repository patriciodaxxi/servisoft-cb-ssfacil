object fRelEstoque_Bal: TfRelEstoque_Bal
  Left = 204
  Top = 86
  Width = 928
  Height = 573
  Caption = 'fRelEstoque_Bal'
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
    Left = 48
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMConsEstoque.dsBalanco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 23
      Top = 26
      Width = 748
      Height = 49
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 748
        Height = 15
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 278
        Top = 0
        Width = 192
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio Balan'#231'o do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 644
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 2
        Width = 54
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 629
        Top = 14
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 14
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 33
        Top = 37
        Width = 27
        Height = 10
        Caption = 'C'#243'digo'
      end
      object RLLabel4: TRLLabel
        Left = 183
        Top = 37
        Width = 22
        Height = 10
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 458
        Top = 37
        Width = 21
        Height = 10
        Caption = 'Saldo'
      end
      object RLLabel6: TRLLabel
        Left = 6
        Top = 23
        Width = 34
        Height = 10
        Caption = 'Empresa:'
      end
      object RLLabel7: TRLLabel
        Left = 46
        Top = 23
        Width = 21
        Height = 10
        Caption = 'Filial:'
      end
      object RLLabel3: TRLLabel
        Left = 508
        Top = 37
        Width = 35
        Height = 10
        Caption = 'Pr. M'#233'dio'
      end
      object RLLabel9: TRLLabel
        Left = 714
        Top = 37
        Width = 33
        Height = 10
        Caption = 'Vlr. Total'
      end
      object RLLabel11: TRLLabel
        Left = 82
        Top = 37
        Width = 39
        Height = 10
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel12: TRLLabel
        Left = 578
        Top = 37
        Width = 22
        Height = 10
        Caption = 'ICMS'
      end
      object RLLabel13: TRLLabel
        Left = 647
        Top = 37
        Width = 11
        Height = 10
        Caption = 'IPI'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 75
      Width = 748
      Height = 123
      DataSource = DMConsEstoque.dsBalanco
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 748
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 1
          Width = 82
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nome'
        end
        object RLMemo1: TRLMemo
          Left = 183
          Top = 1
          Width = 275
          Height = 10
          Behavior = [beSiteExpander]
        end
        object RLDBText1: TRLDBText
          Left = 456
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_ESTOQUE'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText2: TRLDBText
          Left = 508
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clPreco_Medio'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText3: TRLDBText
          Left = 685
          Top = 1
          Width = 63
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clVlr_Total'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText4: TRLDBText
          Left = 82
          Top = 1
          Width = 101
          Height = 10
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsEstoque.dsBalanco
        end
        object rlICMS: TRLLabel
          Left = 584
          Top = 1
          Width = 42
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
        end
        object rlIPI: TRLLabel
          Left = 628
          Top = 1
          Width = 49
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
        end
        object RLDBText5: TRLDBText
          Left = 560
          Top = 1
          Width = 30
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERC_ICMS'
          DataSource = DMConsEstoque.dsBalanco
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 748
        Height = 42
        BandType = btSummary
        BeforePrint = RLBand3BeforePrint
        object RLLabel10: TRLLabel
          Left = 395
          Top = 2
          Width = 55
          Height = 10
          Caption = 'Total ................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 686
          Top = 2
          Width = 62
          Height = 10
          Alignment = taRightJustify
          DataField = 'clVlr_Total'
          DataSource = DMConsEstoque.dsBalanco
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlTotIcms: TRLLabel
          Left = 560
          Top = 2
          Width = 66
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlTotIPI: TRLLabel
          Left = 628
          Top = 2
          Width = 49
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlTotQtd: TRLLabel
          Left = 456
          Top = 2
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlLiquido: TRLLabel
          Left = 723
          Top = 26
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = '0.00'
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
