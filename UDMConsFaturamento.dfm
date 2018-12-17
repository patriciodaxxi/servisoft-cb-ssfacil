object DMConsFaturamento: TDMConsFaturamento
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 139
  Top = 81
  Height = 576
  Width = 1074
  object sdsNotaFiscal_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID_PESSOA, CANCELADO, NOME_CLIENTE, FANTASIA, sum(VLR_TOT' +
      'AL) VLR_TOTAL, sum(QTD) QTD,'#13#10'       sum(VLR_LIQUIDO_NFSE) VLR_L' +
      'IQUIDO_NFSE, sum(VLR_TOTAL - VLR_LIQUIDO_NFSE) VLR_VENDAS,'#13#10'    ' +
      '   sum(VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from VCONSFATURAMENTO V'#13#10'gr' +
      'oup by ID_PESSOA, CANCELADO, NOME_CLIENTE, FANTASIA'#13#10'order by VL' +
      'R_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 24
    object sdsNotaFiscal_CliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsNotaFiscal_CliCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_CliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsNotaFiscal_CliFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsNotaFiscal_CliVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaFiscal_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_CliVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsNotaFiscal_CliVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
    end
    object sdsNotaFiscal_CliVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
  end
  object dspNotaFiscal_Cli: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 24
  end
  object dsNotaFiscal_Cli: TDataSource
    AutoEdit = False
    DataSet = cdsNotaFiscal_Cli
    Left = 224
    Top = 24
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 368
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 616
    Top = 368
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 656
    Top = 368
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 688
    Top = 368
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, REFERENCIA, NOME, TIPO_REG'#13#10'FROM PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 424
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 616
    Top = 424
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 656
    Top = 424
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 696
    Top = 424
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39 +
      'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 472
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 616
    Top = 472
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 656
    Top = 472
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 696
    Top = 472
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 216
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CUPOM_FISCAL: TStringField
      FieldName = 'USA_CUPOM_FISCAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
      FixedChar = True
      Size = 1
    end
  end
  object qFaturamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select sum(MOV.VLR_TOTAL) VLR_TOTAL, sum(MOV.VLR_LIQUIDO_NFSE) V' +
        'LR_LIQUIDO_NFSE,'
      
        '       sum(MOV.VLR_DUPLICATA - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS,' +
        ' sum(MOV.VLR_DUPLICATA - MOV.VLR_ICMSSUBST) VLR_DUPLICATA_ST,'
      
        '       sum(MOV.VLR_ICMSSUBST) VLR_ICMSSUBST, sum(MOV.VLR_FRETE) ' +
        'VLR_FRETE, sum(MOV.VLR_IPI) VLR_IPI'
      'from MOVIMENTO MOV'
      'left join TAB_CFOP CF on CF.ID = MOV.ID_CFOP'
      'where MOV.CANCELADO = '#39'N'#39' and'
      '      MOV.DENEGADA = '#39'N'#39' and'
      
        '    ((MOV.TIPO_REG = '#39'CFI'#39') or ((MOV.TIPO_REG = '#39'NTS'#39' or MOV.TIP' +
        'O_REG = '#39'NTE'#39')'
      '        and CF.FATURAMENTO = '#39'S'#39') or (MOV.TIPO_REG = '#39'NSE'#39
      '        and MOV.VLR_LIQUIDO_NFSE > 0) or (MOV.TIPO_REG = '#39'RNF'#39'))')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 216
    object qFaturamentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object qFaturamentoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object qFaturamentoVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
    end
    object qFaturamentoVLR_DUPLICATA_ST: TFloatField
      FieldName = 'VLR_DUPLICATA_ST'
    end
    object qFaturamentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object qFaturamentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object qFaturamentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
  end
  object sdsNotaFiscal_CliProd: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.T' +
      'IPO_MOV, V.ID_PRODUTO, V.REFERENCIA,'#13#10'       V.NOME_PRODUTO_SERV' +
      ', sum(V.VLR_TOTAL) VLR_TOTAL, sum(V.QTD) QTD, sum(V.VLR_LIQUIDO_' +
      'NFSE) VLR_LIQUIDO_NFSE,'#13#10'       sum(V.VLR_TOTAL - V.VLR_LIQUIDO_' +
      'NFSE) VLR_VENDAS, sum(V.VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from VCONS' +
      'FATURAMENTO V'#13#10'group by V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE' +
      ', V.FANTASIA, V.TIPO_MOV, V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRO' +
      'DUTO_SERV'#13#10'order by VLR_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 80
  end
  object dspNotaFiscal_CliProd: TDataSetProvider
    DataSet = sdsNotaFiscal_CliProd
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 80
  end
  object cdsNotaFiscal_CliProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_CliProd'
    OnCalcFields = cdsNotaFiscal_CliProdCalcFields
    Left = 184
    Top = 80
    object cdsNotaFiscal_CliProdID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_CliProdCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_CliProdNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_CliProdFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_CliProdTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 100
    end
    object cdsNotaFiscal_CliProdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_CliProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_CliProdNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 3
    end
    object cdsNotaFiscal_CliProdVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliProdQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliProdclPerc_SobreFat: TFloatField
      DisplayLabel = '% Sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object cdsNotaFiscal_CliProdVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliProdVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliProdVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_CliProd: TDataSource
    DataSet = cdsNotaFiscal_CliProd
    Left = 224
    Top = 80
  end
  object sdsNotaFiscal_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_PRODUTO_SERV, su' +
      'm(MOV.VLR_TOTAL) VLR_TOTAL, MOV.TIPO_MOV, MOV.TIPO_REG,'#13#10'       ' +
      'MOV.TIPO_ES, sum(MOV.QTD) QTD, sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQ' +
      'UIDO_NFSE,'#13#10'       sum(MOV.VLR_DUPLICATA - MOV.VLR_LIQUIDO_NFSE)' +
      ' VLR_VENDAS, sum(MOV.VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from MOVIMENT' +
      'O MOV'#13#10'inner join PESSOA CLI on MOV.ID_PESSOA = CLI.CODIGO'#13#10'inne' +
      'r join TAB_CFOP TCFOP on (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CAN' +
      'CELADO = '#39'N'#39' and'#13#10'      MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_E' +
      'S = '#39'S'#39' and'#13#10'      ((MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATUR' +
      'AMENTO = '#39'S'#39') or (MOV.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUID' +
      'O_NFSE > 0))'#13#10'group by MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_' +
      'PRODUTO_SERV, MOV.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES'#13#10'order by ' +
      'VLR_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 144
  end
  object dspNotaFiscal_Prod: TDataSetProvider
    DataSet = sdsNotaFiscal_Prod
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 144
  end
  object cdsNotaFiscal_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Prod'
    OnCalcFields = cdsNotaFiscal_ProdCalcFields
    Left = 184
    Top = 144
    object cdsNotaFiscal_ProdID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ProdREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ProdQTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsNotaFiscal_ProdNOME_PRODUTO_SERV: TStringField
      DisplayLabel = 'Nome Produto / Servi'#231'o'
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsNotaFiscal_ProdVLR_LIQUIDO_NFSE: TFloatField
      DisplayLabel = 'Vlr. Servi'#231'os'
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_ProdVLR_VENDAS: TFloatField
      DisplayLabel = 'Vlr. Vendas'
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_ProdclPerc_SobreFat: TFloatField
      DisplayLabel = '% Sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object cdsNotaFiscal_ProdTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsNotaFiscal_ProdTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ProdTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ProdVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_ProdVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_Prod: TDataSource
    DataSet = cdsNotaFiscal_Prod
    Left = 224
    Top = 144
  end
  object sdsNotaFiscal_DT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.DTEMISSAO, sum(MOV.QTD) QTD, sum(MOV.VLR_TOTAL) VLR_T' +
      'OTAL, sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10'       sum(MO' +
      'V.VLR_DUPLICATA - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(MOV.VLR_' +
      'ICMSSUBST) VLR_ICMSSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA ' +
      'CLI on (MOV.ID_PESSOA = CLI.CODIGO)'#13#10'inner join TAB_CFOP TCFOP o' +
      'n (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'     ' +
      ' MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and'#13#10'      ((MO' +
      'V.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S'#39') or (MOV.T' +
      'IPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0))'#13#10'group by ' +
      'MOV.DTEMISSAO'#13#10'order by VLR_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 200
  end
  object dspNotaFiscal_DT: TDataSetProvider
    DataSet = sdsNotaFiscal_DT
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 200
  end
  object cdsNotaFiscal_DT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_DT'
    OnCalcFields = cdsNotaFiscal_DTCalcFields
    Left = 184
    Top = 200
    object cdsNotaFiscal_DTDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_DTQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsNotaFiscal_DTclPerc_SobreFat: TFloatField
      DisplayLabel = '% Sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object cdsNotaFiscal_DTVLR_LIQUIDO_NFSE: TFloatField
      DisplayLabel = 'Vlr. Servi'#231'os'
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_DTVLR_VENDAS: TFloatField
      DisplayLabel = 'Vlr. Vendas'
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_DTVLR_ICMSSUBST: TFloatField
      DisplayLabel = 'Vlr. Subst. Trib.'
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_DTVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_DT: TDataSource
    DataSet = cdsNotaFiscal_DT
    Left = 224
    Top = 200
  end
  object sdsProduto_Det: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.VLR_TOTAL, MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_P' +
      'RODUTO_SERV, MOV.QTD, MOV.UNIDADE, MOV.VLR_UNITARIO,'#13#10'       MOV' +
      '.VLR_TOTAL, MOV.NUM_NOTA, MOV.NUM_RPS, MOV.FILIAL, CLI.NOME NOME' +
      '_CLIENTE, MOV.DTEMISSAO, MOV.DTENTRADASAIDA,'#13#10'       MOV.VLR_DES' +
      'CONTO, MOV.SERIE, MOV.TIPO_MOV, MOV.TIPO_ES, MOV.TIPO_REG,'#13#10'    ' +
      '   (MOV.VLR_ICMSSUBST) VLR_ICMSSUBST, MOV.ID_COR, COMB.NOME NOME' +
      '_COR'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA CLI on MOV.ID_PESSOA' +
      ' = CLI.CODIGO'#13#10'inner join TAB_CFOP TCFOP on (MOV.ID_CFOP = TCFOP' +
      '.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON MOV.ID_COR = COMB.ID'#13#10'where M' +
      'OV.CANCELADO = '#39'N'#39' and'#13#10'      MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.' +
      'TIPO_ES = '#39'S'#39' and'#13#10'      ((MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP' +
      '.FATURAMENTO = '#39'S'#39') or (MOV.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_' +
      'LIQUIDO_NFSE > 0))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 312
  end
  object dspProduto_Det: TDataSetProvider
    DataSet = sdsProduto_Det
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 312
  end
  object cdsProduto_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Det'
    Left = 184
    Top = 312
    object cdsProduto_DetID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_DetREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_DetQTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_DetUNIDADE: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_DetVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,###,##0.00000#####'
    end
    object cdsProduto_DetVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProduto_DetFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsProduto_DetNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_DetDTEMISSAO: TDateField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsProduto_DetVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
    end
    object cdsProduto_DetSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsProduto_DetNOME_PRODUTO_SERV: TStringField
      DisplayLabel = 'Nome Produto / Servi'#231'o'
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsProduto_DetNUM_NOTA: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUM_NOTA'
    end
    object cdsProduto_DetNUM_RPS: TIntegerField
      DisplayLabel = 'N'#186' RPS'
      FieldName = 'NUM_RPS'
    end
    object cdsProduto_DetDTENTRADASAIDA: TDateField
      DisplayLabel = 'Dt. Entrada / Saida'
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsProduto_DetTIPO_MOV: TStringField
      DisplayLabel = 'Tipo Mov.'
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsProduto_DetTIPO_ES: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_DetTIPO_REG: TStringField
      DisplayLabel = 'Tipo Registro'
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsProduto_DetVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProduto_DetID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_DetNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
  end
  object dsProduto_Det: TDataSource
    DataSet = cdsProduto_Det
    Left = 224
    Top = 312
  end
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NT.FILIAL, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIE' +
      'NTE, CLI.NOME NOME_CLIENTE, NT.BASE_ICMS, NT.VLR_ICMS,'#13#10'       N' +
      'T.VLR_DUPLICATA, NT.VLR_NOTA, NT.VLR_ITENS, NT.VLR_IPI, NT.DTSAI' +
      'DAENTRADA, NT.VLR_ICMSSUBST,'#13#10'       VEN.NOME NOME_VENDEDOR,'#13#10'  ' +
      '     (select sum(I.VLR_TOTAL)'#13#10'        from NOTAFISCAL_ITENS I'#13#10 +
      '        inner join TAB_CFOP CFOP on I.ID_CFOP = CFOP.ID'#13#10'       ' +
      ' where I.ID = NT.ID and'#13#10'              CFOP.FATURAMENTO = '#39'S'#39') V' +
      'LR_FATURAMENTO'#13#10'from NOTAFISCAL NT'#13#10'inner join PESSOA CLI on (NT' +
      '.ID_CLIENTE = CLI.CODIGO)'#13#10'left join PESSOA VEN on (NT.ID_VENDED' +
      'OR = VEN.CODIGO)'#13#10'where NT.CANCELADA = '#39'N'#39' and'#13#10'      NT.NFEDENE' +
      'GADA = '#39'N'#39' and'#13#10'      (select sum(I.VLR_TOTAL)'#13#10'       from NOTA' +
      'FISCAL_ITENS I'#13#10'       inner join TAB_CFOP CFOP on I.ID_CFOP = C' +
      'FOP.ID'#13#10'       where I.ID = NT.ID and'#13#10'             CFOP.FATURAM' +
      'ENTO = '#39'S'#39') > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 258
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 258
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 184
    Top = 258
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsNotaFiscalVLR_FATURAMENTO: TFloatField
      FieldName = 'VLR_FATURAMENTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 224
    Top = 258
  end
  object sdsNotaFiscal_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select CLI.UF, sum(MOV.QTD) QTD, sum(MOV.VLR_TOTAL) VLR_TOTAL, s' +
      'um(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10'       sum(MOV.VLR_D' +
      'UPLICATA - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(MOV.VLR_ICMSSUB' +
      'ST) VLR_ICMSSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA CLI on ' +
      'MOV.ID_PESSOA = CLI.CODIGO'#13#10'inner join TAB_CFOP TCFOP on (MOV.ID' +
      '_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'      MOV.DENE' +
      'GADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and'#13#10'      ((MOV.TIPO_RE' +
      'G = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S'#39') or (MOV.TIPO_REG =' +
      ' '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0))'#13#10'group by CLI.UF'#13#10'o' +
      'rder by VLR_TOTAL desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 368
  end
  object dspNotaFiscal_UF: TDataSetProvider
    DataSet = sdsNotaFiscal_UF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 368
  end
  object cdsNotaFiscal_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_UF'
    OnCalcFields = cdsNotaFiscal_UFCalcFields
    Left = 184
    Top = 368
    object cdsNotaFiscal_UFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_UFQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsNotaFiscal_UFVLR_LIQUIDO_NFSE: TFloatField
      DisplayLabel = 'Vlr. Servi'#231'os'
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_UFVLR_VENDAS: TFloatField
      DisplayLabel = 'Vlr. Vendas'
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_UFVLR_ICMSSUBST: TFloatField
      DisplayLabel = 'Vlr. Subst. Trib.'
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_UFclPerc_SobreFat: TFloatField
      DisplayLabel = '% Sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object cdsNotaFiscal_UFVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_UF: TDataSource
    DataSet = cdsNotaFiscal_UF
    Left = 224
    Top = 368
  end
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.FILIAL, NT.DTEMISSAO, NT.NUMCUPOM, NT.ID_CLIENTE, CLI.' +
      'NOME NOME_CLIENTE,'#13#10'NT.VLR_TOTAL, VEN.NOME NOME_VENDEDOR'#13#10'FROM C' +
      'UPOMFISCAL NT'#13#10'LEFT JOIN PESSOA CLI ON (NT.ID_CLIENTE = CLI.CODI' +
      'GO)'#13#10'LEFT JOIN PESSOA VEN ON (NT.ID_VENDEDOR = VEN.CODIGO)'#13#10'WHER' +
      'E NT.CANCELADO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 426
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 426
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomFiscal'
    Left = 184
    Top = 426
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsCupomFiscalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCupomFiscalNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 224
    Top = 426
  end
  object sdsNotaFiscal_VendProd: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select v.tipo_mov, V.id_produto,'#13#10'V.referencia, V.nome_combinaca' +
      'o, V.id_cor,'#13#10'V.id_vendedor, V.nome_vendedor, V.NOME_ORIGINAL, V' +
      '.nome_produto_serv,'#13#10'SUM (v.vlr_duplicata) VLR_DUPLICATA, SUM(v.' +
      'QTD) QTD,'#13#10'SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10'SUM(V.VLR_' +
      'VENDAS) VLR_VENDAS,'#13#10'SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from vf' +
      'aturamento v'#13#10'GROUP BY'#13#10'v.tipo_mov, V.id_produto, V.referencia, ' +
      'V.nome_combinacao, V.id_cor,'#13#10'V.id_vendedor, V.nome_vendedor, V.' +
      'NOME_ORIGINAL, V.nome_produto_serv'#13#10'order BY VLR_DUPLICATA desc'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 24
  end
  object dspNotaFiscal_VendProd: TDataSetProvider
    DataSet = sdsNotaFiscal_VendProd
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 808
    Top = 24
  end
  object cdsNotaFiscal_VendProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_VendProd'
    OnCalcFields = cdsNotaFiscal_VendProdCalcFields
    Left = 872
    Top = 24
    object cdsNotaFiscal_VendProdTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsNotaFiscal_VendProdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_VendProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_VendProdNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsNotaFiscal_VendProdID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_VendProdID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscal_VendProdNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsNotaFiscal_VendProdNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsNotaFiscal_VendProdVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendProdQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_VendProdVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendProdVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendProdVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendProdclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object cdsNotaFiscal_VendProdNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
  end
  object dsNotaFiscal_VendProd: TDataSource
    DataSet = cdsNotaFiscal_VendProd
    Left = 944
    Top = 24
  end
  object sdsNotaFiscal_VendCli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select v.tipo_mov, V.id_pessoa, V.nome_cliforn,'#13#10'V.id_vendedor, ' +
      'V.nome_vendedor,'#13#10'SUM (v.vlr_duplicata) VLR_DUPLICATA, SUM(v.QTD' +
      ') QTD,'#13#10'SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10'SUM(V.VLR_VEN' +
      'DAS) VLR_VENDAS,'#13#10'SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from vfatu' +
      'ramento v'#13#10'GROUP BY'#13#10'v.tipo_mov, V.id_pessoa, V.nome_cliforn,'#13#10'V' +
      '.id_vendedor, V.nome_vendedor'#13#10'order BY VLR_DUPLICATA desc'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 80
  end
  object dspNotaFiscal_VendCli: TDataSetProvider
    DataSet = sdsNotaFiscal_VendCli
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 808
    Top = 80
  end
  object cdsNotaFiscal_VendCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_VendCli'
    OnCalcFields = cdsNotaFiscal_VendCliCalcFields
    Left = 872
    Top = 80
    object cdsNotaFiscal_VendCliTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsNotaFiscal_VendCliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_VendCliNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsNotaFiscal_VendCliID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscal_VendCliNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsNotaFiscal_VendCliVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendCliQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_VendCliVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendCliVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendCliVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendCliclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '0.000'
      Calculated = True
    end
  end
  object dsNotaFiscal_VendCli: TDataSource
    DataSet = cdsNotaFiscal_VendCli
    Left = 944
    Top = 80
  end
  object sdsNotaFiscal_Vend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select v.tipo_mov, V.id_vendedor, V.nome_vendedor,'#13#10'SUM (v.vlr_d' +
      'uplicata) VLR_DUPLICATA, SUM(v.QTD) QTD,'#13#10'SUM(V.VLR_LIQUIDO_NFSE' +
      ') VLR_LIQUIDO_NFSE,'#13#10'SUM(V.VLR_VENDAS) VLR_VENDAS,'#13#10'SUM(V.VLR_IC' +
      'MSSUBST) VLR_ICMSSUBST'#13#10'from vfaturamento v'#13#10'GROUP BY v.tipo_mov' +
      ', V.id_vendedor, V.nome_vendedor'#13#10'order BY VLR_DUPLICATA desc'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 144
  end
  object dspNotaFiscal_Vend: TDataSetProvider
    DataSet = sdsNotaFiscal_Vend
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 808
    Top = 144
  end
  object cdsNotaFiscal_Vend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Vend'
    OnCalcFields = cdsNotaFiscal_VendCalcFields
    Left = 872
    Top = 144
    object cdsNotaFiscal_VendTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsNotaFiscal_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscal_VendNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsNotaFiscal_VendVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_VendVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_VendclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '0.000'
      Calculated = True
    end
  end
  object dsNotaFiscal_Vend: TDataSource
    DataSet = cdsNotaFiscal_Vend
    Left = 944
    Top = 144
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxNotaFiscal_VendProd'
    CloseDataSource = True
    FieldAliases.Strings = (
      'TIPO_MOV=TIPO_MOV'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'ID_COR=ID_COR'
      'ID_VENDEDOR=ID_VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'NOME_ORIGINAL=NOME_ORIGINAL'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsNotaFiscal_VendProd
    BCDToCurrency = False
    Left = 776
    Top = 405
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42222.414492245400000000
    ReportOptions.LastChange = 43399.439827881940000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 776
    Top = 358
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
    Left = 816
    Top = 357
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
    Left = 856
    Top = 357
  end
  object frxRichObject1: TfrxRichObject
    Left = 888
    Top = 357
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxNotaFiscal_VendCli'
    CloseDataSource = True
    FieldAliases.Strings = (
      'TIPO_MOV=TIPO_MOV'
      'ID_PESSOA=ID_PESSOA'
      'NOME_CLIFORN=NOME_CLIFORN'
      'ID_VENDEDOR=ID_VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsNotaFiscal_VendCli
    BCDToCurrency = False
    Left = 816
    Top = 405
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxNotaFiscal_Vend'
    CloseDataSource = True
    FieldAliases.Strings = (
      'TIPO_MOV=TIPO_MOV'
      'ID_VENDEDOR=ID_VENDEDOR'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsNotaFiscal_Vend
    BCDToCurrency = False
    Left = 856
    Top = 405
  end
  object sdsNotaFiscal_Cli_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.ID_PESSOA, MOV.CANCELADO, CLI.NOME NOME_CLIENTE, CLI.' +
      'FANTASIA, CLI.UF, sum(MOV.VLR_TOTAL) VLR_TOTAL,'#13#10'       sum(MOV.' +
      'QTD) QTD, sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10'       su' +
      'm(MOV.VLR_TOTAL - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(MOV.VLR_' +
      'ICMSSUBST) VLR_ICMSSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA ' +
      'CLI on MOV.ID_PESSOA = CLI.CODIGO'#13#10'inner join TAB_CFOP TCFOP on ' +
      '(MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'      M' +
      'OV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and'#13#10'      ((MOV.' +
      'TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S'#39') or (MOV.TIP' +
      'O_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0))'#13#10'group by MO' +
      'V.ID_PESSOA, MOV.CANCELADO, CLI.NOME, CLI.FANTASIA, CLI.UF'#13#10'orde' +
      'r by VLR_TOTAL desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 24
  end
  object dspNotaFiscal_Cli_UF: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli_UF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 464
    Top = 24
  end
  object cdsNotaFiscal_Cli_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli_UF'
    OnCalcFields = cdsNotaFiscal_Cli_UFCalcFields
    Left = 528
    Top = 24
    object cdsNotaFiscal_Cli_UFID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_Cli_UFCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_Cli_UFNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_Cli_UFFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_Cli_UFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_Cli_UFQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_Cli_UFVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_UFVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_UFVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_UFclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      Calculated = True
    end
    object cdsNotaFiscal_Cli_UFVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_Cli_UF: TDataSource
    DataSet = cdsNotaFiscal_Cli_UF
    Left = 600
    Top = 24
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxNotaFiscal_Cli_UF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PESSOA=ID_PESSOA'
      'CANCELADO=CANCELADO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'FANTASIA=FANTASIA'
      'UF=UF'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat'
      'VLR_TOTAL=VLR_TOTAL')
    DataSource = dsNotaFiscal_Cli_UF
    BCDToCurrency = False
    Left = 896
    Top = 405
  end
  object sdsNotaFiscal_Cli_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.ID_PESSOA, MOV.CANCELADO, CLI.NOME NOME_CLIENTE, CLI.' +
      'FANTASIA, CLI.UF, CLI.CIDADE,'#13#10'       sum(MOV.VLR_TOTAL) VLR_TOT' +
      'AL, sum(MOV.QTD) QTD, sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE' +
      ','#13#10'       sum(MOV.VLR_TOTAL - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, ' +
      'sum(MOV.VLR_ICMSSUBST) VLR_ICMSSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner ' +
      'join PESSOA CLI on MOV.ID_PESSOA = CLI.CODIGO'#13#10'inner join TAB_CF' +
      'OP TCFOP on (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' ' +
      'and'#13#10'      MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and'#13#10 +
      '      ((MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S'#39')' +
      ' or (MOV.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0))'#13 +
      #10'group by MOV.ID_PESSOA, MOV.CANCELADO, CLI.NOME, CLI.FANTASIA, ' +
      'CLI.UF, CLI.CIDADE'#13#10'order by VLR_TOTAL desc'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 88
  end
  object dspNotaFiscal_Cli_Cid: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli_Cid
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 456
    Top = 88
  end
  object cdsNotaFiscal_Cli_Cid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli_Cid'
    OnCalcFields = cdsNotaFiscal_Cli_CidCalcFields
    Left = 520
    Top = 88
    object cdsNotaFiscal_Cli_CidID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_Cli_CidCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_Cli_CidNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_Cli_CidFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_Cli_CidUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_Cli_CidCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNotaFiscal_Cli_CidQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_Cli_CidVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_CidVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_CidVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_Cli_CidclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      Calculated = True
    end
    object cdsNotaFiscal_Cli_CidVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsNotaFiscal_Cli_Cid: TDataSource
    DataSet = cdsNotaFiscal_Cli_Cid
    Left = 592
    Top = 88
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxNotaFiscal_Cli_Cid'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PESSOA=ID_PESSOA'
      'CANCELADO=CANCELADO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'FANTASIA=FANTASIA'
      'UF=UF'
      'CIDADE=CIDADE'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat'
      'VLR_TOTAL=VLR_TOTAL')
    DataSource = dsNotaFiscal_Cli_Cid
    BCDToCurrency = False
    Left = 776
    Top = 453
  end
  object sdsProduto_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_PRODUTO_SERV, GR' +
      '.NOME NOME_GRUPO, GR.CODIGO COD_GRUPO,'#13#10'       GR.COD_PRINCIPAL ' +
      'COD_GRUPO_PRI, CLI.UF,'#13#10'       sum(MOV.VLR_TOTAL) VLR_TOTAL, MOV' +
      '.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES, sum(MOV.QTD) QTD,'#13#10'       ' +
      'sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, sum(MOV.VLR_TOTAL - ' +
      'MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(MOV.VLR_ICMSSUBST) VLR_ICM' +
      'SSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA CLI on MOV.ID_PESS' +
      'OA = CLI.CODIGO'#13#10'left join PRODUTO PROD on MOV.ID_PRODUTO = PROD' +
      '.ID'#13#10'left join GRUPO GR on PROD.ID_GRUPO = GR.ID'#13#10'left join TAB_' +
      'CFOP TCFOP on (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N' +
      #39' and'#13#10'      MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and' +
      #13#10'      ((MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S' +
      #39') or (MOV.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0)' +
      ')'#13#10'group by MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_PRODUTO_SER' +
      'V, MOV.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES, GR.NOME, GR.CODIGO, ' +
      'GR.COD_PRINCIPAL, CLI.UF'#13#10'order by VLR_TOTAL desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 208
  end
  object dspProduto_UF: TDataSetProvider
    DataSet = sdsProduto_UF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 504
    Top = 208
  end
  object cdsProduto_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_UF'
    OnCalcFields = cdsProduto_UFCalcFields
    Left = 568
    Top = 208
    object cdsProduto_UFID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_UFREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_UFNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsProduto_UFNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsProduto_UFCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsProduto_UFCOD_GRUPO_PRI: TIntegerField
      FieldName = 'COD_GRUPO_PRI'
    end
    object cdsProduto_UFTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsProduto_UFTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsProduto_UFTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_UFQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProduto_UFVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProduto_UFVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProduto_UFVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProduto_UFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsProduto_UFclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object cdsProduto_UFVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsProduto_UF: TDataSource
    DataSet = cdsProduto_UF
    Left = 640
    Top = 208
  end
  object frxProduto_UF: TfrxDBDataset
    UserName = 'frxProduto_UF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO_SERV=NOME_PRODUTO_SERV'
      'NOME_GRUPO=NOME_GRUPO'
      'COD_GRUPO=COD_GRUPO'
      'COD_GRUPO_PRI=COD_GRUPO_PRI'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'TIPO_MOV=TIPO_MOV'
      'TIPO_REG=TIPO_REG'
      'TIPO_ES=TIPO_ES'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'UF=UF'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsProduto_UF
    BCDToCurrency = False
    Left = 832
    Top = 453
  end
  object mGrupoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodGrupo'
    Params = <>
    Left = 864
    Top = 280
    Data = {
      BA0000009619E0BD010000001800000007000000000003000000BA0008436F64
      477275706F0100490000000100055749445448020002000A000A4E6F6D655F47
      7275706F01004900000001000557494454480200020028000D566C725F447570
      6C6963617461080004000000000010566C725F4C69717569646F5F4E46536508
      000400000000000A566C725F56656E64617308000400000000000D566C725F49
      434D53537562737408000400000000000351746408000400000000000000}
    object mGrupoAuxCodGrupo: TStringField
      FieldName = 'CodGrupo'
      Size = 10
    end
    object mGrupoAuxNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 40
    end
    object mGrupoAuxVlr_Duplicata: TFloatField
      FieldName = 'Vlr_Duplicata'
    end
    object mGrupoAuxVlr_Liquido_NFSe: TFloatField
      FieldName = 'Vlr_Liquido_NFSe'
    end
    object mGrupoAuxVlr_Vendas: TFloatField
      FieldName = 'Vlr_Vendas'
    end
    object mGrupoAuxVlr_ICMSSubst: TFloatField
      FieldName = 'Vlr_ICMSSubst'
    end
    object mGrupoAuxQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmGrupoAux: TDataSource
    DataSet = mGrupoAux
    Left = 904
    Top = 280
  end
  object frxGrupoAux: TfrxDBDataset
    UserName = 'frxGrupoAux'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodGrupo=CodGrupo'
      'Nome_Grupo=Nome_Grupo'
      'Vlr_Duplicata=Vlr_Duplicata'
      'Vlr_Liquido_NFSe=Vlr_Liquido_NFSe'
      'Vlr_Vendas=Vlr_Vendas'
      'Vlr_ICMSSubst=Vlr_ICMSSubst'
      'Qtd=Qtd')
    DataSource = dsmGrupoAux
    BCDToCurrency = False
    Left = 880
    Top = 453
  end
  object sdsGrupo_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select GR.NOME NOME_GRUPO, GR.CODIGO COD_GRUPO, GR.COD_PRINCIPAL' +
      ' COD_GRUPO_PRI, CLI.UF,'#13#10'       sum(MOV.VLR_TOTAL) VLR_TOTAL, MO' +
      'V.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES, sum(MOV.QTD) QTD,'#13#10'      ' +
      ' sum(MOV.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, sum(MOV.VLR_TOTAL -' +
      ' MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(MOV.VLR_ICMSSUBST) VLR_IC' +
      'MSSUBST'#13#10'from MOVIMENTO MOV'#13#10'inner join PESSOA CLI on MOV.ID_PES' +
      'SOA = CLI.CODIGO'#13#10'left join PRODUTO PROD on MOV.ID_PRODUTO = PRO' +
      'D.ID'#13#10'left join GRUPO GR on PROD.ID_GRUPO = GR.ID'#13#10'inner join TA' +
      'B_CFOP TCFOP on (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = ' +
      #39'N'#39' and'#13#10'      MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' a' +
      'nd'#13#10'      ((MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = ' +
      #39'S'#39') or (MOV.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > ' +
      '0))'#13#10'group by MOV.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES, GR.NOME, ' +
      'GR.CODIGO, GR.COD_PRINCIPAL, CLI.UF'#13#10'order by VLR_TOTAL desc'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 256
  end
  object dspGrupo_UF: TDataSetProvider
    DataSet = sdsGrupo_UF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 504
    Top = 256
  end
  object cdsGrupo_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo_UF'
    OnCalcFields = cdsGrupo_UFCalcFields
    Left = 568
    Top = 256
    object cdsGrupo_UFNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsGrupo_UFCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsGrupo_UFCOD_GRUPO_PRI: TIntegerField
      FieldName = 'COD_GRUPO_PRI'
    end
    object cdsGrupo_UFUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsGrupo_UFTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsGrupo_UFTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsGrupo_UFTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsGrupo_UFQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsGrupo_UFVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsGrupo_UFVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsGrupo_UFVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsGrupo_UFclPerc_SobreFat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      Calculated = True
    end
    object cdsGrupo_UFVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsGrupo_UF: TDataSource
    DataSet = cdsGrupo_UF
    Left = 640
    Top = 256
  end
  object frxGrupo_UF: TfrxDBDataset
    UserName = 'frxGrupo_UF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME_GRUPO=NOME_GRUPO'
      'COD_GRUPO=COD_GRUPO'
      'COD_GRUPO_PRI=COD_GRUPO_PRI'
      'UF=UF'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'TIPO_MOV=TIPO_MOV'
      'TIPO_REG=TIPO_REG'
      'TIPO_ES=TIPO_ES'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsGrupo_UF
    BCDToCurrency = False
    Left = 928
    Top = 453
  end
  object qDevolucoes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(VLR_NOTA) VLR_NOTA'
      'FROM NOTAFISCAL'
      'WHERE CANCELADA = '#39'N'#39
      ' AND NFEDENEGADA = '#39'N'#39
      ' AND NFEFINALIDADE = '#39'4'#39
      ' AND DTEMISSAO BETWEEN :D1 AND :D2'
      ' AND TIPO_NOTA = '#39'E'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 216
    object qDevolucoesVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 928
    Top = 358
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 960
    Top = 358
  end
  object sdsVendCliProd: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.TIPO_MOV, V.ID_PRODUTO, V.COD_GRUPO, V.REFERENCIA, V.NO' +
      'ME_COMBINACAO, V.ID_COR, V.NOME_CLIFORN, V.NOME_PRODUTO_SERV, V.' +
      'ID_VENDEDOR,V.NOME_VENDEDOR, V.NOME_ORIGINAL, V.UF_CLI, V.NUM_NO' +
      'TA, V.DTEMISSAO,'#13#10' SUM (V.VLR_DUPLICATA) VLR_DUPLICATA,'#13#10' SUM(V.' +
      'QTD) QTD,'#13#10' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE,'#13#10' SUM(V.VL' +
      'R_VENDAS) VLR_VENDAS ,'#13#10' SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST,'#13#10' S' +
      'UM(V.VLR_IPI) VLR_IPI'#13#10'FROM VFATURAMENTO V'#13#10'WHERE 0 = 0 AND'#13#10'  V' +
      '.DTEMISSAO >= :D1 AND'#13#10'  V.DTEMISSAO <= :D2 AND'#13#10'  (V.FILIAL = :' +
      'F1)'#13#10#13#10'GROUP BY V.TIPO_MOV, V.ID_PRODUTO, V.COD_GRUPO, V.REFEREN' +
      'CIA, V.NOME_COMBINACAO, V.ID_COR, V.NOME_CLIFORN,  V.NOME_PRODUT' +
      'O_SERV, V.ID_VENDEDOR, V.NOME_VENDEDOR, V.NOME_ORIGINAL, V.UF_CL' +
      'I, V.NUM_NOTA, V.DTEMISSAO'#13#10'ORDER BY VLR_DUPLICATA DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'F1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 482
  end
  object dspVendCliProd: TDataSetProvider
    DataSet = sdsVendCliProd
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 144
    Top = 482
  end
  object cdsVendCliProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendCliProd'
    Left = 184
    Top = 482
    object cdsVendCliProdTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsVendCliProdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsVendCliProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsVendCliProdNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsVendCliProdID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsVendCliProdNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsVendCliProdNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsVendCliProdID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsVendCliProdNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsVendCliProdNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsVendCliProdVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsVendCliProdQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsVendCliProdVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsVendCliProdVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '0.00'
    end
    object cdsVendCliProdVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsVendCliProdUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsVendCliProdCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsVendCliProdNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsVendCliProdDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsVendCliProdVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
  end
  object dsVendCliProd: TDataSource
    DataSet = cdsVendCliProd
    Left = 224
    Top = 482
  end
  object qParametros_NFe: TSQLQuery
    NoMetaData = False
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 272
    object qParametros_NFeMOSTRAR_VLR_FRETE_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_FRETE_CONS'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeMOSTRAR_VLR_DEVOL_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_DEVOL_CONS'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNotaFiscal_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli'
    OnCalcFields = cdsNotaFiscal_CliCalcFields
    Left = 184
    Top = 16
    object cdsNotaFiscal_CliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_CliCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_CliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_CliFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_CliVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliVLR_VENDAS: TFloatField
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_CliclPerc_SobreFat: TFloatField
      DisplayLabel = '% Sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
  end
  object sdsReciboNF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NT.FILIAL, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIE' +
      'NTE, CLI.NOME NOME_CLIENTE,'#13#10'       NT.VLR_NOTA, NT.VLR_ITENS, N' +
      'T.DTSAIDAENTRADA,'#13#10'       VEN.NOME NOME_VENDEDOR, NT.VLR_NOTA VL' +
      'R_FATURAMENTO'#13#10'from NOTAFISCAL NT'#13#10'inner join PESSOA CLI on (NT.' +
      'ID_CLIENTE = CLI.CODIGO)'#13#10'left join PESSOA VEN on (NT.ID_VENDEDO' +
      'R = VEN.CODIGO)'#13#10'where NT.CANCELADA = '#39'N'#39' and'#13#10'      NT.NFEDENEG' +
      'ADA = '#39'N'#39' and'#13#10'      NT.TIPO_REG = '#39'RNF'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 330
  end
  object dspReciboNF: TDataSetProvider
    DataSet = sdsReciboNF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 424
    Top = 330
  end
  object cdsReciboNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReciboNF'
    Left = 464
    Top = 330
    object cdsReciboNFFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsReciboNFDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsReciboNFNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsReciboNFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsReciboNFID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsReciboNFNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsReciboNFVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsReciboNFVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsReciboNFDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsReciboNFNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsReciboNFVLR_FATURAMENTO: TFloatField
      FieldName = 'VLR_FATURAMENTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsReciboNF: TDataSource
    DataSet = cdsReciboNF
    Left = 504
    Top = 330
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_FORNECEDOR ' +
      '= '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 408
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 400
    Top = 408
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 440
    Top = 408
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 480
    Top = 408
  end
  object sdsNotaFiscal_Cli_Cid_Det: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select MOV.ID_PESSOA, MOV.CANCELADO, CLI.NOME NOME_CLIENTE, CLI.' +
      'FANTASIA, CLI.UF, CLI.CIDADE, MOV.DTEMISSAO,'#13#10'       sum(MOV.VLR' +
      '_TOTAL) VLR_TOTAL, sum(MOV.QTD) QTD, sum(MOV.VLR_LIQUIDO_NFSE) V' +
      'LR_LIQUIDO_NFSE,'#13#10'       sum(MOV.VLR_ICMS) VALOR_ICMS, sum(MOV.V' +
      'LR_TOTAL - MOV.VLR_LIQUIDO_NFSE) VLR_VENDAS,'#13#10'       sum(MOV.VLR' +
      '_ICMSSUBST) VLR_ICMSSUBST, sum(MOV.BASE_ICMS) BASE_ICMS, sum(MOV' +
      '.BASE_ICMSSUBST) BASE_ICMSST'#13#10'from MOVIMENTO MOV'#13#10'inner join PES' +
      'SOA CLI on MOV.ID_PESSOA = CLI.CODIGO'#13#10'inner join TAB_CFOP TCFOP' +
      ' on (MOV.ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'   ' +
      '   MOV.DENEGADA = '#39'N'#39' and'#13#10'      MOV.TIPO_ES = '#39'S'#39' and'#13#10'      ((' +
      'MOV.TIPO_REG = '#39'NTS'#39' and'#13#10'      TCFOP.FATURAMENTO = '#39'S'#39') or (MOV' +
      '.TIPO_REG = '#39'NSE'#39' and'#13#10'      MOV.VLR_LIQUIDO_NFSE > 0))'#13#10'group b' +
      'y MOV.ID_PESSOA, MOV.CANCELADO, CLI.NOME, CLI.FANTASIA, CLI.UF, ' +
      'CLI.CIDADE, MOV.DTEMISSAO'#13#10'order by VLR_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 152
  end
  object dspNotaFiscal_Cli_Cid_Det: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli_Cid_Det
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 456
    Top = 152
  end
  object cdsNotaFiscal_Cli_Cid_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli_Cid_Det'
    OnCalcFields = cdsNotaFiscal_Cli_Cid_DetCalcFields
    Left = 520
    Top = 152
    object cdsNotaFiscal_Cli_Cid_DetID_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PESSOA'
    end
    object cdsNotaFiscal_Cli_Cid_DetCANCELADO: TStringField
      DisplayLabel = 'Cancelado'
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_Cli_Cid_DetNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_Cli_Cid_DetFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_Cli_Cid_DetUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_Cli_Cid_DetCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNotaFiscal_Cli_Cid_DetDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_Cli_Cid_DetVLR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetQTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTD'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetVLR_LIQUIDO_NFSE: TFloatField
      DisplayLabel = 'Valor Nota Servi'#231'o'
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetVALOR_ICMS: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetVLR_VENDAS: TFloatField
      DisplayLabel = 'Valor Vendas'
      FieldName = 'VLR_VENDAS'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetVLR_ICMSSUBST: TFloatField
      DisplayLabel = 'Valor ICMS ST'
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetBASE_ICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BASE_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetBASE_ICMSST: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASE_ICMSST'
      DisplayFormat = '##0.00'
    end
    object cdsNotaFiscal_Cli_Cid_DetclPerc_SobreFat: TFloatField
      DisplayLabel = '% sobre Faturamento'
      FieldKind = fkCalculated
      FieldName = 'clPerc_SobreFat'
      DisplayFormat = '##0.00'
      Calculated = True
    end
  end
  object dsNotaFiscal_Cli_Cid_Det: TDataSource
    DataSet = cdsNotaFiscal_Cli_Cid_Det
    Left = 592
    Top = 152
  end
  object frxNotaFiscal_Cli_Cid_Det: TfrxDBDataset
    UserName = 'frxNotaFiscal_Cli_Cid_Det'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PESSOA=ID_PESSOA'
      'CANCELADO=CANCELADO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'FANTASIA=FANTASIA'
      'UF=UF'
      'CIDADE=CIDADE'
      'DTEMISSAO=DTEMISSAO'
      'VLR_TOTAL=VLR_TOTAL'
      'QTD=QTD'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VALOR_ICMS=VALOR_ICMS'
      'VLR_VENDAS=VLR_VENDAS'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'BASE_ICMS=BASE_ICMS'
      'BASE_ICMSST=BASE_ICMSST'
      'clPerc_SobreFat=clPerc_SobreFat')
    DataSource = dsNotaFiscal_Cli_Cid_Det
    BCDToCurrency = False
    Left = 968
    Top = 408
  end
end
