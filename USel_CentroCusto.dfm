object frmSel_CentroCusto: TfrmSel_CentroCusto
  Left = 575
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_CentroCusto'
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
    Top = 26
    Width = 668
    Height = 28
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Edit1: TEdit
      Left = 39
      Top = 4
      Width = 538
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
    Top = 54
    Width = 668
    Height = 375
    Align = alClient
    Ctl3D = False
    DataSource = dsCentroCusto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_AUX'
        Title.Caption = 'Descri'#231#227'o'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 26
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label52: TLabel
      Left = 50
      Top = 10
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta Or'#231'amento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo9: TRxDBLookupCombo
      Left = 138
      Top = 2
      Width = 316
      Height = 21
      DropDownCount = 15
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'DESCRICAO'
      LookupSource = DMCadDuplicata.dsContaOrcamento
      ParentCtl3D = False
      TabOrder = 0
    end
    object NxButton1: TNxButton
      Left = 477
      Top = 1
      Width = 144
      Caption = 'Copiar Selecionados'
      TabOrder = 1
      OnClick = NxButton1Click
    end
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT B.*, case'#13#10'   WHEN NIVEL = 1 THEN B.DESCRICAO'#13#10'   WHEN NI' +
      'VEL = 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||B.DESCRICAO'#13#10'   WHEN NIVEL >' +
      ' 2 THEN LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||B.DESCRICAO'#13#10'   END A' +
      'S NOME_AUX'#13#10'FROM CENTROCUSTO B'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 304
    Top = 168
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 32765
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 256
    Top = 168
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 360
    Top = 168
  end
  object sdsPesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.ID, C.DESCRICAO'#13#10'FROM CENTROCUSTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 216
    object sdsPesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
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
    object cdsPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, c.superior, CASE NIV' +
      'EL'#13#10'           WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'         ' +
      '  WHEN 4 THEN '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39 +
      '      '#39' ||  DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRIC' +
      'AO'#13#10'           WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13 +
      #10'           END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 265
    Top = 304
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 297
    Top = 304
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 329
    Top = 304
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
    object cdsContaOrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 361
    Top = 304
  end
end
