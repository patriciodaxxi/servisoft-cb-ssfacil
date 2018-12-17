object fRelExtComissao_Prev: TfRelExtComissao_Prev
  Left = 14
  Top = 67
  Width = 1304
  Height = 641
  Caption = 'fRelExtComissao_Prev'
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
      Height = 63
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw9: TRLDraw
        Left = 665
        Top = 38
        Width = 68
        Height = 26
      end
      object RLDraw8: TRLDraw
        Left = 598
        Top = 38
        Width = 68
        Height = 26
      end
      object RLDraw7: TRLDraw
        Left = 524
        Top = 38
        Width = 75
        Height = 26
      end
      object RLDraw6: TRLDraw
        Left = 450
        Top = 38
        Width = 75
        Height = 26
      end
      object RLDraw5: TRLDraw
        Left = 378
        Top = 38
        Width = 73
        Height = 26
      end
      object RLDraw4: TRLDraw
        Left = 299
        Top = 38
        Width = 80
        Height = 26
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
        Caption = 'Relat'#243'rio de Previs'#227'o de Comiss'#227'o de Vendedores'
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
      object RLMemo1: TRLMemo
        Left = 304
        Top = 39
        Width = 73
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Base Previs'#227'o'
          'Comiss'#227'o')
      end
      object RLMemo2: TRLMemo
        Left = 380
        Top = 39
        Width = 69
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Valor Previs'#227'o'
          'Comiss'#227'o')
      end
      object RLMemo3: TRLMemo
        Left = 453
        Top = 39
        Width = 69
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Base Previs'#227'o'
          'Duplicatas')
      end
      object RLMemo4: TRLMemo
        Left = 530
        Top = 39
        Width = 62
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Vlr. Previs'#227'o'
          'Duplicatas')
      end
      object RLMemo5: TRLMemo
        Left = 601
        Top = 39
        Width = 62
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Base Previs'#227'o'
          'Pedidos')
      end
      object RLMemo6: TRLMemo
        Left = 669
        Top = 39
        Width = 62
        Height = 24
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'Vlr. Previs'#227'o'
          'Pedidos')
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 93
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
          Width = 289
          Height = 12
          AutoSize = False
          DataField = 'NomeVendedor'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText2: TRLDBText
          Left = 303
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Base_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText3: TRLDBText
          Left = 377
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Comissao'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText4: TRLDBText
          Left = 451
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Base_Previsao_Dup'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText5: TRLDBText
          Left = 525
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Previsao_Dup'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText6: TRLDBText
          Left = 599
          Top = 2
          Width = 66
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Base_Previsao_Ped'
          DataSource = DMCadExtComissao.dsmImp_Reduzido
        end
        object RLDBText7: TRLDBText
          Left = 666
          Top = 2
          Width = 66
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vlr_Previsao_Ped'
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
        Height = 105
        DataSource = DMCadExtComissao.dsPrevisao
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLDraw2: TRLDraw
            Left = 66
            Top = 1
            Width = 669
            Height = 17
          end
          object RLLabel9: TRLLabel
            Left = 68
            Top = 4
            Width = 22
            Height = 12
            Caption = 'Filial'
          end
          object RLLabel10: TRLLabel
            Left = 92
            Top = 4
            Width = 24
            Height = 12
            Caption = 'S'#233'rie'
          end
          object RLLabel11: TRLLabel
            Left = 120
            Top = 4
            Width = 36
            Height = 12
            Caption = 'N'#186' Nota'
          end
          object RLLabel12: TRLLabel
            Left = 160
            Top = 4
            Width = 25
            Height = 12
            Caption = 'Parc.'
          end
          object RLLabel13: TRLLabel
            Left = 194
            Top = 4
            Width = 68
            Height = 12
            Caption = 'Dt. Vencimento'
          end
          object RLLabel15: TRLLabel
            Left = 277
            Top = 4
            Width = 69
            Height = 12
            Caption = 'Base Comiss'#227'o'
          end
          object RLLabel16: TRLLabel
            Left = 351
            Top = 4
            Width = 37
            Height = 12
            Caption = '% Com.'
          end
          object RLLabel17: TRLLabel
            Left = 393
            Top = 4
            Width = 59
            Height = 12
            Caption = 'Vlr.Comiss'#227'o'
          end
          object RLLabel18: TRLLabel
            Left = 457
            Top = 4
            Width = 32
            Height = 12
            Caption = 'Cliente'
          end
          object RLLabel24: TRLLabel
            Left = 14
            Top = 3
            Width = 46
            Height = 11
            Caption = 'Duplicata'
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
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 734
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLDBText8: TRLDBText
            Left = 66
            Top = 2
            Width = 16
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText9: TRLDBText
            Left = 87
            Top = 2
            Width = 22
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'SERIE'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText10: TRLDBText
            Left = 110
            Top = 2
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUMDUPLICATA'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText11: TRLDBText
            Left = 157
            Top = 2
            Width = 30
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'PARCELA'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText12: TRLDBText
            Left = 199
            Top = 2
            Width = 58
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTVENCIMENTO'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText14: TRLDBText
            Left = 276
            Top = 2
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_RESTANTE'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText15: TRLDBText
            Left = 352
            Top = 2
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERC_COMISSAO'
            DataSource = DMCadExtComissao.dsPrevisao
          end
          object RLDBText16: TRLDBText
            Left = 393
            Top = 2
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Comissao'
            DataSource = DMCadExtComissao.dsPrevisao
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
            Left = 457
            Top = 2
            Width = 272
            Height = 12
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMCadExtComissao.dsPrevisao
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 35
          Width = 734
          Height = 10
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 121
        Width = 734
        Height = 105
        DataSource = DMCadExtComissao.dsmPrevPedido
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLDraw10: TRLDraw
            Left = 64
            Top = 1
            Width = 669
            Height = 17
          end
          object RLLabel4: TRLLabel
            Left = 68
            Top = 4
            Width = 22
            Height = 12
            Caption = 'Filial'
          end
          object RLLabel6: TRLLabel
            Left = 110
            Top = 4
            Width = 44
            Height = 12
            Caption = 'N'#186' Pedido'
          end
          object RLLabel14: TRLLabel
            Left = 195
            Top = 4
            Width = 69
            Height = 12
            Caption = 'Base Comiss'#227'o'
          end
          object RLLabel20: TRLLabel
            Left = 305
            Top = 4
            Width = 59
            Height = 12
            Caption = 'Vlr.Comiss'#227'o'
          end
          object RLLabel23: TRLLabel
            Left = 377
            Top = 4
            Width = 32
            Height = 12
            Caption = 'Cliente'
          end
          object RLLabel25: TRLLabel
            Left = 14
            Top = 3
            Width = 35
            Height = 11
            Caption = 'Pedido'
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
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 19
          Width = 734
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLDBText13: TRLDBText
            Left = 66
            Top = 2
            Width = 16
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FILIAL'
            DataSource = DMCadExtComissao.dsmPrevPedido
          end
          object RLDBText19: TRLDBText
            Left = 96
            Top = 2
            Width = 66
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUM_PEDIDO'
            DataSource = DMCadExtComissao.dsmPrevPedido
          end
          object RLDBText22: TRLDBText
            Left = 180
            Top = 2
            Width = 85
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Base_Comissao'
            DataSource = DMCadExtComissao.dsmPrevPedido
          end
          object RLDBText24: TRLDBText
            Left = 305
            Top = 2
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vlr_Comissao'
            DataSource = DMCadExtComissao.dsmPrevPedido
          end
          object RLDraw11: TRLDraw
            Left = 66
            Top = 0
            Width = 666
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText25: TRLDBText
            Left = 377
            Top = 2
            Width = 344
            Height = 12
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMCadExtComissao.dsmPrevPedido
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 35
          Width = 734
          Height = 10
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
          object RLPanel2: TRLPanel
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
