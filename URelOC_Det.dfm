object fRelOC_Det: TfRelOC_Det
  Left = 64
  Top = 168
  Width = 1250
  Height = 563
  Caption = 'fRelOC_Det'
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
    Width = 1123
    Height = 794
    DataSource = DMConsOC.dsOC_Item
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 1063
      Height = 58
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 41
        Width = 1063
        Height = 17
        Align = faBottom
      end
      object RLLabel1: TRLLabel
        Left = 409
        Top = 2
        Width = 244
        Height = 19
        Caption = 'Relat'#243'rio de Ordens de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 964
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
        Left = 987
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
        Left = 944
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
        Left = 987
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
        Left = 72
        Top = 44
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
      object RLLabel8: TRLLabel
        Left = 373
        Top = 44
        Width = 30
        Height = 12
        Caption = 'N'#186' OC'
      end
      object RLLabel9: TRLLabel
        Left = 624
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel11: TRLLabel
        Left = 1006
        Top = 44
        Width = 53
        Height = 12
        Caption = 'Dt.Entregue'
      end
      object RLLabel12: TRLLabel
        Left = 752
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 702
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 808
        Top = 43
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 445
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Fornecedor'
      end
      object RLLabel6: TRLLabel
        Left = 882
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Q.Entregue'
      end
      object RLLabel10: TRLLabel
        Left = 941
        Top = 44
        Width = 55
        Height = 12
        Caption = 'Dt. Emiss'#227'o'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 1063
      Height = 193
      DataSource = DMConsOC.dsOC_Item
      object RLBand3: TRLBand
        Left = 0
        Top = 97
        Width = 1063
        Height = 18
        BandType = btSummary
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 1063
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 2
          Width = 1063
          Height = 16
          Align = faClient
        end
        object RLLabel15: TRLLabel
          Left = 264
          Top = 4
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 310
          Top = 4
          Width = 50
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsOC.dsOC_Item
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 438
          Top = 4
          Width = 82
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsOC.dsOC_Item
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 396
          Top = 4
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLLabel17: TRLLabel
          Left = 581
          Top = 4
          Width = 63
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Pendente:'
        end
        object RLDBResult3: TRLDBResult
          Left = 646
          Top = 4
          Width = 103
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsOC.dsOC_Item
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 846
          Top = 4
          Width = 102
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsOC.dsOC_Item
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel18: TRLLabel
          Left = 785
          Top = 4
          Width = 59
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Pendente:'
        end
        object RLLabel27: TRLLabel
          Left = 108
          Top = 4
          Width = 88
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total Por Geral ===>'
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1063
        Height = 97
        DataFields = 'NOME_FUNCIONARIO'
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 1063
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand4BeforePrint
          object RLLabel19: TRLLabel
            Left = 45
            Top = 4
            Width = 54
            Height = 11
            Alignment = taRightJustify
            Caption = 'Solicitante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 102
            Top = 4
            Width = 728
            Height = 12
            AutoSize = False
            DataField = 'NOME_FUNCIONARIO'
            DataSource = DMConsOC.dsOC_Item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 19
          Width = 1063
          Height = 15
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 1000
            Top = 2
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTENTREGA_ITEM'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText3: TRLDBText
            Left = 804
            Top = 2
            Width = 63
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_RESTANTE'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText4: TRLDBText
            Left = 740
            Top = 2
            Width = 63
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_RESTANTE'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText5: TRLDBText
            Left = 676
            Top = 2
            Width = 63
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText6: TRLDBText
            Left = 608
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText9: TRLDBText
            Left = 370
            Top = 2
            Width = 73
            Height = 12
            AutoSize = False
            DataField = 'NUM_PEDIDO'
            DataSource = DMConsOC.dsOC_Item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 1
            Top = 2
            Width = 68
            Height = 12
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = DMConsOC.dsOC_Item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 444
            Top = 2
            Width = 163
            Height = 12
            AutoSize = False
            DataField = 'FANTASIA_FORN'
            DataSource = DMConsOC.dsOC_Item
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
            Width = 1063
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText2: TRLDBText
            Left = 869
            Top = 2
            Width = 63
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_FATURADO'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLDBText8: TRLDBText
            Left = 934
            Top = 2
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMConsOC.dsOC_Item
          end
          object RLMemo1: TRLMemo
            Left = 70
            Top = 2
            Width = 299
            Height = 12
            Behavior = [beSiteExpander]
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 34
          Width = 1063
          Height = 19
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLDraw5: TRLDraw
            Left = 0
            Top = 0
            Width = 1063
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object RLDraw6: TRLDraw
            Left = 0
            Top = 2
            Width = 1063
            Height = 17
            Align = faClient
          end
          object RLLabel20: TRLLabel
            Left = 264
            Top = 5
            Width = 44
            Height = 12
            Alignment = taRightJustify
            Caption = 'Qtd.Total:'
          end
          object RLDBResult5: TRLDBResult
            Left = 310
            Top = 5
            Width = 50
            Height = 12
            DataField = 'QTD'
            DataSource = DMConsOC.dsOC_Item
            Info = riSum
            ResetAfterPrint = True
          end
          object RLDBResult6: TRLDBResult
            Left = 438
            Top = 5
            Width = 82
            Height = 12
            DataField = 'VLR_TOTAL'
            DataSource = DMConsOC.dsOC_Item
            DisplayMask = '###,###,##0.00'
            Info = riSum
            ResetAfterPrint = True
          end
          object RLLabel23: TRLLabel
            Left = 396
            Top = 5
            Width = 40
            Height = 12
            Alignment = taRightJustify
            Caption = 'Vlr.Total:'
          end
          object RLLabel24: TRLLabel
            Left = 581
            Top = 5
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Caption = 'Qtd.Pendente:'
          end
          object RLDBResult7: TRLDBResult
            Left = 646
            Top = 5
            Width = 103
            Height = 12
            DataField = 'QTD_RESTANTE'
            DataSource = DMConsOC.dsOC_Item
            Info = riSum
            ResetAfterPrint = True
          end
          object RLDBResult8: TRLDBResult
            Left = 846
            Top = 5
            Width = 102
            Height = 12
            DataField = 'VLR_RESTANTE'
            DataSource = DMConsOC.dsOC_Item
            DisplayMask = '###,###,##0.00'
            Info = riSum
            ResetAfterPrint = True
          end
          object RLLabel25: TRLLabel
            Left = 785
            Top = 5
            Width = 59
            Height = 12
            Alignment = taRightJustify
            Caption = 'Vlr.Pendente:'
          end
          object RLLabel26: TRLLabel
            Left = 87
            Top = 4
            Width = 109
            Height = 12
            Alignment = taRightJustify
            Caption = 'Total Por Solicitante ===>'
          end
        end
      end
    end
  end
end
