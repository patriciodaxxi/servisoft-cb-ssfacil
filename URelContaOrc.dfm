object fRelContaOrc: TfRelContaOrc
  Left = 340
  Top = 106
  Width = 1197
  Height = 580
  Caption = 'fRelContaOrc'
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
    Left = 32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = dmCadContaOrc.dsConsulta
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
      Height = 47
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 184
        Top = 6
        Width = 291
        Height = 19
        Caption = 'Relat'#243'rio Contas Previs'#227'o/Or'#231'amento'
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
        Left = 3
        Top = 32
        Width = 32
        Height = 12
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 119
        Top = 32
        Width = 28
        Height = 12
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 532
        Top = 32
        Width = 60
        Height = 12
        Caption = 'Tipo Despesa'
      end
      object RLLabel6: TRLLabel
        Left = 600
        Top = 32
        Width = 19
        Height = 12
        Caption = 'Ano'
      end
      object RLLabel9: TRLLabel
        Left = 621
        Top = 32
        Width = 37
        Height = 12
        Caption = '% ADM.'
      end
      object RLLabel7: TRLLabel
        Left = 708
        Top = 32
        Width = 24
        Height = 12
        Caption = 'Valor'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 77
      Width = 734
      Height = 213
      DataSource = dmCadContaOrc.dsConsulta
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 17
        BeforePrint = RLBand3BeforePrint
        object RLDBText2: TRLDBText
          Left = 2
          Top = 2
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'CODIGO'
          DataSource = dmCadContaOrc.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 116
          Top = 2
          Width = 429
          Height = 12
          Behavior = [beSiteExpander]
          DataField = 'NOME_AUX'
          DataSource = dmCadContaOrc.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 546
          Top = 2
          Width = 47
          Height = 12
          AutoSize = False
          Caption = 'Vari'#225'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 658
          Top = 2
          Width = 73
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_ORC'
          DataSource = dmCadContaOrc.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 594
          Top = 2
          Width = 25
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ANO'
          DataSource = dmCadContaOrc.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 619
          Top = 2
          Width = 39
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clPerc_Adim'
          DataSource = dmCadContaOrc.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
