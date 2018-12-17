object DmCadVale: TDmCadVale
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 391
  Top = 6
  Height = 685
  Width = 896
  object sdsVale: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VALE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 29
    object sdsValeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValeNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object sdsValeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsValeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsValeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsValeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsValeFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsValeFATURADO_SERVICO: TStringField
      FieldName = 'FATURADO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsValeVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsValeVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object sdsValeID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsValeVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsValeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsValeDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
  end
  object dspVale: TDataSetProvider
    DataSet = sdsVale
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspValeUpdateError
    Left = 104
    Top = 29
  end
  object cdsVale: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspVale'
    OnNewRecord = cdsValeNewRecord
    Left = 144
    Top = 29
    object cdsValeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValeNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsValeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsValeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsValeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsValeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsValeFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsValeFATURADO_SERVICO: TStringField
      FieldName = 'FATURADO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsValeVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsValeVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
      DisplayFormat = '0.00'
    end
    object cdsValeID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsValesdsValeItens: TDataSetField
      FieldName = 'sdsValeItens'
    end
    object cdsValesdsValeServico: TDataSetField
      FieldName = 'sdsValeServico'
    end
    object cdsValeVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsValeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsValeDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
  end
  object dsVale: TDataSource
    DataSet = cdsVale
    Left = 184
    Top = 29
  end
  object dsVale_Mestre: TDataSource
    DataSet = sdsVale
    Left = 32
    Top = 69
  end
  object sdsValeItens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT VI.*, P.NOME NOME_PRODUTO'#13#10'FROM VALE_ITENS VI'#13#10'INNER JOIN' +
      ' PRODUTO P ON (VI.ID_PRODUTO = P.ID)'#13#10'WHERE VI.ID = :ID'
    DataSource = dsVale_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 96
    object sdsValeItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValeItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValeItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsValeItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsValeItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object sdsValeItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsValeItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsValeItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsValeItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsValeItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsValeItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsValeItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsValeItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsValeItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsValeItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsValeItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsValeItensCOMPLEMENTO_PROD: TStringField
      FieldName = 'COMPLEMENTO_PROD'
      Size = 80
    end
    object sdsValeItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object sdsValeItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsValeItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object sdsValeItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsValeItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsValeItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsValeItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object sdsValeItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsValeItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
  end
  object cdsValeItens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsValesdsValeItens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsValeItensNewRecord
    Left = 144
    Top = 96
    object cdsValeItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValeItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValeItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsValeItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsValeItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object cdsValeItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsValeItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsValeItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsValeItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsValeItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsValeItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsValeItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsValeItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsValeItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsValeItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsValeItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsValeItensCOMPLEMENTO_PROD: TStringField
      FieldName = 'COMPLEMENTO_PROD'
      Size = 80
    end
    object cdsValeItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsValeItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsValeItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsValeItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsValeItenssdsValePed: TDataSetField
      FieldName = 'sdsValePed'
    end
    object cdsValeItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsValeItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsValeItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsValeItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsValeItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
  end
  object dsValeItens: TDataSource
    DataSet = cdsValeItens
    Left = 184
    Top = 96
  end
  object sdsValePed: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VALE_PED'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :ITEM'
    DataSource = dsVale_Mestre_Item
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
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 181
    object sdsValePedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValePedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValePedITEM_VALEPED: TIntegerField
      FieldName = 'ITEM_VALEPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValePedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsValePedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsValePedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsValePedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object cdsValePed: TClientDataSet
    Aggregates = <>
    DataSetField = cdsValeItenssdsValePed
    IndexFieldNames = 'ID;ITEM;ITEM_VALEPED'
    Params = <>
    Left = 152
    Top = 181
    object cdsValePedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValePedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValePedITEM_VALEPED: TIntegerField
      FieldName = 'ITEM_VALEPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValePedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsValePedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsValePedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsValePedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object dsValePed: TDataSource
    DataSet = cdsValePed
    Left = 184
    Top = 181
  end
  object sdsValeCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id, v.num_vale, v.dtemissao, v.id_cliente, v.vlr_total,' +
      ' v.filial, v.faturado,'#13#10'v.faturado_servico, v.vlr_servico, v.vlr' +
      '_produto, P.NOME NOME_PESSOA,'#13#10'case'#13#10'  when v.faturado = '#39'S'#39' the' +
      'n '#39'Faturado'#39#13#10'  when v.faturado = '#39'N'#39' then '#39'Pendente'#39#13#10'  when v.' +
      'faturado = '#39'P'#39' then '#39'Fat.Parcial'#39#13#10'  else '#39#39#13#10'  end DescFaturado' +
      #13#10#13#10'FROM VALE V'#13#10'INNER JOIN PESSOA P ON (V.ID_CLIENTE = P.CODIGO' +
      ')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 21
  end
  object dspValeCons: TDataSetProvider
    DataSet = sdsValeCons
    OnUpdateError = dspValeUpdateError
    Left = 432
    Top = 21
  end
  object cdsValeCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeCons'
    Left = 472
    Top = 21
    object cdsValeConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsValeConsNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsValeConsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsValeConsID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsValeConsVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsValeConsFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsValeConsFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsValeConsNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object cdsValeConsFATURADO_SERVICO: TStringField
      FieldName = 'FATURADO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsValeConsVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsValeConsVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object cdsValeConsDESCFATURADO: TStringField
      FieldName = 'DESCFATURADO'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object dsValeCons: TDataSource
    DataSet = cdsValeCons
    Left = 512
    Top = 21
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA, UF, ID_TAB_PRECO,'#13#10'PERC_COMISSAO,' +
      ' ID_VENDEDOR'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 120
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 432
    Top = 120
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 472
    Top = 120
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 512
    Top = 120
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 72
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
    object sdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object sdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object sdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object sdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object sdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object sdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object sdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
    end
    object sdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object sdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 432
    Top = 72
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 472
    Top = 72
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
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 512
    Top = 72
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.referencia, P.nome, P.preco_custo, P.preco_venda,' +
      ' P.pesoliquido, P.pesobruto, P.estoque, P.perc_ipi, P.USA_GRADE,' +
      ' P.UNIDADE, PERC_DESC_MAX'#13#10'FROM PRODUTO P'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 168
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 432
    Top = 168
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 472
    Top = 168
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
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 512
    Top = 168
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 216
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 432
    Top = 216
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 472
    Top = 216
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 512
    Top = 216
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 368
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosATUALIZAR_PRECO_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECO_DOC'
      FixedChar = True
      Size = 1
    end
    object qParametrosBAIXAR_REQ_AUTOMATICO: TStringField
      FieldName = 'BAIXAR_REQ_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ID_PRODUTO: TStringField
      FieldName = 'USA_ID_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField
      FieldName = 'PERMITE_QTDMAIOR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object qParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object qParametrosSENHA_EXCLUIR_VALE: TStringField
      FieldName = 'SENHA_EXCLUIR_VALE'
      Size = 15
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_APROVACAO_PED: TStringField
      FieldName = 'USA_APROVACAO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 393
    Top = 260
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 433
    Top = 260
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 473
    Top = 260
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 513
    Top = 260
  end
  object qProximoVale: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUM_VALE) NUM_VALE'
      'FROM VALE'
      'WHERE FILIAL = :FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 145
    Top = 368
    object qProximoValeNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
  end
  object sdsPedido: TSQLDataSet
    CommandText = 
      'SELECT PE.ID, PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI' +
      '.id_produto, PI.id_cfop, PE.NUM_PEDIDO,'#13#10'PI.vlr_unitario, PI.qtd' +
      ', PI.qtd_faturado, PI.qtd_restante, PI.qtd_afaturar,'#13#10'CLI.nome N' +
      'OMECLIENTE, PRO.referencia, PRO.NOME NOMEPRODUTO, CLI.cnpj_cpf, ' +
      ' PI.dtentrega, PI.item, PI.VLR_DESCONTO, PRO.ID_NCM, PI.UNIDADE,' +
      ' PI.PERC_IPI, PI.OBS_COMPLEMENTAR, PI.NUMOS, PE.TIPO_FRETE, PE.I' +
      'D_CONDPGTO, PE.IMP_OC_NOTA, PI.ID_VARIACAO, PI.QTD_LIBERADA, PI.' +
      'QTD_PRODUZIDA, PE.TIPO_REG, PI.TAMANHO, PI.ID_MOVESTOQUE, PI.QTD' +
      '_PECA, PI.QTD_LANCAR_ESTOQUE,'#13#10'PI.VLR_DESCONTORATEIO, PI.PERC_DE' +
      'SCONTO'#13#10'FROM PEDIDO PE'#13#10'INNER JOIN PEDIDO_ITEM PI'#13#10'ON PE.ID = PI' +
      '.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PE.ID_CLIENTE = CLI.CODIGO'#13#10'INNER' +
      ' JOIN PRODUTO PRO'#13#10'ON PI.ID_PRODUTO = PRO.ID'#13#10'WHERE PI.qtd_resta' +
      'nte > 0'#13#10'      '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 499
    object sdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPedidoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedidoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedidoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedidoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedidoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedidoQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsPedidoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsPedidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedidoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedidoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedidoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedidoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsPedidoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsPedidoOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsPedidoNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsPedidoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsPedidoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPedidoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPedidoID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedidoQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object sdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsPedidoQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object sdsPedidoQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object sdsPedidoVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsPedidoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 104
    Top = 499
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOMECLIENTE;PEDIDO_CLIENTE;ITEM'
    Params = <>
    ProviderName = 'dspPedido'
    OnCalcFields = cdsPedidoCalcFields
    Left = 144
    Top = 499
    object cdsPedidoID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Pedido Cliente'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedidoDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoQTD_AFATURAR: TFloatField
      DisplayLabel = 'Qtd. A Faturar'
      FieldName = 'QTD_AFATURAR'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoQTD: TFloatField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QTD'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoID_PRODUTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPedidoDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoID_CFOP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID CFOP'
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsPedidoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedidoOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedidoNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedidoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedidoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedidoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
      DisplayFormat = '0.00000#'
    end
    object cdsPedidoclQtd_Restante: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      DisplayFormat = '0.00000#'
      Calculated = True
    end
    object cdsPedidoclQtd_NaoLiberada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_NaoLiberada'
      DisplayFormat = '0.00000#'
      Calculated = True
    end
    object cdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedidoQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsPedidoVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsPedidoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 184
    Top = 499
  end
  object sdsValeImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id, v.NUM_VALE, v.dtemissao, v.id_cliente, v.vlr_total,' +
      ' v.filial, v.faturado,'#13#10'v.faturado_servico, v.vlr_servico, v.vlr' +
      '_produto, P.NOME NOME_PESSOA, F.nome NOME_FILIAL,'#13#10'F.endereco EN' +
      'DERECO_FILIAL, F.cnpj_cpf CNPJ_CPF_FILIAL, F.num_end NUM_END_FIL' +
      'IAL,'#13#10'F.bairro BAIRRO_FILIAL, F.cidade CIDADE_FILIAL, F.UF UF_FI' +
      'LIAL,'#13#10'F.complemento_end COMPLEMENTO_END_FILIAL, F.cep CEP_FILIA' +
      'L, F.nome_interno, F.inscr_est INSCR_EST_FILIAL,'#13#10'F.ddd1 DDD_FIL' +
      'IAL, F.fone FONE_FILIAL,'#13#10'P.endereco ENDERECO_CLIENTE, P.cnpj_cp' +
      'f CNPJ_CPF_CLIENTE, P.num_end NUM_END_CLIENTE,'#13#10'P.bairro BAIRRO_' +
      'CLIENTE, P.cidade CIDADE_CLIENTE, P.UF UF_CLIENTE,'#13#10'P.complement' +
      'o_end COMPLEMENTO_END_CLIENTE, P.cep CEP_CLIENTE, P.inscr_est IN' +
      'SCR_EST_CLIENTE,'#13#10'P.dddfone1 DDD_CLIENTE, P.telefone1 FONE_CLIEN' +
      'TE, V.VLR_DESCONTO'#13#10'FROM VALE V'#13#10'INNER JOIN PESSOA P '#13#10'ON (V.ID_' +
      'CLIENTE = P.CODIGO)'#13#10'INNER JOIN FILIAL F'#13#10'ON V.filial = F.id'#13#10'WH' +
      'ERE V.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 333
  end
  object dspValeImp: TDataSetProvider
    DataSet = sdsValeImp
    OnUpdateError = dspValeUpdateError
    Left = 432
    Top = 333
  end
  object cdsValeImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeImp'
    Left = 472
    Top = 333
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DTEMISSAO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object FloatField1: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = 'R$ #,###,##0.00'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FILIAL'
    end
    object StringField1: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'FATURADO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object FloatField2: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'VLR_PRODUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsValeImpNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsValeImpENDERECO_FILIAL: TStringField
      FieldName = 'ENDERECO_FILIAL'
      Size = 60
    end
    object cdsValeImpCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsValeImpNUM_END_FILIAL: TStringField
      FieldName = 'NUM_END_FILIAL'
      Size = 15
    end
    object cdsValeImpBAIRRO_FILIAL: TStringField
      FieldName = 'BAIRRO_FILIAL'
      Size = 30
    end
    object cdsValeImpCIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 40
    end
    object cdsValeImpUF_FILIAL: TStringField
      FieldName = 'UF_FILIAL'
      Size = 2
    end
    object cdsValeImpCOMPLEMENTO_END_FILIAL: TStringField
      FieldName = 'COMPLEMENTO_END_FILIAL'
      Size = 60
    end
    object cdsValeImpCEP_FILIAL: TStringField
      FieldName = 'CEP_FILIAL'
      Size = 9
    end
    object cdsValeImpENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 60
    end
    object cdsValeImpCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
      Size = 18
    end
    object cdsValeImpNUM_END_CLIENTE: TStringField
      FieldName = 'NUM_END_CLIENTE'
    end
    object cdsValeImpBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
    end
    object cdsValeImpCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      Size = 40
    end
    object cdsValeImpUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cdsValeImpCOMPLEMENTO_END_CLIENTE: TStringField
      FieldName = 'COMPLEMENTO_END_CLIENTE'
      Size = 60
    end
    object cdsValeImpCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 10
    end
    object cdsValeImpNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsValeImpINSCR_EST_FILIAL: TStringField
      FieldName = 'INSCR_EST_FILIAL'
      Size = 18
    end
    object cdsValeImpINSCR_EST_CLIENTE: TStringField
      FieldName = 'INSCR_EST_CLIENTE'
      Size = 18
    end
    object cdsValeImpDDD_FILIAL: TIntegerField
      FieldName = 'DDD_FILIAL'
    end
    object cdsValeImpFONE_FILIAL: TStringField
      FieldName = 'FONE_FILIAL'
      Size = 15
    end
    object cdsValeImpDDD_CLIENTE: TIntegerField
      FieldName = 'DDD_CLIENTE'
    end
    object cdsValeImpFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Size = 15
    end
    object cdsValeImpNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsValeImpVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsValeImp: TDataSource
    DataSet = cdsValeImp
    Left = 512
    Top = 333
  end
  object sdsValeImp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.id, I.item, I.id_produto, I.tamanho, I.qtd, I.unidade, ' +
      'I.vlr_unitario,'#13#10'I.vlr_total, I.perc_ipi, I.vlr_ipi, I.vlr_icmss' +
      'ubst, P.referencia,  P.nome, I.COMPLEMENTO_PROD, I.QTD_PECA, i.v' +
      'lr_desconto, i.perc_desconto,'#13#10'I.NUMERO_OC'#13#10'FROM vale_itens I '#13#10 +
      'INNER JOIN PRODUTO P ON (I.ID_PRODUTO = P.ID)'#13#10'WHERE I.ID = :ID'#13 +
      #10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 381
  end
  object dspValeImp_Itens: TDataSetProvider
    DataSet = sdsValeImp_Itens
    OnUpdateError = dspValeUpdateError
    Left = 432
    Top = 381
  end
  object cdsValeImp_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeImp_Itens'
    Left = 472
    Top = 381
    object cdsValeImp_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsValeImp_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsValeImp_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsValeImp_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsValeImp_ItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object cdsValeImp_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsValeImp_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,###,##0.000##'
    end
    object cdsValeImp_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsValeImp_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsValeImp_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsValeImp_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsValeImp_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsValeImp_ItensNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsValeImp_ItensCOMPLEMENTO_PROD: TStringField
      FieldName = 'COMPLEMENTO_PROD'
      Size = 80
    end
    object cdsValeImp_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsValeImp_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsValeImp_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsValeImp_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
  end
  object dsValeImp_Itens: TDataSource
    DataSet = cdsValeImp_Itens
    Left = 512
    Top = 381
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
    Left = 209
    Top = 432
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 249
    Top = 528
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object dsVale_Mestre_Item: TDataSource
    DataSet = sdsValeItens
    Left = 24
    Top = 136
  end
  object sdsValeImp_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id, V.id_pedido, V.item, V.item_pedido, V.item_valeped,' +
      ' V.num_pedido, V.qtd,'#13#10'P.pedido_cliente'#13#10'FROM VALE_PED V'#13#10'LEFT J' +
      'OIN PEDIDO P'#13#10'ON V.id_pedido = P.id'#13#10'WHERE V.ID = :ID'#13#10'   AND V.' +
      'ITEM = :ITEM'#13#10
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
    Left = 392
    Top = 477
  end
  object dspValeImp_Ped: TDataSetProvider
    DataSet = sdsValeImp_Ped
    OnUpdateError = dspValeUpdateError
    Left = 432
    Top = 477
  end
  object cdsValeImp_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeImp_Ped'
    Left = 472
    Top = 477
    object cdsValeImp_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsValeImp_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsValeImp_PedITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsValeImp_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsValeImp_PedITEM_VALEPED: TIntegerField
      FieldName = 'ITEM_VALEPED'
      Required = True
    end
    object cdsValeImp_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsValeImp_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsValeImp_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object dsValeImp_Ped: TDataSource
    DataSet = cdsValeImp_Ped
    Left = 512
    Top = 477
  end
  object sdsValeServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT VS.*'#13#10'FROM VALE_SERVICO VS'#13#10'WHERE ID = :ID'
    DataSource = dsVale_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 240
    object sdsValeServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValeServicoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsValeServicoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsValeServicoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object sdsValeServicoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsValeServicoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsValeServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsValeServicoCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object sdsValeServicoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsValeServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsValeServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsValesdsValeServico
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsValeServicoNewRecord
    Left = 152
    Top = 240
    object cdsValeServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValeServicoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsValeServicoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsValeServicoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsValeServicoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsValeServicoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsValeServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsValeServicoCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object cdsValeServicoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsValeServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsValeServico: TDataSource
    DataSet = cdsValeServico
    Left = 184
    Top = 240
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 528
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 432
    Top = 528
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 472
    Top = 528
    object cdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsServico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsServico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsServico_IntCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 512
    Top = 528
  end
  object sdsValeImp_Servico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT VS.*'#13#10'FROM VALE_SERVICO VS'#13#10'WHERE VS.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 429
  end
  object dspValeImp_Servico: TDataSetProvider
    DataSet = sdsValeImp_Servico
    OnUpdateError = dspValeUpdateError
    Left = 432
    Top = 429
  end
  object cdsValeImp_Servico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeImp_Servico'
    Left = 472
    Top = 429
    object cdsValeImp_ServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsValeImp_ServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsValeImp_ServicoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsValeImp_ServicoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsValeImp_ServicoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsValeImp_ServicoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsValeImp_ServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsValeImp_ServicoCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object cdsValeImp_ServicoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsValeImp_ServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsValeImp_Servico: TDataSource
    DataSet = cdsValeImp_Servico
    Left = 512
    Top = 429
  end
  object sdsPedido_Tipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*'#13#10'FROM PEDIDO_ITEM_TIPO I'#13#10'WHERE I.ID = :ID'#13#10'  AND I.I' +
      'TEM = :ITEM'#13#10#13#10#13#10
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
    Left = 65
    Top = 560
  end
  object dspPedido_Tipo: TDataSetProvider
    DataSet = sdsPedido_Tipo
    Left = 97
    Top = 560
  end
  object cdsPedido_Tipo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Tipo'
    OnCalcFields = cdsPedidoCalcFields
    Left = 137
    Top = 560
    object cdsPedido_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedido_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedido_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedido_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedido_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedido_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedido_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedido_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedido_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedido_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedido_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
  end
  object dsPedido_Tipo: TDataSource
    DataSet = cdsPedido_Tipo
    Left = 177
    Top = 560
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 577
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 427
    Top = 577
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 467
    Top = 577
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
    object cdsLocal_EstoqueENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsLocal_EstoqueNUM_ENDERECO: TStringField
      FieldName = 'NUM_ENDERECO'
      Size = 15
    end
    object cdsLocal_EstoqueID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsLocal_EstoqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsLocal_EstoqueBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsLocal_EstoqueCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsLocal_EstoquePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsLocal_EstoqueINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLocal_Estoque: TDataSource
    DataSet = cdsLocal_Estoque
    Left = 507
    Top = 577
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 641
    Top = 196
    object qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField
      FieldName = 'CONTROLAR_FILIAL_NA_COPIA_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_ORDEM_ITEM_PED: TStringField
      FieldName = 'IMP_ORDEM_ITEM_PED'
      FixedChar = True
      Size = 1
    end
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, TIPO_COMISSAO, PERC_COMISSAO' +
      '_VEND'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR =' +
      ' '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 633
    Top = 64
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 665
    Top = 64
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 705
    Top = 64
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 745
    Top = 64
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 641
    Top = 260
    object qParametros_FinUSA_DESCONTO_VALE: TStringField
      FieldName = 'USA_DESCONTO_VALE'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 320
    object qParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42744.537419467600000000
    ReportOptions.LastChange = 42744.550398495370000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 680
    Top = 415
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
    Left = 720
    Top = 415
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
    Left = 760
    Top = 415
  end
  object frxRichObject1: TfrxRichObject
    Left = 792
    Top = 415
  end
  object frxDBValeCons: TfrxDBDataset
    UserName = 'frxValeCons'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_VALE=NUM_VALE'
      'DTEMISSAO=DTEMISSAO'
      'ID_CLIENTE=ID_CLIENTE'
      'VLR_TOTAL=VLR_TOTAL'
      'FILIAL=FILIAL'
      'FATURADO=FATURADO'
      'NOME_PESSOA=NOME_PESSOA'
      'FATURADO_SERVICO=FATURADO_SERVICO'
      'VLR_SERVICO=VLR_SERVICO'
      'VLR_PRODUTO=VLR_PRODUTO'
      'DESCFATURADO=DESCFATURADO')
    DataSource = dsValeCons
    BCDToCurrency = False
    Left = 680
    Top = 463
  end
  object sdsVale_Fat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.numnota, N.dtemissao, I.id,  I.item, I.id_vale, I.num_v' +
      'ale, I.item_vale,'#13#10'CASE'#13#10'  WHEN N.tipo_reg = '#39'NTS'#39' THEN '#39'NOTA'#39#13#10 +
      '  WHEN N.tipo_reg = '#39'RNF'#39' THEN '#39'RECIBO'#39#13#10'  END DESCRICAO_TIPO'#13#10'F' +
      'ROM notafiscal_itens I'#13#10'INNER JOIN NOTAFISCAL N'#13#10'ON I.ID = N.ID'#13 +
      #10'WHERE I.ID_VALE = :ID_VALE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VALE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 633
    Top = 128
  end
  object dspVale_Fat: TDataSetProvider
    DataSet = sdsVale_Fat
    Left = 665
    Top = 128
  end
  object cdsVale_Fat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUMNOTA'
    Params = <>
    ProviderName = 'dspVale_Fat'
    Left = 705
    Top = 128
    object cdsVale_FatNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsVale_FatDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsVale_FatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVale_FatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsVale_FatID_VALE: TIntegerField
      FieldName = 'ID_VALE'
    end
    object cdsVale_FatNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsVale_FatITEM_VALE: TIntegerField
      FieldName = 'ITEM_VALE'
    end
    object cdsVale_FatDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      FixedChar = True
      Size = 6
    end
  end
  object DSVale_Fat: TDataSource
    DataSet = cdsVale_Fat
    Left = 745
    Top = 128
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT GRAVAR_TAB_TAMANHO, PERMITE_IMPORTAR_S_CLIENTE, IMPRIMIR_' +
        'TOTAL_VALE'
      'FROM PARAMETROS_NFE'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 304
    object qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField
      FieldName = 'PERMITE_IMPORTAR_S_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMPRIMIR_TOTAL_VALE: TStringField
      FieldName = 'IMPRIMIR_TOTAL_VALE'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EMPRESA_VAREJO'
      'FROM PARAMETROS_GERAL'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 352
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
  end
end
