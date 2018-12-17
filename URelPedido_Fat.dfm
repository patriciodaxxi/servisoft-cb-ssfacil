object fRelPedido_Fat: TfRelPedido_Fat
  Left = 37
  Top = 106
  Width = 1250
  Height = 563
  Caption = 'fRelPedido_Fat'
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
    Left = 56
    Top = 24
    Width = 1123
    Height = 794
    DataSource = DMConsPedido.dsPedido_Fat
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
      Height = 78
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw5: TRLDraw
        Left = 821
        Top = 40
        Width = 242
        Height = 22
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 61
        Width = 1063
        Height = 17
        Align = faBottom
      end
      object RLLabel1: TRLLabel
        Left = 417
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
        Top = 64
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel5: TRLLabel
        Left = 72
        Top = 64
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
      object RLLabel6: TRLLabel
        Left = 371
        Top = 64
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 315
        Top = 64
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 712
        Top = 64
        Width = 44
        Height = 12
        Caption = 'Qtd. Nota'
      end
      object RLLabel10: TRLLabel
        Left = 947
        Top = 64
        Width = 66
        Height = 12
        Caption = 'Q. J'#225' Faturada'
      end
      object RLLabel11: TRLLabel
        Left = 1007
        Top = 64
        Width = 53
        Height = 12
        Caption = 'Dt.Entregue'
      end
      object RLLabel12: TRLLabel
        Left = 826
        Top = 64
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 782
        Top = 64
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 882
        Top = 64
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 466
        Top = 64
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel23: TRLLabel
        Left = 896
        Top = 45
        Width = 100
        Height = 12
        Caption = 'Informa'#231#245'es do Pedido'
      end
      object RLDraw6: TRLDraw
        Left = 821
        Top = 63
        Width = 1
        Height = 16
      end
      object RLLabel19: TRLLabel
        Left = 657
        Top = 63
        Width = 24
        Height = 12
        Caption = 'Peso'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 108
      Width = 1063
      Height = 68
      DataSource = DMConsPedido.dsPedido_Fat
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
          AutoSize = False
          DataField = 'DTENTREGA'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText2: TRLDBText
          Left = 943
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText3: TRLDBText
          Left = 880
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText4: TRLDBText
          Left = 825
          Top = 2
          Width = 53
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText5: TRLDBText
          Left = 761
          Top = 2
          Width = 62
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText6: TRLDBText
          Left = 703
          Top = 2
          Width = 57
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Fat
        end
        object RLDBText8: TRLDBText
          Left = 373
          Top = 2
          Width = 94
          Height = 12
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMConsPedido.dsPedido_Fat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 317
          Top = 2
          Width = 55
          Height = 12
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMConsPedido.dsPedido_Fat
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
          DataSource = DMConsPedido.dsPedido_Fat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 468
          Top = 2
          Width = 173
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido_Fat
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
          Left = 71
          Top = 2
          Width = 246
          Height = 12
          Behavior = [beSiteExpander]
        end
        object RLDBText11: TRLDBText
          Left = 643
          Top = 2
          Width = 59
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PESOBRUTO'
          DataSource = DMConsPedido.dsPedido_Fat
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
          Left = 227
          Top = 5
          Width = 73
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total (Nota):'
        end
        object RLDBResult1: TRLDBResult
          Left = 302
          Top = 5
          Width = 118
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Fat
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 302
          Top = 18
          Width = 114
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Fat
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 231
          Top = 18
          Width = 69
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total (Nota):'
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
          Width = 90
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Fat
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 598
          Top = 18
          Width = 86
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Fat
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
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 30
      Top = 176
      Width = 1063
      Height = 89
      DataSource = DMConsPedido.dsTipoMaterial
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 25
        BandType = btHeader
        object RLLabel20: TRLLabel
          Left = 16
          Top = 4
          Width = 262
          Height = 16
          Caption = 'Resumo Por Tipo de Material (Peso)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 25
        Width = 1063
        Height = 19
        ColCount = 5
        object RLDraw7: TRLDraw
          Left = 0
          Top = 0
          Width = 213
          Height = 19
          Align = faClient
        end
        object RLDBText12: TRLDBText
          Left = 5
          Top = 3
          Width = 124
          Height = 13
          AutoSize = False
          DataField = 'DESC_TIPO_MATERIAL'
          DataSource = DMConsPedido.dsTipoMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 135
          Top = 2
          Width = 75
          Height = 13
          Alignment = taRightJustify
          DataField = 'PESOBRUTO'
          DataSource = DMConsPedido.dsTipoMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
