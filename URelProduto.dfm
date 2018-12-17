object fRelProduto: TfRelProduto
  Left = 304
  Top = 102
  Width = 831
  Height = 580
  Caption = 'fRelProduto'
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
    DataSource = dmCadProduto.dsProduto_Consulta
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
        Left = 8
        Top = 32
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel3: TRLLabel
        Left = 80
        Top = 32
        Width = 28
        Height = 12
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 421
        Top = 32
        Width = 37
        Height = 12
        Caption = 'Unidade'
      end
      object RLLabel6: TRLLabel
        Left = 461
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
      object RLLabel13: TRLLabel
        Left = 377
        Top = 32
        Width = 35
        Height = 12
        Caption = 'M'#178' Emb'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 77
      Width = 726
      Height = 284
      DataSource = dmCadProduto.dsProduto_Consulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 726
        Height = 217
        DataFields = 'NOMEGRUPO'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 23
          BandType = btHeader
          object RLLabel9: TRLLabel
            Left = 16
            Top = 5
            Width = 40
            Height = 15
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 60
            Top = 5
            Width = 78
            Height = 15
            DataField = 'NOMEGRUPO'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 21
            Width = 726
            Height = 2
            Align = faBottom
            DrawKind = dkLine
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 23
          Width = 726
          Height = 15
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 2
            Top = 2
            Width = 76
            Height = 10
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 423
            Top = 2
            Width = 32
            Height = 10
            AutoSize = False
            DataField = 'UNIDADE'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 459
            Top = 2
            Width = 57
            Height = 10
            AutoSize = False
            DataField = 'NCM'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 518
            Top = 2
            Width = 61
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_CUSTO'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 80
            Top = 2
            Width = 295
            Height = 10
            Behavior = [beSiteExpander]
            DataField = 'NOME'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 643
            Top = 2
            Width = 81
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD_ESTOQUE'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 580
            Top = 2
            Width = 61
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PRECO_VENDA'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 377
            Top = 2
            Width = 32
            Height = 10
            AutoSize = False
            DataField = 'QTD_EMBALAGEM'
            DataSource = dmCadProduto.dsProduto_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 38
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
            object RLDraw2: TRLDraw
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
              object RLDraw3: TRLDraw
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
            object RLDraw4: TRLDraw
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
  end
end
