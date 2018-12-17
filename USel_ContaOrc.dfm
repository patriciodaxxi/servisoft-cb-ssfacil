object frmSel_ContaOrc: TfrmSel_ContaOrc
  Left = 306
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_ContaOrc'
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
    Height = 29
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
    object ComboBox2: TComboBox
      Left = 10
      Top = 4
      Width = 129
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Ambos'
      Items.Strings = (
        'Receita'
        'Despesa'
        'Ambos')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 29
    Width = 668
    Height = 400
    Align = alClient
    Ctl3D = False
    DataSource = dsContaOrc
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
  object sdsContaOrc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, C.SUPERIOR, TIPO_RD,' +
      ' CASE'#13#10'   WHEN NIVEL = 1 THEN DESCRICAO'#13#10'   WHEN NIVEL = 2 THEN ' +
      'LPAD('#39' '#39', NIVEL, '#39' '#39')||C.DESCRICAO'#13#10'   WHEN NIVEL > 2 THEN LPAD(' +
      #39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.DESCRICAO'#13#10'   END AS NOME_AUX'#13#10'F' +
      'ROM CONTA_ORCAMENTO C'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
    object sdsContaOrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object sdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object sdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object cdsContaOrc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspContaOrc'
    Left = 304
    Top = 168
    object cdsContaOrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object cdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object dspContaOrc: TDataSetProvider
    DataSet = sdsContaOrc
    Left = 256
    Top = 168
  end
  object dsContaOrc: TDataSource
    DataSet = cdsContaOrc
    Left = 360
    Top = 168
  end
  object sdsPesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.ID, C.CODIGO, C.DESCRICAO'#13#10'FROM CONTA_ORCAMENTO C '#13#10
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
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 304
    Top = 216
    object cdsPesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsPesquisaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
end
