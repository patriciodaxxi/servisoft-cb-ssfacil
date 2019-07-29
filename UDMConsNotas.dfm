object DMConsNotas: TDMConsNotas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 266
  Top = 58
  Height = 475
  Width = 809
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 24
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 320
    Top = 24
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 360
    Top = 24
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
    Left = 392
    Top = 24
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, REFERENCIA, NOME, TIPO_REG'#13#10'FROM PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 80
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 320
    Top = 80
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 360
    Top = 80
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
    Left = 400
    Top = 80
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
    Left = 288
    Top = 128
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 320
    Top = 128
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 360
    Top = 128
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
    Left = 400
    Top = 128
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 32
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
    Left = 536
    Top = 32
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
    Left = 64
    Top = 88
  end
  object dspNotaFiscal_Prod: TDataSetProvider
    DataSet = sdsNotaFiscal_Prod
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 112
    Top = 88
  end
  object cdsNotaFiscal_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Prod'
    Left = 152
    Top = 88
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
    Left = 192
    Top = 88
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
    Left = 64
    Top = 144
  end
  object dspNotaFiscal_DT: TDataSetProvider
    DataSet = sdsNotaFiscal_DT
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 112
    Top = 144
  end
  object cdsNotaFiscal_DT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_DT'
    OnCalcFields = cdsNotaFiscal_DTCalcFields
    Left = 152
    Top = 144
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
    Left = 192
    Top = 144
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
    Left = 64
    Top = 202
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 112
    Top = 202
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 152
    Top = 202
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
    Left = 192
    Top = 202
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
    ReportOptions.CreateDate = 43500.689950381900000000
    ReportOptions.LastChange = 43672.668734560180000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 480
    Top = 240
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
    Top = 237
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
    Top = 237
  end
  object frxRichObject1: TfrxRichObject
    Left = 592
    Top = 237
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
    Left = 568
    Top = 32
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
    Left = 632
    Top = 238
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 664
    Top = 238
  end
  object qParametros_NFe: TSQLQuery
    NoMetaData = False
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 600
    Top = 32
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
    Left = 64
    Top = 258
  end
  object dspReciboNF: TDataSetProvider
    DataSet = sdsReciboNF
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 112
    Top = 258
  end
  object cdsReciboNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReciboNF'
    Left = 152
    Top = 258
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
    Left = 192
    Top = 258
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
    Left = 72
    Top = 320
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 104
    Top = 320
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 144
    Top = 320
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
    Left = 184
    Top = 320
  end
  object sdsProduto_Det: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select (V.VLR_TOTAL - coalesce( V.vlr_icmssubst,0) - coalesce(V.' +
      'vlr_ipi,0) - coalesce(V.vlr_frete,0) ) VLR_TOTAL,'#13#10'  V.ID_PRODUT' +
      'O, V.REFERENCIA, V.NOME_PRODUTO_SERV, V.QTD, V.UNIDADE, V.VLR_UN' +
      'ITARIO,'#13#10'   V.VLR_TOTAL VLR_TOTAL_GERAL, V.NUM_NOTA, V.NUM_RPS, ' +
      'V.FILIAL, V.NOME_CLIENTE, V.DTEMISSAO, V.DTENTRADASAIDA,'#13#10'   V.V' +
      'LR_DESCONTO, V.SERIE, V.TIPO_MOV, V.TIPO_ES, V.TIPO_REG, V.VLR_I' +
      'CMSSUBST, V.ID_COR,'#13#10'   COMB.NOME NOME_COR, v.beneficiamento, v.' +
      'faturamento, v.maoobra, V.codcfop, v.vlr_frete, V.vlr_icms, V.vl' +
      'r_ipi,'#13#10'   lpad(V.num_nota,9,0 ) || lpad(V.serie,3,0) || lpad(V.' +
      'id_pessoa,6,0) Agrupa_Nota , V.id_pessoa ID_CLIENTE,'#13#10'case'#13#10'  wh' +
      'en v.tipo_reg = '#39'NTE'#39' then v.dtentradasaida'#13#10'  else v.dtemissao'#13 +
      #10'  end DATA, V.NOME_PAGTO, V.ID_NOTA'#13#10'from vconsnotas V'#13#10'left jo' +
      'in COMBINACAO COMB on (V.ID_COR = COMB.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 24
  end
  object dspProduto_Det: TDataSetProvider
    DataSet = sdsProduto_Det
    OnUpdateError = dspNotaFiscal_CliUpdateError
    Left = 120
    Top = 24
  end
  object cdsProduto_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Det'
    Left = 160
    Top = 24
    object cdsProduto_DetVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_DetREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_DetNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsProduto_DetQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProduto_DetUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_DetVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetVLR_TOTAL_GERAL: TFloatField
      FieldName = 'VLR_TOTAL_GERAL'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsProduto_DetNUM_RPS: TIntegerField
      FieldName = 'NUM_RPS'
    end
    object cdsProduto_DetFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProduto_DetNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_DetDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsProduto_DetDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsProduto_DetVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsProduto_DetTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsProduto_DetTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_DetTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsProduto_DetVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_DetNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsProduto_DetBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_DetFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_DetMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_DetCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsProduto_DetVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_DetDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsProduto_DetVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsProduto_DetAGRUPA_NOTA: TStringField
      FieldName = 'AGRUPA_NOTA'
      Size = 18
    end
    object cdsProduto_DetID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProduto_DetNOME_PAGTO: TStringField
      FieldName = 'NOME_PAGTO'
      Size = 40
    end
    object cdsProduto_DetID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
  end
  object dsProduto_Det: TDataSource
    DataSet = cdsProduto_Det
    Left = 200
    Top = 24
  end
  object frxProduto_Det: TfrxDBDataset
    UserName = 'frxProduto_Det_Geral'
    OnFirst = frxProduto_DetFirst
    OnNext = frxProduto_DetNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_TOTAL=VLR_TOTAL'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO_SERV=NOME_PRODUTO_SERV'
      'QTD=QTD'
      'UNIDADE=UNIDADE'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL_GERAL=VLR_TOTAL_GERAL'
      'NUM_NOTA=NUM_NOTA'
      'NUM_RPS=NUM_RPS'
      'FILIAL=FILIAL'
      'NOME_CLIENTE=NOME_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'DTENTRADASAIDA=DTENTRADASAIDA'
      'VLR_DESCONTO=VLR_DESCONTO'
      'SERIE=SERIE'
      'TIPO_MOV=TIPO_MOV'
      'TIPO_ES=TIPO_ES'
      'TIPO_REG=TIPO_REG'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'ID_COR=ID_COR'
      'NOME_COR=NOME_COR'
      'BENEFICIAMENTO=BENEFICIAMENTO'
      'FATURAMENTO=FATURAMENTO'
      'MAOOBRA=MAOOBRA'
      'CODCFOP=CODCFOP'
      'VLR_FRETE=VLR_FRETE'
      'VLR_ICMS=VLR_ICMS'
      'DATA=DATA'
      'VLR_IPI=VLR_IPI'
      'AGRUPA_NOTA=AGRUPA_NOTA'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME_PAGTO=NOME_PAGTO')
    OnClose = frxProduto_DetClose
    DataSource = dsProduto_Det
    BCDToCurrency = False
    Left = 480
    Top = 285
  end
  object qDuplicatas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select D.NUMDUPLICATA, D.PARCELA, D.DTVENCIMENTO, D.VLR_PARCELA'
      'from DUPLICATA D'
      'where D.ID_NOTA = :ID_NOTA')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 88
    object qDuplicatasPARCELA: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
    end
    object qDuplicatasDTVENCIMENTO: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DTVENCIMENTO'
    end
    object qDuplicatasVLR_PARCELA: TFloatField
      DisplayLabel = 'Valor Parcela'
      FieldName = 'VLR_PARCELA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object qDuplicatasNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
  end
  object frxDuplicatas: TfrxDBDataset
    UserName = 'frxDuplicatas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PARCELA=PARCELA'
      'DTVENCIMENTO=DTVENCIMENTO'
      'VLR_PARCELA=VLR_PARCELA'
      'NUMDUPLICATA=NUMDUPLICATA')
    DataSet = qDuplicatas
    BCDToCurrency = False
    Left = 520
    Top = 285
  end
end
