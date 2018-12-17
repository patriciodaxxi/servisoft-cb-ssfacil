object DMLoteImp: TDMLoteImp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 89
  Top = 15
  Height = 695
  Width = 1221
  object sdsLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.ID, L.num_lote, L.num_ordem, L.qtd_taloes, L.qtd, L.id_' +
      'produto,'#13#10'P.referencia, P.nome, L.num_pedido, PED.pedido_cliente' +
      #13#10'FROM LOTE L'#13#10'LEFT JOIN PRODUTO P'#13#10'ON L.id_produto = P.ID'#13#10'LEFT' +
      ' JOIN PEDIDO PED'#13#10'ON L.ID_PEDIDO = PED.ID'#13#10'WHERE L.NUM_ORDEM = :' +
      'NUM_ORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 24
    object sdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object sdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsLotePEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 160
    Top = 24
  end
  object cdsLote: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLote'
    OnCalcFields = cdsLoteCalcFields
    Left = 207
    Top = 24
    object cdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object cdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsLotesdsTalao: TDataSetField
      FieldName = 'sdsTalao'
    end
    object cdsLoteclCodBarra: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCodBarra'
      Size = 12
      Calculated = True
    end
    object cdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsLotePEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 255
    Top = 24
  end
  object dsLote_Mestre: TDataSource
    DataSet = sdsLote
    Left = 64
    Top = 48
  end
  object sdsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.qtd, T.NUM_TALAO, T.impresso, T.id_processo, P.NO' +
      'ME NOME_PROCESSO,'#13#10'p.agrupar_pedidos'#13#10'FROM TALAO T'#13#10'LEFT JOIN PR' +
      'OCESSO P'#13#10'ON T.ID_PROCESSO = P.ID'#13#10'WHERE T.ID = :ID'#13#10
    DataSource = dsLote_Mestre
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
    object sdsTalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsTalaoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object sdsTalaoAGRUPAR_PEDIDOS: TStringField
      FieldName = 'AGRUPAR_PEDIDOS'
      FixedChar = True
      Size = 1
    end
  end
  object cdsTalao: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsLotesdsTalao
    IndexFieldNames = 'ID;NUM_TALAO'
    Params = <>
    OnCalcFields = cdsTalaoCalcFields
    Left = 184
    Top = 88
    object cdsTalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsTalaoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsTalaosdsTalao_Ped: TDataSetField
      FieldName = 'sdsTalao_Ped'
    end
    object cdsTalaoAGRUPAR_PEDIDOS: TStringField
      FieldName = 'AGRUPAR_PEDIDOS'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoclCodBarra: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCodBarra'
      Size = 12
      Calculated = True
    end
  end
  object dsTalao: TDataSource
    DataSet = cdsTalao
    Left = 240
    Top = 88
  end
  object dsTalao_Mestre: TDataSource
    DataSet = sdsTalao
    Left = 96
    Top = 128
  end
  object sdsLote_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOTE_MAT'#13#10'WHERE NUM_ORDEM = :NUM_ORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 360
    object sdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object sdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object sdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object sdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object sdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object sdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspLote_Mat: TDataSetProvider
    DataSet = sdsLote_Mat
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 136
    Top = 360
  end
  object cdsLote_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_ORDEM;ITEM'
    Params = <>
    ProviderName = 'dspLote_Mat'
    Left = 183
    Top = 360
    object cdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object cdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object cdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object cdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object cdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object cdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLote_Mat: TDataSource
    DataSet = cdsLote_Mat
    Left = 231
    Top = 360
  end
  object sdsTalao_Ped: TSQLDataSet
    CommandText = 
      'SELECT TP.id, TP.num_talao, TP.id_pedido, TP.item_pedido, TP.id_' +
      'cliente,'#13#10'TP.qtd, P.num_pedido, CLI.NOME NOME_CLIENTE'#13#10'FROM TALA' +
      'O_PED TP'#13#10'INNER JOIN PEDIDO P'#13#10'ON TP.ID_PEDIDO = P.ID'#13#10'INNER JOI' +
      'N PESSOA CLI'#13#10'ON TP.ID_CLIENTE = CLI.CODIGO'#13#10'WHERE TP.ID = :ID'#13#10 +
      '  AND TP.NUM_TALAO = :NUM_TALAO'
    DataSource = dsTalao_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 168
    object sdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object sdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object sdsTalao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsTalao_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object cdsTalao_Ped: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsTalaosdsTalao_Ped
    Params = <>
    Left = 208
    Top = 168
    object cdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsTalao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsTalao_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsTalao_Ped: TDataSource
    DataSet = cdsTalao_Ped
    Left = 264
    Top = 168
  end
  object sdsBusca_Ped: TSQLDataSet
    CommandText = 
      'SELECT distinct TP.id, TP.id_pedido, TP.id_cliente,'#13#10'TP.qtd, P.n' +
      'um_pedido, CLI.NOME NOME_CLIENTE'#13#10'FROM TALAO_PED TP'#13#10'INNER JOIN ' +
      'PEDIDO P'#13#10'ON TP.ID_PEDIDO = P.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON TP.I' +
      'D_CLIENTE = CLI.CODIGO'#13#10'WHERE TP.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 288
  end
  object cdsBusca_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca_Pedido'
    Left = 176
    Top = 288
    object cdsBusca_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBusca_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsBusca_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsBusca_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBusca_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsBusca_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsBusca_Ped: TDataSource
    DataSet = cdsBusca_Ped
    Left = 232
    Top = 288
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42751.456864641200000000
    ReportOptions.LastChange = 42832.570426956020000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 800
    Top = 367
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
    Left = 840
    Top = 367
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
    Left = 880
    Top = 367
  end
  object frxRichObject1: TfrxRichObject
    Left = 912
    Top = 367
  end
  object frxLote: TfrxDBDataset
    UserName = 'frxLote'
    OnFirst = frxLoteFirst
    OnNext = frxLoteNext
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_LOTE=NUM_LOTE'
      'NUM_ORDEM=NUM_ORDEM'
      'QTD_TALOES=QTD_TALOES'
      'QTD=QTD'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'sdsTalao=sdsTalao'
      'clCodBarra=clCodBarra'
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE')
    DataSource = dsLote
    BCDToCurrency = False
    Left = 800
    Top = 415
  end
  object frxTalao: TfrxDBDataset
    UserName = 'frxTalao'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_TALAO=NUM_TALAO'
      'QTD=QTD'
      'IMPRESSO=IMPRESSO'
      'ID_PROCESSO=ID_PROCESSO'
      'NOME_PROCESSO=NOME_PROCESSO'
      'sdsTalao_Ped=sdsTalao_Ped'
      'AGRUPAR_PEDIDOS=AGRUPAR_PEDIDOS'
      'clCodBarra=clCodBarra')
    DataSource = dsTalao
    BCDToCurrency = False
    Left = 848
    Top = 415
  end
  object dspBusca_Ped: TDataSetProvider
    DataSet = sdsBusca_Ped
    Left = 136
    Top = 288
  end
  object Talao_Ped: TfrxDBDataset
    UserName = 'frxTalao_Ped'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_TALAO=NUM_TALAO'
      'ID_PEDIDO=ID_PEDIDO'
      'ITEM_PEDIDO=ITEM_PEDIDO'
      'ID_CLIENTE=ID_CLIENTE'
      'QTD=QTD'
      'NUM_PEDIDO=NUM_PEDIDO'
      'NOME_CLIENTE=NOME_CLIENTE')
    DataSource = dsTalao_Ped
    BCDToCurrency = False
    Left = 896
    Top = 415
  end
  object mLoteEmProc: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Processo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Processo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DtEntrada'
        DataType = ftDate
      end
      item
        Name = 'HrEntrada'
        DataType = ftTime
      end
      item
        Name = 'NumOrdem_Em_Proc'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Em_Proc'
        DataType = ftFloat
      end
      item
        Name = 'NumLote_Em_Proc'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Aguardando'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Em_Pedido'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Num_Talao'
        DataType = ftInteger
      end
      item
        Name = 'Total_Talao_Aberto'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 496
    Top = 296
    Data = {
      530100009619E0BD01000000180000000D00000000000300000053010B49445F
      50726F636573736F04000100000000000D4E6F6D655F50726F636573736F0100
      490000000100055749445448020002003C00094474456E747261646104000600
      00000000094872456E74726164610400070000000000104E756D4F7264656D5F
      456D5F50726F6304000100000000000B5174645F456D5F50726F630800040000
      0000000F4E756D4C6F74655F456D5F50726F6304000100000000000E5174645F
      416775617264616E646F08000400000000000D5174645F456D5F50656469646F
      08000400000000000A5265666572656E63696101004900000001000557494454
      480200020014000C4E6F6D655F50726F6475746F010049000000010005574944
      5448020002006400094E756D5F54616C616F040001000000000012546F74616C
      5F54616C616F5F41626572746F04000100000000000000}
    object mLoteEmProcID_Processo: TIntegerField
      FieldName = 'ID_Processo'
    end
    object mLoteEmProcNome_Processo: TStringField
      FieldName = 'Nome_Processo'
      Size = 60
    end
    object mLoteEmProcDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object mLoteEmProcHrEntrada: TTimeField
      FieldName = 'HrEntrada'
    end
    object mLoteEmProcNumOrdem_Em_Proc: TIntegerField
      FieldName = 'NumOrdem_Em_Proc'
    end
    object mLoteEmProcQtd_Em_Proc: TFloatField
      FieldName = 'Qtd_Em_Proc'
    end
    object mLoteEmProcNumLote_Em_Proc: TIntegerField
      FieldName = 'NumLote_Em_Proc'
    end
    object mLoteEmProcQtd_Aguardando: TFloatField
      FieldName = 'Qtd_Aguardando'
    end
    object mLoteEmProcQtd_Em_Pedido: TFloatField
      FieldName = 'Qtd_Em_Pedido'
    end
    object mLoteEmProcReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mLoteEmProcNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mLoteEmProcNum_Talao: TIntegerField
      FieldName = 'Num_Talao'
    end
    object mLoteEmProcTotal_Talao_Aberto: TIntegerField
      FieldName = 'Total_Talao_Aberto'
    end
  end
  object dsmLoteEmProc: TDataSource
    DataSet = mLoteEmProc
    Left = 528
    Top = 296
  end
  object qLoteEmProc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PROCESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT L.id, L.num_lote, L.num_ordem, L.id_produto, T.qtd QTD_EM' +
        '_PROCESSO,'
      'T.id_processo, PROD.REFERENCIA,'
      'PROD.NOME NOME_PRODUTO, T.dtentrada, T.hrentrada, T.NUM_TALAO'
      'FROM LOTE L'
      'INNER JOIN TALAO T'
      'ON L.ID = T.ID'
      'INNER JOIN PRODUTO PROD'
      'ON L.ID_PRODUTO = PROD.ID'
      'WHERE T.DTBAIXA IS NULL'
      '  and T.dtentrada IS NOT NULL'
      '  and T.id_processo = :ID_PROCESSO')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 352
    object qLoteEmProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qLoteEmProcNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object qLoteEmProcNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object qLoteEmProcID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qLoteEmProcQTD_EM_PROCESSO: TFloatField
      FieldName = 'QTD_EM_PROCESSO'
    end
    object qLoteEmProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qLoteEmProcREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qLoteEmProcNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qLoteEmProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qLoteEmProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qLoteEmProcNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 32
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 528
    Top = 32
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 575
    Top = 32
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcessoLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
    object cdsProcessoAGRUPAR_PEDIDOS: TStringField
      FieldName = 'AGRUPAR_PEDIDOS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT V.*'#13#10'FROM VTALAO V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 480
  end
  object dspConsTalao: TDataSetProvider
    DataSet = sdsConsTalao
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 168
    Top = 480
  end
  object cdsConsTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsTalao'
    Left = 215
    Top = 480
    object cdsConsTalaoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsConsTalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsTalaoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsTalaoQTD_TALAO: TFloatField
      FieldName = 'QTD_TALAO'
    end
    object cdsConsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsTalaoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsTalaoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsConsTalaoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsConsTalaoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsConsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsConsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object cdsConsTalaoQTD_LOTE: TFloatField
      FieldName = 'QTD_LOTE'
    end
    object cdsConsTalaoCONTADOR_PED: TIntegerField
      FieldName = 'CONTADOR_PED'
    end
  end
  object dsConsTalao: TDataSource
    DataSet = cdsConsTalao
    Left = 263
    Top = 480
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 616
    Top = 32
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME, CNPJ_CPF'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 432
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object sdsConsTalao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT V.*'#13#10'FROM VTALAO_PED V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 536
  end
  object dspConsTalao_Ped: TDataSetProvider
    DataSet = sdsConsTalao_Ped
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 168
    Top = 536
  end
  object cdsConsTalao_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsTalao_Ped'
    Left = 215
    Top = 536
    object cdsConsTalao_PedID: TIntegerField
      FieldName = 'ID'
    end
    object cdsConsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object cdsConsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsTalao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsTalao_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsTalao_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsTalao_PedNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsTalao_PedID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsTalao_PedNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsTalao_PedREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsTalao_PedNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsTalao_PedNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsTalao_PedDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsConsTalao_PedHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsConsTalao_PedDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsConsTalao_PedHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
  end
  object dsConsTalao_Ped: TDataSource
    DataSet = cdsConsTalao_Ped
    Left = 263
    Top = 536
  end
  object sdsTalao_SL: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.ID, L.num_lote, L.num_ordem, L.qtd_taloes Total_Taloes,' +
      ' L.qtd Qtd_Lote, T.id_produto,'#13#10'T.referencia, P.nome NOME_PRODUT' +
      'O, L.num_pedido,'#13#10'T.qtd Qtd_Talao, T.num_talao, t.unidade,'#13#10'T.it' +
      'em_pedido, T.id_pedido, L.tipo_lote, COMB.NOME NOME_COMBINACAO, ' +
      'l.DTENTREGA,'#13#10'CASE'#13#10'  WHEN L.TIPO_LOTE = '#39'S'#39' THEN '#39'SEMI ACABADO'#39 +
      #13#10'  ELSE '#39'PRODUTO'#39#13#10'  END DESCRICAO_TIPO_LOTE'#13#10#13#10'FROM LOTE L'#13#10'IN' +
      'NER JOIN talao T'#13#10'ON L.ID = T.ID'#13#10'LEFT JOIN PRODUTO P'#13#10'ON T.id_p' +
      'roduto = P.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON T.id_combinacao = C' +
      'OMB.ID'#13#10'WHERE L.NUM_ORDEM = :NUM_ORDEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 120
  end
  object dspTalao_SL: TDataSetProvider
    DataSet = sdsTalao_SL
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 680
    Top = 120
  end
  object cdsTalao_SL: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTalao_SL'
    OnCalcFields = cdsTalao_SLCalcFields
    Left = 727
    Top = 120
    object cdsTalao_SLID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_SLNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsTalao_SLNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsTalao_SLTOTAL_TALOES: TIntegerField
      FieldName = 'TOTAL_TALOES'
    end
    object cdsTalao_SLQTD_LOTE: TFloatField
      FieldName = 'QTD_LOTE'
    end
    object cdsTalao_SLID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalao_SLREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTalao_SLNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsTalao_SLQTD_TALAO: TFloatField
      FieldName = 'QTD_TALAO'
    end
    object cdsTalao_SLNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalao_SLUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsTalao_SLclCodBarra_Lote: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCodBarra_Lote'
      Calculated = True
    end
    object cdsTalao_SLID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsTalao_SLNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsTalao_SLITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsTalao_SLTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsTalao_SLDESCRICAO_TIPO_LOTE: TStringField
      FieldName = 'DESCRICAO_TIPO_LOTE'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsTalao_SLNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsTalao_SLDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
  end
  object dsTalao_SL: TDataSource
    DataSet = cdsTalao_SL
    Left = 775
    Top = 120
  end
  object frxTalao_SL: TfrxDBDataset
    UserName = 'frxTalao_SL'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_LOTE=NUM_LOTE'
      'NUM_ORDEM=NUM_ORDEM'
      'TOTAL_TALOES=TOTAL_TALOES'
      'QTD_LOTE=QTD_LOTE'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD_TALAO=QTD_TALAO'
      'NUM_TALAO=NUM_TALAO'
      'UNIDADE=UNIDADE'
      'clCodBarra_Lote=clCodBarra_Lote'
      'ID_PEDIDO=ID_PEDIDO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'ITEM_PEDIDO=ITEM_PEDIDO'
      'TIPO_LOTE=TIPO_LOTE'
      'DESCRICAO_TIPO_LOTE=DESCRICAO_TIPO_LOTE'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'DTENTREGA=DTENTREGA')
    DataSource = dsTalao_SL
    BCDToCurrency = False
    Left = 936
    Top = 415
  end
end
