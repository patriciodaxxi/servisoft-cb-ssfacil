object frmSel_Unidade: TfrmSel_Unidade
  Left = 432
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Unidade'
  ClientHeight = 446
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 17
    Align = alTop
    Color = clSilver
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 17
    Width = 435
    Height = 412
    Align = alClient
    Ctl3D = False
    DataSource = dsmUnidade
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd_Conv'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Para Converter'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 435
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar o produto       ESC= Fe' +
      'char tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsProduto_Uni: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT UC.UNIDADE_CONV, UC.QTD, UC.NOME'#13#10'FROM PRODUTO_UNI PU'#13#10'IN' +
      'NER JOIN UNIDADE_CONV UC'#13#10'ON PU.UNIDADE = UC.UNIDADE'#13#10'AND PU.ITE' +
      'M_UNIDADE = UC.ITEM'#13#10'WHERE PU.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsProduto_Uni: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE_CONV;NOME'
    Params = <>
    ProviderName = 'dspProduto_Uni'
    Left = 304
    Top = 168
    object cdsProduto_UniUNIDADE_CONV: TStringField
      FieldName = 'UNIDADE_CONV'
      Size = 6
    end
    object cdsProduto_UniQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProduto_UniNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dspProduto_Uni: TDataSetProvider
    DataSet = sdsProduto_Uni
    Left = 256
    Top = 168
  end
  object mUnidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 224
    Data = {
      600000009619E0BD010000001800000003000000000003000000600007556E69
      646164650100490000000100055749445448020002000600085174645F436F6E
      760800040000000000044E6F6D65010049000000010005574944544802000200
      1E000000}
    object mUnidadeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mUnidadeQtd_Conv: TFloatField
      FieldName = 'Qtd_Conv'
    end
    object mUnidadeNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsmUnidade: TDataSource
    DataSet = mUnidade
    Left = 280
    Top = 224
  end
end
