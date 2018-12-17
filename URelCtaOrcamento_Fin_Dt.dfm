object fRelCtaOrcamento_Fin_Dt: TfRelCtaOrcamento_Fin_Dt
  Left = 133
  Top = 103
  Width = 1190
  Height = 573
  HorzScrollBar.Position = 14
  Caption = 'fRelCtaOrcamento_Fin_Dt'
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
    Left = 34
    Top = 16
    Width = 1123
    Height = 794
    DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 34
      Top = 26
      Width = 1055
      Height = 71
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 43
        Width = 1055
        Height = 28
        Align = faBottom
        Pen.Style = psDot
      end
      object RLDraw7: TRLDraw
        Left = 931
        Top = 44
        Width = 124
        Height = 27
      end
      object RLDraw6: TRLDraw
        Left = 808
        Top = 44
        Width = 124
        Height = 27
      end
      object RLDraw5: TRLDraw
        Left = 685
        Top = 44
        Width = 124
        Height = 27
      end
      object RLDraw4: TRLDraw
        Left = 562
        Top = 44
        Width = 124
        Height = 27
      end
      object RLDraw3: TRLDraw
        Left = 439
        Top = 44
        Width = 124
        Height = 27
      end
      object RLLabel1: TRLLabel
        Left = 409
        Top = 0
        Width = 237
        Height = 16
        Align = faCenterTop
        Caption = 'Fluxo de Caixa Previsto X Realizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 964
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
        Left = 984
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
        Left = 949
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
        Left = 984
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
        Top = 49
        Width = 27
        Height = 10
        Caption = 'C'#243'digo'
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
      object RLLabel3: TRLLabel
        Left = 78
        Top = 49
        Width = 22
        Height = 10
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 480
        Top = 46
        Width = 35
        Height = 10
        Caption = 'Semana 1'
      end
      object RLLabel9: TRLLabel
        Left = 448
        Top = 57
        Width = 43
        Height = 10
        Caption = 'Vlr. Previsto'
      end
      object RLLabel11: TRLLabel
        Left = 504
        Top = 57
        Width = 50
        Height = 10
        Caption = 'Vlr. Realizado'
      end
      object RLLabel12: TRLLabel
        Left = 605
        Top = 48
        Width = 35
        Height = 10
        Caption = 'Semana 2'
      end
      object RLLabel13: TRLLabel
        Left = 573
        Top = 57
        Width = 43
        Height = 10
        Caption = 'Vlr. Previsto'
      end
      object RLLabel14: TRLLabel
        Left = 629
        Top = 57
        Width = 50
        Height = 10
        Caption = 'Vlr. Realizado'
      end
      object RLLabel15: TRLLabel
        Left = 730
        Top = 48
        Width = 35
        Height = 10
        Caption = 'Semana 3'
      end
      object RLLabel16: TRLLabel
        Left = 698
        Top = 57
        Width = 43
        Height = 10
        Caption = 'Vlr. Previsto'
      end
      object RLLabel17: TRLLabel
        Left = 754
        Top = 57
        Width = 50
        Height = 10
        Caption = 'Vlr. Realizado'
      end
      object RLLabel18: TRLLabel
        Left = 849
        Top = 48
        Width = 35
        Height = 10
        Caption = 'Semana 4'
      end
      object RLLabel19: TRLLabel
        Left = 817
        Top = 57
        Width = 43
        Height = 10
        Caption = 'Vlr. Previsto'
      end
      object RLLabel20: TRLLabel
        Left = 873
        Top = 57
        Width = 50
        Height = 10
        Caption = 'Vlr. Realizado'
      end
      object RLLabel23: TRLLabel
        Left = 972
        Top = 48
        Width = 35
        Height = 10
        Caption = 'Semana 5'
      end
      object RLLabel24: TRLLabel
        Left = 940
        Top = 57
        Width = 43
        Height = 10
        Caption = 'Vlr. Previsto'
      end
      object RLLabel25: TRLLabel
        Left = 996
        Top = 57
        Width = 50
        Height = 10
        Caption = 'Vlr. Realizado'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 97
      Width = 1055
      Height = 286
      DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1055
        Height = 169
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
          Width = 1055
          Height = 20
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          BeforePrint = RLBand2BeforePrint
          object RLLabel10: TRLLabel
            Left = 38
            Top = 3
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
          Top = 20
          Width = 1055
          Height = 13
          BeforePrint = RLBand3BeforePrint
          object RLDraw12: TRLDraw
            Left = 931
            Top = -1
            Width = 124
            Height = 14
          end
          object RLDraw11: TRLDraw
            Left = 808
            Top = -1
            Width = 124
            Height = 14
          end
          object RLDraw10: TRLDraw
            Left = 685
            Top = -1
            Width = 124
            Height = 14
          end
          object RLDraw9: TRLDraw
            Left = 562
            Top = -1
            Width = 124
            Height = 14
          end
          object RLDraw2: TRLDraw
            Left = 1
            Top = -1
            Width = 439
            Height = 14
          end
          object RLDraw8: TRLDraw
            Left = 439
            Top = -1
            Width = 124
            Height = 14
          end
          object RLDBText2: TRLDBText
            Left = 2
            Top = 1
            Width = 83
            Height = 10
            AutoSize = False
            DataField = 'Cod_Conta_Orc'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 91
            Top = 1
            Width = 318
            Height = 10
            AutoSize = False
            DataField = 'Nome_Conta_Orc'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 441
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor1.Vlr_Previsto1'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 501
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor1.Vlr_Realizado1'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 564
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor2.Vlr_Previsto2'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 625
            Top = 1
            Width = 59
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor2.Vlr_Realizado2'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 687
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor3.Vlr_Previsto3'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 748
            Top = 1
            Width = 59
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor3.Vlr_Realizado3'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 810
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor4.Vlr_Previsto4'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 871
            Top = 1
            Width = 59
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor4.Vlr_Realizado4'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 933
            Top = 1
            Width = 60
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor5.Vlr_Previsto5'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 994
            Top = 1
            Width = 59
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Desc_Valor5.Vlr_Realizado5'
            DataSource = DMConsFinanceiro.dsmConta_Orc_Dt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 33
          Width = 1055
          Height = 12
          BandType = btFooter
          object RLLabel8: TRLLabel
            Left = 24
            Top = 3
            Width = 1009
            Height = 5
            Alignment = taRightJustify
            AutoSize = False
            Caption = '.'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
  end
end
