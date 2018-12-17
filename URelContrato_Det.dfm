object fRelContrato_Det: TfRelContrato_Det
  Left = 248
  Top = 105
  Width = 928
  Height = 573
  Caption = 'fRelContrato_Det'
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
    Left = 48
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMCadOS.dsOS_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 34
      Top = 26
      Width = 726
      Height = 49
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 726
        Height = 15
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 290
        Top = 0
        Width = 146
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio de Contratos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 644
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
        Left = 664
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
        Left = 629
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
        Left = 664
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
      object RLLabel2: TRLLabel
        Left = 18
        Top = 37
        Width = 42
        Height = 10
        Alignment = taRightJustify
        Caption = 'N'#186' Contrato'
      end
      object RLLabel4: TRLLabel
        Left = 107
        Top = 37
        Width = 26
        Height = 10
        Caption = 'Cliente'
      end
      object RLLabel5: TRLLabel
        Left = 413
        Top = 37
        Width = 41
        Height = 10
        Caption = 'Dt.Contrato'
      end
      object RLLabel6: TRLLabel
        Left = 466
        Top = 39
        Width = 46
        Height = 10
        Caption = 'Dt.Conclu'#237'do'
      end
      object RLLabel3: TRLLabel
        Left = 521
        Top = 39
        Width = 41
        Height = 10
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel7: TRLLabel
        Left = 576
        Top = 39
        Width = 51
        Height = 10
        Caption = 'Prazo Entrega'
      end
      object RLLabel8: TRLLabel
        Left = 664
        Top = 38
        Width = 33
        Height = 10
        Caption = 'Vlr. Total'
      end
      object RLLabel9: TRLLabel
        Left = 704
        Top = 39
        Width = 19
        Height = 10
        Caption = 'Filial'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 75
      Width = 726
      Height = 120
      DataSource = DMCadOS.dsOS_Consulta
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 726
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 726
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText2: TRLDBText
          Left = 106
          Top = 2
          Width = 298
          Height = 10
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText3: TRLDBText
          Left = 410
          Top = 2
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTCONTRATO_INI'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText4: TRLDBText
          Left = 465
          Top = 2
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTENTREGA'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText6: TRLDBText
          Left = 581
          Top = 2
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTPRAZO_ENT'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText7: TRLDBText
          Left = 518
          Top = 2
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText8: TRLDBText
          Left = 632
          Top = 2
          Width = 65
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_TOTAL'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLDBText9: TRLDBText
          Left = 699
          Top = 2
          Width = 24
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'FILIAL'
          DataSource = DMCadOS.dsOS_Consulta
        end
        object RLLabel11: TRLLabel
          Left = 4
          Top = 2
          Width = 87
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#186' Contrato'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 726
        Height = 15
        BandType = btSummary
        object RLLabel10: TRLLabel
          Left = 555
          Top = 2
          Width = 55
          Height = 10
          Caption = 'Total ................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 668
          Top = 2
          Width = 56
          Height = 10
          Alignment = taRightJustify
          DataField = 'VLR_TOTAL'
          DataSource = DMCadOS.dsOS_Consulta
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
      end
    end
  end
end
