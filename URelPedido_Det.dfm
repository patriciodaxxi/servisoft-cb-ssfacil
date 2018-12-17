object fRelPedido_Det: TfRelPedido_Det
  Left = 66
  Top = 83
  Width = 1250
  Height = 563
  Caption = 'fRelPedido_Det'
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
    Left = 64
    Top = 24
    Width = 1123
    Height = 794
    DataSource = DMConsPedido.dsPedido_Item
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
        Left = 403
        Top = 44
        Width = 17
        Height = 12
        Caption = 'OC'
      end
      object RLLabel8: TRLLabel
        Left = 349
        Top = 44
        Width = 51
        Height = 12
        Caption = 'Ped.Interno'
      end
      object RLLabel9: TRLLabel
        Left = 681
        Top = 44
        Width = 50
        Height = 12
        Caption = 'Quantidade'
      end
      object RLLabel10: TRLLabel
        Left = 982
        Top = 44
        Width = 30
        Height = 12
        Caption = 'Q.Fat.'
      end
      object RLLabel11: TRLLabel
        Left = 1022
        Top = 44
        Width = 38
        Height = 12
        Caption = 'DT.Entr.'
      end
      object RLLabel12: TRLLabel
        Left = 853
        Top = 44
        Width = 52
        Height = 12
        Caption = 'Q.Pendente'
      end
      object RLLabel13: TRLLabel
        Left = 812
        Top = 44
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel14: TRLLabel
        Left = 911
        Top = 44
        Width = 59
        Height = 12
        Caption = 'Vlr. Pendente'
      end
      object RLLabel7: TRLLabel
        Left = 472
        Top = 44
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel24: TRLLabel
        Left = 1017
        Top = 30
        Width = 38
        Height = 10
        Caption = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 735
        Top = 43
        Width = 49
        Height = 12
        Caption = 'Vlr.Unit'#225'rio'
      end
      object RLLabel23: TRLLabel
        Left = 651
        Top = 43
        Width = 25
        Height = 12
        Caption = 'Unid.'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 88
      Width = 1063
      Height = 180
      DataSource = DMConsPedido.dsPedido_Item
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 13
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 1015
          Top = 2
          Width = 46
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTENTREGA_ITEM'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 972
          Top = 2
          Width = 41
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 907
          Top = 2
          Width = 63
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 865
          Top = 2
          Width = 41
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 802
          Top = 2
          Width = 46
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 689
          Top = 2
          Width = 41
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 403
          Top = 2
          Width = 68
          Height = 10
          AutoSize = False
          DataField = 'PEDIDO_CLIENTE'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 357
          Top = 2
          Width = 45
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUM_PEDIDO'
          DataSource = DMConsPedido.dsPedido_Item
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
          Width = 87
          Height = 10
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 472
          Top = 2
          Width = 173
          Height = 10
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMConsPedido.dsPedido_Item
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
        object RLDBText11: TRLDBText
          Left = 739
          Top = 2
          Width = 46
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_UNITARIO'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 89
          Top = 2
          Width = 265
          Height = 10
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 649
          Top = 2
          Width = 27
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = DMConsPedido.dsPedido_Item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 77
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
          Left = 48
          Top = 5
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Total:'
        end
        object RLDBResult1: TRLDBResult
          Left = 94
          Top = 5
          Width = 50
          Height = 12
          DataField = 'QTD'
          DataSource = DMConsPedido.dsPedido_Item
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 94
          Top = 18
          Width = 82
          Height = 12
          DataField = 'VLR_TOTAL'
          DataSource = DMConsPedido.dsPedido_Item
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel16: TRLLabel
          Left = 52
          Top = 18
          Width = 40
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
        end
        object RLLabel17: TRLLabel
          Left = 325
          Top = 5
          Width = 63
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Pendente:'
        end
        object RLDBResult3: TRLDBResult
          Left = 390
          Top = 5
          Width = 103
          Height = 12
          DataField = 'QTD_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Item
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 390
          Top = 18
          Width = 102
          Height = 12
          DataField = 'VLR_RESTANTE'
          DataSource = DMConsPedido.dsPedido_Item
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel18: TRLLabel
          Left = 329
          Top = 18
          Width = 59
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Pendente:'
        end
        object RLLabel19: TRLLabel
          Left = 615
          Top = 5
          Width = 61
          Height = 12
          Alignment = taRightJustify
          Caption = 'Qtd.Faturado:'
        end
        object RLDBResult5: TRLDBResult
          Left = 678
          Top = 5
          Width = 106
          Height = 12
          DataField = 'QTD_FATURADO'
          DataSource = DMConsPedido.dsPedido_Item
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 678
          Top = 18
          Width = 105
          Height = 12
          DataField = 'VLR_FATURADO'
          DataSource = DMConsPedido.dsPedido_Item
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel20: TRLLabel
          Left = 619
          Top = 18
          Width = 57
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Faturado:'
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 13
        Width = 1063
        Height = 64
        DataSource = DMConsPedido.dsmNota_Ped
        object RLDetailGrid2: TRLDetailGrid
          Left = 0
          Top = 0
          Width = 1063
          Height = 22
          ColCount = 2
          object RLLabel38: TRLLabel
            Left = 16
            Top = 5
            Width = 39
            Height = 12
            Caption = 'N'#186' Nota:'
          end
          object RLDBText17: TRLDBText
            Left = 56
            Top = 5
            Width = 48
            Height = 12
            DataField = 'Num_Nota'
            DataSource = DMConsPedido.dsmNota_Ped
          end
          object RLDBText18: TRLDBText
            Left = 151
            Top = 5
            Width = 47
            Height = 12
            DataField = 'Item_Nota'
            DataSource = DMConsPedido.dsmNota_Ped
          end
          object RLLabel39: TRLLabel
            Left = 114
            Top = 5
            Width = 35
            Height = 12
            Caption = 'It.Nota:'
          end
          object RLDBText19: TRLDBText
            Left = 241
            Top = 5
            Width = 18
            Height = 12
            DataField = 'Qtd'
            DataSource = DMConsPedido.dsmNota_Ped
          end
          object RLLabel40: TRLLabel
            Left = 218
            Top = 5
            Width = 21
            Height = 12
            Caption = 'Qtd:'
          end
          object RLLabel41: TRLLabel
            Left = 306
            Top = 5
            Width = 55
            Height = 12
            Caption = 'Dt.Emiss'#227'o:'
          end
          object RLDBText20: TRLDBText
            Left = 363
            Top = 5
            Width = 49
            Height = 12
            DataField = 'DtEmissao'
            DataSource = DMConsPedido.dsmNota_Ped
          end
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 30
      Top = 268
      Width = 1063
      Height = 93
      DataSource = DMConsPedido.dsmUnidade
      BeforePrint = RLSubDetail2BeforePrint
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 25
        BandType = btHeader
        BeforePrint = RLBand5BeforePrint
        object RLLabel26: TRLLabel
          Left = 8
          Top = 7
          Width = 41
          Height = 11
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 60
          Top = 7
          Width = 55
          Height = 11
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 128
          Top = 7
          Width = 67
          Height = 11
          Caption = 'Qtd. Pendente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 208
          Top = 7
          Width = 65
          Height = 11
          Caption = 'Qtd. Faturada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 370
          Top = 7
          Width = 41
          Height = 11
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 418
          Top = 7
          Width = 55
          Height = 11
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 487
          Top = 7
          Width = 67
          Height = 11
          Caption = 'Qtd. Pendente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 567
          Top = 7
          Width = 65
          Height = 11
          Caption = 'Qtd. Faturada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 722
          Top = 7
          Width = 41
          Height = 11
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 770
          Top = 7
          Width = 55
          Height = 11
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 839
          Top = 7
          Width = 67
          Height = 11
          Caption = 'Qtd. Pendente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 919
          Top = 7
          Width = 65
          Height = 11
          Caption = 'Qtd. Faturada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 3
          Top = 20
          Width = 267
          Height = 2
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 366
          Top = 20
          Width = 267
          Height = 2
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 718
          Top = 20
          Width = 267
          Height = 2
          DrawKind = dkLine
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 25
        Width = 1063
        Height = 15
        ColCount = 3
        BeforePrint = RLDetailGrid1BeforePrint
        object RLDBText13: TRLDBText
          Left = 2
          Top = 1
          Width = 42
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Unidade'
          DataSource = DMConsPedido.dsmUnidade
        end
        object RLDBText14: TRLDBText
          Left = 94
          Top = 1
          Width = 18
          Height = 12
          Alignment = taRightJustify
          DataField = 'Qtd'
          DataSource = DMConsPedido.dsmUnidade
        end
        object RLDBText15: TRLDBText
          Left = 149
          Top = 1
          Width = 43
          Height = 12
          Alignment = taRightJustify
          DataField = 'Qtd_Rest'
          DataSource = DMConsPedido.dsmUnidade
        end
        object RLDBText16: TRLDBText
          Left = 232
          Top = 1
          Width = 37
          Height = 12
          Alignment = taRightJustify
          DataField = 'Qtd_Fat'
          DataSource = DMConsPedido.dsmUnidade
        end
      end
    end
  end
end
