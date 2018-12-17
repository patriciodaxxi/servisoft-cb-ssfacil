object frmSel_Grupo: TfrmSel_Grupo
  Left = 230
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Grupo'
  ClientHeight = 446
  ClientWidth = 914
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
    Width = 914
    Height = 28
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Edit1: TEdit
      Left = 40
      Top = 4
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 434
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
    Width = 914
    Height = 401
    Align = alClient
    Ctl3D = False
    DataSource = dsGrupo
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
        Width = 360
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 914
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
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO,  CASE NIVEL'#13#10'           W' +
      'HEN 5 THEN '#39'        '#39' ||  NOME'#13#10'           WHEN 4 THEN '#39'      '#39' ' +
      '||  NOME'#13#10'           WHEN 3 THEN '#39'    '#39' ||  NOME'#13#10'           WHE' +
      'N 2 THEN '#39'  '#39' ||  NOME'#13#10'           WHEN 1 THEN NOME'#13#10'           ' +
      'ELSE G.NOME'#13#10'           END AS NOME_AUX'#13#10'FROM GRUPO G'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
    object sdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 48
    end
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 304
    Top = 168
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 48
    end
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 256
    Top = 168
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 360
    Top = 168
  end
end
