object fRelPagarReceber3: TfRelPagarReceber3
  Left = 33
  Top = 149
  Width = 1278
  Height = 563
  Caption = 'fRelPagarReceber3'
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
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    DataSource = DMCadDuplicata.dsDuplicata_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowTracks = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 50
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand1BeforePrint
      object RLSystemInfo1: TRLSystemInfo
        Left = 989
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
        Left = 989
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
        Left = 390
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
        Width = 1071
        Height = 17
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel2: TRLLabel
        Left = 45
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
        Left = 297
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
        Left = 613
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
        Left = 664
        Top = 35
        Width = 50
        Height = 12
        Caption = 'Pagamento'
      end
      object RLLabel6: TRLLabel
        Left = 771
        Top = 35
        Width = 43
        Height = 12
        Caption = 'Vlr. T'#237'tulo'
      end
      object RLLabel7: TRLLabel
        Left = 930
        Top = 35
        Width = 41
        Height = 12
        Caption = 'Vlr. Pago'
      end
      object RLLabel8: TRLLabel
        Left = 1008
        Top = 35
        Width = 26
        Height = 12
        Caption = 'Saldo'
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
      object RLLabel35: TRLLabel
        Left = 827
        Top = 35
        Width = 54
        Height = 12
        Caption = 'Vlr.Despesa'
      end
      object RLLabel47: TRLLabel
        Left = 150
        Top = 36
        Width = 66
        Height = 12
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 94
      Width = 1071
      Height = 341
      DataSource = DMCadDuplicata.dsDuplicata_Consulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1071
        Height = 117
        DataFields = 'DTVENCIMENTO'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 1071
          Height = 18
          BandType = btTitle
          BeforePrint = RLBand2BeforePrint
          object RLLabel9: TRLLabel
            Left = 32
            Top = 2
            Width = 84
            Height = 14
            Caption = 'Vencimento:'
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
            DataField = 'DTVENCIMENTO'
            DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
          Top = 68
          Width = 1071
          Height = 19
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLLabel11: TRLLabel
            Left = 438
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
            Left = 732
            Top = 4
            Width = 84
            Height = 10
            Alignment = taRightJustify
            DataField = 'VLR_PARCELA'
            DataSource = DMCadDuplicata.dsDuplicata_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLDBResult5: TRLDBResult
            Left = 891
            Top = 4
            Width = 75
            Height = 10
            Alignment = taRightJustify
            DataField = 'VLR_PAGO'
            DataSource = DMCadDuplicata.dsDuplicata_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLLabel16: TRLLabel
            Left = 1007
            Top = 4
            Width = 29
            Height = 10
            Alignment = taRightJustify
            Caption = 'SALDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult10: TRLDBResult
            Left = 828
            Top = 4
            Width = 52
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DESPESAS'
            DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
          Width = 1071
          Height = 50
          DataFields = 'DTVENCIMENTO;TIPO_ES;TIPO_MOV'
          object RLBand4: TRLBand
            Left = 0
            Top = 16
            Width = 1071
            Height = 14
            BeforePrint = RLBand4BeforePrint
            object RLDBText3: TRLDBText
              Left = 297
              Top = 2
              Width = 312
              Height = 10
              AutoSize = False
              DataField = 'NOME_PESSOA'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 614
              Top = 2
              Width = 47
              Height = 10
              DataField = 'DTEMISSAO'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel10: TRLLabel
              Left = 44
              Top = 0
              Width = 94
              Height = 12
              AutoSize = False
              Caption = 'Tipo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText2: TRLDBText
              Left = 669
              Top = 2
              Width = 47
              Height = 10
              Alignment = taCenter
              AutoSize = False
              DataField = 'DTULTPAGAMENTO'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText5: TRLDBText
              Left = 756
              Top = 2
              Width = 61
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PARCELA'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 891
              Top = 2
              Width = 75
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PAGO'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 970
              Top = 2
              Width = 67
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel12: TRLLabel
              Left = 1
              Top = 0
              Width = 20
              Height = 8
              Caption = 'REC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel28: TRLLabel
              Left = 23
              Top = 0
              Width = 15
              Height = 10
              Caption = '(999)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText9: TRLDBText
              Left = 830
              Top = 2
              Width = 51
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_DESPESAS'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel40: TRLLabel
              Left = 1039
              Top = 2
              Width = 27
              Height = 10
              Alignment = taCenter
              Caption = 'REC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 145
              Top = 2
              Width = 136
              Height = 10
              AutoSize = False
              DataField = 'NOSSONUMERO'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
            Width = 1071
            Height = 18
            BandType = btSummary
            BeforePrint = RLBand3BeforePrint
            object RLDBResult2: TRLDBResult
              Left = 727
              Top = 4
              Width = 90
              Height = 10
              Alignment = taRightJustify
              DataField = 'VLR_PARCELA'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLLabel13: TRLLabel
              Left = 466
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
              Left = 891
              Top = 4
              Width = 75
              Height = 10
              Alignment = taRightJustify
              DataField = 'VLR_PAGO'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
              Left = 970
              Top = 4
              Width = 67
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
              Left = 828
              Top = 4
              Width = 52
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_DESPESAS'
              DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
            Width = 1071
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
        object RLBand11: TRLBand
          Left = 0
          Top = 87
          Width = 1071
          Height = 19
          BandType = btSummary
          BeforePrint = RLBand11BeforePrint
          object RLLabel41: TRLLabel
            Left = 481
            Top = 3
            Width = 126
            Height = 14
            Alignment = taRightJustify
            Caption = 'Total Descontado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 733
            Top = 4
            Width = 84
            Height = 10
            Alignment = taRightJustify
            Caption = 'SALDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 117
        Width = 1071
        Height = 27
        BandType = btSummary
        BeforePrint = RLBand7BeforePrint
        object RLLabel15: TRLLabel
          Left = 431
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
        object RLDBResult7: TRLDBResult
          Left = 731
          Top = 4
          Width = 84
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_PARCELA'
          DataSource = DMCadDuplicata.dsDuplicata_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult8: TRLDBResult
          Left = 896
          Top = 4
          Width = 70
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_PAGO'
          DataSource = DMCadDuplicata.dsDuplicata_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult9: TRLDBResult
          Left = 967
          Top = 4
          Width = 69
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_RESTANTE'
          DataSource = DMCadDuplicata.dsDuplicata_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLLabel32: TRLLabel
          Left = 23
          Top = 2
          Width = 85
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Acumulado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 43
          Top = 14
          Width = 65
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult11: TRLDBResult
          Left = 827
          Top = 4
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_DESPESAS'
          DataSource = DMCadDuplicata.dsDuplicata_Consulta
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
      object RLBand8: TRLBand
        Left = 0
        Top = 144
        Width = 1071
        Height = 29
        BandType = btSummary
        BeforePrint = RLBand8BeforePrint
        object RLLabel17: TRLLabel
          Left = 496
          Top = 3
          Width = 110
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total A Receber......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 506
          Top = 17
          Width = 100
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total A Pagar......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 1009
          Top = 4
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 935
          Top = 4
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 787
          Top = 4
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 1009
          Top = 17
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 935
          Top = 17
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 787
          Top = 17
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 153
          Top = 3
          Width = 75
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 163
          Top = 16
          Width = 65
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 1071
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel30: TRLLabel
          Left = 23
          Top = 3
          Width = 85
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Acumulado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 43
          Top = 16
          Width = 65
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 849
          Top = 4
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 849
          Top = 16
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 173
        Width = 1071
        Height = 20
        BandType = btSummary
        BeforePrint = RLBand10BeforePrint
        object RLLabel34: TRLLabel
          Left = 506
          Top = 2
          Width = 100
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total Cheques......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 1009
          Top = 3
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 787
          Top = 3
          Width = 29
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 153
          Top = 2
          Width = 75
          Height = 12
          Alignment = taRightJustify
          Caption = 'Saldo Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 193
        Width = 1071
        Height = 20
        BandType = btSummary
        BeforePrint = RLBand12BeforePrint
        object RLLabel44: TRLLabel
          Left = 480
          Top = 3
          Width = 126
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Descontado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 732
          Top = 4
          Width = 84
          Height = 10
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand9: TRLBand
      Left = 26
      Top = 76
      Width = 1071
      Height = 18
      BandType = btTitle
      BeforePrint = RLBand9BeforePrint
      object RLDraw3: TRLDraw
        Left = 0
        Top = 0
        Width = 1071
        Height = 18
        Align = faClient
      end
      object RLLabel29: TRLLabel
        Left = 560
        Top = 3
        Width = 48
        Height = 12
        Alignment = taRightJustify
        Caption = 'Saldo at'#233' :'
      end
    end
  end
end
