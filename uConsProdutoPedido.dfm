object frmConsultaProduto: TfrmConsultaProduto
  Left = 390
  Top = 241
  Width = 606
  Height = 304
  Caption = 'Consulta Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 590
    Height = 265
    Align = alClient
    DataSource = dsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 391
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPESSURA'
        Title.Alignment = taCenter
        Title.Caption = 'Espessura'
        Width = 83
        Visible = True
      end>
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 136
    Top = 56
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.ID, P.NOME, P.ESPESSURA'#13#10'from PRODUTO P'#13#10'where P.NOME l' +
      'ike :TIPO and'#13#10'      P.ESPESSURA = :ESPESSURA and'#13#10'      COALESC' +
      'E(P.INATIVO,'#39'N'#39') <> '#39'S'#39#13#10'ORDER BY P.NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESPESSURA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 56
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 104
    Top = 56
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 168
    Top = 56
  end
end
