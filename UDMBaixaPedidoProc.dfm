object DMBaixaPedidoProc: TDMBaixaPedidoProc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 381
  Top = 102
  Height = 550
  Width = 700
  object sdsPedidoProc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PP.NOME NOME_PROCESSO, PP.imp_cliente, PED.ID, PED.pedido' +
      '_cliente, PED.NUM_PEDIDO, IT.QTD_RESTANTE, IT.ID_PRODUTO,'#13#10'IT.RE' +
      'FERENCIA, IT.nomeproduto, IT.UNIDADE,'#13#10'COMB.NOME NOME_COMBINACAO' +
      ', IT.DTENTREGA, PED.ID_CLIENTE, CLI.NOME NOME_CLIENTE,'#13#10'CLI.FANT' +
      'ASIA, PROP.ID_PROCESSO, IT.ITEM ITEM_PEDIDO,'#13#10'PP.ORDEM_MAPA, IT.' +
      'QTD - coalesce(VB.qtd,0) QTD_PROCESSO_PEND,'#13#10'CAST (0 AS NUMERIC(' +
      '10,4)) QTD_APRODUZIR'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN PEDIDO_ITEM IT' +
      #13#10'ON PED.ID = IT.ID'#13#10'INNER JOIN PRODUTO_PROCESSO PROP'#13#10'ON IT.ID_' +
      'PRODUTO = PROP.ID'#13#10'INNER JOIN PROCESSO PP'#13#10'ON PROP.ID_PROCESSO =' +
      ' PP.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON IT.id_cor = COMB.ID'#13#10'LEFT ' +
      'JOIN PESSOA CLI'#13#10'ON PED.ID_CLIENTE = CLI.CODIGO'#13#10'left join vbaix' +
      'a_processo VB'#13#10' ON IT.ID = VB.ID_PEDIDO'#13#10' AND IT.ITEM = VB.ITEM_' +
      'PEDIDO'#13#10' and PP.ID = VB.ID_PROCESSO'#13#10'WHERE IT.QTD - coalesce(VB.' +
      'qtd,0) > 0'#13#10'  AND PED.TIPO_REG = '#39'P'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 56
  end
  object dspPedidoProc: TDataSetProvider
    DataSet = sdsPedidoProc
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 56
  end
  object cdsPedidoProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoProc'
    Left = 192
    Top = 56
    object cdsPedidoProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsPedidoProcIMP_CLIENTE: TStringField
      FieldName = 'IMP_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoProcPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoProcNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoProcID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoProcREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoProcNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoProcNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsPedidoProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoProcID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoProcNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoProcFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedidoProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsPedidoProcITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsPedidoProcORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
    object cdsPedidoProcQTD_PROCESSO_PEND: TFloatField
      FieldName = 'QTD_PROCESSO_PEND'
    end
    object cdsPedidoProcQTD_APRODUZIR: TFMTBCDField
      FieldName = 'QTD_APRODUZIR'
      Required = True
      Precision = 15
      Size = 8
    end
  end
  object dsPedidoProc: TDataSource
    DataSet = cdsPedidoProc
    Left = 239
    Top = 56
  end
  object sdsBaixa_Processo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT B.*'#13#10'FROM BAIXA_PROCESSO B'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 168
    object sdsBaixa_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBaixa_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBaixa_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsBaixa_ProcessoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object sdsBaixa_ProcessoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsBaixa_ProcessoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsBaixa_ProcessoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsBaixa_ProcessoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsBaixa_ProcessoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsBaixa_ProcessoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsBaixa_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_ProcessoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsBaixa_ProcessoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsBaixa_ProcessoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsBaixa_ProcessoTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object sdsBaixa_ProcessoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object sdsBaixa_ProcessoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dspBaixa_Processo: TDataSetProvider
    DataSet = sdsBaixa_Processo
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 168
  end
  object cdsBaixa_Processo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspBaixa_Processo'
    Left = 496
    Top = 168
    object cdsBaixa_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBaixa_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBaixa_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsBaixa_ProcessoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object cdsBaixa_ProcessoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsBaixa_ProcessoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsBaixa_ProcessoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsBaixa_ProcessoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsBaixa_ProcessoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsBaixa_ProcessoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsBaixa_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_ProcessoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsBaixa_ProcessoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsBaixa_ProcessoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsBaixa_ProcessoTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsBaixa_ProcessoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object cdsBaixa_ProcessoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dsBaixa_Processo: TDataSource
    DataSet = cdsBaixa_Processo
    Left = 543
    Top = 168
  end
  object sdsPedido_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.ID ID_PEDIDO, PED.num_pedido, PED.pedido_cliente, PED' +
      '.ID_CLIENTE, IT.REFERENCIA,'#13#10'IT.QTD, COMB.NOME NOME_COR, IT.DTEN' +
      'TREGA, PED.DTEMISSAO, CLI.NOME NOME_CLIENTE,'#13#10'IT.ITEM ITEM_PEDID' +
      'O, CLI.FANTASIA FANTASIA_CLIENTE, IT.ID_PRODUTO'#13#10'FROM PEDIDO PED' +
      #13#10'INNER JOIN PEDIDO_ITEM IT'#13#10'ON PED.ID = IT.ID'#13#10'LEFT JOIN COMBIN' +
      'ACAO COMB'#13#10'ON IT.id_cor = COMB.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON PED.' +
      'ID_CLIENTE = CLI.CODIGO'#13#10'where PED.TIPO_REG = '#39'P'#39#13#10'  AND IT.qtd_' +
      'restante > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 232
  end
  object dspPedido_Itens: TDataSetProvider
    DataSet = sdsPedido_Itens
    Left = 160
    Top = 232
  end
  object cdsPedido_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Itens'
    Left = 208
    Top = 232
    object cdsPedido_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedido_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_ItensPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ItensNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsPedido_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_ItensDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsPedido_ItensFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPedido_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
  end
  object dsPedido_Itens: TDataSource
    DataSet = cdsPedido_Itens
    Left = 256
    Top = 232
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
    ReportOptions.CreateDate = 42751.456864641200000000
    ReportOptions.LastChange = 43308.430437939820000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 472
    Top = 247
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
    Left = 520
    Top = 247
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
    Left = 560
    Top = 247
  end
  object frxRichObject1: TfrxRichObject
    Left = 592
    Top = 231
  end
  object frxPedido_Itens: TfrxDBDataset
    UserName = 'frxPedido_Itens'
    OnFirst = frxPedido_ItensFirst
    OnNext = frxPedido_ItensNext
    OnPrior = frxPedido_ItensPrior
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PEDIDO=ID_PEDIDO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ID_CLIENTE=ID_CLIENTE'
      'REFERENCIA=REFERENCIA'
      'QTD=QTD'
      'NOME_COR=NOME_COR'
      'DTENTREGA=DTENTREGA'
      'DTEMISSAO=DTEMISSAO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'ITEM_PEDIDO=ITEM_PEDIDO'
      'FANTASIA_CLIENTE=FANTASIA_CLIENTE'
      'ID_PRODUTO=ID_PRODUTO')
    OnOpen = frxPedido_ItensOpen
    DataSource = dsPedido_Itens
    BCDToCurrency = False
    Left = 438
    Top = 303
  end
  object sdsBaixaPed: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.id ID_PROCESSO, P.NOME NOME_PROCESSO, P.ordem_mapa, B.i' +
      'd_pedido,'#13#10'B.qtd,'#13#10'CASE'#13#10'  WHEN PP.ID_PROCESSO IS NULL THEN '#39'X'#39#13 +
      #10'  ELSE ROUND((SELECT II.QTD FROM PEDIDO_ITEM II WHERE II.ID = :' +
      'ID_PEDIDO AND II.ITEM = :ITEM_PEDIDO) - COALESCE(B.QTD,0),0)'#13#10'  ' +
      'END QTD_PEND_IMPRIMIR'#13#10'from PROCESSO P'#13#10'LEFT JOIN PRODUTO_PROCES' +
      'SO PP'#13#10'ON PP.ID = :ID_PRODUTO'#13#10'and pp.id_processo = p.id'#13#10'LEFT J' +
      'OIN vbaixa_processo B'#13#10'ON P.ID = B.ID_PROCESSO'#13#10'  AND B.ID_PEDID' +
      'O = :ID_PEDIDO'#13#10'  AND B.ITEM_PEDIDO = :ITEM_PEDIDO'#13#10'WHERE P.orde' +
      'm_mapa > 0'#13#10
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
        Name = 'ID_PRODUTO'
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
    Left = 112
    Top = 288
  end
  object dspBaixaPed: TDataSetProvider
    DataSet = sdsBaixaPed
    Left = 160
    Top = 288
  end
  object cdsBaixaPed: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM_MAPA'
    Params = <>
    ProviderName = 'dspBaixaPed'
    Left = 208
    Top = 288
    object cdsBaixaPedID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsBaixaPedNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsBaixaPedORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
    object cdsBaixaPedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsBaixaPedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixaPedQTD_PEND_IMPRIMIR: TStringField
      FieldName = 'QTD_PEND_IMPRIMIR'
      Size = 24
    end
  end
  object dsBaixaPed: TDataSource
    DataSet = cdsBaixaPed
    Left = 256
    Top = 288
  end
  object frxBaixaPed: TfrxDBDataset
    UserName = 'frxBaixaPed'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PROCESSO=ID_PROCESSO'
      'NOME_PROCESSO=NOME_PROCESSO'
      'ORDEM_MAPA=ORDEM_MAPA'
      'ID_PEDIDO=ID_PEDIDO'
      'QTD=QTD'
      'QTD_PEND_IMPRIMIR=QTD_PEND_IMPRIMIR')
    DataSource = dsBaixaPed
    BCDToCurrency = False
    Left = 488
    Top = 303
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.NOME, P.ordem_mapa'#13#10'FROM PROCESSO P'#13#10'WHERE P.ORDEM_MAPA' +
      ' > 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 344
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 160
    Top = 344
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM_MAPA'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 208
    Top = 344
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcessoORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 256
    Top = 344
  end
  object frxProcesso: TfrxDBDataset
    UserName = 'frxProcesso'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'ORDEM_MAPA=ORDEM_MAPA')
    DataSource = dsProcesso
    BCDToCurrency = False
    Left = 560
    Top = 303
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
    Left = 392
    Top = 320
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
  object sdsConsBaixa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select BX.ID ID_BAIXA, BX.item ITEM_BAIXA, BX.id_processo, BX.id' +
      '_pedido, BX.item_pedido,'#13#10'BX.qtd, BX.dtbaixa, BX.hrbaixa, PROC.N' +
      'OME NOME_PROCESSO, PROC.ORDEM_MAPA,'#13#10'PED.pedido_cliente, PED.ID_' +
      'CLIENTE, PED.dtemissao, CLI.NOME NOME_CLIENTE,'#13#10'IT.id_produto, I' +
      'T.referencia, COMB.NOME NOME_COR, IT.qtd QTD_PEDIDO, IT.DTENTREG' +
      'A, CLI.FANTASIA'#13#10'from baixa_processo BX'#13#10'INNER JOIN PROCESSO PRO' +
      'C'#13#10'ON BX.ID_PROCESSO = PROC.id'#13#10'INNER JOIN PEDIDO PED'#13#10'ON BX.ID_' +
      'PEDIDO = PED.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.ID_CLIENTE = CLI.' +
      'CODIGO'#13#10'INNER JOIN PEDIDO_ITEM IT'#13#10' ON IT.ID = BX.id_pedido'#13#10' AN' +
      'D IT.ITEM = BX.item_pedido'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON IT.ID_' +
      'COR = COMB.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 24
  end
  object dspConsBaixa: TDataSetProvider
    DataSet = sdsConsBaixa
    Left = 432
    Top = 24
  end
  object cdsConsBaixa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PEDIDO_CLIENTE;ITEM_PEDIDO;ORDEM_MAPA'
    Params = <>
    ProviderName = 'dspConsBaixa'
    Left = 480
    Top = 24
    object cdsConsBaixaID_BAIXA: TIntegerField
      FieldName = 'ID_BAIXA'
      Required = True
    end
    object cdsConsBaixaITEM_BAIXA: TIntegerField
      FieldName = 'ITEM_BAIXA'
      Required = True
    end
    object cdsConsBaixaID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsBaixaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsBaixaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsBaixaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsBaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsConsBaixaHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsConsBaixaNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsBaixaORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
    object cdsConsBaixaPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsBaixaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsBaixaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsBaixaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsBaixaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsBaixaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsBaixaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsBaixaQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object cdsConsBaixaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsBaixaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsConsBaixa: TDataSource
    DataSet = cdsConsBaixa
    Left = 528
    Top = 24
  end
  object sdsConsBaixa_Acum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select BX.id_processo, BX.id_pedido, BX.item_pedido,'#13#10'sum(BX.qtd' +
      ') QTD, PROC.NOME NOME_PROCESSO, PROC.ORDEM_MAPA,'#13#10'PED.pedido_cli' +
      'ente, PED.ID_CLIENTE, PED.dtemissao, CLI.NOME NOME_CLIENTE,'#13#10'IT.' +
      'id_produto, IT.referencia, COMB.NOME NOME_COR, IT.qtd QTD_PEDIDO' +
      ', IT.DTENTREGA,'#13#10'CLI.FANTASIA'#13#10'from baixa_processo BX'#13#10'INNER JOI' +
      'N PROCESSO PROC'#13#10'ON BX.ID_PROCESSO = PROC.id'#13#10'INNER JOIN PEDIDO ' +
      'PED'#13#10'ON BX.ID_PEDIDO = PED.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.ID_' +
      'CLIENTE = CLI.CODIGO'#13#10'INNER JOIN PEDIDO_ITEM IT'#13#10' ON IT.ID = BX.' +
      'id_pedido'#13#10' AND IT.ITEM = BX.item_pedido'#13#10'LEFT JOIN COMBINACAO C' +
      'OMB'#13#10'ON IT.ID_COR = COMB.ID'#13#10'GROUP BY BX.id_processo, BX.id_pedi' +
      'do, BX.item_pedido,'#13#10'PROC.NOME, PROC.ORDEM_MAPA,'#13#10'PED.pedido_cli' +
      'ente, PED.ID_CLIENTE, PED.dtemissao, CLI.NOME,'#13#10'IT.id_produto, I' +
      'T.referencia, COMB.NOME, IT.qtd, IT.DTENTREGA, CLI.FANTASIA'#13#10#13#10#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 80
  end
  object dspConsBaixa_Acum: TDataSetProvider
    DataSet = sdsConsBaixa_Acum
    Left = 432
    Top = 80
  end
  object cdsConsBaixa_Acum: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PEDIDO_CLIENTE;ITEM_PEDIDO;ORDEM_MAPA'
    Params = <>
    ProviderName = 'dspConsBaixa_Acum'
    OnCalcFields = cdsConsBaixa_AcumCalcFields
    Left = 480
    Top = 80
    object cdsConsBaixa_AcumID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsBaixa_AcumID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsBaixa_AcumITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsBaixa_AcumQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsBaixa_AcumNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsBaixa_AcumORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
    object cdsConsBaixa_AcumPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsBaixa_AcumID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsBaixa_AcumDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsBaixa_AcumNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsBaixa_AcumID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsBaixa_AcumREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsBaixa_AcumNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsBaixa_AcumQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object cdsConsBaixa_AcumDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsBaixa_AcumFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsConsBaixa_AcumclQtd_Pendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Pendente'
      Calculated = True
    end
  end
  object dsConsBaixa_Acum: TDataSource
    DataSet = cdsConsBaixa_Acum
    Left = 528
    Top = 80
  end
  object mPedidoTotal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 381
    Top = 408
    Data = {
      380000009619E0BD01000000180000000200000000000300000038000850726F
      636573736F0400010000000000045174646508000400000000000000}
    object mPedidoTotalProcesso: TIntegerField
      FieldName = 'Processo'
    end
    object mPedidoTotalQtde: TFloatField
      FieldName = 'Qtde'
    end
  end
  object dsmPedidoTotal: TDataSource
    DataSet = mPedidoTotal
    Left = 413
    Top = 407
  end
end
