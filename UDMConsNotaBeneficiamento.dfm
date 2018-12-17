object DMConsNotaBeneficiamento: TDMConsNotaBeneficiamento
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 267
  Top = 47
  Height = 627
  Width = 1117
  object sdsNotaEntrada: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NF.DTEMISSAO, NF.ID ID_NTE, NF.SERIE, NF.NUMNOTA, NF.ID_C' +
      'LIENTE, CLI.NOME NOMECLIENTE,'#13#10'CLI.CNPJ_CPF, NI.ITEM ITEM_NTE, N' +
      'I.ID_PRODUTO, NI.NOME_PRODUTO NOMEPRODUTO, PRO.REFERENCIA,'#13#10'NI.Q' +
      'TD, NI.QTDRESTANTE, NI.QTDDEVOLVIDA, FIL.NOME NOMEFILIAL, CFOP.C' +
      'ODCFOP, '#13#10'CFOP.BENEFICIAMENTO, NI.VLR_UNITARIO, NI.UNIDADE, NF.F' +
      'ILIAL, TRI.NOME NOME_CLIENTETRIANG'#13#10'FROM NOTAFISCAL NF'#13#10'INNER JO' +
      'IN NOTAFISCAL_ITENS NI'#13#10'ON NF.ID = NI.ID'#13#10'INNER JOIN PESSOA CLI'#13 +
      #10'ON NF.ID_CLIENTE = CLI.CODIGO'#13#10'INNER JOIN FILIAL FIL'#13#10'ON NF.FIL' +
      'IAL = FIL.ID'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON NI.ID_PRODUTO = PRO.ID'#13 +
      #10'INNER JOIN TAB_CFOP CFOP'#13#10'ON NI.ID_CFOP = CFOP.ID'#13#10'LEFT JOIN PE' +
      'SSOA TRI'#13#10'ON NF.ID_CLIENTETRIANG = TRI.CODIGO'#13#10'WHERE NF.TIPO_REG' +
      ' = '#39'NTE'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 40
    object sdsNotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaEntradaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
      Required = True
    end
    object sdsNotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaEntradaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaEntradaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsNotaEntradaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsNotaEntradaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
      Required = True
    end
    object sdsNotaEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaEntradaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsNotaEntradaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsNotaEntradaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaEntradaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsNotaEntradaQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsNotaEntradaNOMEFILIAL: TStringField
      FieldName = 'NOMEFILIAL'
      Size = 60
    end
    object sdsNotaEntradaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsNotaEntradaBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaEntradaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsNotaEntradaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaEntradaNOME_CLIENTETRIANG: TStringField
      FieldName = 'NOME_CLIENTETRIANG'
      Size = 60
    end
  end
  object dspNotaEntrada: TDataSetProvider
    DataSet = sdsNotaEntrada
    Left = 200
    Top = 40
  end
  object cdsNotaEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaEntrada'
    Left = 264
    Top = 40
    object cdsNotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaEntradaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
      Required = True
    end
    object cdsNotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaEntradaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaEntradaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsNotaEntradaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsNotaEntradaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
      Required = True
    end
    object cdsNotaEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaEntradaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsNotaEntradaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaEntradaQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.000##'
    end
    object cdsNotaEntradaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '###,##0.000##'
    end
    object cdsNotaEntradaQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
      DisplayFormat = '###,##0.000##'
    end
    object cdsNotaEntradaNOMEFILIAL: TStringField
      FieldName = 'NOMEFILIAL'
      Size = 60
    end
    object cdsNotaEntradaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotaEntradaBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaEntradaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.000##'
    end
    object cdsNotaEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaEntradaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaEntradaNOME_CLIENTETRIANG: TStringField
      FieldName = 'NOME_CLIENTETRIANG'
      Size = 60
    end
  end
  object dsNotaEntrada: TDataSource
    DataSet = cdsNotaEntrada
    Left = 336
    Top = 40
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 40
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 552
    Top = 40
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 592
    Top = 40
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
    Left = 632
    Top = 40
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, REFERENCIA'#13#10'FROM PRODUTO'#13#10'WHERE TIPO_REG = '#39'M'#39#13 +
      #10'   AND INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 88
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 552
    Top = 88
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 592
    Top = 88
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 632
    Top = 88
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 144
    object sdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 552
    Top = 144
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 592
    Top = 144
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 632
    Top = 144
  end
  object sdsNotaDevolvida: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ND.*, NF.NUMNOTA, NF.SERIE, NF.DTEMISSAO, NF.TIPO_NOTA TI' +
      'PO_NOTA_NF '#13#10'FROM NOTAFISCAL_NDEVOLVIDA ND'#13#10'INNER JOIN NOTAFISCA' +
      'L NF'#13#10'ON ND.ID = NF.ID'#13#10'WHERE ND.ID_NTE = :ID_NTE'#13#10'      AND ND.' +
      'ITEM_NTE = :ITEM_NTE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NTE'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM_NTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 112
    object sdsNotaDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      Required = True
    end
    object sdsNotaDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object sdsNotaDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object sdsNotaDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object sdsNotaDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object sdsNotaDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNotaDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object sdsNotaDevolvidaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaDevolvidaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaDevolvidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object sdsNotaDevolvidaTIPO_NOTA_NF: TStringField
      FieldName = 'TIPO_NOTA_NF'
      FixedChar = True
      Size = 1
    end
  end
  object dspNotaDevolvida: TDataSetProvider
    DataSet = sdsNotaDevolvida
    Left = 200
    Top = 112
  end
  object cdsNotaDevolvida: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaDevolvida'
    Left = 264
    Top = 112
    object cdsNotaDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      Required = True
    end
    object cdsNotaDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object cdsNotaDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object cdsNotaDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object cdsNotaDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object cdsNotaDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNotaDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object cdsNotaDevolvidaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaDevolvidaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaDevolvidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cdsNotaDevolvidaTIPO_NOTA_NF: TStringField
      FieldName = 'TIPO_NOTA_NF'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaDevolvida: TDataSource
    DataSet = cdsNotaDevolvida
    Left = 336
    Top = 112
  end
  object sdsAtualiza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_ITENS'#13#10'WHERE ID = :ID'#13#10'    AND ITEM = ' +
      ':ITEM'#13#10#13#10
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
    Left = 136
    Top = 184
    object sdsAtualizaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAtualizaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsAtualizaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsAtualizaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsAtualizaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsAtualizaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsAtualizaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsAtualizaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsAtualizaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsAtualizaID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsAtualizaID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsAtualizaID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsAtualizaID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsAtualizaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsAtualizaPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsAtualizaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsAtualizaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsAtualizaPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsAtualizaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsAtualizaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsAtualizaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsAtualizaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsAtualizaPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsAtualizaPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsAtualizaVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsAtualizaVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsAtualizaTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsAtualizaVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsAtualizaCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 65
    end
    object sdsAtualizaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAtualizaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsAtualizaGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object sdsAtualizaNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsAtualizaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsAtualizaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsAtualizaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsAtualizaQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsAtualizaSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsAtualizaSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsAtualizaVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsAtualizaVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsAtualizaVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object sdsAtualizaVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object sdsAtualizaBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsAtualizaVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsAtualizaVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsAtualizaVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsAtualizaVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsAtualizaID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsAtualizaQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object sdsAtualizaQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsAtualizaITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsAtualizaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsAtualizaPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsAtualizaCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object sdsAtualizaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsAtualizaIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsAtualizaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsAtualizaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsAtualizaQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object sdsAtualizaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsAtualizaPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsAtualizaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsAtualizaPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object sdsAtualizaPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object sdsAtualizaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsAtualizaVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsAtualizaCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object sdsAtualizaCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object sdsAtualizaPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsAtualizaPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object sdsAtualizaNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsAtualizaPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
  end
  object dspAtualiza: TDataSetProvider
    DataSet = sdsAtualiza
    Left = 208
    Top = 184
  end
  object cdsAtualiza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtualiza'
    Left = 272
    Top = 184
    object cdsAtualizaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtualizaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAtualizaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsAtualizaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsAtualizaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsAtualizaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsAtualizaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsAtualizaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsAtualizaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsAtualizaID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsAtualizaID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsAtualizaID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsAtualizaID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsAtualizaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsAtualizaPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsAtualizaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsAtualizaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsAtualizaPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsAtualizaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsAtualizaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsAtualizaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsAtualizaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsAtualizaPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsAtualizaPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsAtualizaVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsAtualizaVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsAtualizaTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsAtualizaVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsAtualizaCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 65
    end
    object cdsAtualizaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAtualizaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsAtualizaGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsAtualizaNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsAtualizaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsAtualizaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsAtualizaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object cdsAtualizaQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object cdsAtualizaSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsAtualizaSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsAtualizaVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object cdsAtualizaVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsAtualizaVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object cdsAtualizaVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object cdsAtualizaBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsAtualizaVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsAtualizaVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsAtualizaVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsAtualizaVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsAtualizaID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsAtualizaQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object cdsAtualizaQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsAtualizaITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsAtualizaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsAtualizaPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsAtualizaCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object cdsAtualizaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsAtualizaIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsAtualizaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsAtualizaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsAtualizaQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object cdsAtualizaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsAtualizaPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsAtualizaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsAtualizaPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object cdsAtualizaPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object cdsAtualizaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsAtualizaVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsAtualizaCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object cdsAtualizaCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object cdsAtualizaPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsAtualizaPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsAtualizaNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsAtualizaPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
  end
  object dsAtualiza: TDataSource
    DataSet = cdsAtualiza
    Left = 344
    Top = 184
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdDevolvida'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrRestante'
        DataType = ftFloat
      end
      item
        Name = 'VlrDevolvida'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'Codigo'
    Params = <>
    StoreDefs = True
    Left = 504
    Top = 264
    Data = {
      D00000009619E0BD010000001800000009000000000003000000D00006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      020064000351746408000400000000000B51746452657374616E746508000400
      000000000C5174644465766F6C76696461080004000000000008566C72546F74
      616C08000400000000000B566C7252657374616E746508000400000000000C56
      6C724465766F6C7669646108000400000000000A5265666572656E6369610100
      4900000001000557494454480200020014000000}
    object mMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mMaterialQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.0000#'
    end
    object mMaterialQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.0000#'
    end
    object mMaterialQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      DisplayFormat = '0.0000#'
    end
    object mMaterialVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object mMaterialVlrRestante: TFloatField
      FieldName = 'VlrRestante'
      DisplayFormat = '0.00'
    end
    object mMaterialVlrDevolvida: TFloatField
      FieldName = 'VlrDevolvida'
      DisplayFormat = '0.00'
    end
    object mMaterialReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 552
    Top = 264
  end
  object sdsNotaPendente: TSQLDataSet
    CommandText = 
      'select NF.DTEMISSAO, NF.ID ID_NTE, NF.SERIE, NF.NUMNOTA, NF.ID_C' +
      'LIENTE, CLI.NOME NOMECLIENTE, CLI.CNPJ_CPF,'#13#10'       NI.ITEM ITEM' +
      '_NTE, NI.ID_PRODUTO, NI.NOME_PRODUTO NOMEPRODUTO, PRO.REFERENCIA' +
      ',   NI.QTD, NI.QTDRESTANTE,NI.QTD_ADEVOLVER,'#13#10'       NI.QTDDEVOL' +
      'VIDA, FIL.NOME NOMEFILIAL, CFOP.CODCFOP,   CFOP.BENEFICIAMENTO, ' +
      'NI.VLR_UNITARIO, NI.UNIDADE,'#13#10'       NF.FILIAL, TRI.NOME NOME_CL' +
      'IENTETRIANG, NI.ID_CFOP'#13#10'from NOTAFISCAL NF  '#13#10'inner join NOTAFI' +
      'SCAL_ITENS NI   on NF.ID = NI.ID  '#13#10'inner join PESSOA CLI   on N' +
      'F.ID_CLIENTE = CLI.CODIGO  '#13#10'inner join FILIAL FIL   on NF.FILIA' +
      'L = FIL.ID  '#13#10'inner join PRODUTO PRO   on NI.ID_PRODUTO = PRO.ID' +
      '  '#13#10'inner join TAB_CFOP CFOP   on NI.ID_CFOP = CFOP.ID  '#13#10'left j' +
      'oin PESSOA TRI   on NF.ID_CLIENTETRIANG = TRI.CODIGO  '#13#10'where NF' +
      '.TIPO_REG = '#39'NTE'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 248
    object sdsNotaPendenteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaPendenteID_NTE: TIntegerField
      FieldName = 'ID_NTE'
      Required = True
    end
    object sdsNotaPendenteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaPendenteNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaPendenteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaPendenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsNotaPendenteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNotaPendenteITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
      Required = True
    end
    object sdsNotaPendenteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaPendenteNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsNotaPendenteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsNotaPendenteQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaPendenteQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsNotaPendenteQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object sdsNotaPendenteQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsNotaPendenteNOMEFILIAL: TStringField
      FieldName = 'NOMEFILIAL'
      Size = 60
    end
    object sdsNotaPendenteCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsNotaPendenteBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaPendenteVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaPendenteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsNotaPendenteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaPendenteNOME_CLIENTETRIANG: TStringField
      FieldName = 'NOME_CLIENTETRIANG'
      Size = 60
    end
    object sdsNotaPendenteID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
  end
  object dspNotaPendente: TDataSetProvider
    DataSet = sdsNotaPendente
    Left = 216
    Top = 248
  end
  object cdsNotaPendente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaPendente'
    Left = 288
    Top = 248
    object cdsNotaPendenteDTEMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaPendenteID_NTE: TIntegerField
      DisplayLabel = 'ID NTE'
      FieldName = 'ID_NTE'
      Required = True
    end
    object cdsNotaPendenteSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaPendenteNUMNOTA: TIntegerField
      DisplayLabel = 'Num.Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsNotaPendenteID_CLIENTE: TIntegerField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaPendenteNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsNotaPendenteCNPJ_CPF: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CNPJ_CPF'
    end
    object cdsNotaPendenteITEM_NTE: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM_NTE'
      Required = True
    end
    object cdsNotaPendenteID_PRODUTO: TIntegerField
      DisplayLabel = 'Cod.Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaPendenteNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsNotaPendenteREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsNotaPendenteQTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTD'
      DisplayFormat = '##0.00'
    end
    object cdsNotaPendenteQTDRESTANTE: TFloatField
      DisplayLabel = 'Qtde Restante'
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '##0.00'
    end
    object cdsNotaPendenteQTD_ADEVOLVER: TFloatField
      DisplayLabel = 'Qtde a Devolver'
      FieldName = 'QTD_ADEVOLVER'
      DisplayFormat = '##0.00'
    end
    object cdsNotaPendenteQTDDEVOLVIDA: TFloatField
      DisplayLabel = 'Qtde Devolvida'
      FieldName = 'QTDDEVOLVIDA'
      DisplayFormat = '##0.00'
    end
    object cdsNotaPendenteNOMEFILIAL: TStringField
      FieldName = 'NOMEFILIAL'
      Size = 60
    end
    object cdsNotaPendenteCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotaPendenteBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaPendenteVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsNotaPendenteUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaPendenteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaPendenteNOME_CLIENTETRIANG: TStringField
      FieldName = 'NOME_CLIENTETRIANG'
      Size = 60
    end
    object cdsNotaPendenteID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
  end
  object dsNotaPendente: TDataSource
    DataSet = cdsNotaPendente
    Left = 352
    Top = 248
  end
  object sdsBaixa_NFDevolvida: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BAIXA_NFDEVOLVIDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 320
    object sdsBaixa_NFDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_NFDevolvidaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object sdsBaixa_NFDevolvidaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
    end
    object sdsBaixa_NFDevolvidaDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object sdsBaixa_NFDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_NFDevolvidaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dspBaixa_NFDevolvida: TDataSetProvider
    DataSet = sdsBaixa_NFDevolvida
    Left = 232
    Top = 320
  end
  object cdsBaixa_NFDevolvida: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_NFDevolvida'
    Left = 296
    Top = 320
    object cdsBaixa_NFDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_NFDevolvidaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsBaixa_NFDevolvidaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
    end
    object cdsBaixa_NFDevolvidaDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object cdsBaixa_NFDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_NFDevolvidaID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsBaixa_NFDevolvida: TDataSource
    DataSet = cdsBaixa_NFDevolvida
    Left = 352
    Top = 320
  end
end
