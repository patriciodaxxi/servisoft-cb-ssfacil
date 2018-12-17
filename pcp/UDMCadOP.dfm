object DMCadOP: TDMCadOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 79
  Top = 16
  Height = 695
  Width = 1221
  object sdsOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 24
    object sdsOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOPDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOPNUM_OP: TIntegerField
      FieldName = 'NUM_OP'
    end
    object sdsOPFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspOP: TDataSetProvider
    DataSet = sdsOP
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOPUpdateError
    Left = 160
    Top = 24
  end
  object cdsOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOP'
    Left = 207
    Top = 24
    object cdsOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOPDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOPNUM_OP: TIntegerField
      FieldName = 'NUM_OP'
    end
    object cdsOPFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOPsdsOP_Itens: TDataSetField
      FieldName = 'sdsOP_Itens'
    end
  end
  object dsOP: TDataSource
    DataSet = cdsOP
    Left = 255
    Top = 24
  end
  object dsOP_Mestre: TDataSource
    DataSet = sdsOP
    Left = 64
    Top = 48
  end
  object sdsOP_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OP_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsOP_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 88
    object sdsOP_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOP_ItensQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object sdsOP_ItensQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsOP_ItensDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object sdsOP_ItensDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
  end
  object cdsOP_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOPsdsOP_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsOP_ItensBeforePost
    OnNewRecord = cdsOP_ItensNewRecord
    Left = 184
    Top = 88
    object cdsOP_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOP_ItensQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object cdsOP_ItensQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsOP_ItensDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsOP_ItensDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
  end
  object dsOP_Itens: TDataSource
    DataSet = cdsOP_Itens
    Left = 240
    Top = 88
  end
  object sdsConsulta_OP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OP.id, OP.num_op, OP.dtemissao, OP.filial, IT.item, IT.id' +
      '_produto,'#13#10'IT.qtd_aproduzir, IT.qtd_produzido,'#13#10'IT.dtinicial, IT' +
      '.dtbaixa, PRO.referencia, PRO.nome NOME_PRODUTO,'#13#10'M.NOME NOME_MA' +
      'RCA,'#13#10'  CASE'#13#10'    WHEN (IT.qtd_aproduzir - IT.qtd_produzido) <= ' +
      '0 THEN 0'#13#10'    ELSE (IT.qtd_aproduzir - IT.qtd_produzido)'#13#10'    EN' +
      'D SALDO'#13#10'FROM OP'#13#10'INNER JOIN OP_ITENS IT'#13#10'ON OP.ID = IT.ID'#13#10'INNE' +
      'R JOIN PRODUTO PRO'#13#10'LEFT JOIN MARCA M'#13#10'ON PRO.ID_MARCA = M.ID'#13#10'O' +
      'N IT.id_produto = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 32
  end
  object dspConsulta_OP: TDataSetProvider
    DataSet = sdsConsulta_OP
    Left = 792
    Top = 32
  end
  object cdsConsulta_OP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_OP'
    Left = 856
    Top = 32
    object cdsConsulta_OPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_OPNUM_OP: TIntegerField
      FieldName = 'NUM_OP'
    end
    object cdsConsulta_OPDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_OPFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsulta_OPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_OPID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_OPQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object cdsConsulta_OPQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsConsulta_OPDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsConsulta_OPDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsConsulta_OPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_OPNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_OPNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object cdsConsulta_OPSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object dsConsulta_OP: TDataSource
    DataSet = cdsConsulta_OP
    Left = 904
    Top = 32
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ID, REFERENCIA, NOME, UNIDADE, ID_LOCAL_ESTOQUE_PROD, BAI' +
        'XA_ESTOQUE_MAT'
      'FROM PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 288
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object qProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42301.619533657400000000
    ReportOptions.LastChange = 42321.416251550900000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 832
    Top = 319
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
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 872
    Top = 319
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
    Left = 912
    Top = 319
  end
  object frxRichObject1: TfrxRichObject
    Left = 944
    Top = 319
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxConsulta_OP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_OP=NUM_OP'
      'DTEMISSAO=DTEMISSAO'
      'FILIAL=FILIAL'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'QTD_APRODUZIR=QTD_APRODUZIR'
      'QTD_PRODUZIDO=QTD_PRODUZIDO'
      'DTINICIAL=DTINICIAL'
      'DTBAIXA=DTBAIXA'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'NOME_MARCA=NOME_MARCA'
      'SALDO=SALDO')
    DataSource = dsConsulta_OP
    BCDToCurrency = False
    Left = 832
    Top = 367
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, COD_LOCAL, NOME, PRINCIPAL'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE' +
      ' INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 176
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 792
    Top = 176
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 848
    Top = 176
    object cdsLocal_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocal_EstoqueCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsLocal_EstoqueNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsLocal_EstoquePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsLocal_Estoque: TDataSource
    DataSet = cdsLocal_Estoque
    Left = 912
    Top = 176
  end
  object sdsSel_OP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OP.id, OP.num_op, IT.item, PRO.referencia, IT.qtd_aproduz' +
      'ir,'#13#10'IT.qtd_produzido,'#13#10'  CASE'#13#10'    WHEN (IT.qtd_aproduzir - IT.' +
      'qtd_produzido) <= 0 THEN 0'#13#10'    ELSE (IT.qtd_aproduzir - IT.qtd_' +
      'produzido)'#13#10'    END SALDO,'#13#10'OP.dtemissao, IT.id_produto'#13#10'FROM OP' +
      #13#10'INNER JOIN OP_ITENS IT'#13#10'ON OP.ID = IT.ID'#13#10'INNER JOIN PRODUTO P' +
      'RO'#13#10'ON IT.id_produto = PRO.ID'#13#10'WHERE IT.ID_PRODUTO = :ID_PRODUTO' +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 232
  end
  object dspSel_OP: TDataSetProvider
    DataSet = sdsSel_OP
    Left = 792
    Top = 232
  end
  object cdsSel_OP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSel_OP'
    Left = 856
    Top = 232
    object cdsSel_OPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSel_OPNUM_OP: TIntegerField
      FieldName = 'NUM_OP'
    end
    object cdsSel_OPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsSel_OPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsSel_OPQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object cdsSel_OPDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsSel_OPID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsSel_OPQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsSel_OPSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object dsSel_OP: TDataSource
    DataSet = cdsSel_OP
    Left = 904
    Top = 232
  end
  object sdsOP_Itens_Baixa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM OP_ITENS_BAIXA'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :IT' +
      'EM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 184
    object sdsOP_Itens_BaixaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_BaixaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_BaixaITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_BaixaQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object sdsOP_Itens_BaixaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsOP_Itens_BaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsOP_Itens_BaixaNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsOP_Itens_BaixaID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXOU_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOP_Itens_Baixa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_BAIXA'
    Params = <>
    ProviderName = 'dspOP_Itens_Baixa'
    OnNewRecord = cdsOP_Itens_BaixaNewRecord
    Left = 208
    Top = 184
    object cdsOP_Itens_BaixaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_BaixaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_BaixaITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_BaixaQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsOP_Itens_BaixaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsOP_Itens_BaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsOP_Itens_BaixaNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsOP_Itens_BaixaID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsOP_Itens_BaixaBAIXOU_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXOU_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object dsOP_Itens_Baixa: TDataSource
    DataSet = cdsOP_Itens_Baixa
    Left = 264
    Top = 184
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 360
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConsulta_Baixa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT B.id, B.item, B.item_baixa, B.qtd_produzida, B.id_movesto' +
      'que, B.data,'#13#10'B.num_lote_controle, B.id_local_estoque, IT.id_pro' +
      'duto, PRO.referencia,'#13#10'PRO.nome NOME_PRODUTO, L.cod_local, L.nom' +
      'e NOME_LOCAL, op.num_op, b.baixou_estoque_mat'#13#10'FROM OP_ITENS_BAI' +
      'XA B'#13#10'INNER JOIN OP_ITENS IT'#13#10'ON B.id = IT.id'#13#10'AND B.item = IT.i' +
      'tem'#13#10'inner join op'#13#10'on b.id = op.id'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON ' +
      'IT.id_produto = PRO.id'#13#10'LEFT JOIN local_estoque L'#13#10'ON B.id_local' +
      '_estoque = L.id'#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 96
  end
  object dspConsulta_Baixa: TDataSetProvider
    DataSet = sdsConsulta_Baixa
    Left = 792
    Top = 96
  end
  object cdsConsulta_Baixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Baixa'
    Left = 856
    Top = 96
    object cdsConsulta_BaixaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_BaixaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_BaixaITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      Required = True
    end
    object cdsConsulta_BaixaQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsConsulta_BaixaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsConsulta_BaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsulta_BaixaNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsConsulta_BaixaID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsConsulta_BaixaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_BaixaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_BaixaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_BaixaCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsConsulta_BaixaNOME_LOCAL: TStringField
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
    object cdsConsulta_BaixaNUM_OP: TIntegerField
      FieldName = 'NUM_OP'
    end
    object cdsConsulta_BaixaBAIXOU_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXOU_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsulta_Baixa: TDataSource
    DataSet = cdsConsulta_Baixa
    Left = 904
    Top = 96
  end
  object dspOP_Itens_Baixa: TDataSetProvider
    DataSet = sdsOP_Itens_Baixa
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOPUpdateError
    Left = 152
    Top = 184
  end
  object sdsOP_Del: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OP_ITENS'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 368
    object sdsOP_DelID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_DelITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_DelID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOP_DelQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object sdsOP_DelQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsOP_DelDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object sdsOP_DelDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
  end
  object cdsOP_Del: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspOP_Del'
    Left = 216
    Top = 368
    object cdsOP_DelID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_DelITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_DelID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOP_DelQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
    end
    object cdsOP_DelQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsOP_DelDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsOP_DelDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
  end
  object dsOP_Del: TDataSource
    DataSet = cdsOP_Del
    Left = 272
    Top = 368
  end
  object dspOP_Del: TDataSetProvider
    DataSet = sdsOP_Del
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOPUpdateError
    Left = 160
    Top = 368
  end
  object qExcluir_OP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM op_itens I'
      'INNER JOIN OP'
      'ON I.id = OP.id'
      'WHERE OP.num_op = :NUM_OP'
      '  AND I.qtd_produzido > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 376
    object qExcluir_OPCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsOP_Itens_Baixa_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM OP_ITENS_BAIXA_MAT'#13#10'WHERE ID = :ID'#13#10'   AND ITEM =' +
      ' :ITEM'#13#10'   AND ITEM_BAIXA = :ITEM_BAIXA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_BAIXA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 248
    object sdsOP_Itens_Baixa_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_Baixa_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_Baixa_MatITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_Baixa_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOP_Itens_Baixa_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOP_Itens_Baixa_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsOP_Itens_Baixa_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOP_Itens_Baixa_MatID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsOP_Itens_Baixa_MatDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsOP_Itens_Baixa_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object cdsOP_Itens_Baixa_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_BAIXA;ITEM_MAT'
    Params = <>
    ProviderName = 'dspOP_Itens_Baixa_Mat'
    Left = 208
    Top = 240
    object cdsOP_Itens_Baixa_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_Baixa_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_Baixa_MatITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_Baixa_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOP_Itens_Baixa_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOP_Itens_Baixa_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsOP_Itens_Baixa_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOP_Itens_Baixa_MatID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsOP_Itens_Baixa_MatDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsOP_Itens_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsOP_Itens_Baixa_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsOP_Itens_Baixa_Mat: TDataSource
    DataSet = cdsOP_Itens_Baixa_Mat
    Left = 264
    Top = 240
  end
  object dspOP_Itens_Baixa_Mat: TDataSetProvider
    DataSet = sdsOP_Itens_Baixa_Mat
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOPUpdateError
    Left = 152
    Top = 240
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 648
    Top = 320
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstID_LOCAL_ESTOQUE_SEMI: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_SEMI'
    end
    object qParametros_EstID_LOCAL_ESTOQUE_MAT: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT'
    end
    object qParametros_EstID_LOCAL_ESTOQUE_MAT_CONS: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT_CONS'
    end
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.id_material, SUM(PC.qtd_consumo) QTD_CONSUMO, P.tipo_r' +
      'eg, PC.unidade, P.id_local_estoque_prod'#13#10'FROM PRODUTO_CONSUMO PC' +
      #13#10'INNER JOIN PRODUTO P'#13#10'ON PC.id_material = P.id'#13#10'WHERE PC.ID = ' +
      ':ID_PRODUTO'#13#10'group BY PC.ID_MATERIAL, P.TIPO_REG, PC.unidade, P.' +
      'id_local_estoque_prod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 440
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 816
    Top = 440
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 872
    Top = 440
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
  end
  object sdsConsulta_Baixa_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OM.*, PRO.NOME NOME_PRODUTO, PRO.REFERENCIA, LE.nome NOME' +
      '_LOCAL_ESTOQUE'#13#10'FROM op_itens_baixa_mat OM'#13#10'INNER JOIN PRODUTO P' +
      'RO'#13#10'ON OM.id_produto = PRO.ID'#13#10'LEFT JOIN LOCAL_ESTOQUE LE'#13#10'ON OM' +
      '.id_local_estoque = LE.id'#13#10'WHERE OM.ID = :ID'#13#10'  AND OM.item = :I' +
      'TEM'#13#10'  AND OM.item_baixa = :ITEM_BAIXA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_BAIXA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 520
  end
  object dspConsulta_Baixa_Mat: TDataSetProvider
    DataSet = sdsConsulta_Baixa_Mat
    Left = 800
    Top = 520
  end
  object cdsConsulta_Baixa_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Baixa_Mat'
    Left = 864
    Top = 520
    object cdsConsulta_Baixa_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_Baixa_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_Baixa_MatITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      Required = True
    end
    object cdsConsulta_Baixa_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsConsulta_Baixa_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_Baixa_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsConsulta_Baixa_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_Baixa_MatID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsConsulta_Baixa_MatDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsulta_Baixa_MatID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsConsulta_Baixa_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsulta_Baixa_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_Baixa_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_Baixa_MatNOME_LOCAL_ESTOQUE: TStringField
      FieldName = 'NOME_LOCAL_ESTOQUE'
      Size = 60
    end
  end
  object dsConsulta_Baixa_Mat: TDataSource
    DataSet = cdsConsulta_Baixa_Mat
    Left = 912
    Top = 520
  end
end
