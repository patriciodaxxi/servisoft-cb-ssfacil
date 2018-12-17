object fRelNotas_ES: TfRelNotas_ES
  Left = 80
  Top = 167
  Width = 1209
  Height = 528
  Caption = 'fRelNotas_ES'
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
    Left = 16
    Top = 32
    Width = 1123
    Height = 794
    DataSource = DMConsNotas_ES.dsConsulta
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
      Height = 29
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 112
        Top = 7
        Width = 706
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio de Notas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 969
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
        Left = 995
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
        Left = 949
        Top = 15
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
        Left = 995
        Top = 15
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
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 55
      Width = 1071
      Height = 362
      DataSource = DMConsNotas_ES.dsConsulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1071
        Height = 313
        DataFields = 'FILIAL;TIPO_NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 1071
          Height = 32
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLLabel2: TRLLabel
            Left = 360
            Top = 3
            Width = 45
            Height = 11
            Caption = 'Empresa:'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 408
            Top = 3
            Width = 625
            Height = 12
            AutoSize = False
            Color = clSilver
            DataField = 'NOME_FILIAL'
            DataSource = DMConsNotas_ES.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 48
            Top = 3
            Width = 46
            Height = 11
            Caption = 'Notas de:'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 96
            Top = 3
            Width = 46
            Height = 11
            Caption = 'Notas de:'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel14: TRLLabel
            Left = 57
            Top = 19
            Width = 36
            Height = 12
            Caption = 'N'#186' Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 9
            Top = 19
            Width = 24
            Height = 12
            Caption = 'S'#233'rie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 97
            Top = 19
            Width = 52
            Height = 12
            Caption = 'Dt.Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 161
            Top = 19
            Width = 48
            Height = 12
            Caption = 'Dt.Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 222
            Top = 19
            Width = 29
            Height = 12
            Caption = 'CFOP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 259
            Top = 19
            Width = 32
            Height = 12
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 711
            Top = 19
            Width = 37
            Height = 12
            Caption = 'Vlr.Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 834
            Top = 19
            Width = 50
            Height = 12
            Caption = 'Base ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 907
            Top = 19
            Width = 43
            Height = 12
            Caption = 'Vlr. ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 978
            Top = 19
            Width = 32
            Height = 12
            Caption = 'Vlr. IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 1026
            Top = 19
            Width = 42
            Height = 12
            Caption = 'Vlr. Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 0
            Width = 1071
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object RLLabel8: TRLLabel
            Left = 765
            Top = 20
            Width = 60
            Height = 12
            Caption = 'Vlr. Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 65
          Width = 1071
          Height = 18
          BandType = btSummary
          BeforePrint = RLBand2BeforePrint
          object RLLabel6: TRLLabel
            Left = 640
            Top = 2
            Width = 26
            Height = 12
            Alignment = taRightJustify
            Caption = 'Total '
          end
          object rlVlrTotal_ES: TRLLabel
            Left = 681
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlBaseIcms_ES: TRLLabel
            Left = 829
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrIcms_ES: TRLLabel
            Left = 897
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrIPI_ES: TRLLabel
            Left = 955
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrFrete_ES: TRLLabel
            Left = 1013
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 1071
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object rlVlrDesconto_ES: TRLLabel
            Left = 757
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 32
          Width = 1071
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object rlVlrFrete: TRLLabel
            Left = 1013
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrIPI: TRLLabel
            Left = 955
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrIcms: TRLLabel
            Left = 897
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '9.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlBaseIcms: TRLLabel
            Left = 829
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlVlrTotal: TRLLabel
            Left = 683
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 2
            Top = 2
            Width = 31
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'SERIE'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText9: TRLDBText
            Left = 34
            Top = 2
            Width = 61
            Height = 12
            Alignment = taRightJustify
            DataField = 'NUMNOTA'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText10: TRLDBText
            Left = 97
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText11: TRLDBText
            Left = 155
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTSAIDAENTRADA'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText12: TRLDBText
            Left = 214
            Top = 2
            Width = 43
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CODCFOP'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText13: TRLDBText
            Left = 258
            Top = 2
            Width = 423
            Height = 12
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 1071
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object rlVlrDesconto: TRLLabel
            Left = 759
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            Caption = '999.999.999,00'
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
          Top = 48
          Width = 1071
          Height = 17
          BeforePrint = RLBand5BeforePrint
          object RLLabel5: TRLLabel
            Left = 57
            Top = 1
            Width = 77
            Height = 15
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'Nota Cancelada:'
          end
          object RLMemo2: TRLMemo
            Left = 136
            Top = 3
            Width = 881
            Height = 12
            Behavior = [beSiteExpander]
          end
        end
      end
    end
  end
end
