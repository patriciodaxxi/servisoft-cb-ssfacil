object fRelPedido_Res: TfRelPedido_Res
  Left = 75
  Top = 80
  Width = 1250
  Height = 563
  Caption = 'fRelPedido_Res'
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
    DataSource = DMConsPedido.dsPedido
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
        Left = 417
        Top = 2
        Width = 163
        Height = 19
        Caption = 'Relat'#243'rio de Pedidos'
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
      object RLLabel6: TRLLabel
        Left = 67
        Top = 44
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 13
        Top = 44
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 512
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel10: TRLLabel
        Left = 848
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
        Left = 682
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 602
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 759
        Top = 44
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 170
        Top = 44
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel4: TRLLabel
        Left = 914
        Top = 43
        Width = 52
        Height = 12
        Caption = 'Dt.Emiss'#227'o'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 1063
      Height = 68
      DataSource = DMConsPedido.dsPedido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 16
        object RLDBText1: TRLDBText
          Left = 987
          Top = 2
          Width = 74
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTENTREGA_ITEM'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText2: TRLDBText
          Left = 822
          Top = 2
          Width = 77
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText3: TRLDBText
          Left = 746
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText4: TRLDBText
          Left = 660
          Top = 2
          Width = 77
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText5: TRLDBText
          Left = 564
          Top = 2
          Width = 77
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText6: TRLDBText
          Left = 485
          Top = 2
          Width = 77
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText8: TRLDBText
          Left = 67
          Top = 2
          Width = 100
          Height = 12
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMConsPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 2
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMConsPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 169
          Top = 2
          Width = 312
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido
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
        object RLDBText10: TRLDBText
          Left = 910
          Top = 2
          Width = 74
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMConsPedido.dsPedido
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
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
          Width = 80
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 302
          Top = 18
          Width = 68
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido
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
          Width = 91
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 598
          Top = 18
          Width = 86
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido
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
          Width = 89
          Height = 12
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 886
          Top = 18
          Width = 85
          Height = 12
          DataField = 'VLR_FATURADO'
          DataSource = DMConsPedido.dsPedido
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
