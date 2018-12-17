object fRelInventario: TfRelInventario
  Left = 248
  Top = 105
  Width = 928
  Height = 573
  Caption = 'fRelInventario'
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
    DataSource = DMConsEstoque.dsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 26
      Width = 734
      Height = 49
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 734
        Height = 15
        Align = faBottom
        Pen.Style = psDot
      end
      object RLLabel1: TRLLabel
        Left = 302
        Top = 0
        Width = 130
        Height = 16
        Align = faCenterTop
        Caption = 'Relat'#243'rio Invent'#225'rio'
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
        Left = 4
        Top = 37
        Width = 27
        Height = 10
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 45
        Top = 37
        Width = 39
        Height = 10
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel4: TRLLabel
        Left = 117
        Top = 37
        Width = 22
        Height = 10
        Caption = 'Nome'
      end
      object RLLabel5: TRLLabel
        Left = 645
        Top = 37
        Width = 37
        Height = 10
        Caption = 'Contagem'
      end
      object RLLabel6: TRLLabel
        Left = 4
        Top = 23
        Width = 26
        Height = 10
        Alignment = taRightJustify
        Caption = 'Op'#231#227'o:'
      end
      object RLLabel7: TRLLabel
        Left = 33
        Top = 23
        Width = 21
        Height = 10
        Caption = 'Filial:'
      end
      object RLLabel9: TRLLabel
        Left = 581
        Top = 36
        Width = 33
        Height = 10
        Caption = 'Tamanho'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 75
      Width = 734
      Height = 120
      DataSource = DMConsEstoque.dsEstoque
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 734
        Height = 64
        DataFields = 'NOMEGRUPO'
        object RLBand2: TRLBand
          Left = 0
          Top = 15
          Width = 734
          Height = 20
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 2
            Top = 2
            Width = 38
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID'
            DataSource = DMConsEstoque.dsEstoque
          end
          object RLDBText2: TRLDBText
            Left = 44
            Top = 2
            Width = 69
            Height = 10
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = DMConsEstoque.dsEstoque
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 18
            Width = 734
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText5: TRLDBText
            Left = 554
            Top = 2
            Width = 59
            Height = 10
            DataField = 'TAMPRODUTO'
            DataSource = DMConsEstoque.dsEstoque
          end
          object RLMemo1: TRLMemo
            Left = 120
            Top = 2
            Width = 417
            Height = 11
            Behavior = [beSiteExpander]
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
          Top = 0
          Width = 734
          Height = 15
          BandType = btHeader
          object RLLabel8: TRLLabel
            Left = 80
            Top = 2
            Width = 35
            Height = 11
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 118
            Top = 2
            Width = 50
            Height = 11
            DataField = 'NOMEGRUPO'
            DataSource = DMConsEstoque.dsEstoque
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Courier New'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
      end
    end
  end
end
