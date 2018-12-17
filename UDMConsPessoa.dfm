object DMConsPessoa: TDMConsPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 275
  Top = 15
  Height = 618
  Width = 849
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 120
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
    object qParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
  end
  object qFaturamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(VLR_DUPLICATA) VLR_DUPLICATA'
      'FROM NOTAFISCAL'
      'WHERE CANCELADA = '#39'N'#39
      '    AND NFEDENEGADA = '#39'N'#39
      '   AND VLR_DUPLICATA > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 192
    object qFaturamentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
  end
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.id_cliente, NT.serie, NT.numnota, NT.vlr_duplicata, NT' +
      '.vlr_nota, NT.dtemissao, NT.tipo_nota, NT.tipo_reg, NT.filial, N' +
      'T.ID'#13#10'FROM NOTAFISCAL NT'#13#10'WHERE NT.CANCELADA = '#39'N'#39' AND NT.nfeden' +
      'egada = '#39'N'#39#13#10'   AND NT.TIPO_NOTA = '#39'S'#39' AND NT.VLR_DUPLICATA > 0'#13 +
      #10'  AND NT.TIPO_REG = '#39'NTS'#39#13#10#13#10'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 114
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Left = 152
    Top = 114
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 216
    Top = 114
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalSERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      DisplayLabel = 'Vlr. Duplicata'
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_NOTA: TFloatField
      DisplayLabel = 'Vlr. Nota'
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 288
    Top = 114
  end
  object sdsNotaFiscal_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.id_cliente, NT.cancelada, CLI.NOME NOME_CLIENTE, CLI.F' +
      'ANTASIA,'#13#10'  SUM (IT.vlr_duplicata) VLR_DUPLICATA'#13#10'FROM NOTAFISCA' +
      'L NT'#13#10'INNER JOIN NOTAFISCAL_ITENS IT'#13#10'ON NT.ID = IT.ID'#13#10'INNER JO' +
      'IN PESSOA CLI'#13#10'ON NT.ID_CLIENTE = CLI.CODIGO'#13#10'WHERE NT.CANCELADA' +
      ' = '#39'N'#39' AND NT.nfedenegada = '#39'N'#39#13#10'   AND NT.TIPO_NOTA = '#39'S'#39' AND I' +
      'T.VLR_DUPLICATA > 0'#13#10'  AND NT.TIPO_REG = '#39'NTS'#39#13#10'  AND IT.ID_PROD' +
      'UTO = 443'#13#10'GROUP BY NT.id_cliente, NT.cancelada, CLI.NOME, CLI.F' +
      'ANTASIA'#13#10'order BY VLR_DUPLICATA desc'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 24
  end
  object dspNotaFiscal_Cli: TDataSetProvider
    DataSet = sdsNotaFiscal_Cli
    Left = 176
    Top = 24
  end
  object cdsNotaFiscal_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Cli'
    Left = 240
    Top = 24
    object cdsNotaFiscal_CliID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscal_CliCANCELADA: TStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_CliNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_CliFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_CliVLR_DUPLICATA: TFloatField
      DisplayLabel = 'Vlr. Faturamento'
      FieldName = 'VLR_DUPLICATA'
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
  object dsNotaFiscal_Cli: TDataSource
    DataSet = cdsNotaFiscal_Cli
    Left = 312
    Top = 24
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DUP.filial, DUP.numnota, dup.serie, dup.tipo_lancamento, ' +
      'dup.dtemissao, dup.dtvencimento, dup.dtultpagamento,'#13#10'dup.vlr_pa' +
      'rcela, dup.vlr_restante, dup.vlr_pago, dup.id_pessoa, '#13#10'DUP.numd' +
      'uplicata'#13#10'FROM DUPLICATA DUP'#13#10'WHERE DUP.tipo_es = '#39'E'#39#13#10#13#10'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 186
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 152
    Top = 186
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata'
    OnCalcFields = cdsDuplicataCalcFields
    Left = 216
    Top = 186
    object cdsDuplicataFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Lan'#231'amento'
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Pagamento'
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      DisplayLabel = 'Vlr. Parcela'
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      DisplayLabel = 'Vlr. Restante'
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Pessoa'
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataclDiasAtraso: TIntegerField
      DisplayLabel = 'Dias Atraso'
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 288
    Top = 186
  end
  object sdsProduto_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.filial, M.id, M.id_pessoa, M.id_produto, M.vlr_unitario' +
      ', M.vlr_total,'#13#10'M.vlr_desconto, M.vlr_ipi, M.vlr_icms, M.vlr_fre' +
      'te, M.vlr_icmssubst,'#13#10'PES.nome NOME_CLIENTE, PES.cnpj_cpf, PES.c' +
      'idade, M.nome_produto_serv,'#13#10'M.referencia, M.num_nota, M.serie, ' +
      'M.tipo_reg, M.dtemissao, m.qtd'#13#10'FROM MOVIMENTO M'#13#10'INNER JOIN PES' +
      'SOA PES'#13#10'ON M.id_pessoa = PES.codigo'#13#10'WHERE M.cancelado = '#39'N'#39#13#10' ' +
      '     AND M.DENEGADA = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 250
  end
  object dspProduto_Mov: TDataSetProvider
    DataSet = sdsProduto_Mov
    Left = 152
    Top = 250
  end
  object cdsProduto_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Mov'
    OnCalcFields = cdsDuplicataCalcFields
    Left = 216
    Top = 250
    object cdsProduto_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProduto_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsProduto_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000#'
    end
    object cdsProduto_MovVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsProduto_MovVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MovVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MovVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MovNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_MovCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsProduto_MovCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsProduto_MovNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsProduto_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_MovNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsProduto_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsProduto_MovTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsProduto_MovDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsProduto_MovQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsProduto_Mov: TDataSource
    DataSet = cdsProduto_Mov
    Left = 288
    Top = 250
  end
  object sdsServico_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.filial, M.id, M.id_pessoa, M.id_servico, m.id_servico_i' +
      'nt,'#13#10'M.vlr_unitario, M.vlr_total, PES.nome NOME_CLIENTE, PES.cnp' +
      'j_cpf, PES.cidade,'#13#10'M.nome_produto_serv, M.referencia, M.num_not' +
      'a, M.serie, M.tipo_reg,'#13#10'M.dtemissao, m.qtd'#13#10'FROM MOVIMENTO M'#13#10'I' +
      'NNER JOIN PESSOA PES'#13#10'ON M.id_pessoa = PES.codigo'#13#10'WHERE M.cance' +
      'lado = '#39'N'#39#13#10'   and m.denegada = '#39'N'#39#13#10'   and ((m.tipo_reg = '#39'NSE'#39 +
      ') or (m.tipo_reg = '#39'REC'#39'))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 314
  end
  object dspServico_Mov: TDataSetProvider
    DataSet = sdsServico_Mov
    Left = 152
    Top = 314
  end
  object cdsServico_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico_Mov'
    OnCalcFields = cdsDuplicataCalcFields
    Left = 216
    Top = 314
    object cdsServico_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsServico_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsServico_MovID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsServico_MovID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsServico_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsServico_MovVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsServico_MovNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsServico_MovCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsServico_MovCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsServico_MovNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsServico_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsServico_MovNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsServico_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsServico_MovTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsServico_MovDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsServico_MovQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsServico_Mov: TDataSource
    DataSet = cdsServico_Mov
    Left = 288
    Top = 314
  end
  object sdsNotaServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NS.id_cliente, NS.serie, NS.numnota, NS.numrps, NS.vlr_du' +
      'plicata,'#13#10'NS.vlr_servicos, NS.dtemissao_cad, NS.filial, NS.iss_r' +
      'etido, ns.vlr_iss,'#13#10'ns.vlr_iss_retido, ns.vlr_total, NS.ID'#13#10'FROM' +
      ' notaservico NS'#13#10'WHERE NS.status_rps = '#39'1'#39#13#10#13#10'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 386
  end
  object dspNotaServico: TDataSetProvider
    DataSet = sdsNotaServico
    Left = 152
    Top = 386
  end
  object cdsNotaServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico'
    Left = 216
    Top = 386
    object cdsNotaServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaServicoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsNotaServicoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaServicoNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsNotaServicoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaServicoISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServicoDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
  end
  object dsNotaServico: TDataSource
    DataSet = cdsNotaServico
    Left = 288
    Top = 386
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.ID, IT.ITEM, IT.id_produto, IT.referencia, IT.nome_pro' +
      'duto, IT.qtd, IT.vlr_unitario, IT.vlr_total'#13#10'FROM NOTAFISCAL_ITE' +
      'NS IT'#13#10'WHERE ID = :ID'#13#10'  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 298
  end
  object dspNotaFiscal_Itens: TDataSetProvider
    DataSet = sdsNotaFiscal_Itens
    Left = 552
    Top = 298
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_Itens'
    Left = 616
    Top = 298
    object cdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 688
    Top = 298
  end
  object sdsNotaServico_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.ID, IT.item, IT.id_servico_int, IT.nome_servico_int, I' +
      'T.qtd,'#13#10'IT.vlr_unitario, IT.vlr_total'#13#10'FROM NOTASERVICO_ITENS IT' +
      #13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 378
  end
  object dspNotaServico_Itens: TDataSetProvider
    DataSet = sdsNotaServico_Itens
    Left = 560
    Top = 378
  end
  object cdsNotaServico_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Itens'
    Left = 624
    Top = 378
    object cdsNotaServico_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaServico_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsNotaServico_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsNotaServico_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaServico_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsNotaServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object dsNotaServico_Itens: TDataSource
    DataSet = cdsNotaServico_Itens
    Left = 696
    Top = 378
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.codigo, P.nome, P.vlr_limite_credito'
      'FROM PESSOA P'
      'WHERE P.CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 464
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
  end
end
