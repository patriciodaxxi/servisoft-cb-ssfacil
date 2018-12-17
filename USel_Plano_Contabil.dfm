object frmSel_Plano_Contabil: TfrmSel_Plano_Contabil
  Left = 397
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Plano_Contabil'
  ClientHeight = 446
  ClientWidth = 789
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
    Width = 789
    Height = 28
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 160
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Edit1: TEdit
      Left = 192
      Top = 4
      Width = 390
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 583
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 28
    Width = 789
    Height = 401
    Align = alClient
    Ctl3D = False
    DataSource = dsPlano_Contabil
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    OnTitleClick = SMDBGrid1TitleClick
    Flat = True
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_AUX'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 789
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 'Duplo Clique  ou   Enter para selecionar       ESC= Fechar tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsPlano_Contabil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE NIVEL'#13#10'           WHEN 9 THEN '#39'                ' +
      #39' ||  NOME'#13#10'           WHEN 8 THEN '#39'              '#39' ||  NOME'#13#10'  ' +
      '         WHEN 7 THEN '#39'            '#39' ||  NOME'#13#10'           WHEN 6 ' +
      'THEN '#39'          '#39' ||  NOME'#13#10'           WHEN 5 THEN '#39'        '#39' ||' +
      '  NOME'#13#10'           WHEN 4 THEN '#39'      '#39' ||  NOME'#13#10'           WHE' +
      'N 3 THEN '#39'    '#39' ||  NOME'#13#10'           WHEN 2 THEN '#39'  '#39' ||  NOME'#13#10 +
      '           WHEN 1 THEN NOME'#13#10'           ELSE NOME'#13#10'           EN' +
      'D AS NOME_AUX'#13#10'FROM PLANO_CONTABIL C'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
    object sdsPlano_ContabilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPlano_ContabilCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsPlano_ContabilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPlano_ContabilDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsPlano_ContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsPlano_ContabilNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 116
    end
    object sdsPlano_ContabilTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPlano_Contabil: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPlano_Contabil'
    Left = 304
    Top = 168
    object cdsPlano_ContabilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlano_ContabilCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_ContabilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_ContabilDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPlano_ContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_ContabilNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 116
    end
    object cdsPlano_ContabilTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dspPlano_Contabil: TDataSetProvider
    DataSet = sdsPlano_Contabil
    Left = 256
    Top = 168
  end
  object dsPlano_Contabil: TDataSource
    DataSet = cdsPlano_Contabil
    Left = 360
    Top = 168
  end
  object sdsPesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.ID, C.NOME'#13#10'FROM PLANO_CONTABIL C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 216
  end
  object dspPesquisa: TDataSetProvider
    DataSet = sdsPesquisa
    Left = 256
    Top = 216
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 304
    Top = 216
    object cdsPesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
