object fRelPedido_FatPed: TfRelPedido_FatPed
  Left = 220
  Top = 107
  Width = 862
  Height = 563
  Caption = 'fRelPedido_FatPed'
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
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DMConsPedido.dsPedido_FatPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 60
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 43
        Width = 734
        Height = 17
        Align = faBottom
      end
      object RLLabel1: TRLLabel
        Left = 240
        Top = 2
        Width = 255
        Height = 19
        Caption = 'Relat'#243'rio de Pedidos (Faturados)'
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
        Left = 93
        Top = 46
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 187
        Top = 46
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 604
        Top = 46
        Width = 44
        Height = 12
        Caption = 'Qtd. Nota'
      end
      object RLLabel11: TRLLabel
        Left = 31
        Top = 46
        Width = 43
        Height = 12
        Caption = 'Dt.Fatura'
      end
      object RLLabel13: TRLLabel
        Left = 693
        Top = 46
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel7: TRLLabel
        Left = 248
        Top = 46
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel4: TRLLabel
        Left = 4
        Top = 45
        Width = 22
        Height = 12
        Caption = 'Filial'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 90
      Width = 734
      Height = 68
      DataSource = DMConsPedido.dsPedido_FatPed
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 16
        object RLDBText1: TRLDBText
          Left = 30
          Top = 2
          Width = 58
          Height = 12
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMConsPedido.dsPedido_FatPed
        end
        object RLDBText5: TRLDBText
          Left = 650
          Top = 2
          Width = 81
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_FatPed
        end
        object RLDBText6: TRLDBText
          Left = 561
          Top = 2
          Width = 86
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_NOTA'
          DataSource = DMConsPedido.dsPedido_FatPed
        end
        object RLDBText8: TRLDBText
          Left = 91
          Top = 2
          Width = 94
          Height = 12
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMConsPedido.dsPedido_FatPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 187
          Top = 2
          Width = 55
          Height = 12
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMConsPedido.dsPedido_FatPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 245
          Top = 2
          Width = 300
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido_FatPed
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
        object RLDBText10: TRLDBText
          Left = 4
          Top = 4
          Width = 22
          Height = 12
          Alignment = taCenter
          DataField = 'FILIAL'
          DataSource = DMConsPedido.dsPedido_FatPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
        Width = 734
        Height = 19
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
          Height = 17
          Align = faClient
        end
        object RLLabel15: TRLLabel
          Left = 404
          Top = 5
          Width = 48
          Height = 11
          Alignment = taRightJustify
          Caption = 'Total ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 537
          Top = 5
          Width = 89
          Height = 12
          Alignment = taRightJustify
          DataField = 'QTD_NOTA'
          DataSource = DMConsPedido.dsPedido_FatPed
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 646
          Top = 5
          Width = 85
          Height = 12
          Alignment = taRightJustify
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_FatPed
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
      end
    end
  end
end
