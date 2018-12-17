object DMPedidoImp: TDMPedidoImp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 328
  Top = 66
  Height = 579
  Width = 840
  object dsPedidoImp: TDataSource
    DataSet = cdsPedidoImp
    Left = 176
    Top = 36
  end
  object cdsPedidoImp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedidoImp'
    Left = 128
    Top = 36
    object cdsPedidoImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImpNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoImpPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoImpNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedidoImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoImpDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoImpQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImpQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImpQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoImpNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cdsPedidoImpEND_CLIENTE: TStringField
      FieldName = 'END_CLIENTE'
      Size = 60
    end
    object cdsPedidoImpNUM_END_CLIENTE: TStringField
      FieldName = 'NUM_END_CLIENTE'
    end
    object cdsPedidoImpBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
    end
    object cdsPedidoImpCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      Size = 40
    end
    object cdsPedidoImpUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoImpDDD_CLIENTE: TIntegerField
      FieldName = 'DDD_CLIENTE'
    end
    object cdsPedidoImpFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Size = 15
    end
    object cdsPedidoImpDDD_FAX_CLIENTE: TIntegerField
      FieldName = 'DDD_FAX_CLIENTE'
    end
    object cdsPedidoImpFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 15
    end
    object cdsPedidoImpCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
    end
    object cdsPedidoImpCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 10
    end
    object cdsPedidoImpFANTASIA_CLI: TStringField
      FieldName = 'FANTASIA_CLI'
      Size = 30
    end
  end
  object dspPedidoImp: TDataSetProvider
    DataSet = sdsPedidoImp
    Left = 88
    Top = 36
  end
  object sdsPedidoImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id, ped.num_pedido, ped.pedido_cliente, ped.num_doc, ' +
      'ped.dtemissao,'#13#10'ped.dtentrega, ped.qtd, ped.qtd_restante, ped.qt' +
      'd_faturado, PED.OBS,'#13#10#13#10'CLI.NOME NOME_CLI, CLI.ENDERECO END_CLIE' +
      'NTE, CLI.NUM_END NUM_END_CLIENTE,'#13#10'CLI.BAIRRO BAIRRO_CLIENTE, CL' +
      'I.CIDADE CIDADE_CLIENTE, CLI.UF, CLI.DDDFONE1 DDD_CLIENTE, '#13#10'CLI' +
      '.telefone1 FONE_CLIENTE, CLI.dddfax DDD_FAX_CLIENTE, CLI.FAX FAX' +
      '_CLIENTE, '#13#10'CLI.CNPJ_CPF CNPJ_CPF_CLIENTE, CLI.CEP CEP_CLIENTE, ' +
      'CLI.FANTASIA FANTASIA_CLI'#13#10#13#10'FROM PEDIDO PED'#13#10'LEFT JOIN PESSOA C' +
      'LI ON PED.ID_CLIENTE = CLI.CODIGO'#13#10'INNER JOIN FILIAL FIL ON (PED' +
      '.FILIAL = FIL.ID)'#13#10#13#10'WHERE PED.ID  = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 36
  end
  object sdsPedidoImp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PI.id_produto, PI.id_cor, SUM(PI.qtd) QTD, SUM(PI.qtd_res' +
      'tante) QTD_RESTANTE,'#13#10' SUM(PI.qtd_faturado) QTD_FATURADO, PI.REF' +
      'ERENCIA, PI.nomeproduto'#13#10',COMB.NOME NOME_COR_COMBINACAO, COUNT(1' +
      ') TOTAL_ITEM'#13#10'FROM PEDIDO_ITEM PI'#13#10'LEFT JOIN PRODUTO PRO ON (PI.' +
      'ID_PRODUTO = PRO.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON (PI.ID_COR = ' +
      'COMB.ID)'#13#10'WHERE PI.ID = :ID'#13#10'GROUP BY PI.id_produto, PI.id_cor, ' +
      'PI.REFERENCIA, PI.nomeproduto, COMB.NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 84
  end
  object dspPedidoImp_Itens: TDataSetProvider
    DataSet = sdsPedidoImp_Itens
    Left = 88
    Top = 84
  end
  object cdsPedidoImp_Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_Produto;ID_Cor'
    Params = <>
    ProviderName = 'dspPedidoImp_Itens'
    Left = 128
    Top = 84
    object cdsPedidoImp_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoImp_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImp_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImp_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedidoImp_ItensTOTAL_ITEM: TIntegerField
      FieldName = 'TOTAL_ITEM'
      Required = True
    end
    object cdsPedidoImp_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoImp_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
  end
  object dsPedidoImp_Itens: TDataSource
    DataSet = cdsPedidoImp_Itens
    Left = 176
    Top = 84
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
    ReportOptions.LastChange = 43285.988136759260000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 352
    Top = 79
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
    Left = 392
    Top = 79
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
    Left = 432
    Top = 79
  end
  object frxRichObject1: TfrxRichObject
    Left = 464
    Top = 79
  end
  object frxPedidoImp: TfrxDBDataset
    UserName = 'frxPedidoImp'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'NUM_DOC=NUM_DOC'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA=DTENTREGA'
      'QTD=QTD'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_FATURADO=QTD_FATURADO'
      'OBS=OBS'
      'NOME_CLI=NOME_CLI'
      'END_CLIENTE=END_CLIENTE'
      'NUM_END_CLIENTE=NUM_END_CLIENTE'
      'BAIRRO_CLIENTE=BAIRRO_CLIENTE'
      'CIDADE_CLIENTE=CIDADE_CLIENTE'
      'UF=UF'
      'DDD_CLIENTE=DDD_CLIENTE'
      'FONE_CLIENTE=FONE_CLIENTE'
      'DDD_FAX_CLIENTE=DDD_FAX_CLIENTE'
      'FAX_CLIENTE=FAX_CLIENTE'
      'CNPJ_CPF_CLIENTE=CNPJ_CPF_CLIENTE'
      'CEP_CLIENTE=CEP_CLIENTE'
      'FANTASIA_CLI=FANTASIA_CLI')
    DataSource = dsPedidoImp
    BCDToCurrency = False
    Left = 352
    Top = 127
  end
  object frxPedidoImp_Lucratividade: TfrxDBDataset
    UserName = 'frxPedidoImp_Lucratividade'
    OnFirst = frxPedidoImp_LucratividadeFirst
    OnNext = frxPedidoImp_LucratividadeNext
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ID_Pessoa=ID_Pessoa'
      'Data_Emissao=Data_Emissao'
      'Valor_Total=Valor_Total'
      'Valor_Custo=Valor_Custo'
      'Valor_Diferenca=Valor_Diferenca'
      'Nome_Cliente=Nome_Cliente'
      'Pedido_Clinete=Pedido_Clinete')
    DataSource = dsmPedido_Lucratividade
    BCDToCurrency = False
    Left = 528
    Top = 127
  end
  object mPedido_Lucratividade: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pessoa'
        DataType = ftInteger
      end
      item
        Name = 'Data_Emissao'
        DataType = ftDate
      end
      item
        Name = 'Valor_Total'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Custo'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Pedido_Clinete'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    OnCalcFields = mPedido_LucratividadeCalcFields
    Left = 72
    Top = 200
    Data = {
      CE0000009619E0BD010000001800000007000000000003000000CE0002494404
      000100000000000949445F506573736F6104000100000000000C446174615F45
      6D697373616F04000600000000000B56616C6F725F546F74616C080004000000
      00000B56616C6F725F437573746F08000400000000000C4E6F6D655F436C6965
      6E746501004900000001000557494454480200020064000E50656469646F5F43
      6C696E657465010049000000010005574944544802000200140001000D444546
      41554C545F4F524445520200820000000000}
    object mPedido_LucratividadeID: TIntegerField
      FieldName = 'ID'
    end
    object mPedido_LucratividadeID_Pessoa: TIntegerField
      FieldName = 'ID_Pessoa'
    end
    object mPedido_LucratividadeData_Emissao: TDateField
      FieldName = 'Data_Emissao'
    end
    object mPedido_LucratividadeValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object mPedido_LucratividadeValor_Custo: TFloatField
      FieldName = 'Valor_Custo'
    end
    object mPedido_LucratividadeValor_Diferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Diferenca'
      Calculated = True
    end
    object mPedido_LucratividadeNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 100
    end
    object mPedido_LucratividadePedido_Clinete: TStringField
      FieldName = 'Pedido_Clinete'
    end
  end
  object mPedido_Lucratividade_Item: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Custo'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Total'
        DataType = ftFloat
      end
      item
        Name = 'Percentual_Margem'
        DataType = ftFloat
      end
      item
        Name = 'Percentual_Margem2'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = dsmPedido_Lucratividade
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 256
    Data = {
      C90000009619E0BD010000001800000008000000000003000000C90002494404
      000100000000000A49445F50726F6475746F04000100000000000C4E6F6D655F
      50726F6475746F01004900000001000557494454480200020064000A5175616E
      74696461646508000400000000000B56616C6F725F437573746F080004000000
      00000B56616C6F725F546F74616C08000400000000001150657263656E747561
      6C5F4D617267656D08000400000000001250657263656E7475616C5F4D617267
      656D3208000400000000000000}
    object mPedido_Lucratividade_ItemID: TIntegerField
      FieldName = 'ID'
    end
    object mPedido_Lucratividade_ItemID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mPedido_Lucratividade_ItemNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mPedido_Lucratividade_ItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object mPedido_Lucratividade_ItemValor_Custo: TFloatField
      FieldName = 'Valor_Custo'
    end
    object mPedido_Lucratividade_ItemValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object mPedido_Lucratividade_ItemPercentual_Margem: TFloatField
      FieldName = 'Percentual_Margem'
    end
    object mPedido_Lucratividade_ItemPercentual_Margem2: TFloatField
      FieldName = 'Percentual_Margem2'
    end
  end
  object dsmPedido_Lucratividade: TDataSource
    DataSet = mPedido_Lucratividade
    Left = 200
    Top = 200
  end
  object dsmPedido_Lucratividade_Item: TDataSource
    DataSet = mPedido_Lucratividade_Item
    Left = 232
    Top = 256
  end
  object frxPedidoImp_Lucratividade_Item: TfrxDBDataset
    UserName = 'frxPedidoImp_Lucratividade_Item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'NOME=NOME'
      'QTD=QTD'
      'UNIDADE=UNIDADE'
      'PRECO_CUSTO=PRECO_CUSTO'
      'VLR_TOTAL=VLR_TOTAL'
      'PERC_MARGEM=PERC_MARGEM'
      'PERC_MARGEM2=PERC_MARGEM2'
      'VLR_UNITARIO=VLR_UNITARIO')
    DataSet = qPedidoItemProdutividade
    BCDToCurrency = False
    Left = 560
    Top = 128
  end
  object qPedidoItemProdutividade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ITE.ID, ITE.ITEM, ITE.ID_PRODUTO, PRO.NOME, ITE.QTD, ITE.' +
        'UNIDADE, ITE.VLR_UNITARIO, ITE.PRECO_CUSTO,'
      '       ITE.VLR_TOTAL, ITE.PERC_MARGEM, ITE.PERC_MARGEM2'
      'from PEDIDO_ITEM ITE'
      'left join PRODUTO PRO on PRO.ID = ITE.ID_PRODUTO'
      'where ITE.ID = :ID   ')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 280
    object qPedidoItemProdutividadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPedidoItemProdutividadeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qPedidoItemProdutividadeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qPedidoItemProdutividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qPedidoItemProdutividadeQTD: TFloatField
      FieldName = 'QTD'
    end
    object qPedidoItemProdutividadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qPedidoItemProdutividadePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qPedidoItemProdutividadeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object qPedidoItemProdutividadePERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object qPedidoItemProdutividadePERC_MARGEM2: TFloatField
      FieldName = 'PERC_MARGEM2'
    end
    object qPedidoItemProdutividadeVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object sdsPedidoOrcImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PED.ID_VENDEDOR, iif(PED.ID_VENDEDOR is null, '#39'SEM VENDED' +
      'OR'#39', PES.NOME) NOME, sum(PED.VLR_TOTAL) VALOR_TOTAL,'#13#10'       sum' +
      '(PED.VLR_FRETE) VALOR_FRETE, sum(PED.VLR_DESCONTO) VALOR_DESCONT' +
      'O, count(PED.ID) NUMERO_REGISTROS'#13#10'from PEDIDO PED'#13#10'left join PE' +
      'SSOA PES on PED.ID_VENDEDOR = PES.CODIGO'#13#10'where 0 = 0'#13#10'group by ' +
      'PED.ID_VENDEDOR, PES.NOME  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 152
    object sdsPedidoOrcImpID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPedidoOrcImpNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPedidoOrcImpVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object sdsPedidoOrcImpVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsPedidoOrcImpVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sdsPedidoOrcImpNUMERO_REGISTROS: TIntegerField
      FieldName = 'NUMERO_REGISTROS'
      Required = True
    end
  end
  object dspPedidoOrcImp: TDataSetProvider
    DataSet = sdsPedidoOrcImp
    Left = 120
    Top = 152
  end
  object cdsPedidoOrcImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoOrcImp'
    Left = 168
    Top = 152
    object cdsPedidoOrcImpID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoOrcImpNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPedidoOrcImpVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object cdsPedidoOrcImpVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '###,##0.00'
    end
    object cdsPedidoOrcImpVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object cdsPedidoOrcImpNUMERO_REGISTROS: TIntegerField
      FieldName = 'NUMERO_REGISTROS'
      Required = True
    end
  end
  object dsPedidoOrcImp: TDataSource
    DataSet = cdsPedidoOrcImp
    Left = 224
    Top = 152
  end
  object frxPedido_Orcamento: TfrxDBDataset
    UserName = 'frxPedido_Orcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_VENDEDOR=ID_VENDEDOR'
      'NOME=NOME'
      'VALOR_TOTAL=VALOR_TOTAL'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'NUMERO_REGISTROS=NUMERO_REGISTROS')
    DataSource = dsPedidoOrcImp
    BCDToCurrency = False
    Left = 360
    Top = 208
  end
  object dsPedEmb: TDataSource
    DataSet = cdsPedEmb
    Left = 192
    Top = 340
  end
  object cdsPedEmb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ITEM'
    Params = <>
    ProviderName = 'dspPedEmb'
    Left = 144
    Top = 340
    object cdsPedEmbID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedEmbITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedEmbID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedEmbID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedEmbREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedEmbNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedEmbNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsPedEmbQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedEmbQTD_EMB: TFloatField
      FieldName = 'QTD_EMB'
    end
    object cdsPedEmbSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspPedEmb: TDataSetProvider
    DataSet = sdsPedEmb
    Left = 104
    Top = 340
  end
  object sdsPedEmb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select I.ID, I.ITEM, I.ID_PRODUTO, I.id_cor, I.referencia, I.nom' +
      'eproduto,'#13#10'C.NOME NOME_COMBINACAO, I.QTD, '#39'S'#39' selecionado ,'#13#10'(SE' +
      'LECT FIRST 1 E.QTD_EMB FROM PRODUTO_EMB E WHERE E.ID = I.ID_PROD' +
      'UTO and E.tipo_emb = '#39'O'#39' ) QTD_EMB'#13#10'FROM PEDIDO_ITEM I'#13#10'LEFT JOI' +
      'N COMBINACAO C'#13#10'ON I.ID_COR = C.ID'#13#10'WHERE I.ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 340
  end
  object sdsTalao_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PP.NOME NOME_PROCESSO, PP.imp_cliente, PED.ID, PED.pedido' +
      '_cliente, PED.NUM_PEDIDO, IT.QTD_RESTANTE, IT.ID_PRODUTO,'#13#10'IT.RE' +
      'FERENCIA, IT.nomeproduto, IT.UNIDADE,'#13#10'COMB.NOME NOME_COMBINACAO' +
      ', IT.DTENTREGA, PED.ID_CLIENTE, CLI.NOME NOME_CLIENTE,'#13#10'CLI.FANT' +
      'ASIA, PROP.ID_PROCESSO, IT.ITEM ITEM_PEDIDO, PP.ORDEM_MAPA, it.s' +
      'elecionado, '#13#10'CASE'#13#10'  WHEN PP.IMP_CLIENTE = '#39'S'#39' THEN CLI.FANTASI' +
      'A'#13#10'  ELSE '#39#39#13#10'  END CLIENTE_INTERNO'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN' +
      ' PEDIDO_ITEM IT'#13#10'ON PED.ID = IT.ID'#13#10'INNER JOIN PRODUTO_PROCESSO ' +
      'PROP'#13#10'ON IT.ID_PRODUTO = PROP.ID'#13#10'INNER JOIN PROCESSO PP'#13#10'ON PRO' +
      'P.ID_PROCESSO = PP.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON IT.id_cor =' +
      ' COMB.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON PED.ID_CLIENTE = CLI.CODIGO'#13#10 +
      'WHERE PP.IMP_TALAO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 416
  end
  object dspTalao_Proc: TDataSetProvider
    DataSet = sdsTalao_Proc
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 416
  end
  object cdsTalao_Proc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM_PEDIDO;ORDEM_MAPA;NOME_PROCESSO'
    Params = <>
    ProviderName = 'dspTalao_Proc'
    Left = 440
    Top = 416
    object cdsTalao_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsTalao_ProcIMP_CLIENTE: TStringField
      FieldName = 'IMP_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsTalao_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_ProcPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsTalao_ProcNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsTalao_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsTalao_ProcID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalao_ProcREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTalao_ProcNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsTalao_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsTalao_ProcNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsTalao_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsTalao_ProcID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsTalao_ProcNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsTalao_ProcFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsTalao_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsTalao_ProcITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsTalao_ProcCLIENTE_INTERNO: TStringField
      FieldName = 'CLIENTE_INTERNO'
      Size = 30
    end
    object cdsTalao_ProcORDEM_MAPA: TIntegerField
      FieldName = 'ORDEM_MAPA'
    end
    object cdsTalao_ProcSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTalao_Proc: TDataSource
    DataSet = cdsTalao_Proc
    Left = 487
    Top = 416
  end
  object frxTalao_proc: TfrxDBDataset
    UserName = 'frxTalao_proc'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NOME_PROCESSO=NOME_PROCESSO'
      'IMP_CLIENTE=IMP_CLIENTE'
      'ID=ID'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'NUM_PEDIDO=NUM_PEDIDO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOMEPRODUTO=NOMEPRODUTO'
      'UNIDADE=UNIDADE'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'DTENTREGA=DTENTREGA'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'FANTASIA=FANTASIA'
      'ID_PROCESSO=ID_PROCESSO'
      'ITEM_PEDIDO=ITEM_PEDIDO'
      'CLIENTE_INTERNO=CLIENTE_INTERNO')
    DataSource = dsTalao_Proc
    BCDToCurrency = False
    Left = 400
    Top = 127
  end
end
