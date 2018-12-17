object fRelNotas_ES_Cli: TfRelNotas_ES_Cli
  Left = 68
  Top = 156
  Width = 1209
  Height = 528
  Caption = 'fRelNotas_ES_Cli'
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
    Width = 794
    Height = 1123
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
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
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
        Width = 497
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
        Left = 633
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
        Left = 659
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
        Left = 613
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
        Left = 659
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
      Width = 742
      Height = 362
      DataSource = DMConsNotas_ES.dsConsulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 313
        DataFields = 'FILIAL;SERIE;NUMNOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 32
          BandType = btHeader
          object RLLabel2: TRLLabel
            Left = 232
            Top = 3
            Width = 38
            Height = 11
            Caption = 'Cliente:'
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
            Left = 272
            Top = 3
            Width = 457
            Height = 12
            AutoSize = False
            Color = clSilver
            DataField = 'NOME_CLIENTE'
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
          object RLLabel16: TRLLabel
            Left = 29
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
          object RLLabel11: TRLLabel
            Left = 96
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
          object RLLabel4: TRLLabel
            Left = 532
            Top = 19
            Width = 40
            Height = 12
            Caption = 'Vlr. Total'
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
            Width = 742
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object RLLabel3: TRLLabel
            Left = 32
            Top = 3
            Width = 29
            Height = 11
            Caption = 'S'#233'rie:'
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
          object RLDBText1: TRLDBText
            Left = 64
            Top = 3
            Width = 33
            Height = 12
            AutoSize = False
            Color = clSilver
            DataField = 'SERIE'
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
          object RLDBText2: TRLDBText
            Left = 144
            Top = 3
            Width = 33
            Height = 12
            AutoSize = False
            Color = clSilver
            DataField = 'NUMNOTA'
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
          object RLLabel7: TRLLabel
            Left = 104
            Top = 3
            Width = 37
            Height = 11
            Caption = 'N'#186' Nota'
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
          object RLLabel8: TRLLabel
            Left = 130
            Top = 19
            Width = 42
            Height = 12
            Caption = 'Vendedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 480
            Top = 19
            Width = 26
            Height = 12
            Caption = 'Qtde.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 704
            Top = 19
            Width = 34
            Height = 12
            Caption = 'Transp.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 2
            Top = 19
            Width = 22
            Height = 12
            Caption = 'Filial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 583
            Top = 19
            Width = 57
            Height = 12
            Caption = 'Vlr. Faturado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 652
            Top = 20
            Width = 42
            Height = 12
            Caption = 'Vlr.Desc.'
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
          Width = 742
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLDBText10: TRLDBText
            Left = 26
            Top = 2
            Width = 59
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText12: TRLDBText
            Left = 88
            Top = 2
            Width = 40
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CODCFOP'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText3: TRLDBText
            Left = 1
            Top = 3
            Width = 23
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText4: TRLDBText
            Left = 175
            Top = 2
            Width = 275
            Height = 12
            AutoSize = False
            DataField = 'NOME_VENDEDOR'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText5: TRLDBText
            Left = 129
            Top = 2
            Width = 44
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID_VENDEDOR'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText6: TRLDBText
            Left = 450
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText8: TRLDBText
            Left = 507
            Top = 2
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText9: TRLDBText
            Left = 575
            Top = 2
            Width = 66
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DUPLICATA'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText11: TRLDBText
            Left = 700
            Top = 2
            Width = 40
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ID_TRANSPORTADORA'
            DataSource = DMConsNotas_ES.dsConsulta
          end
          object RLDBText17: TRLDBText
            Left = 642
            Top = 2
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DESCONTO'
            DataSource = DMConsNotas_ES.dsConsulta
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 0
          Top = 48
          Width = 742
          Height = 64
          DataSource = DMConsNotas_ES.dsNotaFiscal_Cli_Parc
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 742
            Height = 20
            BandType = btHeader
            BeforePrint = RLBand5BeforePrint
            object RLLabel12: TRLLabel
              Left = 88
              Top = 4
              Width = 68
              Height = 11
              Caption = 'N'#186' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel14: TRLLabel
              Left = 200
              Top = 4
              Width = 72
              Height = 11
              Caption = 'Dt. Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel15: TRLLabel
              Left = 307
              Top = 4
              Width = 48
              Height = 11
              Caption = 'Vlr. T'#237'tulo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel17: TRLLabel
              Left = 160
              Top = 4
              Width = 36
              Height = 11
              Caption = 'Parcela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 20
            Width = 742
            Height = 16
            object RLDBText13: TRLDBText
              Left = 105
              Top = 1
              Width = 49
              Height = 12
              Alignment = taRightJustify
              DataField = 'NUMNOTA'
            end
            object RLDBText14: TRLDBText
              Left = 164
              Top = 2
              Width = 24
              Height = 12
              Alignment = taCenter
              DataField = 'ITEM'
              DataSource = DMConsNotas_ES.dsNotaFiscal_Cli_Parc
            end
            object RLDBText15: TRLDBText
              Left = 200
              Top = 2
              Width = 72
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DTVENCIMENTO'
              DataSource = DMConsNotas_ES.dsNotaFiscal_Cli_Parc
            end
            object RLDBText16: TRLDBText
              Left = 274
              Top = 2
              Width = 82
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_VENCIMENTO'
              DataSource = DMConsNotas_ES.dsNotaFiscal_Cli_Parc
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 36
            Width = 742
            Height = 16
            BandType = btFooter
            BeforePrint = RLBand7BeforePrint
            object RLLabel18: TRLLabel
              Left = 248
              Top = 4
              Width = 21
              Height = 10
              Caption = 'Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBResult1: TRLDBResult
              Left = 280
              Top = 3
              Width = 76
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLR_VENCIMENTO'
              DataSource = DMConsNotas_ES.dsNotaFiscal_Cli_Parc
              Info = riSum
            end
          end
        end
      end
    end
  end
end
