object fRelCtaOrcamento_Fin: TfRelCtaOrcamento_Fin
  Left = 248
  Top = 105
  Width = 928
  Height = 573
  VertScrollBar.Position = 41
  Caption = 'fRelCtaOrcamento_Fin'
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
    Top = -25
    Width = 794
    Height = 1123
    DataSource = DMConsFinanceiro.dsmConta_Orc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 26
      Width = 734
      Height = 48
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 734
        Height = 14
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 160
        Top = 0
        Width = 413
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio do Contas a Pagar e Receber Por Conta de Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 644
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 2
        Width = 54
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 629
        Top = 14
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 14
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 36
        Width = 27
        Height = 10
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 1
        Top = 23
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 31
        Top = 23
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 94
        Top = 36
        Width = 22
        Height = 10
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 522
        Top = 36
        Width = 33
        Height = 10
        Caption = 'Vlr. Total'
      end
      object RLLabel6: TRLLabel
        Left = 601
        Top = 36
        Width = 34
        Height = 10
        Caption = 'Vlr. Pago'
      end
      object RLLabel7: TRLLabel
        Left = 675
        Top = 36
        Width = 47
        Height = 10
        Caption = 'Vlr. Pendente'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 74
      Width = 734
      Height = 399
      DataSource = DMConsFinanceiro.dsmConta_Orc
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 734
        Height = 289
        DataFields = 'Tipo_ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 25
          BandType = btHeader
          BeforePrint = RLBand2BeforePrint
          object RLLabel10: TRLLabel
            Left = 38
            Top = 9
            Width = 49
            Height = 14
            Caption = 'Conta:'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 25
          Width = 734
          Height = 18
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 2
            Top = 5
            Width = 87
            Height = 12
            AutoSize = False
            DataField = 'Codigo'
            DataSource = DMConsFinanceiro.dsmConta_Orc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 91
            Top = 5
            Width = 348
            Height = 12
            AutoSize = False
            DataField = 'Nome'
            DataSource = DMConsFinanceiro.dsmConta_Orc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 440
            Top = 5
            Width = 97
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Total'
            DataSource = DMConsFinanceiro.dsmConta_Orc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 538
            Top = 5
            Width = 97
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Pago'
            DataSource = DMConsFinanceiro.dsmConta_Orc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 636
            Top = 5
            Width = 97
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Restante'
            DataSource = DMConsFinanceiro.dsmConta_Orc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
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
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 0
          Top = 43
          Width = 734
          Height = 64
          DataSource = DMConsFinanceiro.dsDuplicata_Cli
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 734
            Height = 19
            BandType = btHeader
            BeforePrint = RLBand5BeforePrint
            object RLLabel13: TRLLabel
              Left = 478
              Top = 5
              Width = 40
              Height = 12
              Caption = 'Vlr. Total'
            end
            object RLLabel14: TRLLabel
              Left = 660
              Top = 5
              Width = 59
              Height = 12
              Caption = 'Vlr. Pendente'
            end
            object RLLabel15: TRLLabel
              Left = 576
              Top = 5
              Width = 41
              Height = 12
              Caption = 'Vlr. Pago'
            end
            object RLLabel17: TRLLabel
              Left = 60
              Top = 5
              Width = 357
              Height = 12
              AutoSize = False
              Caption = 'Nome'
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 19
            Width = 734
            Height = 16
            BeforePrint = RLBand6BeforePrint
            object RLDBText1: TRLDBText
              Left = 61
              Top = 2
              Width = 356
              Height = 12
              AutoSize = False
              DataField = 'NOME_PESSOA'
              DataSource = DMConsFinanceiro.dsDuplicata_Cli
            end
            object RLDBText7: TRLDBText
              Left = 421
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PARCELA'
              DataSource = DMConsFinanceiro.dsDuplicata_Cli
            end
            object RLDBText8: TRLDBText
              Left = 520
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_PAGO'
              DataSource = DMConsFinanceiro.dsDuplicata_Cli
            end
            object RLDBText9: TRLDBText
              Left = 620
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMConsFinanceiro.dsDuplicata_Cli
            end
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 107
          Width = 734
          Height = 64
          DataSource = DMConsFinanceiro.dsPedido_Cli
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 734
            Height = 19
            BandType = btHeader
            BeforePrint = RLBand4BeforePrint
            object RLLabel8: TRLLabel
              Left = 558
              Top = 5
              Width = 40
              Height = 12
              Caption = 'Vlr. Total'
            end
            object RLLabel11: TRLLabel
              Left = 640
              Top = 5
              Width = 60
              Height = 12
              Caption = 'Qtd.Pendente'
            end
            object RLLabel12: TRLLabel
              Left = 60
              Top = 5
              Width = 357
              Height = 12
              AutoSize = False
              Caption = 'Nome'
            end
            object RLLabel9: TRLLabel
              Left = 436
              Top = 5
              Width = 51
              Height = 12
              Caption = 'Dt. Entrega'
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 19
            Width = 734
            Height = 16
            BeforePrint = RLBand7BeforePrint
            object RLDBText10: TRLDBText
              Left = 61
              Top = 2
              Width = 356
              Height = 12
              AutoSize = False
              DataField = 'NOME_CLIENTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText11: TRLDBText
              Left = 501
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText12: TRLDBText
              Left = 600
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_RESTANTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText13: TRLDBText
              Left = 419
              Top = 2
              Width = 78
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DTENTREGA'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 0
          Top = 171
          Width = 734
          Height = 64
          DataSource = DMConsFinanceiro.dsPedido_Cli
          object RLBand8: TRLBand
            Left = 0
            Top = 0
            Width = 734
            Height = 19
            BandType = btHeader
            BeforePrint = RLBand8BeforePrint
            object RLLabel16: TRLLabel
              Left = 558
              Top = 5
              Width = 40
              Height = 12
              Caption = 'Vlr. Total'
            end
            object RLLabel18: TRLLabel
              Left = 640
              Top = 5
              Width = 60
              Height = 12
              Caption = 'Qtd.Pendente'
            end
            object RLLabel19: TRLLabel
              Left = 60
              Top = 5
              Width = 357
              Height = 12
              AutoSize = False
              Caption = 'Nome'
            end
            object RLLabel20: TRLLabel
              Left = 436
              Top = 5
              Width = 51
              Height = 12
              Caption = 'Dt. Entrega'
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 19
            Width = 734
            Height = 16
            BeforePrint = RLBand9BeforePrint
            object RLDBText14: TRLDBText
              Left = 61
              Top = 2
              Width = 356
              Height = 12
              AutoSize = False
              DataField = 'NOME_CLIENTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText15: TRLDBText
              Left = 501
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText16: TRLDBText
              Left = 600
              Top = 2
              Width = 98
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_RESTANTE'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
            object RLDBText17: TRLDBText
              Left = 419
              Top = 2
              Width = 78
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DTENTREGA'
              DataSource = DMConsFinanceiro.dsPedido_Cli
            end
          end
        end
      end
    end
    object RLBand10: TRLBand
      Left = 30
      Top = 473
      Width = 734
      Height = 50
      BandType = btSummary
      BeforePrint = RLBand10BeforePrint
      object RLLabel23: TRLLabel
        Left = 8
        Top = 3
        Width = 4
        Height = 10
        Caption = '.'
      end
      object RLLabel24: TRLLabel
        Left = 104
        Top = 23
        Width = 88
        Height = 11
        Alignment = taRightJustify
        Caption = 'Total das Receitas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 5
        Top = 2
        Width = 724
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel25: TRLLabel
        Left = 194
        Top = 23
        Width = 21
        Height = 11
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 194
        Top = 36
        Width = 21
        Height = 11
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 99
        Top = 36
        Width = 93
        Height = 11
        Alignment = taRightJustify
        Caption = 'Total das Despesas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 448
        Top = 36
        Width = 32
        Height = 11
        Alignment = taRightJustify
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 482
        Top = 36
        Width = 21
        Height = 11
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 302
        Top = 6
        Width = 84
        Height = 14
        Caption = 'TOTAL GERAL'
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
  end
end
