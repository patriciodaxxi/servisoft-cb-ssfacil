object fRelExtComissao_Ped: TfRelExtComissao_Ped
  Left = 14
  Top = 67
  Width = 1304
  Height = 641
  Caption = 'fRelExtComissao_Ped'
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
    Left = 216
    Top = 32
    Width = 794
    Height = 1123
    DataSource = DMCadExtComissao.dsmImp_Reduzido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 66
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw5: TRLDraw
        Left = 625
        Top = 38
        Width = 109
        Height = 29
      end
      object RLDraw4: TRLDraw
        Left = 535
        Top = 38
        Width = 91
        Height = 29
      end
      object RLLabel21: TRLLabel
        Left = 645
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
        Left = 668
        Top = 3
        Width = 44
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
        Left = 625
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
        Left = 668
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
      object RLLabel1: TRLLabel
        Left = 64
        Top = 22
        Width = 530
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio de Comiss'#227'o de Vendedores Por Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 6
        Top = 4
        Width = 42
        Height = 12
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 51
        Width = 42
        Height = 12
        Caption = 'Vendedor'
      end
      object RLLabel4: TRLLabel
        Left = 652
        Top = 43
        Width = 62
        Height = 12
        Caption = 'Vlr. Comiss'#227'o'
      end
      object RLMemo1: TRLMemo
        Left = 540
        Top = 39
        Width = 84
        Height = 24
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Valor Total'
          'Pedido')
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 96
      Width = 734
      Height = 363
      DataSource = DMCadExtComissao.dsmImp_Reduzido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 2
          Top = 2
          Width = 495
          Height = 12
          AutoSize = False
          DataField = 'NomeVendedor'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText2: TRLDBText
          Left = 538
          Top = 2
          Width = 85
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Base_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText3: TRLDBText
          Left = 628
          Top = 2
          Width = 96
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDraw1: TRLDraw
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
        Top = 16
        Width = 734
        Height = 241
        DataSource = DMCadExtComissao.dsPedido_Vend
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLDraw2: TRLDraw
            Left = 40
            Top = 1
            Width = 693
            Height = 17
          end
          object RLLabel9: TRLLabel
            Left = 45
            Top = 4
            Width = 13
            Height = 12
            Caption = 'Fil'
          end
          object RLLabel11: TRLLabel
            Left = 71
            Top = 4
            Width = 52
            Height = 12
            Caption = 'Dt.Emiss'#227'o'
          end
          object RLLabel13: TRLLabel
            Left = 137
            Top = 4
            Width = 44
            Height = 12
            Caption = 'N'#186' Pedido'
          end
          object RLLabel14: TRLLabel
            Left = 208
            Top = 4
            Width = 63
            Height = 12
            Caption = 'Pedido Cliente'
          end
          object RLLabel16: TRLLabel
            Left = 335
            Top = 4
            Width = 40
            Height = 12
            Caption = 'Vlr. Total'
          end
          object RLLabel17: TRLLabel
            Left = 385
            Top = 4
            Width = 11
            Height = 12
            Caption = '%'
          end
          object RLLabel18: TRLLabel
            Left = 489
            Top = 4
            Width = 32
            Height = 12
            Caption = 'Cliente'
          end
          object RLLabel5: TRLLabel
            Left = 421
            Top = 4
            Width = 62
            Height = 12
            Caption = 'Vlr. Comiss'#227'o'
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 734
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLDBText8: TRLDBText
            Left = 42
            Top = 2
            Width = 16
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText10: TRLDBText
            Left = 62
            Top = 2
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText12: TRLDBText
            Left = 128
            Top = 2
            Width = 58
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUM_PEDIDO'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText13: TRLDBText
            Left = 189
            Top = 2
            Width = 109
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'PEDIDO_CLIENTE'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText14: TRLDBText
            Left = 300
            Top = 2
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText15: TRLDBText
            Left = 376
            Top = 2
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERC_COMISSAO'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDBText16: TRLDBText
            Left = 425
            Top = 2
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'clVlr_Comissao'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
          object RLDraw3: TRLDraw
            Left = 66
            Top = 0
            Width = 666
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText17: TRLDBText
            Left = 488
            Top = 2
            Width = 242
            Height = 12
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMCadExtComissao.dsPedido_Vend
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 35
          Width = 734
          Height = 10
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
          object RLPanel1: TRLPanel
            Left = 0
            Top = 0
            Width = 734
            Height = 9
            Align = faTop
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
        end
      end
    end
  end
end
