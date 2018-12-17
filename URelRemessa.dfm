object fRelRemessa: TfRelRemessa
  Left = 53
  Top = 173
  Width = 887
  Height = 532
  Caption = 'fRelRemessa'
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
    DataSource = DMCob_Eletronica.dsDuplicata
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
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 84
      Width = 742
      Height = 146
      DataSource = DMCob_Eletronica.dsDuplicata
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 285
          Top = 2
          Width = 20
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'FILIAL'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 397
          Top = 2
          Width = 136
          Height = 12
          AutoSize = False
          DataField = 'NOSSONUMERO'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 15
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBMemo1: TRLDBMemo
          Left = 3
          Top = 2
          Width = 281
          Height = 12
          Behavior = [beSiteExpander]
          DataField = 'NOME_CLIENTE'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 306
          Top = 2
          Width = 24
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'SERIE'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 330
          Top = 2
          Width = 66
          Height = 12
          Alignment = taRightJustify
          Caption = 'Nosso N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 534
          Top = 2
          Width = 64
          Height = 12
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 599
          Top = 2
          Width = 64
          Height = 12
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 664
          Top = 2
          Width = 76
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_PARCELA'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 17
        Width = 742
        Height = 16
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel12: TRLLabel
          Left = 234
          Top = 2
          Width = 84
          Height = 11
          Caption = 'Qtd. Total T'#237'tulos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 320
          Top = 2
          Width = 37
          Height = 11
          DataField = 'ID_PESSOA'
          DataSource = DMCob_Eletronica.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 640
          Top = 2
          Width = 97
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_PARCELA'
          DataSource = DMCob_Eletronica.dsDuplicata
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLLabel13: TRLLabel
          Left = 549
          Top = 2
          Width = 89
          Height = 11
          Caption = 'Valor Total T'#237'tulos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 58
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 280
        Top = 5
        Width = 167
        Height = 16
        Caption = 'RELAT'#211'RIO DE REMESSA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
        Top = 1
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
        Left = 672
        Top = 1
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
        Left = 629
        Top = 14
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
        Left = 672
        Top = 14
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
        Top = 27
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
        Top = 27
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
        Top = 41
        Width = 35
        Height = 14
        Caption = 'Cliente'
      end
      object RLLabel7: TRLLabel
        Left = 288
        Top = 41
        Width = 13
        Height = 14
        Caption = 'Fil'
      end
      object RLLabel8: TRLLabel
        Left = 710
        Top = 41
        Width = 29
        Height = 14
        Caption = 'Valor'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 56
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel3: TRLLabel
        Left = 305
        Top = 41
        Width = 28
        Height = 14
        Caption = 'S'#233'rie'
      end
      object RLLabel4: TRLLabel
        Left = 350
        Top = 41
        Width = 43
        Height = 14
        Caption = 'N'#186' T'#237'tulo'
      end
      object RLLabel9: TRLLabel
        Left = 397
        Top = 40
        Width = 74
        Height = 14
        Caption = 'Nosso N'#250'mero'
      end
      object RLLabel10: TRLLabel
        Left = 601
        Top = 40
        Width = 60
        Height = 14
        Caption = 'Vencimento'
      end
      object RLLabel5: TRLLabel
        Left = 538
        Top = 40
        Width = 59
        Height = 14
        Caption = 'Dt. Emiss'#227'o'
      end
    end
  end
end
