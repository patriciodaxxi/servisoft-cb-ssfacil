object fRelEstoque_Bal: TfRelEstoque_Bal
  Left = 248
  Top = 105
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
    Margins.LeftMargin = 9.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 34
      Top = 26
      Width = 726
      Height = 49
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 726
        Height = 15
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 267
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
        Left = 192
        Top = 37
        Width = 22
        Height = 10
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 569
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
        Left = 621
        Top = 37
        Width = 35
        Height = 10
        Caption = 'Pr. M'#233'dio'
      end
      object RLLabel9: TRLLabel
        Left = 690
        Top = 37
        Width = 33
        Height = 10
        Caption = 'Vlr. Total'
      end
      object RLLabel11: TRLLabel
        Left = 87
        Top = 37
        Width = 39
        Height = 10
        Caption = 'Refer'#234'ncia'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 75
      Width = 726
      Height = 120
      DataSource = DMConsEstoque.dsBalanco
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 726
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 726
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel8: TRLLabel
          Left = 2
          Top = 2
          Width = 82
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nome'
        end
        object RLMemo1: TRLMemo
          Left = 190
          Top = 2
          Width = 331
          Height = 10
          Behavior = [beSiteExpander]
        end
        object RLDBText1: TRLDBText
          Left = 523
          Top = 2
          Width = 69
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_ESTOQUE'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText2: TRLDBText
          Left = 595
          Top = 2
          Width = 64
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clPreco_Medio'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText3: TRLDBText
          Left = 661
          Top = 3
          Width = 63
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clVlr_Total'
          DataSource = DMConsEstoque.dsBalanco
        end
        object RLDBText4: TRLDBText
          Left = 87
          Top = 2
          Width = 101
          Height = 10
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsEstoque.dsBalanco
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 726
        Height = 15
        BandType = btSummary
        object RLLabel10: TRLLabel
          Left = 555
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
          Left = 662
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
      end
    end
  end
end
