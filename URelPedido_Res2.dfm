object fRelPedido_Res2: TfRelPedido_Res2
  Left = 64
  Top = 168
  Width = 1250
  Height = 563
  Caption = 'fRelPedido_Res2'
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
        Left = 249
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
        Left = 636
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
        Left = 659
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
        Left = 616
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
        Left = 659
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
        Left = 58
        Top = 44
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 2
        Top = 44
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 510
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel11: TRLLabel
        Left = 162
        Top = 44
        Width = 53
        Height = 12
        Caption = 'Dt.Entregue'
      end
      object RLLabel12: TRLLabel
        Left = 622
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 295
        Top = 45
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel4: TRLLabel
        Left = 223
        Top = 43
        Width = 52
        Height = 12
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel5: TRLLabel
        Left = 679
        Top = 44
        Width = 51
        Height = 12
        Caption = 'V.Pendente'
      end
      object RLLabel10: TRLLabel
        Left = 586
        Top = 44
        Width = 32
        Height = 12
        Caption = 'V.Total'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 734
      Height = 68
      DataSource = DMConsPedido.dsPedido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 17
        object RLDBText1: TRLDBText
          Left = 157
          Top = 2
          Width = 62
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTENTREGA_ITEM'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText4: TRLDBText
          Left = 623
          Top = 2
          Width = 50
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText6: TRLDBText
          Left = 512
          Top = 2
          Width = 50
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText8: TRLDBText
          Left = 56
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
          Width = 53
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
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText10: TRLDBText
          Left = 221
          Top = 2
          Width = 70
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBMemo1: TRLDBMemo
          Left = 293
          Top = 4
          Width = 219
          Height = 10
          Behavior = [beSiteExpander]
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 562
          Top = 2
          Width = 61
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido
        end
        object RLDBText3: TRLDBText
          Left = 674
          Top = 2
          Width = 58
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 17
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
          Left = 32
          Top = 5
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 78
          Top = 5
          Width = 80
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel17: TRLLabel
          Left = 237
          Top = 5
          Width = 63
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Pendente:'
        end
        object RLDBResult3: TRLDBResult
          Left = 302
          Top = 5
          Width = 91
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel13: TRLLabel
          Left = 36
          Top = 18
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLDBResult2: TRLDBResult
          Left = 78
          Top = 18
          Width = 68
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel14: TRLLabel
          Left = 241
          Top = 18
          Width = 59
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Pendente:'
        end
        object RLDBResult4: TRLDBResult
          Left = 302
          Top = 18
          Width = 86
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
      end
    end
  end
end
