object fRelProduto_Grupo: TfRelProduto_Grupo
  Left = 98
  Top = 130
  Width = 1197
  Height = 580
  Caption = 'fRelProduto_Grupo'
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
    Left = 116
    Top = 20
    Width = 794
    Height = 1123
    DataSource = dmCadProduto.dsmGrupo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 34
      Top = 30
      Width = 726
      Height = 47
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 272
        Top = 6
        Width = 171
        Height = 19
        Caption = 'Relat'#243'rio de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 638
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
        Left = 661
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
        Left = 618
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
        Left = 661
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
      object RLLabel2: TRLLabel
        Left = 72
        Top = 32
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel3: TRLLabel
        Left = 160
        Top = 32
        Width = 28
        Height = 12
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 443
        Top = 32
        Width = 37
        Height = 12
        Caption = 'Unidade'
      end
      object RLLabel6: TRLLabel
        Left = 484
        Top = 32
        Width = 24
        Height = 12
        Caption = 'NCM'
      end
      object RLLabel7: TRLLabel
        Left = 521
        Top = 32
        Width = 55
        Height = 12
        Caption = 'Pre'#231'o Custo'
      end
      object RLLabel5: TRLLabel
        Left = 659
        Top = 32
        Width = 63
        Height = 12
        Caption = 'Saldo Estoque'
      end
      object RLLabel8: TRLLabel
        Left = 584
        Top = 32
        Width = 56
        Height = 12
        Caption = 'Pre'#231'o Venda'
      end
      object RLLabel29: TRLLabel
        Left = 15
        Top = 31
        Width = 51
        Height = 12
        Caption = 'C'#243'digo (ID)'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 77
      Width = 726
      Height = 260
      DataSource = dmCadProduto.dsmGrupo
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 726
        Height = 17
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 5
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          Color = 13882323
          DataField = 'Codigo'
          DataSource = dmCadProduto.dsmGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 47
          Top = 0
          Width = 78
          Height = 17
          Align = faLeft
          Color = 13882323
          DataField = 'Nome_Completo'
          DataSource = dmCadProduto.dsmGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 5
          Height = 17
          Align = faLeft
        end
        object RLPanel2: TRLPanel
          Left = 42
          Top = 0
          Width = 5
          Height = 17
          Align = faLeft
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 17
        Width = 726
        Height = 188
        DataSource = dmCadProduto.dsmGrupo_Produto
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 14
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 71
            Top = 2
            Width = 70
            Height = 10
            AutoSize = False
            DataField = 'Referencia'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 457
            Top = 2
            Width = 22
            Height = 10
            AutoSize = False
            DataField = 'Unidade'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 480
            Top = 2
            Width = 52
            Height = 10
            AutoSize = False
            DataField = 'NCM'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 534
            Top = 2
            Width = 58
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Preco_Custo'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 143
            Top = 2
            Width = 307
            Height = 10
            Behavior = [beSiteExpander]
            DataField = 'Nome_Produto'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 652
            Top = 2
            Width = 72
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Saldo_Estoque'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 593
            Top = 2
            Width = 58
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Preco_Venda'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 17
            Top = 2
            Width = 44
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID_Produto'
            DataSource = dmCadProduto.dsmGrupo_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 107
          Width = 726
          Height = 20
          BandType = btSummary
          BeforePrint = RLBand4BeforePrint
          object RLLabel9: TRLLabel
            Left = 533
            Top = 2
            Width = 101
            Height = 11
            Caption = 'Qtd. de Registros ==>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 638
            Top = 2
            Width = 84
            Height = 11
            Alignment = taRightJustify
            DataField = 'ID_Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riCount
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLLabel15: TRLLabel
            Left = 202
            Top = 3
            Width = 52
            Height = 11
            Caption = 'Vlr. Custo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 258
            Top = 3
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
          object RLLabel17: TRLLabel
            Left = 354
            Top = 3
            Width = 53
            Height = 11
            Caption = 'Vlr. Venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 410
            Top = 3
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
          object RLLabel19: TRLLabel
            Left = 50
            Top = 3
            Width = 43
            Height = 11
            Caption = 'Estoque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 96
            Top = 3
            Width = 43
            Height = 11
            Caption = 'Estoque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 14
          Width = 726
          Height = 93
          DataSource = dmCadProduto.dsConsumo_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 726
            Height = 17
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand5BeforePrint
            object RLDraw1: TRLDraw
              Left = 64
              Top = 1
              Width = 577
              Height = 15
            end
            object RLLabel10: TRLLabel
              Left = 64
              Top = 4
              Width = 27
              Height = 10
              Caption = 'C'#243'digo'
            end
            object RLLabel11: TRLLabel
              Left = 112
              Top = 4
              Width = 30
              Height = 10
              Caption = 'Material'
            end
            object RLLabel12: TRLLabel
              Left = 602
              Top = 4
              Width = 34
              Height = 10
              Caption = 'Consumo'
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 17
            Width = 726
            Height = 12
            BeforePrint = RLBand6BeforePrint
            object RLDBText9: TRLDBText
              Left = 64
              Top = 0
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ID_MATERIAL'
              DataSource = dmCadProduto.dsConsumo_Imp
            end
            object RLDBText10: TRLDBText
              Left = 112
              Top = 0
              Width = 441
              Height = 10
              AutoSize = False
              DataField = 'NOMEMATERIAL'
              DataSource = dmCadProduto.dsConsumo_Imp
            end
            object RLDBText11: TRLDBText
              Left = 596
              Top = 1
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_CONSUMO'
              DataSource = dmCadProduto.dsConsumo_Imp
            end
          end
          object RLSubDetail4: TRLSubDetail
            Left = 0
            Top = 29
            Width = 726
            Height = 43
            DataSource = dmCadProduto.dsConsumo_Imp_Tam
            object RLDetailGrid1: TRLDetailGrid
              Left = 0
              Top = 0
              Width = 726
              Height = 33
              ColCount = 12
              object RLDraw2: TRLDraw
                Left = 1
                Top = 0
                Width = 58
                Height = 33
              end
              object RLDBText12: TRLDBText
                Left = 9
                Top = 5
                Width = 46
                Height = 10
                Alignment = taCenter
                AutoSize = False
                DataField = 'TAMANHO'
                DataSource = dmCadProduto.dsConsumo_Imp_Tam
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = [fsUnderline]
                ParentFont = False
              end
              object RLDBText13: TRLDBText
                Left = 9
                Top = 17
                Width = 46
                Height = 10
                Alignment = taCenter
                AutoSize = False
                DataField = 'QTD_CONSUMO'
                DataSource = dmCadProduto.dsConsumo_Imp_Tam
              end
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 72
            Width = 726
            Height = 4
            BandType = btFooter
            object RLDraw3: TRLDraw
              Left = 0
              Top = 2
              Width = 726
              Height = 2
              Align = faBottom
              DrawKind = dkLine
              Pen.Style = psDot
            end
          end
        end
      end
    end
    object RLBand8: TRLBand
      Left = 34
      Top = 337
      Width = 726
      Height = 21
      BandType = btSummary
      BeforePrint = RLBand8BeforePrint
      object RLLabel13: TRLLabel
        Left = 527
        Top = 4
        Width = 117
        Height = 11
        Alignment = taRightJustify
        Caption = 'Total Geral Registros ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 651
        Top = 4
        Width = 71
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 202
        Top = 3
        Width = 52
        Height = 11
        Caption = 'Vlr. Custo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 258
        Top = 3
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
      object RLLabel25: TRLLabel
        Left = 354
        Top = 3
        Width = 53
        Height = 11
        Caption = 'Vlr. Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 410
        Top = 3
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
        Left = 50
        Top = 3
        Width = 43
        Height = 11
        Caption = 'Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 96
        Top = 3
        Width = 43
        Height = 11
        Caption = 'Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
