object fRelFinanceiro_Ger: TfRelFinanceiro_Ger
  Left = 20
  Top = 130
  Width = 848
  Height = 573
  Caption = 'fRelFinanceiro_Ger'
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
    Width = 794
    Height = 1123
    DataSource = DMCadFinanceiro.dsmImp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 34
      Top = 26
      Width = 726
      Height = 43
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 263
        Top = 0
        Width = 200
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio Financeiro Gerencial'
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
      object RLLabel2: TRLLabel
        Left = 1
        Top = 28
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
        Top = 28
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
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 69
      Width = 726
      Height = 375
      DataSource = DMCadFinanceiro.dsmImp
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 0
        Width = 726
        Height = 83
        DataSource = DMCadFinanceiro.dsmSaldo_Conta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 39
          BandType = btHeader
          object RLPanel1: TRLPanel
            Left = 2
            Top = 0
            Width = 343
            Height = 17
            Color = 15000804
            ParentColor = False
            Transparent = False
            object RLLabel8: TRLLabel
              Left = 16
              Top = 1
              Width = 81
              Height = 14
              Caption = 'Bancos / Caixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
          object RLLabel3: TRLLabel
            Left = 6
            Top = 24
            Width = 31
            Height = 14
            Caption = 'Conta'
          end
          object RLLabel4: TRLLabel
            Left = 312
            Top = 24
            Width = 60
            Height = 14
            Caption = 'Vlr. Entrada'
          end
          object RLLabel5: TRLLabel
            Left = 450
            Top = 24
            Width = 47
            Height = 14
            Caption = 'Vlr.Saida'
          end
          object RLLabel6: TRLLabel
            Left = 587
            Top = 24
            Width = 30
            Height = 14
            Caption = 'Saldo'
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 39
          Width = 726
          Height = 19
          object RLDraw1: TRLDraw
            Left = 0
            Top = 0
            Width = 726
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText1: TRLDBText
            Left = 5
            Top = 2
            Width = 292
            Height = 14
            AutoSize = False
            DataField = 'Nome_Conta'
            DataSource = DMCadFinanceiro.dsmSaldo_Conta
          end
          object RLDBText2: TRLDBText
            Left = 312
            Top = 2
            Width = 60
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Entrada'
            DataSource = DMCadFinanceiro.dsmSaldo_Conta
          end
          object RLDBText3: TRLDBText
            Left = 448
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Saida'
            DataSource = DMCadFinanceiro.dsmSaldo_Conta
          end
          object RLDBText4: TRLDBText
            Left = 568
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Saldo'
            DataSource = DMCadFinanceiro.dsmSaldo_Conta
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 83
        Width = 726
        Height = 83
        DataSource = DMCadFinanceiro.dsmSaldo_FPagto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 41
          BandType = btHeader
          object RLPanel2: TRLPanel
            Left = 2
            Top = 6
            Width = 343
            Height = 17
            Color = 15000804
            ParentColor = False
            Transparent = False
            object RLLabel7: TRLLabel
              Left = 16
              Top = 1
              Width = 66
              Height = 14
              Caption = ' Financeiro '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
          object RLLabel9: TRLLabel
            Left = 6
            Top = 26
            Width = 104
            Height = 14
            Caption = 'Forma de Pagamento'
          end
          object RLLabel10: TRLLabel
            Left = 312
            Top = 26
            Width = 60
            Height = 14
            Caption = 'Vlr. Entrada'
          end
          object RLLabel11: TRLLabel
            Left = 450
            Top = 26
            Width = 47
            Height = 14
            Caption = 'Vlr.Saida'
          end
          object RLLabel12: TRLLabel
            Left = 587
            Top = 26
            Width = 30
            Height = 14
            Caption = 'Saldo'
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 41
          Width = 726
          Height = 19
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 726
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText5: TRLDBText
            Left = 5
            Top = 2
            Width = 292
            Height = 14
            AutoSize = False
            DataField = 'Nome_FormaPagamento'
            DataSource = DMCadFinanceiro.dsmSaldo_FPagto
          end
          object RLDBText6: TRLDBText
            Left = 312
            Top = 2
            Width = 60
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Entrada'
            DataSource = DMCadFinanceiro.dsmSaldo_FPagto
          end
          object RLDBText7: TRLDBText
            Left = 448
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Saida'
            DataSource = DMCadFinanceiro.dsmSaldo_FPagto
          end
          object RLDBText8: TRLDBText
            Left = 568
            Top = 2
            Width = 50
            Height = 14
            Alignment = taRightJustify
            DataField = 'Vlr_Saldo'
            DataSource = DMCadFinanceiro.dsmSaldo_FPagto
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 166
        Width = 726
        Height = 83
        DataSource = DMCadFinanceiro.dsmFaturamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 41
          BandType = btHeader
          object RLPanel3: TRLPanel
            Left = 2
            Top = 6
            Width = 343
            Height = 17
            Color = 15000804
            ParentColor = False
            Transparent = False
            object RLLabel13: TRLLabel
              Left = 16
              Top = 1
              Width = 239
              Height = 14
              Caption = ' Faturamento / Entrada (Compras) Pedidos '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
          object RLLabel14: TRLLabel
            Left = 6
            Top = 26
            Width = 52
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object RLLabel15: TRLLabel
            Left = 408
            Top = 26
            Width = 29
            Height = 14
            Caption = 'Valor'
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 41
          Width = 726
          Height = 19
          BeforePrint = RLBand7BeforePrint
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 726
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText9: TRLDBText
            Left = 5
            Top = 2
            Width = 292
            Height = 14
            AutoSize = False
            DataField = 'Nome'
            DataSource = DMCadFinanceiro.dsmFaturamento
          end
          object RLDBText10: TRLDBText
            Left = 369
            Top = 2
            Width = 68
            Height = 14
            Alignment = taRightJustify
            DataField = 'VlrMovimento'
            DataSource = DMCadFinanceiro.dsmFaturamento
          end
        end
      end
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 249
        Width = 726
        Height = 83
        DataSource = DMCadFinanceiro.dsDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand8: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 41
          BandType = btHeader
          object RLPanel4: TRLPanel
            Left = 2
            Top = 6
            Width = 343
            Height = 17
            Color = 15000804
            ParentColor = False
            Transparent = False
            object RLLabel16: TRLLabel
              Left = 16
              Top = 1
              Width = 246
              Height = 14
              Caption = ' Contas a Receber/Pagar e Cheques a pagar '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
          object RLLabel17: TRLLabel
            Left = 6
            Top = 26
            Width = 52
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object RLLabel18: TRLLabel
            Left = 408
            Top = 26
            Width = 29
            Height = 14
            Caption = 'Valor'
          end
        end
        object RLBand9: TRLBand
          Left = 0
          Top = 41
          Width = 726
          Height = 19
          object RLDraw4: TRLDraw
            Left = 0
            Top = 0
            Width = 726
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText11: TRLDBText
            Left = 5
            Top = 2
            Width = 292
            Height = 14
            AutoSize = False
            DataField = 'Nome'
            DataSource = DMCadFinanceiro.dsDuplicata
          end
          object RLDBText12: TRLDBText
            Left = 354
            Top = 2
            Width = 83
            Height = 14
            Alignment = taRightJustify
            DataField = 'VLR_RESTANTE'
            DataSource = DMCadFinanceiro.dsDuplicata
          end
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 332
        Width = 726
        Height = 29
        BandType = btSummary
        BeforePrint = RLBand10BeforePrint
        object RLPanel5: TRLPanel
          Left = 2
          Top = 10
          Width = 719
          Height = 17
          Color = 15000804
          ParentColor = False
          Transparent = False
          object RLLabel19: TRLLabel
            Left = 16
            Top = 1
            Width = 84
            Height = 14
            Caption = 'Total Entradas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel20: TRLLabel
            Left = 102
            Top = 1
            Width = 24
            Height = 14
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel23: TRLLabel
            Left = 291
            Top = 1
            Width = 72
            Height = 14
            Caption = 'Total Saidas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel24: TRLLabel
            Left = 366
            Top = 1
            Width = 24
            Height = 14
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel25: TRLLabel
            Left = 551
            Top = 2
            Width = 36
            Height = 14
            Caption = 'Saldo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel26: TRLLabel
            Left = 590
            Top = 2
            Width = 24
            Height = 14
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
  end
end
