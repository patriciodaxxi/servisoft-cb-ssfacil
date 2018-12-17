object fRelCartao: TfRelCartao
  Left = 434
  Top = 99
  Width = 870
  Height = 612
  Caption = 'fRelCartao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 38
      Width = 756
      Height = 267
      DataSource = DataSource1
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 0
        Width = 756
        Height = 112
        ColCount = 4
        BeforePrint = RLDetailGrid1BeforePrint
        object RLBarcode4: TRLBarcode
          Left = 36
          Top = -16
          Width = 104
          Height = 99
          Alignment = taCenter
          BarcodeType = bcEAN13
          Caption = '200000000011'
          CheckSum = True
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          ShowText = boBoth
        end
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 200
    object ClientDataSet1Codigo: TStringField
      FieldName = 'Codigo'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 232
  end
end
