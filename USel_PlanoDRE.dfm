object frmSel_PlanoDRE: TfrmSel_PlanoDRE
  Left = 290
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_PlanoDRE'
  ClientHeight = 446
  ClientWidth = 668
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
    Width = 668
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
    Width = 668
    Height = 401
    Align = alClient
    Ctl3D = False
    DataSource = dsPlanoDRE
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo '
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_AUX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 483
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 668
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar       ESC= Fechar tela ' +
      '      F3= Pr'#243'ximo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsPlanoDRE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.nome, C.tipo_reg, C.CODIGO, C.SUPERIOR, CASE'#13#10'   ' +
      'WHEN NIVEL = 1 THEN C.NOME'#13#10'   WHEN NIVEL = 2 THEN LPAD('#39' '#39', NIV' +
      'EL, '#39' '#39')||C.NOME'#13#10'   WHEN NIVEL > 2 THEN LPAD('#39' '#39', (NIVEL+2-4+NI' +
      'VEL), '#39' '#39')||C.NOME'#13#10'   END AS NOME_AUX'#13#10'FROM plano_dre C'#13#10'WHERE ' +
      '1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsPlanoDRE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPlanoDRE'
    Left = 304
    Top = 168
    object cdsPlanoDREID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlanoDRENOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlanoDRETIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsPlanoDRECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlanoDRESUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlanoDRENOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 32765
    end
  end
  object dspPlanoDRE: TDataSetProvider
    DataSet = sdsPlanoDRE
    Left = 256
    Top = 168
  end
  object dsPlanoDRE: TDataSource
    DataSet = cdsPlanoDRE
    Left = 360
    Top = 168
  end
  object sdsPesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.ID, C.nome'#13#10'FROM plano_dre C'#13#10
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
    IndexFieldNames = 'DESCRICAO'
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
