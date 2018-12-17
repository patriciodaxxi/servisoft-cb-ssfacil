object fRelCalcMaterial_Terc: TfRelCalcMaterial_Terc
  Left = 80
  Top = 167
  Width = 914
  Height = 532
  Caption = 'fRelCalcMaterial_Terc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMConsPedido.dsmConsumo
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
      Height = 79
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 232
        Top = 21
        Width = 293
        Height = 16
        Caption = 'Relat'#243'rio do C'#225'lculo do Material de Terceiros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
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
        Left = 675
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
        Left = 629
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
        Left = 675
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
        Top = 39
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
      object RLLabel3: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbFilial: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 35
        Top = 39
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
        Top = 64
        Width = 35
        Height = 12
        Caption = 'Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 77
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLMemo1: TRLMemo
        Left = 448
        Top = 52
        Width = 61
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Qtd.Produto'
          'Produ'#231#227'o')
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 713
        Top = 64
        Width = 26
        Height = 12
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 528
        Top = 52
        Width = 61
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Qtd.Material'
          'Estoque')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 616
        Top = 52
        Width = 61
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Consumo'
          'Calculado')
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 409
        Top = 64
        Width = 31
        Height = 12
        Caption = 'ID.Mat'
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
      Top = 105
      Width = 742
      Height = 202
      DataSource = DMConsPedido.dsmConsumo
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 105
        DataFields = 'ID_Cliente'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 19
          BandType = btHeader
          object RLLabel9: TRLLabel
            Left = 8
            Top = 2
            Width = 45
            Height = 15
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 58
            Top = 2
            Width = 591
            Height = 16
            AutoSize = False
            DataField = 'Nome_Cliente'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 660
            Top = 2
            Width = 60
            Height = 15
            Alignment = taCenter
            DataField = 'ID_Cliente'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 19
          Width = 742
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText3: TRLDBText
            Left = 454
            Top = 2
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QtdProduto'
            DataSource = DMConsPedido.dsmConsumo
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
            Left = 1
            Top = 2
            Width = 412
            Height = 12
            DataField = 'NomeMaterial'
            DataSource = DMConsPedido.dsmConsumo
          end
          object RLDBText1: TRLDBText
            Left = 526
            Top = 2
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd_MaterialTerc'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 598
            Top = 2
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd_ConsumoCalc'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 670
            Top = 2
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Saldo'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 415
            Top = 2
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID_Material'
            DataSource = DMConsPedido.dsmConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
end
