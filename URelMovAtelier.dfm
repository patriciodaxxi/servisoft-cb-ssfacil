object fRelMovAtelier: TfRelMovAtelier
  Left = -8
  Top = 147
  Width = 1217
  Height = 532
  Caption = 'fRelMovAtelier'
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
    Left = 24
    Top = 16
    Width = 1123
    Height = 794
    DataSource = DMCadAtelier_Mov.dsConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 88
      Width = 1071
      Height = 201
      DataSource = DMCadAtelier_Mov.dsConsulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1071
        Height = 153
        DataFields = 'NOME_ATELIER'
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 1071
          Height = 20
          BandType = btHeader
          object RLLabel14: TRLLabel
            Left = 32
            Top = 2
            Width = 43
            Height = 14
            Caption = 'Atelier:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 80
            Top = 2
            Width = 79
            Height = 14
            DataField = 'NOME_ATELIER'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 20
          Width = 1071
          Height = 15
          BeforePrint = RLBand2BeforePrint
          object RLDBText3: TRLDBText
            Left = 842
            Top = 2
            Width = 47
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMCadAtelier_Mov.dsConsulta
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
            Pen.Style = psDot
          end
          object RLDBText5: TRLDBText
            Left = 1
            Top = 2
            Width = 54
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUM_PEDIDO'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 56
            Top = 2
            Width = 26
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'ITEM'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 82
            Top = 2
            Width = 60
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTEMISSAO'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 892
            Top = 2
            Width = 87
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_UNITARIO_ATELIER'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 982
            Top = 2
            Width = 87
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL_ATELIER'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 142
            Top = 2
            Width = 60
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTENTREGA_ITEM'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 202
            Top = 2
            Width = 60
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DT_ENVIO_ATELIER'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 263
            Top = 2
            Width = 60
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DT_RETORNO_ATELIER'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 325
            Top = 1
            Width = 339
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'NOMEPRODUTO'
            DataSource = DMCadAtelier_Mov.dsConsulta
          end
          object RLDBText2: TRLDBText
            Left = 675
            Top = 2
            Width = 165
            Height = 10
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMCadAtelier_Mov.dsConsulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 35
          Width = 1071
          Height = 17
          BeforePrint = RLBand3BeforePrint
          object RLLabel4: TRLLabel
            Left = 55
            Top = 2
            Width = 23
            Height = 12
            Caption = 'Obs:'
          end
          object RLDBMemo2: TRLDBMemo
            Left = 79
            Top = 2
            Width = 978
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'OBS'
            DataSource = DMCadAtelier_Mov.dsConsulta
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 52
          Width = 1071
          Height = 17
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLLabel15: TRLLabel
            Left = 152
            Top = 2
            Width = 131
            Height = 12
            Caption = 'Vlr. Total Atelier Com Retorno:'
          end
          object RLDraw1: TRLDraw
            Left = 152
            Top = 0
            Width = 918
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLLabel16: TRLLabel
            Left = 285
            Top = 2
            Width = 47
            Height = 12
          end
          object RLLabel17: TRLLabel
            Left = 448
            Top = 2
            Width = 130
            Height = 12
            Caption = 'Vlr. Total Atelier Sem Retorno:'
          end
          object RLLabel18: TRLLabel
            Left = 581
            Top = 2
            Width = 47
            Height = 12
          end
        end
      end
    end
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 62
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 440
        Top = 4
        Width = 222
        Height = 16
        Caption = 'Relat'#243'rio do Movimento de Atelier'
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
        Left = 995
        Top = 19
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
        Top = 34
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
        Top = 34
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
      object RLLabel7: TRLLabel
        Left = 325
        Top = 48
        Width = 40
        Height = 14
        Caption = 'Produto'
      end
      object RLLabel8: TRLLabel
        Left = 864
        Top = 48
        Width = 23
        Height = 14
        Caption = 'Qtd.'
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 49
        Width = 48
        Height = 12
        Caption = 'Pedido Int.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 59
        Top = 49
        Width = 22
        Height = 12
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 911
        Top = 47
        Width = 66
        Height = 14
        Caption = 'V.Unit.Atelier'
      end
      object RLLabel13: TRLLabel
        Left = 997
        Top = 47
        Width = 71
        Height = 14
        Caption = 'V.Total Atelier'
      end
      object RLLabel5: TRLLabel
        Left = 90
        Top = 49
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
      object RLLabel29: TRLLabel
        Left = 3
        Top = 5
        Width = 358
        Height = 12
        AutoSize = False
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 150
        Top = 48
        Width = 48
        Height = 12
        Caption = 'Dt.Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 222
        Top = 48
        Width = 40
        Height = 12
        Caption = 'Dt.Envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 270
        Top = 48
        Width = 49
        Height = 12
        Caption = 'Dt.Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 674
        Top = 46
        Width = 35
        Height = 14
        Caption = 'Cliente'
      end
    end
  end
end
