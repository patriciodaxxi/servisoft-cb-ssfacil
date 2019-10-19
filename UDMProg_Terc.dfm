object DMProg_Terc: TDMProg_Terc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 382
  Top = 136
  Height = 459
  Width = 892
  object sdsProg_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROG_TERC'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 24
    object sdsProg_TercID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProg_TercDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsProg_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsProg_TercID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProg_TercID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsProg_TercITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsProg_TercQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspProg_Terc: TDataSetProvider
    DataSet = sdsProg_Terc
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 24
  end
  object cdsProg_Terc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProg_Terc'
    Left = 113
    Top = 23
    object cdsProg_TercID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProg_TercDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsProg_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProg_TercID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProg_TercID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsProg_TercITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsProg_TercQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsProg_Terc: TDataSource
    DataSet = cdsProg_Terc
    Left = 152
    Top = 24
  end
  object sdsPedido_Lib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.num_pedido, p.pedido_cliente, i.item, i.id_produt' +
      'o, i.referencia,'#13#10'i.nomeproduto nome_produto, i.qtd, i.qtd_resta' +
      'nte, i.qtd_faturado, i.qtd_liberada,'#13#10'cli.nome nome_cliente, p.d' +
      'temissao, I.dtentrega'#13#10'from pedido p'#13#10'inner join pedido_item i'#13#10 +
      'on p.id = i.id'#13#10'inner join pessoa cli'#13#10'on p.id_cliente = cli.cod' +
      'igo'#13#10'where p.tipo_reg = '#39'P'#39#13#10'  and p.cancelado = '#39'N'#39#13#10'  and i.ca' +
      'ncelado = '#39'N'#39#13#10'  and coalesce(i.qtd_liberada,0) > 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 292
    Top = 40
  end
  object dspPedido_Lib: TDataSetProvider
    DataSet = sdsPedido_Lib
    Left = 329
    Top = 38
  end
  object cdsPedido_Lib: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Lib'
    OnCalcFields = cdsPedido_LibCalcFields
    Left = 369
    Top = 38
    object cdsPedido_LibNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_LibPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_LibITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_LibID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_LibREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_LibNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_LibQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_LibQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_LibQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_LibNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_LibclQtd_Restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      Calculated = True
    end
    object cdsPedido_LibQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_LibDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_LibDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_LibID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsPedido_Lib: TDataSource
    DataSet = cdsPedido_Lib
    Left = 409
    Top = 38
  end
  object sdsProduto_Lib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i.id_produto, i.referencia,'#13#10'i.nomeproduto nome_produto, ' +
      'cli.nome nome_cliente,'#13#10'sum(i.qtd_liberada) qtd_liberada'#13#10'from p' +
      'edido p'#13#10'inner join pedido_item i'#13#10'on p.id = i.id'#13#10'inner join pe' +
      'ssoa cli'#13#10'on p.id_cliente = cli.codigo'#13#10'where p.tipo_reg = '#39'P'#39#13#10 +
      '  and p.cancelado = '#39'N'#39#13#10'  and i.cancelado = '#39'N'#39#13#10'  and coalesce' +
      '(i.qtd_liberada,0) > 0'#13#10'  and i.qtd_Restante > 0'#13#10'group by i.id_' +
      'produto, i.referencia,'#13#10'i.nomeproduto, cli.nome'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 295
    Top = 112
  end
  object dspProduto_Lib: TDataSetProvider
    DataSet = sdsProduto_Lib
    Left = 331
    Top = 112
  end
  object cdsProduto_Lib: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Lib'
    Left = 371
    Top = 112
    object cdsProduto_LibID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_LibREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_LibNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsProduto_LibNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_LibQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
  end
  object dsProduto_Lib: TDataSource
    DataSet = cdsProduto_Lib
    Left = 410
    Top = 112
  end
  object sdsPedido_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.num_pedido, p.pedido_cliente, i.item, i.id_produt' +
      'o, i.referencia,'#13#10'i.nomeproduto nome_produto, i.qtd, i.qtd_resta' +
      'nte, i.qtd_faturado, i.qtd_liberada,'#13#10'cli.nome nome_cliente, P.D' +
      'TEMISSAO, I.DTENTREGA,'#13#10'case'#13#10'  when i.qtd_liberada < 0 then i.q' +
      'td_Restante'#13#10'  else (i.qtd_Restante - coalesce(i.qtd_liberada,0)' +
      ')'#13#10'  end qtd_pendente_lib'#13#10'from pedido p'#13#10'inner join pedido_item' +
      ' i'#13#10'on p.id = i.id'#13#10'inner join pessoa cli'#13#10'on p.id_cliente = cli' +
      '.codigo'#13#10'where p.tipo_reg = '#39'P'#39#13#10'  and p.cancelado = '#39'N'#39#13#10'  and ' +
      'i.cancelado = '#39'N'#39#13#10'  and (i.qtd_Restante - i.qtd_liberada) > 0'#13#10 +
      '  and i.qtd_restante > 0'#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 299
    Top = 185
  end
  object dspPedido_Pend: TDataSetProvider
    DataSet = sdsPedido_Pend
    Left = 336
    Top = 185
  end
  object cdsPedido_Pend: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspPedido_Pend'
    Left = 375
    Top = 185
    object cdsPedido_PendID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_PendNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_PendPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_PendITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_PendID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_PendREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_PendNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_PendQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_PendQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_PendQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_PendQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_PendNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_PendDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_PendDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_PendQTD_PENDENTE_LIB: TFloatField
      FieldName = 'QTD_PENDENTE_LIB'
    end
    object cdsPedido_PendagQtd_Total: TAggregateField
      FieldName = 'agQtd_Total'
      Active = True
      Expression = 'sum(qtd_pendente_lib)'
    end
  end
  object dsPedido_Pend: TDataSource
    DataSet = cdsPedido_Pend
    Left = 415
    Top = 185
  end
  object sdsPrc_Atualiza_Status_Ped: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_STATUS_PED'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 182
    Top = 162
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 290
    Top = 245
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 330
    Top = 245
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 370
    Top = 244
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 410
    Top = 245
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 672
    Top = 135
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43719.918431342600000000
    ReportOptions.LastChange = 43719.932562719900000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 633
    Top = 134
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 703
    Top = 135
  end
  object frxPedido_Lib: TfrxDBDataset
    UserName = 'frxPedido_Lib'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_LIBERADA=QTD_LIBERADA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'clQtd_Restante=clQtd_Restante'
      'QTD_RESTANTE=QTD_RESTANTE'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA=DTENTREGA'
      'ID=ID')
    DataSource = dsPedido_Lib
    BCDToCurrency = False
    Left = 626
    Top = 181
  end
  object frxRichObject1: TfrxRichObject
    Left = 743
    Top = 136
  end
  object frxProduto_Lib: TfrxDBDataset
    UserName = 'frxProduto_Lib'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'QTD_LIBERADA=QTD_LIBERADA')
    DataSource = dsProduto_Lib
    BCDToCurrency = False
    Left = 681
    Top = 181
  end
  object frxPedido_Pend: TfrxDBDataset
    UserName = 'frxPedido_Pend'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD=QTD'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_LIBERADA=QTD_LIBERADA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA=DTENTREGA'
      'QTD_PENDENTE_LIB=QTD_PENDENTE_LIB'
      'agQtd_Total=agQtd_Total')
    DataSource = dsPedido_Pend
    BCDToCurrency = False
    Left = 732
    Top = 183
  end
  object sdsProdNaoLib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i.id_produto, i.referencia,'#13#10'i.nomeproduto nome_produto, ' +
      'sum(i.qtd) qtd, sum(i.qtd_restante) qtd_restante,'#13#10'sum(i.qtd_fat' +
      'urado) qtd_faturado, sum(i.qtd_liberada) qtd_liberada,'#13#10'sum(case' +
      #13#10'  when coalesce(i.qtd_liberada,0) < 0 then i.qtd_Restante'#13#10'  e' +
      'lse (i.qtd_Restante - coalesce(i.qtd_liberada,0))'#13#10'  end) qtd_pe' +
      'ndente_lib'#13#10'from pedido p'#13#10'inner join pedido_item i'#13#10'on p.id = i' +
      '.id'#13#10'inner join pessoa cli'#13#10'on p.id_cliente = cli.codigo'#13#10'where ' +
      'p.tipo_reg = '#39'P'#39#13#10'  and p.cancelado = '#39'N'#39#13#10'  and i.cancelado = '#39 +
      'N'#39#13#10'  and (coalesce(i.qtd_Restante,0) - coalesce(i.qtd_liberada,' +
      '0)) > 0'#13#10'  and i.qtd_restante > 0'#13#10'group by i.id_produto, i.refe' +
      'rencia, i.nomeproduto'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 534
    Top = 285
  end
  object dspProdNaoLib: TDataSetProvider
    DataSet = sdsProdNaoLib
    Left = 574
    Top = 281
  end
  object cdsProdNaoLib: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO'
    Params = <>
    ProviderName = 'dspProdNaoLib'
    Left = 614
    Top = 280
    object cdsProdNaoLibID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProdNaoLibREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdNaoLibNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsProdNaoLibQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProdNaoLibQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsProdNaoLibQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsProdNaoLibQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsProdNaoLibQTD_PENDENTE_LIB: TFloatField
      FieldName = 'QTD_PENDENTE_LIB'
    end
  end
  object dsProdNaoLib: TDataSource
    DataSet = cdsProdNaoLib
    Left = 654
    Top = 281
  end
  object sdsPedido_Sit: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i.id_produto, i.referencia, p.id, p.num_pedido, p.dtemiss' +
      'ao,'#13#10'i.nomeproduto nome_produto, i.qtd, i.qtd_restante,'#13#10'i.qtd_f' +
      'aturado, i.qtd_liberada,'#13#10'case'#13#10'  when coalesce(i.qtd_liberada,0' +
      ') < 0 then i.qtd_Restante'#13#10'  else (i.qtd_Restante - coalesce(i.q' +
      'td_liberada,0))'#13#10'  end qtd_pendente_lib, i.item'#13#10'from pedido p'#13#10 +
      'inner join pedido_item i'#13#10'on p.id = i.id'#13#10'inner join pessoa cli'#13 +
      #10'on p.id_cliente = cli.codigo'#13#10'where p.tipo_reg = '#39'P'#39#13#10'  and p.c' +
      'ancelado = '#39'N'#39#13#10'  and i.cancelado = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 86
    Top = 335
  end
  object dspPedido_Sit: TDataSetProvider
    DataSet = sdsPedido_Sit
    Left = 126
    Top = 335
  end
  object cdsPedido_Sit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Sit'
    Left = 166
    Top = 335
    object cdsPedido_SitID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_SitREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_SitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_SitNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_SitDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_SitNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_SitQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_SitQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_SitQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_SitQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_SitQTD_PENDENTE_LIB: TFloatField
      FieldName = 'QTD_PENDENTE_LIB'
    end
    object cdsPedido_SitITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
  end
  object dsPedido_Sit: TDataSource
    DataSet = cdsPedido_Sit
    Left = 206
    Top = 335
  end
  object sdsNotas_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA, NP.QTD, NT.NUMNOTA, NT.' +
      'DTEMISSAO,'#13#10'NT.SERIE, NT.TIPO_NOTA, NP.ITEM_PEDIDO'#13#10'FROM NOTAFIS' +
      'CAL_PED NP'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.ID'#13#10'WHERE NP' +
      '.ID_PEDIDO = :ID_PEDIDO'#13#10'  AND NP.item_pedido = :ITEM_PEDIDO'#13#10#13#10 +
      'UNION ALL'#13#10#13#10'SELECT BX.ID ID_NOTA, 1 ITEM_NOTA, BX.qtd, BX.id NU' +
      'M_NOTA, BX.dtbaixa DTEMISSAO,'#13#10#39'MAN'#39' SERIE, '#39'MANUAL'#39' TIPO_NOTA, ' +
      'BX.item_pedido'#13#10'FROM BAIXA_PEDIDO BX'#13#10'LEFT JOIN ORDEMSERVICO O'#13#10 +
      'ON BX.ID_OS = O.ID'#13#10'WHERE BX.ID_PEDIDO = :ID_PEDIDO'#13#10'  AND BX.it' +
      'em_pedido = :ITEM_PEDIDO'#13#10'  AND BX.tipo_reg = '#39'FAT'#39#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 363
    Top = 355
  end
  object dspNotas_Ped: TDataSetProvider
    DataSet = sdsNotas_Ped
    Left = 402
    Top = 355
  end
  object cdsNotas_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotas_Ped'
    Left = 441
    Top = 354
    object cdsNotas_PedID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsNotas_PedITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsNotas_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotas_PedNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotas_PedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotas_PedSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotas_PedTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 6
    end
    object cdsNotas_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsNotas_Ped: TDataSource
    DataSet = cdsNotas_Ped
    Left = 482
    Top = 355
  end
end
