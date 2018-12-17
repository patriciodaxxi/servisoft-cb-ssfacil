object fRelFat_Produto_Det: TfRelFat_Produto_Det
  Left = 100
  Top = 73
  Width = 1237
  Height = 532
  Caption = 'fRelFat_Produto_Det'
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
    Left = 40
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMConsFaturamento.dsProduto_Det
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
      Height = 64
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 192
        Top = 5
        Width = 304
        Height = 16
        Caption = 'Relat'#243'rio de Faturamento - Produtos Detalhado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 593
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
        Left = 619
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
        Left = 573
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
        Left = 619
        Top = 18
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
        Top = 33
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
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 33
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
        Left = 1
        Top = 47
        Width = 94
        Height = 14
        Caption = 'Cliente/Fornecedor'
      end
      object RLLabel7: TRLLabel
        Left = 287
        Top = 47
        Width = 23
        Height = 14
        Caption = 'Qtd.'
      end
      object RLLabel8: TRLLabel
        Left = 314
        Top = 47
        Width = 27
        Height = 14
        Caption = 'Unid.'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 62
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel11: TRLLabel
        Left = 351
        Top = 47
        Width = 56
        Height = 14
        Caption = 'Vlr.Unitario'
      end
      object RLLabel12: TRLLabel
        Left = 428
        Top = 47
        Width = 46
        Height = 14
        Caption = 'Vlr. Total'
      end
      object RLLabel13: TRLLabel
        Left = 483
        Top = 47
        Width = 51
        Height = 14
        Caption = 'Vlr. Desc.'
      end
      object RLLabel14: TRLLabel
        Left = 537
        Top = 47
        Width = 20
        Height = 14
        Caption = 'S'#233'r'
      end
      object RLLabel15: TRLLabel
        Left = 569
        Top = 47
        Width = 40
        Height = 14
        Caption = 'N'#186' Nota'
      end
      object RLLabel16: TRLLabel
        Left = 713
        Top = 47
        Width = 25
        Height = 14
        Caption = 'Data'
      end
      object RLLabel3: TRLLabel
        Left = 629
        Top = 46
        Width = 38
        Height = 14
        Caption = 'N'#186' RPS'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 90
      Width = 742
      Height = 207
      DataSource = DMConsFaturamento.dsProduto_Det
      object RLBand3: TRLBand
        Left = 0
        Top = 81
        Width = 742
        Height = 14
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel5: TRLLabel
          Left = 71
          Top = 0
          Width = 75
          Height = 11
          Alignment = taRightJustify
          Caption = 'Total Geral ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 343
          Top = 0
          Width = 132
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_DUPLICATA'
          DataSource = DMConsFaturamento.dsProduto_Det
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 175
          Top = 0
          Width = 132
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = DMConsFaturamento.dsProduto_Det
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 81
        DataFields = 'TIPO_MOV;NOME_PRODUTO_SERV;NOME_COR;REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 18
          BandType = btHeader
          BeforePrint = RLBand4BeforePrint
          object RLLabel17: TRLLabel
            Left = 41
            Top = 6
            Width = 43
            Height = 11
            Alignment = taRightJustify
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 643
            Top = 6
            Width = 63
            Height = 12
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 87
            Top = 5
            Width = 546
            Height = 11
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 18
          Width = 742
          Height = 18
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 242
            Top = 2
            Width = 66
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 1
            Top = 2
            Width = 240
            Height = 12
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 309
            Top = 2
            Width = 32
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'UNIDADE'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 16
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText7: TRLDBText
            Left = 560
            Top = 2
            Width = 50
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUM_NOTA'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 534
            Top = 2
            Width = 25
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'SERIE'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 474
            Top = 2
            Width = 59
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DESCONTO'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 408
            Top = 2
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DUPLICATA'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 342
            Top = 2
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_UNITARIO'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 611
            Top = 2
            Width = 59
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUM_RPS'
            DataSource = DMConsFaturamento.dsProduto_Det
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 673
            Top = 3
            Width = 67
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dt. Emiss'#227'o'
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 36
          Width = 742
          Height = 13
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand5BeforePrint
          object RLLabel20: TRLLabel
            Left = 75
            Top = 0
            Width = 104
            Height = 11
            Alignment = taRightJustify
            Caption = 'Total Por Produto===>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult3: TRLDBResult
            Left = 341
            Top = 0
            Width = 132
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_DUPLICATA'
            DataSource = DMConsFaturamento.dsProduto_Det
            DisplayMask = '###,###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLDBResult4: TRLDBResult
            Left = 208
            Top = 0
            Width = 98
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMConsFaturamento.dsProduto_Det
            DisplayMask = '###,###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
        end
      end
    end
  end
end
