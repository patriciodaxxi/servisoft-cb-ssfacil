object fRelPedido_Ref: TfRelPedido_Ref
  Left = 52
  Top = 143
  Width = 1250
  Height = 563
  Caption = 'fRelPedido_Ref'
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
    DataSource = DMConsPedido.dsPedido_Ref
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
        Left = 337
        Top = 2
        Width = 369
        Height = 19
        Caption = 'Relat'#243'rio de Pedidos Por Refer'#234'ncia Por Pedido'
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
        Left = 91
        Top = 44
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
      object RLLabel6: TRLLabel
        Left = 414
        Top = 44
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 360
        Top = 44
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 703
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel10: TRLLabel
        Left = 955
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Q.Faturada'
      end
      object RLLabel11: TRLLabel
        Left = 1007
        Top = 44
        Width = 53
        Height = 12
        Caption = 'Dt.Entregue'
      end
      object RLLabel12: TRLLabel
        Left = 826
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 780
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 882
        Top = 44
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 516
        Top = 44
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 1063
      Height = 68
      DataSource = DMConsPedido.dsPedido_Ref
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 1006
          Top = 2
          Width = 56
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTENTREGA_ITEM'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText2: TRLDBText
          Left = 943
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText3: TRLDBText
          Left = 880
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText4: TRLDBText
          Left = 817
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText5: TRLDBText
          Left = 754
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText6: TRLDBText
          Left = 695
          Top = 2
          Width = 58
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Ref
        end
        object RLDBText8: TRLDBText
          Left = 415
          Top = 2
          Width = 100
          Height = 12
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMConsPedido.dsPedido_Ref
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 359
          Top = 2
          Width = 55
          Height = 12
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMConsPedido.dsPedido_Ref
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
          Width = 86
          Height = 12
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsPedido.dsPedido_Ref
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 516
          Top = 2
          Width = 178
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido_Ref
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
        object RLMemo1: TRLMemo
          Left = 90
          Top = 2
          Width = 267
          Height = 12
          Behavior = [beSiteExpander]
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 1063
        Height = 32
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
          Height = 30
          Align = faClient
        end
        object RLLabel15: TRLLabel
          Left = 256
          Top = 5
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 302
          Top = 5
          Width = 50
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Ref
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 302
          Top = 18
          Width = 82
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Ref
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 260
          Top = 18
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLLabel17: TRLLabel
          Left = 533
          Top = 5
          Width = 63
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Pendente:'
        end
        object RLDBResult3: TRLDBResult
          Left = 598
          Top = 5
          Width = 103
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 598
          Top = 18
          Width = 102
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Ref
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel18: TRLLabel
          Left = 537
          Top = 18
          Width = 59
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Pendente:'
        end
        object RLLabel19: TRLLabel
          Left = 823
          Top = 5
          Width = 61
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Faturado:'
        end
        object RLDBResult5: TRLDBResult
          Left = 886
          Top = 5
          Width = 106
          Height = 12
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 886
          Top = 18
          Width = 105
          Height = 12
          DataField = 'VLR_FATURADO'
          DataSource = DMConsPedido.dsPedido_Ref
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel20: TRLLabel
          Left = 827
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
