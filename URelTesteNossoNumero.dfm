object fRelTesteNossoNumero: TfRelTesteNossoNumero
  Left = 14
  Top = 67
  Width = 1304
  Height = 641
  Caption = 'fRelTesteNossoNumero'
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
    DataSource = DMCadContas.dsmArqNumero
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
      Height = 28
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 64
        Top = 6
        Width = 530
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio de teste do Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 58
      Width = 734
      Height = 363
      DataSource = DMCadContas.dsmArqNumero
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 734
        Height = 23
        ColCount = 6
        object RLDBText1: TRLDBText
          Left = 8
          Top = 6
          Width = 104
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NossoNumero'
          DataSource = DMCadContas.dsmArqNumero
        end
      end
    end
  end
end
