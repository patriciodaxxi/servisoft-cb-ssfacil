object frmSel_OrdemProd: TfrmSel_OrdemProd
  Left = 246
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Ordem de Produ'#231#227'o'
  ClientHeight = 446
  ClientWidth = 722
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
    Width = 722
    Height = 73
    Align = alTop
    Color = 8404992
    TabOrder = 0
    object Label1: TLabel
      Left = 68
      Top = 13
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 51
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Pedido Interno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 21
      Top = 31
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Ordem Produ'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 123
      Top = 5
      Width = 393
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TBitBtn
      Left = 246
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 123
      Top = 43
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = CurrencyEdit2KeyDown
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 123
      Top = 23
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object btnSelecionar: TBitBtn
      Left = 374
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnSelecionarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 73
    Width = 722
    Height = 356
    Align = alClient
    Ctl3D = False
    DataSource = dsLote
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Ordem'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_REMESSA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Remessa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Ord. Produ'#231#227'o'
        Width = 275
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 158
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 722
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar a Ordem de Produ'#231#227'o    ' +
      '  ESC= Fechar tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT L.num_ordem, L.nome, L.dtemissao, L.NUM_REMESSA'#13 +
      #10'FROM LOTE L'#13#10'LEFT JOIN talao_ped T ON'#13#10'L.id = T.id'#13#10'LEFT JOIN P' +
      'EDIDO PED'#13#10'ON T.id_pedido = PED.id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLote'
    Left = 304
    Top = 168
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsLoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsLoteNUM_REMESSA: TStringField
      FieldName = 'NUM_REMESSA'
      Size = 15
    end
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    Left = 256
    Top = 168
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 360
    Top = 168
  end
  object qPedido2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_PEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT L.NUM_ORDEM'
      'FROM TALAO_PED T'
      'INNER JOIN LOTE L'
      'ON T.ID = L.ID'
      'INNER JOIN PEDIDO P'
      'ON T.ID_PEDIDO = P.ID'
      'WHERE P.num_pedido = :NUM_PEDIDO')
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 248
    object qPedido2NUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT P.lote_textil, P.id_cor_cru, COMB.nome NOME_COR, USA_NECE' +
        'SSIDADE_IF, P.USA_REMESSA'
      'FROM PARAMETROS_LOTE P'
      'LEFT JOIN COMBINACAO COMB'
      'ON P.id_cor_cru = COMB.id')
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 288
    object qParametros_LoteUSA_NECESSIDADE_IF: TStringField
      FieldName = 'USA_NECESSIDADE_IF'
      Size = 1
    end
    object qParametros_LoteUSA_REMESSA: TStringField
      FieldName = 'USA_REMESSA'
      FixedChar = True
      Size = 1
    end
  end
end
