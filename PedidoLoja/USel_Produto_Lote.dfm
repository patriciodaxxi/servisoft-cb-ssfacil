object frmSel_Produto_Lote: TfrmSel_Produto_Lote
  Left = 293
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 394
  ClientWidth = 838
  Color = 14811076
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 292
    Height = 40
    Caption = 'Pressione ENTER ou '#13#10'Duplo Clique sobre o Lote Escolhido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 80
    Width = 838
    Height = 314
    Align = alBottom
    Ctl3D = False
    DataSource = dsEstoque_Lote
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
        Expanded = False
        FieldName = 'NUM_LOTE_CONTROLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lote'
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALIZACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Localiza'#231#227'o'
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object CheckBox1: TCheckBox
    Left = 592
    Top = 56
    Width = 153
    Height = 17
    Caption = 'Mostrar somente com saldo'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object sdsEstoque_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PL.num_lote_controle, PL.preco_custo, PL.preco_venda,    ' +
      #13#10'PL.LOCALIZACAO,'#13#10'  (SELECT sum(L.qtd) QTD'#13#10'    FROM ESTOQUE_LO' +
      'TE L'#13#10'   WHERE L.ID_PRODUTO = PL.ID'#13#10'     AND L.NUM_LOTE_CONTROL' +
      'E = PL.num_lote_controle) QTD'#13#10'FROM PRODUTO_LOTE PL'#13#10'WHERE PL.ID' +
      ' = :ID_PRODUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 200
  end
  object dspEstoque_Lote: TDataSetProvider
    DataSet = sdsEstoque_Lote
    Left = 144
    Top = 200
  end
  object cdsEstoque_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Lote'
    Left = 192
    Top = 200
    object cdsEstoque_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
    object cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
      Required = True
    end
    object cdsEstoque_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsEstoque_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoque_LoteLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dsEstoque_Lote: TDataSource
    DataSet = cdsEstoque_Lote
    Left = 232
    Top = 192
  end
end
