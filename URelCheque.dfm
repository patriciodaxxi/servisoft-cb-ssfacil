object fRelCheque: TfRelCheque
  Left = 92
  Top = 99
  Width = 1277
  Height = 573
  Caption = 'fRelCheque'
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
    Top = 16
    Width = 1123
    Height = 794
    DataSource = dmCadCheque.dsCheque_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 26
      Width = 1063
      Height = 40
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 0
        Top = 26
        Width = 1063
        Height = 14
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 461
        Top = 0
        Width = 141
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio de Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 980
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
        Left = 1000
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
        Left = 965
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
        Left = 1000
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
        Top = 27
        Width = 40
        Height = 10
        Caption = 'N'#186' Cheque'
      end
      object RLLabel5: TRLLabel
        Left = 135
        Top = 27
        Width = 41
        Height = 10
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel3: TRLLabel
        Left = 195
        Top = 27
        Width = 35
        Height = 10
        Caption = 'Bom Para'
      end
      object RLLabel9: TRLLabel
        Left = 240
        Top = 27
        Width = 56
        Height = 10
        Caption = 'Dt.Compensado'
      end
      object RLLabel2: TRLLabel
        Left = 352
        Top = 29
        Width = 20
        Height = 10
        Caption = 'Valor'
      end
      object RLLabel12: TRLLabel
        Left = 376
        Top = 28
        Width = 30
        Height = 10
        Caption = 'Nominal'
      end
      object RLLabel13: TRLLabel
        Left = 809
        Top = 28
        Width = 50
        Height = 10
        Caption = 'Utilizado Para'
      end
      object RLLabel6: TRLLabel
        Left = 91
        Top = 27
        Width = 32
        Height = 10
        Caption = 'Emit.Por'
      end
      object RLLabel7: TRLLabel
        Left = 558
        Top = 28
        Width = 32
        Height = 10
        Caption = 'Emitente'
      end
      object RLLabel11: TRLLabel
        Left = 694
        Top = 28
        Width = 28
        Height = 10
        Caption = 'Contato'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 66
      Width = 1063
      Height = 286
      DataSource = dmCadCheque.dsCheque_Consulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1063
        Height = 169
        DataFields = 'NOME_CONTA_BANCO;TIPO_EMIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 1063
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand2BeforePrint
          object RLLabel8: TRLLabel
            Left = 24
            Top = 4
            Width = 31
            Height = 12
            Caption = 'Conta:'
            Color = 14145495
            ParentColor = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 57
            Top = 4
            Width = 31
            Height = 12
            Caption = 'Conta:'
            Color = 14145495
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 19
          Width = 1063
          Height = 16
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 1
            Top = 1
            Width = 72
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUM_CHEQUE'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText3: TRLDBText
            Left = 133
            Top = 1
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText4: TRLDBText
            Left = 191
            Top = 1
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTBOM_PARA'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText5: TRLDBText
            Left = 250
            Top = 1
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTCOMPENSADO'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText6: TRLDBText
            Left = 308
            Top = 1
            Width = 64
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText7: TRLDBText
            Left = 373
            Top = 1
            Width = 183
            Height = 12
            AutoSize = False
            DataField = 'NOMINAL'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBMemo1: TRLDBMemo
            Left = 807
            Top = 0
            Width = 253
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'UTILIZADO_PARA'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 14
            Width = 1063
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText8: TRLDBText
            Left = 74
            Top = 1
            Width = 58
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DESCRICAO_EMITIDO'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText1: TRLDBText
            Left = 557
            Top = 1
            Width = 137
            Height = 12
            AutoSize = False
            DataField = 'NOME_CORRENTISTA'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
          object RLDBText9: TRLDBText
            Left = 695
            Top = 1
            Width = 111
            Height = 12
            AutoSize = False
            DataField = 'CONTATO'
            DataSource = dmCadCheque.dsCheque_Consulta
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 35
          Width = 1063
          Height = 18
          BandType = btFooter
          BeforePrint = RLBand4BeforePrint
          object RLLabel14: TRLLabel
            Left = 376
            Top = 3
            Width = 73
            Height = 12
            Caption = 'Total Em Aberto:'
          end
          object RLLabel15: TRLLabel
            Left = 452
            Top = 3
            Width = 73
            Height = 12
            Caption = 'Total Em Aberto:'
          end
          object RLLabel16: TRLLabel
            Left = 80
            Top = 3
            Width = 84
            Height = 12
            Caption = 'Total Compensado:'
          end
          object RLLabel17: TRLLabel
            Left = 168
            Top = 3
            Width = 73
            Height = 12
            Caption = 'Total Em Aberto:'
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 169
        Width = 1063
        Height = 16
        BandType = btFooter
        BeforePrint = RLBand5BeforePrint
        object RLLabel18: TRLLabel
          Left = 351
          Top = 2
          Width = 98
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total Geral Em Aberto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 452
          Top = 2
          Width = 73
          Height = 12
          Caption = 'Total Em Aberto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 55
          Top = 2
          Width = 109
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total Geral Compensado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 168
          Top = 2
          Width = 73
          Height = 12
          Caption = 'Total Em Aberto:'
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
