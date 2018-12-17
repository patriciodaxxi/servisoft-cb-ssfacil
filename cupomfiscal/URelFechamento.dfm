object fRelFechamento: TfRelFechamento
  Left = 148
  Top = 107
  Width = 1015
  Height = 588
  Caption = 'fRelFechamento'
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
    Left = 80
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DMCadFechamento.dsFechamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 118
      Width = 734
      Height = 380
      DataSource = DMCadFechamento.dsFechamento_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand2: TRLBand
        Left = 0
        Top = 121
        Width = 734
        Height = 17
        BandType = btHeader
        object RLLabel4: TRLLabel
          Left = 4
          Top = 1
          Width = 89
          Height = 14
          Caption = 'Forma Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 336
          Top = 1
          Width = 60
          Height = 14
          Caption = 'Vlr. Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 457
          Top = 1
          Width = 50
          Height = 14
          Caption = 'Vlr. Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 576
          Top = 1
          Width = 30
          Height = 14
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 655
          Top = 2
          Width = 71
          Height = 14
          Caption = 'Vlr. Informado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 138
        Width = 734
        Height = 18
        object RLDBMemo1: TRLDBMemo
          Left = 2
          Top = 2
          Width = 223
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'NOME_TIPOCOBRANCA'
          DataSource = DMCadFechamento.dsFechamento_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 317
          Top = 2
          Width = 79
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_ENTRADA'
          DataSource = DMCadFechamento.dsFechamento_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 445
          Top = 2
          Width = 62
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SAIDA'
          DataSource = DMCadFechamento.dsFechamento_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 541
          Top = 2
          Width = 66
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SALDO'
          DataSource = DMCadFechamento.dsFechamento_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 637
          Top = 2
          Width = 91
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_INFORMADO'
          DataSource = DMCadFechamento.dsFechamento_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 156
        Width = 734
        Height = 54
        BandType = btFooter
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel2: TRLLabel
          Left = 116
          Top = 36
          Width = 50
          Height = 12
          Caption = 'Assinatura '
        end
        object RLDraw2: TRLDraw
          Left = 24
          Top = 35
          Width = 289
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel3: TRLLabel
          Left = 508
          Top = 36
          Width = 108
          Height = 12
          Caption = 'Assinatura  Respons'#225'vel'
        end
        object RLDraw4: TRLDraw
          Left = 416
          Top = 35
          Width = 289
          Height = 1
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 121
        BandType = btHeader
        object RLDraw9: TRLDraw
          Left = 276
          Top = 0
          Width = 197
          Height = 78
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 0
          Width = 177
          Height = 78
        end
        object RLLabel11: TRLLabel
          Left = 4
          Top = 6
          Width = 69
          Height = 14
          Caption = 'Total Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 14
          Top = 22
          Width = 59
          Height = 14
          Caption = 'Total Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 18
          Top = 40
          Width = 55
          Height = 14
          Caption = 'Sub Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 74
          Top = 37
          Width = 100
          Height = 2
          DrawKind = dkLine
        end
        object RLDBText2: TRLDBText
          Left = 95
          Top = 6
          Width = 79
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_ENTRADA'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 112
          Top = 22
          Width = 62
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SAIDA'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 87
          Top = 40
          Width = 87
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SUBSALDO'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 300
          Top = 24
          Width = 34
          Height = 14
          Alignment = taRightJustify
          Caption = 'Troco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 389
          Top = 24
          Width = 64
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_INICIAL'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 387
          Top = 59
          Width = 66
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SALDO'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 557
          Top = 0
          Width = 177
          Height = 78
        end
        object RLLabel20: TRLLabel
          Left = 561
          Top = 6
          Width = 74
          Height = 14
          Caption = 'Vlr. Informado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 640
          Top = 6
          Width = 91
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_INFORMADO'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 582
          Top = 22
          Width = 53
          Height = 14
          Caption = 'Diferen'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 645
          Top = 22
          Width = 86
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_DIFERENCA'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 279
          Top = 8
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sub Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 366
          Top = 8
          Width = 87
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SUBSALDO'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 291
          Top = 40
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sangria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 376
          Top = 40
          Width = 77
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_SANGRIA'
          DataSource = DMCadFechamento.dsFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 353
          Top = 56
          Width = 100
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel18: TRLLabel
          Left = 338
          Top = 24
          Width = 9
          Height = 14
          Alignment = taRightJustify
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 340
          Top = 40
          Width = 7
          Height = 14
          Alignment = taRightJustify
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 88
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw8: TRLDraw
        Left = 0
        Top = 1
        Width = 734
        Height = 80
      end
      object RLLabel8: TRLLabel
        Left = 7
        Top = 9
        Width = 120
        Height = 16
        Caption = 'Data Fechamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 131
        Top = 6
        Width = 52
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'DATA'
        DataSource = DMCadFechamento.dsFechamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 82
        Top = 34
        Width = 45
        Height = 16
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 130
        Top = 34
        Width = 45
        Height = 16
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 64
        Top = 58
        Width = 63
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 130
        Top = 58
        Width = 45
        Height = 16
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
