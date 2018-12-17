object fRelPagarReceber_Pag: TfRelPagarReceber_Pag
  Left = 106
  Top = 140
  Width = 866
  Height = 563
  Caption = 'fRelPagarReceber_Pag'
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
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DMCadDuplicata.dsPagto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 23
      Top = 26
      Width = 748
      Height = 50
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand1BeforePrint
      object RLSystemInfo1: TRLSystemInfo
        Left = 647
        Top = 14
        Width = 55
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Emiss'#227'o:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 647
        Top = 2
        Width = 73
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g.: '
      end
      object RLLabel1: TRLLabel
        Left = 228
        Top = 0
        Width = 291
        Height = 16
        Align = faCenterTop
        Caption = 'RELAT'#211'RIO DO CONTAS A RECEBER/PAGAR '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 33
        Width = 748
        Height = 17
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel2: TRLLabel
        Left = 2
        Top = 35
        Width = 39
        Height = 12
        Caption = 'N'#186' T'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 97
        Top = 35
        Width = 82
        Height = 12
        Caption = 'Cliente/Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 331
        Top = 35
        Width = 39
        Height = 12
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 382
        Top = 35
        Width = 52
        Height = 12
        Caption = 'Vencimento'
      end
      object RLLabel6: TRLLabel
        Left = 455
        Top = 35
        Width = 43
        Height = 12
        Caption = 'Vlr. T'#237'tulo'
      end
      object RLLabel7: TRLLabel
        Left = 525
        Top = 35
        Width = 41
        Height = 12
        Caption = 'Vlr. Pago'
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 20
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 29
        Top = 20
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 587
        Top = 35
        Width = 43
        Height = 12
        Caption = 'Vlr. Juros'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 76
      Width = 748
      Height = 341
      DataSource = DMCadDuplicata.dsPagto
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 748
        Height = 185
        DataFields = 'DTLANCAMENTO'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 748
          Height = 18
          BandType = btTitle
          object RLLabel9: TRLLabel
            Left = 40
            Top = 2
            Width = 77
            Height = 14
            Caption = 'Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 120
            Top = 2
            Width = 91
            Height = 14
            DataField = 'DTLANCAMENTO'
            DataSource = DMCadDuplicata.dsPagto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 82
          Width = 748
          Height = 19
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLLabel11: TRLLabel
            Left = 188
            Top = 3
            Width = 168
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total dia .............'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 461
            Top = 4
            Width = 97
            Height = 10
            Alignment = taRightJustify
            DataField = 'VLR_PAGAMENTO'
            DataSource = DMCadDuplicata.dsPagto
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLDBResult2: TRLDBResult
            Left = 560
            Top = 4
            Width = 67
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_JUROSPAGOS'
            DataSource = DMCadDuplicata.dsPagto
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
        end
        object RLGroup2: TRLGroup
          Left = 0
          Top = 18
          Width = 748
          Height = 64
          DataFields = 'DTLANCAMENTO;TIPO_HISTORICO'
          object RLBand4: TRLBand
            Left = 0
            Top = 16
            Width = 748
            Height = 14
            BeforePrint = RLBand4BeforePrint
            object RLDBText3: TRLDBText
              Left = 96
              Top = 2
              Width = 225
              Height = 10
              AutoSize = False
              DataField = 'NOME_PESSOA'
              DataSource = DMCadDuplicata.dsPagto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 322
              Top = 2
              Width = 48
              Height = 10
              DataField = 'DTEMISSAO'
              DataSource = DMCadDuplicata.dsPagto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel10: TRLLabel
              Left = 2
              Top = 2
              Width = 93
              Height = 10
              AutoSize = False
              Caption = 'T'#237'tulo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText5: TRLDBText
              Left = 431
              Top = 2
              Width = 67
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PARCELA'
              DataSource = DMCadDuplicata.dsPagto
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 499
              Top = 2
              Width = 67
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PAGAMENTO'
              DataSource = DMCadDuplicata.dsPagto
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 722
              Top = 2
              Width = 25
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'COD_BANCO'
              DataSource = DMCadDuplicata.dsPagto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 573
              Top = 2
              Width = 61
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_JUROSPAGOS'
              DataSource = DMCadDuplicata.dsPagto
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText9: TRLDBText
              Left = 635
              Top = 2
              Width = 85
              Height = 10
              AutoSize = False
              DataField = 'NOME_TIPOCOBRANCA'
              DataSource = DMCadDuplicata.dsPagto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText2: TRLDBText
              Left = 373
              Top = 2
              Width = 52
              Height = 10
              Alignment = taCenter
              AutoSize = False
              DataField = 'DTVENCIMENTO'
              DataSource = DMCadDuplicata.dsPagto
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
            Top = 30
            Width = 748
            Height = 18
            BandType = btSummary
            BeforePrint = RLBand3BeforePrint
            object RLLabel13: TRLLabel
              Left = 216
              Top = 0
              Width = 140
              Height = 14
              Alignment = taRightJustify
              Caption = 'Total .............'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult3: TRLDBResult
              Left = 461
              Top = 4
              Width = 97
              Height = 10
              Alignment = taRightJustify
              DataField = 'VLR_PAGAMENTO'
              DataSource = DMCadDuplicata.dsPagto
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLDBResult4: TRLDBResult
              Left = 560
              Top = 4
              Width = 67
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_JUROSPAGOS'
              DataSource = DMCadDuplicata.dsPagto
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 748
            Height = 16
            BandType = btHeader
            BeforePrint = RLBand6BeforePrint
            object RLLabel14: TRLLabel
              Left = 184
              Top = 2
              Width = 6
              Height = 12
              Caption = '.'
            end
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 185
        Width = 748
        Height = 27
        BandType = btSummary
        object RLLabel15: TRLLabel
          Left = 181
          Top = 3
          Width = 175
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Geral.............'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 461
          Top = 4
          Width = 97
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_PAGAMENTO'
          DataSource = DMCadDuplicata.dsPagto
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 560
          Top = 4
          Width = 67
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_JUROSPAGOS'
          DataSource = DMCadDuplicata.dsPagto
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
    end
  end
end
