object fRelFat_Cli: TfRelFat_Cli
  Left = 162
  Top = 122
  Width = 914
  Height = 532
  Caption = 'fRelFat_Cli'
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
    Width = 794
    Height = 1123
    DataSource = DMConsFaturamento.dsNotaFiscal_Cli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 63
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 216
        Top = 5
        Width = 230
        Height = 16
        Caption = 'Relat'#243'rio de Faturamento - Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
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
        Left = 675
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
        Left = 629
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
        Left = 675
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
        Top = 36
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
        Top = 36
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
        Top = 50
        Width = 26
        Height = 10
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 403
        Top = 50
        Width = 58
        Height = 10
        Alignment = taRightJustify
        Caption = 'Vlr. Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 688
        Top = 50
        Width = 52
        Height = 10
        Caption = '% Sobre Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 61
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 508
        Top = 50
        Width = 41
        Height = 10
        Caption = 'Vlr. Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 587
        Top = 50
        Width = 45
        Height = 10
        Caption = 'Vlr. Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 669
        Top = 50
        Width = 16
        Height = 10
        Caption = 'Qtd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 89
      Width = 742
      Height = 146
      DataSource = DMConsFaturamento.dsNotaFiscal_Cli
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 376
          Top = 2
          Width = 87
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 1
          Top = 2
          Width = 374
          Height = 10
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 688
          Top = 2
          Width = 51
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clPerc_SobreFat'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 14
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText4: TRLDBText
          Left = 464
          Top = 2
          Width = 87
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_VENDAS'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 552
          Top = 2
          Width = 82
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_LIQUIDO_NFSE'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 635
          Top = 2
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
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
        Top = 16
        Width = 742
        Height = 16
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand3BeforePrint
        object RLLabel3: TRLLabel
          Left = 4
          Top = 0
          Width = 82
          Height = 11
          Caption = 'Vlr. Faturamento:'
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
          Caption = 'Vlr. Faturamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 268
          Top = 1
          Width = 43
          Height = 10
          Caption = 'Total ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 391
          Top = 1
          Width = 73
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_TOTAL'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 486
          Top = 1
          Width = 64
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_VENDAS'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 570
          Top = 1
          Width = 64
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_LIQUIDO_NFSE'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 635
          Top = 1
          Width = 59
          Height = 10
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = DMConsFaturamento.dsNotaFiscal_Cli
          DisplayMask = '000,000,000.###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
      end
    end
  end
end
