object frmAtualizaPreco_Mat: TfrmAtualizaPreco_Mat
  Left = 353
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAtualizaPreco_Mat'
  ClientHeight = 269
  ClientWidth = 694
  Color = 12058551
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 174
    Width = 14
    Height = 13
    Caption = 'ID:'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 49
    Top = 199
    Width = 61
    Height = 13
    Caption = 'Pre'#231'o Custo:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 22
    Top = 217
    Width = 88
    Height = 13
    Caption = 'Pre'#231'o Custo Total:'
    FocusControl = DBEdit4
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 694
    Height = 138
    Align = alTop
    Ctl3D = False
    DataSource = dsConsumo
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_MATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'ID Material'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Consumo'
        Width = 99
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 115
    Top = 168
    Width = 134
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    DataField = 'ID'
    DataSource = dsMat
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 252
    Top = 168
    Width = 400
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    DataField = 'NOME'
    DataSource = dsMat
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 115
    Top = 193
    Width = 134
    Height = 19
    Ctl3D = False
    DataField = 'PRECO_CUSTO'
    DataSource = dsMat
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 115
    Top = 211
    Width = 134
    Height = 19
    Ctl3D = False
    DataField = 'PRECO_CUSTO_TOTAL'
    DataSource = dsMat
    ParentCtl3D = False
    TabOrder = 4
  end
  object btnConfirmar: TNxButton
    Left = 115
    Top = 235
    Width = 144
    Caption = 'Confirmar Pre'#231'o Custo'
    TabOrder = 5
    OnClick = btnConfirmarClick
  end
  object sdsMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, PRECO_CUSTO, PRECO_CUSTO_TOTAL'#13#10'FROM PRODUTO '#13#10 +
      'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 111
    Top = 94
    object sdsMatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMatNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsMatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsMatPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dspMat: TDataSetProvider
    DataSet = sdsMat
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 95
  end
  object cdsMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMat'
    Left = 180
    Top = 97
    object cdsMatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMatNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMatPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dsMat: TDataSource
    DataSet = cdsMat
    Left = 218
    Top = 96
  end
  object sdsConsumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select pc2.id, pc2.item, pc2.id_material, pc2.qtd_consumo'#13#10'     ' +
      '   from PRODUTO_CONSUMO PC2'#13#10'        inner join PRODUTO MAT2 on ' +
      'PC2.ID_MATERIAL = MAT2.ID'#13#10'        where coalesce(MAT2.PRECO_CUS' +
      'TO_TOTAL,0) <= 0'#13#10'           and pc2.id = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 443
    Top = 137
  end
  object dspConsumo: TDataSetProvider
    DataSet = sdsConsumo
    UpdateMode = upWhereKeyOnly
    Left = 476
    Top = 138
  end
  object cdsConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsumo'
    AfterScroll = cdsConsumoAfterScroll
    Left = 512
    Top = 140
    object cdsConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsConsumo: TDataSource
    DataSet = cdsConsumo
    Left = 550
    Top = 137
  end
end
