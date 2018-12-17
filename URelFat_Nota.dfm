object fRelFat_Nota: TfRelFat_Nota
  Left = 80
  Top = 167
  Width = 1217
  Height = 532
  Caption = 'fRelFat_Nota'
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
    Left = 32
    Top = 16
    Width = 1123
    Height = 794
    DataSource = DMConsFaturamento.dsNotaFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 54
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 360
        Top = 5
        Width = 214
        Height = 16
        Caption = 'Relat'#243'rio de Faturamento - Notas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 977
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
        Left = 1003
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
        Left = 957
        Top = 18
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
        Left = 1003
        Top = 19
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
        Left = 0
        Top = 24
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 24
        Width = 33
        Height = 12
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 38
        Width = 16
        Height = 14
        Caption = 'Fil.'
      end
      object RLLabel7: TRLLabel
        Left = 1001
        Top = 38
        Width = 66
        Height = 14
        Caption = 'Vlr. Faturado'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 52
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 38
        Top = 38
        Width = 40
        Height = 14
        Caption = 'N'#186' Nota'
      end
      object RLLabel10: TRLLabel
        Left = 81
        Top = 38
        Width = 28
        Height = 14
        Caption = 'S'#233'rie'
      end
      object RLLabel11: TRLLabel
        Left = 116
        Top = 38
        Width = 56
        Height = 14
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel12: TRLLabel
        Left = 178
        Top = 38
        Width = 94
        Height = 14
        Caption = 'Cliente/Fornecedor'
      end
      object RLLabel13: TRLLabel
        Left = 590
        Top = 38
        Width = 55
        Height = 14
        Caption = 'Base ICMS'
      end
      object RLLabel14: TRLLabel
        Left = 672
        Top = 38
        Width = 47
        Height = 14
        Caption = 'Vlr. ICMS'
      end
      object RLLabel15: TRLLabel
        Left = 756
        Top = 38
        Width = 33
        Height = 14
        Caption = 'Vlr. IPI'
      end
      object RLLabel8: TRLLabel
        Left = 817
        Top = 38
        Width = 66
        Height = 14
        Caption = 'Vlr. Produtos'
      end
      object RLLabel16: TRLLabel
        Left = 932
        Top = 38
        Width = 45
        Height = 14
        Caption = 'Vlr. Nota'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 80
      Width = 1071
      Height = 146
      DataSource = DMConsFaturamento.dsNotaFiscal
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText1: TRLDBText
          Left = 19
          Top = 2
          Width = 63
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 1
          Top = 2
          Width = 18
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'FILIAL'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 978
          Top = 2
          Width = 91
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_DUPLICATA'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 15
          Width = 1071
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText4: TRLDBText
          Left = 889
          Top = 2
          Width = 88
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_NOTA'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 793
          Top = 2
          Width = 95
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_ITENS'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 719
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_IPI'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 645
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_ICMS'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 571
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'BASE_ICMS'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 83
          Top = 2
          Width = 25
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SERIE'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 111
          Top = 2
          Width = 64
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMConsFaturamento.dsNotaFiscal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 176
          Top = 2
          Width = 393
          Height = 12
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMConsFaturamento.dsNotaFiscal
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
        Top = 17
        Width = 1071
        Height = 61
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand3BeforePrint
        object RLLabel3: TRLLabel
          Left = 34
          Top = 0
          Width = 52
          Height = 11
          Alignment = taRightJustify
          Caption = 'Fat. Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 89
          Top = 0
          Width = 82
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 356
          Top = 0
          Width = 48
          Height = 11
          Caption = 'Total ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 883
          Top = 0
          Width = 185
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_DUPLICATA'
          DataSource = DMConsFaturamento.dsNotaFiscal
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 504
          Top = 0
          Width = 142
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'BASE_ICMS'
          DataSource = DMConsFaturamento.dsNotaFiscal
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 647
          Top = 0
          Width = 71
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_ICMS'
          DataSource = DMConsFaturamento.dsNotaFiscal
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 719
          Top = 0
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_IPI'
          DataSource = DMConsFaturamento.dsNotaFiscal
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 38
          Top = 11
          Width = 48
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Frete:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 89
          Top = 11
          Width = 82
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 49
          Top = 22
          Width = 37
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 89
          Top = 22
          Width = 82
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 9
          Top = 33
          Width = 77
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Devolu'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 89
          Top = 33
          Width = 82
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 24
          Top = 44
          Width = 62
          Height = 11
          Alignment = taRightJustify
          Caption = 'Fat. L'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 89
          Top = 44
          Width = 82
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
