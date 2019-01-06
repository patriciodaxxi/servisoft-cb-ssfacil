object frmConsMatLote: TfrmConsMatLote
  Left = 212
  Top = 82
  Width = 1013
  Height = 570
  Caption = 'frmConsMatLote'
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 39
    Align = alTop
    Color = 11206570
    TabOrder = 0
    object Label13: TLabel
      Left = 62
      Top = 16
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'N'#186' Lote:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 368
      Top = 16
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Pares:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 436
      Top = 16
      Width = 65
      Height = 13
      DataField = 'QTD_PROD'
      DataSource = dsMatLote
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 524
      Top = 16
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'J'#225' Produzido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 604
      Top = 16
      Width = 65
      Height = 13
      DataField = 'QTD_PROD_PRODUZIDO'
      DataSource = dsMatLote
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 711
      Top = 16
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 772
      Top = 16
      Width = 65
      Height = 13
      DataField = 'QTD_PROD_PEND'
      DataSource = dsMatLote
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 119
      Top = 11
      Width = 98
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = CurrencyEdit2KeyDown
    end
    object NxButton1: TNxButton
      Left = 217
      Top = 10
      Width = 107
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 39
    Width = 1005
    Height = 291
    Align = alTop
    Ctl3D = False
    DataSource = dsMatLote
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'ID Material'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Material'
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COR_MAT'
        Title.Caption = 'Cor Material'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Material Consumo'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_MAT_USADO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Material Usado'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clSaldoMat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Material'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_POSICAO'
        Title.Caption = 'Posi'#231#227'o'
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 352
    Width = 1005
    Height = 187
    Align = alBottom
    Ctl3D = False
    DataSource = dsReq
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnExit = SMDBGrid2Exit
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
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_REQUISICAO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Req.'
        Title.Color = 16777128
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 16777128
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Material'
        Title.Color = 16777128
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Title.Color = 16777128
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_REQUISITANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Requisitado Por'
        Title.Color = 16777128
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FUNCIONARIO_ENTR'
        Title.Alignment = taCenter
        Title.Caption = 'Entregue Por'
        Title.Color = 16777128
        Width = 171
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Title.Color = 16777128
        Width = 88
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 330
    Width = 1005
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Duplo Clique para Mostrar Detalhado'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object sdsMatLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.num_lote, PC.ID ID_PRODUTO, PC.id_cor_combinacao, PMAT.' +
      'id_material, PMAT.id_cor ID_COR_MAT, PMAT.id_posicao,'#13#10'COMB.NOME' +
      ' NOME_COR_MAT, PS.NOME NOME_POSICAO, MAT.NOME NOME_MATERIAL, PMA' +
      'T.qtd_consumo,'#13#10'L.qtd QTD_PROD, L.qtd_pendente QTD_PROD_PEND, L.' +
      'qtd_produzido QTD_PROD_PRODUZIDO,'#13#10'L.num_ordem,'#13#10'(SELECT SUM(DCI' +
      '.QTD) FROM docestoque DC'#13#10'  INNER JOIN docestoque_itens DCI ON D' +
      'C.ID = DCI.ID'#13#10'  WHERE DC.NUM_LOTE = L.NUM_LOTE'#13#10'    AND DCI.id_' +
      'produto = PMAT.id_material'#13#10'    AND DCI.id_cor = PMAT.id_cor) QT' +
      'D_MAT_USADO, '#39'C'#39' as TIPO'#13#10'FROM LOTE L'#13#10'INNER JOIN PRODUTO_COMB P' +
      'C'#13#10'ON L.ID_PRODUTO = PC.ID'#13#10'AND L.id_combinacao = PC.id_cor_comb' +
      'inacao'#13#10'INNER JOIN PRODUTO_COMB_MAT PMAT'#13#10'ON PC.ID = PMAT.ID'#13#10'AN' +
      'D PC.item = PMAT.item'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON PMAT.ID_MATERI' +
      'AL = MAT.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON PMAT.ID_COR = COMB.ID' +
      #13#10'LEFT JOIN POSICAO PS'#13#10'ON PMAT.ID_POSICAO = PS.ID'#13#10'WHERE L.NUM_' +
      'LOTE = :NUM_LOTE'#13#10#13#10'UNION'#13#10#13#10'SELECT L.num_lote, L.ID_PRODUTO, L.' +
      'id_combinacao id_cor_combinacao, DCI.id_produto id_material, DCI' +
      '.ID_COR ID_COR_MAT,'#13#10'0, COMB.NOME NOME_COR_MAT, '#39#39', MAT.NOME NOM' +
      'E_MATERIAL, 0,'#13#10'L.qtd QTD_PROD, L.qtd_pendente QTD_PROD_PEND, L.' +
      'qtd_produzido QTD_PROD_PRODUZIDO,'#13#10'L.num_ordem, DCI.qtd QTD_MAT_' +
      'USADO, '#39'N'#39' as TIPO'#13#10'FROM LOTE L'#13#10'INNER JOIN docestoque DC'#13#10'ON L.' +
      'num_lote = DC.num_lote'#13#10'INNER JOIN docestoque_itens DCI'#13#10'ON DC.i' +
      'd = DCI.ID'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON DCI.ID_PRODUTO = MAT.ID'#13#10 +
      'LEFT JOIN COMBINACAO COMB'#13#10'ON DCI.id_cor = COMB.ID'#13#10'WHERE NOT EX' +
      'ISTS'#13#10'  (SELECT 1 FROM PRODUTO_COMB PC'#13#10'   INNER JOIN PRODUTO_CO' +
      'MB_MAT PMAT'#13#10'   ON PC.ID = PMAT.ID'#13#10'   AND PC.ITEM = PMAT.ITEM'#13#10 +
      '   WHERE PC.ID_COR = L.id_combinacao'#13#10'     AND PMAT.id_material ' +
      '= DCI.id_produto'#13#10'     AND PMAT.id_cor = DCI.id_cor)'#13#10'AND L.NUM_' +
      'LOTE = :NUM_LOTE'#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_LOTE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 408
  end
  object dspMatLote: TDataSetProvider
    DataSet = sdsMatLote
    Left = 152
    Top = 408
  end
  object cdsMatLote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMatLote'
    OnCalcFields = cdsMatLoteCalcFields
    Left = 208
    Top = 408
    object cdsMatLoteclSaldoMat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clSaldoMat'
      DisplayFormat = '0.0000'
      Calculated = True
    end
    object cdsMatLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsMatLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsMatLoteID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsMatLoteID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsMatLoteID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsMatLoteNOME_COR_MAT: TStringField
      FieldName = 'NOME_COR_MAT'
      Size = 60
    end
    object cdsMatLoteNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsMatLoteNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsMatLoteQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsMatLoteQTD_PROD: TFloatField
      FieldName = 'QTD_PROD'
    end
    object cdsMatLoteQTD_PROD_PEND: TFloatField
      FieldName = 'QTD_PROD_PEND'
    end
    object cdsMatLoteQTD_PROD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PROD_PRODUZIDO'
    end
    object cdsMatLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsMatLoteQTD_MAT_USADO: TFloatField
      FieldName = 'QTD_MAT_USADO'
    end
    object cdsMatLoteTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsMatLoteID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
  end
  object dsMatLote: TDataSource
    DataSet = cdsMatLote
    Left = 256
    Top = 408
  end
  object sdsReq: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select dc.id, dc.num_requisicao, dc.num_lote, dc.dtmovimento, DC' +
      '.id_funcionario,'#13#10'DC.id_funcionario_entr, dci.id_produto, dci.id' +
      '_cor, dci.tamanho, dci.qtd,'#13#10'f.nome nome_requisitante, f2.nome n' +
      'ome_funcionario_entr'#13#10'from docestoque dc'#13#10'inner join docestoque_' +
      'itens dci'#13#10'on dc.id = dci.id'#13#10'left join funcionario f'#13#10'on dc.id_' +
      'funcionario = f.codigo'#13#10'left join funcionario f2'#13#10'on dc.id_funci' +
      'onario_entr = f2.codigo'#13#10'where DC.NUM_LOTE = :NUM_LOTE'#13#10'  AND DC' +
      'I.ID_PRODUTO = :ID_PRODUTO'#13#10'  AND DCI.ID_COR = :ID_COR'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 464
  end
  object dspReq: TDataSetProvider
    DataSet = sdsReq
    Left = 200
    Top = 464
  end
  object cdsReq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReq'
    OnCalcFields = cdsMatLoteCalcFields
    Left = 248
    Top = 464
    object cdsReqID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsReqID_FUNCIONARIO_ENTR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ENTR'
    end
    object cdsReqNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
    object cdsReqDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsReqID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsReqID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsReqTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsReqNOME_REQUISITANTE: TStringField
      FieldName = 'NOME_REQUISITANTE'
      Size = 50
    end
    object cdsReqQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.0000'
    end
    object cdsReqID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReqNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsReqNOME_FUNCIONARIO_ENTR: TStringField
      FieldName = 'NOME_FUNCIONARIO_ENTR'
      Size = 50
    end
  end
  object dsReq: TDataSource
    DataSet = cdsReq
    Left = 304
    Top = 464
  end
end
