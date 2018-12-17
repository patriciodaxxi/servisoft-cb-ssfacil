object fRelPedido_Ref_Acum: TfRelPedido_Ref_Acum
  Left = 142
  Top = 142
  Width = 1003
  Height = 563
  Caption = 'fRelPedido_Ref_Acum'
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
    DataSource = DMConsPedido.dsPedido_Ref_Acum
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 58
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 41
        Width = 734
        Height = 17
        Align = faBottom
      end
      object RLLabel1: TRLLabel
        Left = 145
        Top = 2
        Width = 380
        Height = 19
        Caption = 'Relat'#243'rio de Pedidos Por Refer'#234'ncia (Acumulada)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 644
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
        Left = 667
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
        Left = 624
        Top = 16
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
        Left = 667
        Top = 16
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
        Left = 4
        Top = 29
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
      end
      object RLLabel3: TRLLabel
        Left = 39
        Top = 29
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 44
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel5: TRLLabel
        Left = 91
        Top = 44
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
      object RLLabel9: TRLLabel
        Left = 408
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel10: TRLLabel
        Left = 681
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Q.Faturada'
      end
      object RLLabel12: TRLLabel
        Left = 541
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 491
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 605
        Top = 44
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 734
      Height = 68
      DataSource = DMConsPedido.dsPedido_Ref_Acum
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 14
        object RLDBText2: TRLDBText
          Left = 664
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 596
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 528
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 460
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 391
          Top = 2
          Width = 68
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 1
          Top = 2
          Width = 98
          Height = 10
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 100
          Top = 2
          Width = 289
          Height = 10
          AutoSize = False
          DataField = 'NOME_PRODUTO'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 14
        Width = 734
        Height = 32
        BandType = btSummary
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 2
          Width = 734
          Height = 30
          Align = faClient
        end
        object RLLabel15: TRLLabel
          Left = 8
          Top = 5
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 54
          Top = 5
          Width = 50
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 54
          Top = 18
          Width = 82
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 12
          Top = 18
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLLabel17: TRLLabel
          Left = 285
          Top = 5
          Width = 63
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Pendente:'
        end
        object RLDBResult3: TRLDBResult
          Left = 350
          Top = 5
          Width = 103
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 350
          Top = 18
          Width = 102
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel18: TRLLabel
          Left = 289
          Top = 18
          Width = 59
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Pendente:'
        end
        object RLLabel19: TRLLabel
          Left = 561
          Top = 5
          Width = 61
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Faturado:'
        end
        object RLDBResult5: TRLDBResult
          Left = 624
          Top = 5
          Width = 106
          Height = 12
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 624
          Top = 18
          Width = 105
          Height = 12
          DataField = 'VLR_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref_Acum
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel20: TRLLabel
          Left = 565
          Top = 18
          Width = 57
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Faturado:'
        end
      end
    end
  end
end
