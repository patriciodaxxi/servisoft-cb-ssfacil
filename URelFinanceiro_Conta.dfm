object fRelFinanceiro_Conta: TfRelFinanceiro_Conta
  Left = 245
  Top = 129
  Width = 914
  Height = 532
  Caption = 'fRelFinanceiro_Conta'
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
    DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
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
      Height = 68
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 232
        Top = 21
        Width = 201
        Height = 16
        Caption = 'Relat'#243'rio Financeiro Por Conta'
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
        Top = 39
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
      object RLLabel3: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbFilial: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 39
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
        Left = 9
        Top = 54
        Width = 23
        Height = 12
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 66
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 78
        Top = 54
        Width = 57
        Height = 12
        Caption = 'Forma Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 57
        Top = 53
        Width = 16
        Height = 12
        Caption = 'Fil.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 546
        Top = 53
        Width = 18
        Height = 12
        Caption = 'E/S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 569
        Top = 54
        Width = 63
        Height = 12
        Caption = 'Vlr.Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 220
        Top = 54
        Width = 40
        Height = 12
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 710
        Top = 54
        Width = 26
        Height = 12
        Caption = 'Saldo'
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
      Width = 742
      Height = 202
      DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 105
        DataFields = 'NOME_CONTA'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 19
          BandType = btTitle
          BeforePrint = RLBand3BeforePrint
          object RLLabel9: TRLLabel
            Left = 8
            Top = 2
            Width = 38
            Height = 14
            Caption = 'Conta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 48
            Top = 2
            Width = 479
            Height = 14
            AutoSize = False
            DataField = 'NOME_CONTA'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 550
            Top = 1
            Width = 70
            Height = 14
            Caption = 'Saldo Inicial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object rllbSaldo_Inicial: TRLLabel
            Left = 624
            Top = 1
            Width = 115
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo Inicial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 36
          Width = 742
          Height = 18
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand4BeforePrint
          object RLLabel12: TRLLabel
            Left = 8
            Top = 3
            Width = 66
            Height = 12
            Caption = 'Total Entradas:'
          end
          object RLLabel14: TRLLabel
            Left = 200
            Top = 3
            Width = 57
            Height = 12
            Caption = 'Total Saidas:'
          end
          object RLLabel15: TRLLabel
            Left = 408
            Top = 3
            Width = 64
            Height = 12
            Caption = 'Saldo Per'#237'odo:'
          end
          object RLLabel16: TRLLabel
            Left = 611
            Top = 3
            Width = 29
            Height = 12
            Alignment = taRightJustify
            Caption = 'Saldo:'
          end
          object RLDBResult1: TRLDBResult
            Left = 77
            Top = 3
            Width = 116
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_ENTRADA'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            DisplayMask = '###,###,##0.00'
            Info = riSum
            ResetAfterPrint = True
          end
          object RLDBResult2: TRLDBResult
            Left = 263
            Top = 3
            Width = 116
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_SAIDA'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            DisplayMask = '###,###,##0.00'
            Info = riSum
            ResetAfterPrint = True
          end
          object rllbSaldo_Periodo: TRLLabel
            Left = 474
            Top = 3
            Width = 116
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo Per'#237'odo:'
          end
          object rllbSaldo_Final: TRLLabel
            Left = 644
            Top = 3
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 19
          Width = 742
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AfterPrint = RLBand5AfterPrint
          BeforePrint = RLBand5BeforePrint
          object RLDBText3: TRLDBText
            Left = 76
            Top = 2
            Width = 139
            Height = 12
            AutoSize = False
            DataField = 'NOME_FORMAPGTO'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
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
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBMemo1: TRLDBMemo
            Left = 216
            Top = 2
            Width = 331
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'HISTORICO_COMPL'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
          end
          object RLDBText7: TRLDBText
            Left = 2
            Top = 2
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTMOVIMENTO'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 56
            Top = 2
            Width = 20
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 548
            Top = 2
            Width = 20
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'TIPO_ES'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 569
            Top = 2
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_MOVIMENTO'
            DataSource = DMCadFinanceiro.dsFinanceiro_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rllbSaldo: TRLLabel
            Left = 644
            Top = 2
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
end