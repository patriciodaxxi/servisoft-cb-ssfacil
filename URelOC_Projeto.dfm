object fRelOC_Projeto: TfRelOC_Projeto
  Left = 59
  Top = 134
  Width = 1250
  Height = 563
  Caption = 'fRelOC_Projeto'
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
    Left = 48
    Top = 16
    Width = 1123
    Height = 794
    DataSource = DMConsOC.dsOC_Projeto
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
        Left = 412
        Top = 44
        Width = 30
        Height = 12
        Caption = 'N'#186' OC'
      end
      object RLLabel9: TRLLabel
        Left = 666
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
      object RLLabel13: TRLLabel
        Left = 760
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel7: TRLLabel
        Left = 487
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Fornecedor'
      end
      object RLLabel10: TRLLabel
        Left = 941
        Top = 44
        Width = 55
        Height = 12
        Caption = 'Dt. Emiss'#227'o'
      end
      object RLLabel6: TRLLabel
        Left = 799
        Top = 44
        Width = 46
        Height = 12
        Caption = 'Solicitante'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 1063
      Height = 193
      DataSource = DMConsOC.dsOC_Projeto
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
          Left = 528
          Top = 4
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 574
          Top = 4
          Width = 50
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsOC.dsOC_Projeto
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 702
          Top = 4
          Width = 97
          Height = 12
          DataField = 'VLR_PROJETO'
          DataSource = DMConsOC.dsOC_Projeto
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 660
          Top = 4
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLLabel27: TRLLabel
          Left = 188
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
        DataFields = 'NOME_PROJETO'
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 1063
          Height = 19
          BandType = btHeader
          object RLLabel19: TRLLabel
            Left = 60
            Top = 4
            Width = 39
            Height = 11
            Alignment = taRightJustify
            Caption = 'Projeto:'
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
            DataField = 'NOME_PROJETO'
            DataSource = DMConsOC.dsOC_Projeto
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
          object RLDBText1: TRLDBText
            Left = 1000
            Top = 2
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTENTREGA_ITEM'
            DataSource = DMConsOC.dsOC_Projeto
          end
          object RLDBText5: TRLDBText
            Left = 718
            Top = 2
            Width = 81
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_PROJETO'
            DataSource = DMConsOC.dsOC_Projeto
          end
          object RLDBText6: TRLDBText
            Left = 648
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMConsOC.dsOC_Projeto
          end
          object RLDBText9: TRLDBText
            Left = 409
            Top = 2
            Width = 73
            Height = 12
            AutoSize = False
            DataField = 'NUM_PEDIDO'
            DataSource = DMConsOC.dsOC_Projeto
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
            DataSource = DMConsOC.dsOC_Projeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 484
            Top = 2
            Width = 163
            Height = 12
            AutoSize = False
            DataField = 'FANTASIA'
            DataSource = DMConsOC.dsOC_Projeto
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
          object RLDBText8: TRLDBText
            Left = 934
            Top = 2
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMConsOC.dsOC_Projeto
          end
          object RLDBMemo1: TRLDBMemo
            Left = 72
            Top = 2
            Width = 336
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'NOMEPRODUTO'
            DataSource = DMConsOC.dsOC_Projeto
          end
          object RLDBText2: TRLDBText
            Left = 800
            Top = 2
            Width = 132
            Height = 12
            AutoSize = False
            DataField = 'NOME_FUNCIONARIO'
            DataSource = DMConsOC.dsOC_Projeto
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
          Top = 34
          Width = 1063
          Height = 19
          BandType = btSummary
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
            Left = 526
            Top = 5
            Width = 44
            Height = 12
            Alignment = taRightJustify
            Caption = 'Qtd.Total:'
          end
          object RLDBResult5: TRLDBResult
            Left = 572
            Top = 5
            Width = 50
            Height = 12
            DataField = 'QTD'
            DataSource = DMConsOC.dsOC_Projeto
            Info = riSum
            ResetAfterPrint = True
          end
          object RLDBResult6: TRLDBResult
            Left = 700
            Top = 5
            Width = 97
            Height = 12
            DataField = 'VLR_PROJETO'
            DataSource = DMConsOC.dsOC_Projeto
            DisplayMask = '###,###,##0.00'
            Info = riSum
            ResetAfterPrint = True
          end
          object RLLabel23: TRLLabel
            Left = 658
            Top = 5
            Width = 40
            Height = 12
            Alignment = taRightJustify
            Caption = 'Vlr.Total:'
          end
          object RLLabel26: TRLLabel
            Left = 181
            Top = 4
            Width = 95
            Height = 12
            Alignment = taRightJustify
            Caption = 'Total Por Projeto ===>'
          end
        end
      end
    end
  end
end
