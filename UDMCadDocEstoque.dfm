object DMCadDocEstoque: TDMCadDocEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 163
  Top = 21
  Height = 649
  Width = 1001
  object sdsDocEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DOCESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 4
    object sdsDocEstoqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoqueDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsDocEstoqueFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsDocEstoqueTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsDocEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsDocEstoqueOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDocEstoqueID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsDocEstoqueTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsDocEstoqueID_LOCAL_DESTINO: TIntegerField
      FieldName = 'ID_LOCAL_DESTINO'
    end
    object sdsDocEstoqueINF_CODBARRA: TStringField
      FieldName = 'INF_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
  end
  object dspDocEstoque: TDataSetProvider
    DataSet = sdsDocEstoque
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspDocEstoqueUpdateError
    Left = 200
    Top = 5
  end
  object cdsDocEstoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDocEstoque'
    OnNewRecord = cdsDocEstoqueNewRecord
    Left = 264
    Top = 5
    object cdsDocEstoqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoqueDTMOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DTMOVIMENTO'
    end
    object cdsDocEstoqueFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsDocEstoqueTIPO_ES: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDocEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDocEstoquesdsDocEstoque_Itens: TDataSetField
      FieldName = 'sdsDocEstoque_Itens'
    end
    object cdsDocEstoqueOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDocEstoqueID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsDocEstoqueTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsDocEstoqueID_LOCAL_DESTINO: TIntegerField
      FieldName = 'ID_LOCAL_DESTINO'
    end
    object cdsDocEstoqueINF_CODBARRA: TStringField
      FieldName = 'INF_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
  end
  object dsDocEstoque: TDataSource
    DataSet = cdsDocEstoque
    Left = 336
    Top = 5
  end
  object dsDocEstoque_Mestre: TDataSource
    DataSet = sdsDocEstoque
    Left = 64
    Top = 41
  end
  object sdsDocEstoque_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DI.*, COMB.NOME NOME_COR_COMBINACAO'#13#10'FROM DOCESTOQUE_ITEN' +
      'S DI'#13#10'LEFT JOIN COMBINACAO COMB ON (DI.ID_COR = COMB.ID)'#13#10'WHERE ' +
      'DI.ID = :ID'#13#10
    DataSource = dsDocEstoque_Mestre
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
    object sdsDocEstoque_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoque_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoque_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsDocEstoque_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsDocEstoque_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsDocEstoque_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsDocEstoque_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsDocEstoque_ItensMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object sdsDocEstoque_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsDocEstoque_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsDocEstoque_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object sdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField
      FieldName = 'ID_MOVESTOQUE_DESTINO'
    end
    object sdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsDocEstoque_ItensGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsDocEstoque_ItensLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object cdsDocEstoque_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDocEstoquesdsDocEstoque_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsDocEstoque_ItensCalcFields
    OnNewRecord = cdsDocEstoque_ItensNewRecord
    Left = 192
    Top = 88
    object cdsDocEstoque_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoque_ItensITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoque_ItensID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsDocEstoque_ItensQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTD'
    end
    object cdsDocEstoque_ItensVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000###'
    end
    object cdsDocEstoque_ItensVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDocEstoque_ItensMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsDocEstoque_ItensUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsDocEstoque_ItensPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField
      DisplayLabel = 'ID Mov. Estoque'
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsDocEstoque_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsDocEstoque_ItensNOME_PRODUTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsDocEstoque_ItensREFERENCIA: TStringField
      FieldKind = fkCalculated
      FieldName = 'REFERENCIA'
      ProviderFlags = []
      Calculated = True
    end
    object cdsDocEstoque_ItensNOME_CENTROCUSTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsDocEstoque_ItensCOD_CENTROCUSTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'COD_CENTROCUSTO'
      ProviderFlags = []
      Calculated = True
    end
    object cdsDocEstoque_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField
      FieldName = 'ID_MOVESTOQUE_DESTINO'
    end
    object cdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsDocEstoque_ItensGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000###'
    end
    object cdsDocEstoque_ItensLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dsDocEstoque_Itens: TDataSource
    DataSet = cdsDocEstoque_Itens
    Left = 256
    Top = 88
  end
  object sdsDocEstoque_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DC.* , PES.NOME NOME_PESSOA, PES.endereco endereco_Cli, p' +
      'es.num_end Num_End_Cli, pes.bairro Bairro_Cli,'#13#10' Pes.cidade Cida' +
      'de_Cli, pes.uf uf_Cliente, pes.cnpj_cpf CNPJ_CPF_Cli,'#13#10'FIL.ender' +
      'eco Endereco_Filial, FIL.cnpj_cpf CNPJ_CPF_Filial, FIL.nome NOME' +
      '_Filial, FIL.num_end Num_End_Filial, FIL.bairro Bairro_Filial,'#13#10 +
      'FIL.cidade Cidade_Filial, FIL.uf UF_Filial, FIL.cep Cep_Filial, ' +
      'FN.NOME NOME_FUNCIONARIO'#13#10'FROM DOCESTOQUE DC'#13#10'INNER JOIN FILIAL ' +
      'FIL'#13#10'ON DC.FILIAL = FIL.ID'#13#10'LEFT JOIN PESSOA PES'#13#10'ON DC.ID_PESSO' +
      'A = PES.CODIGO'#13#10'LEFT JOIN FUNCIONARIO FN'#13#10'ON DC.ID_FUNCIONARIO =' +
      ' FN.CODIGO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 8
  end
  object dspDocEstoque_Consulta: TDataSetProvider
    DataSet = sdsDocEstoque_Consulta
    Left = 504
    Top = 8
  end
  object cdsDocEstoque_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDocEstoque_Consulta'
    Left = 544
    Top = 8
    object cdsDocEstoque_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDocEstoque_ConsultaDTMOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DTMOVIMENTO'
    end
    object cdsDocEstoque_ConsultaFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsDocEstoque_ConsultaTIPO_ES: TStringField
      DisplayLabel = 'Entrada/Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ConsultaVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDocEstoque_ConsultaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDocEstoque_ConsultaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsDocEstoque_ConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDocEstoque_ConsultaENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsDocEstoque_ConsultaNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsDocEstoque_ConsultaBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsDocEstoque_ConsultaCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsDocEstoque_ConsultaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cdsDocEstoque_ConsultaCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object cdsDocEstoque_ConsultaENDERECO_FILIAL: TStringField
      FieldName = 'ENDERECO_FILIAL'
      Size = 60
    end
    object cdsDocEstoque_ConsultaCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsDocEstoque_ConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsDocEstoque_ConsultaNUM_END_FILIAL: TStringField
      FieldName = 'NUM_END_FILIAL'
      Size = 15
    end
    object cdsDocEstoque_ConsultaBAIRRO_FILIAL: TStringField
      FieldName = 'BAIRRO_FILIAL'
      Size = 30
    end
    object cdsDocEstoque_ConsultaCIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 40
    end
    object cdsDocEstoque_ConsultaUF_FILIAL: TStringField
      FieldName = 'UF_FILIAL'
      Size = 2
    end
    object cdsDocEstoque_ConsultaCEP_FILIAL: TStringField
      FieldName = 'CEP_FILIAL'
      Size = 9
    end
    object cdsDocEstoque_ConsultaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsDocEstoque_ConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ConsultaNOME_FUNCIONARIO: TStringField
      DisplayLabel = 'Nome Requisitante'
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsDocEstoque_ConsultaNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
  end
  object dsDocEstoque_Consulta: TDataSource
    DataSet = cdsDocEstoque_Consulta
    Left = 584
    Top = 8
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 200
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 504
    Top = 200
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 544
    Top = 200
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
    Left = 584
    Top = 200
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 264
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 512
    Top = 264
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 552
    Top = 264
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
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 3
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 592
    Top = 264
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 392
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 520
    Top = 392
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 560
    Top = 392
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
    Left = 600
    Top = 392
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 248
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 152
    Top = 248
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 192
    Top = 248
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
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 232
    Top = 248
  end
  object sdsDocEstoque_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DC.* , PES.NOME NOME_PESSOA, PES.endereco endereco_Cli, p' +
      'es.num_end Num_End_Cli, pes.bairro Bairro_Cli,'#13#10' Pes.cidade Cida' +
      'de_Cli, pes.uf uf_Cli, pes.cnpj_cpf CNPJ_CPF_Cli, pes.dddfone1 D' +
      'DD_CLI, PES.telefone1 Fone_Cli, '#13#10'PES.CEP CEP_CLI,  PES.inscr_es' +
      't INSCR_EST_CLI, PES.EMAIL_COMPRAS,'#13#10'FIL.endereco Endereco_Filia' +
      'l, FIL.cnpj_cpf CNPJ_CPF_Filial, FIL.nome NOME_Filial, FIL.num_e' +
      'nd Num_End_Filial, FIL.bairro Bairro_Filial,'#13#10'FIL.cidade Cidade_' +
      'Filial, FIL.uf UF_Filial, FIL.cep Cep_Filial, FIL.ddd1 DDD_FILIA' +
      'L, FIL.fone1 FONE_FILIAL, FUN.NOME NOME_FUNCIONARIO'#13#10'FROM DOCEST' +
      'OQUE DC'#13#10'INNER JOIN FILIAL FIL'#13#10'ON DC.FILIAL = FIL.ID'#13#10'LEFT JOIN' +
      ' PESSOA PES'#13#10'ON DC.ID_PESSOA = PES.CODIGO'#13#10'LEFT JOIN FUNCIONARIO' +
      ' FUN'#13#10'ON DC.ID_FUNCIONARIO = FUN.CODIGO'#13#10'WHERE DC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 72
  end
  object dspDocEstoque_Imp: TDataSetProvider
    DataSet = sdsDocEstoque_Imp
    Left = 496
    Top = 72
  end
  object cdsDocEstoque_Imp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDocEstoque_Imp'
    Left = 536
    Top = 72
    object cdsDocEstoque_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDocEstoque_ImpDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsDocEstoque_ImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDocEstoque_ImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsDocEstoque_ImpTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ImpID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDocEstoque_ImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDocEstoque_ImpNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsDocEstoque_ImpENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsDocEstoque_ImpNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsDocEstoque_ImpBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsDocEstoque_ImpCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsDocEstoque_ImpUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsDocEstoque_ImpCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object cdsDocEstoque_ImpDDD_CLI: TIntegerField
      FieldName = 'DDD_CLI'
    end
    object cdsDocEstoque_ImpFONE_CLI: TStringField
      FieldName = 'FONE_CLI'
      Size = 15
    end
    object cdsDocEstoque_ImpCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object cdsDocEstoque_ImpENDERECO_FILIAL: TStringField
      FieldName = 'ENDERECO_FILIAL'
      Size = 60
    end
    object cdsDocEstoque_ImpCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsDocEstoque_ImpNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsDocEstoque_ImpNUM_END_FILIAL: TStringField
      FieldName = 'NUM_END_FILIAL'
      Size = 15
    end
    object cdsDocEstoque_ImpBAIRRO_FILIAL: TStringField
      FieldName = 'BAIRRO_FILIAL'
      Size = 30
    end
    object cdsDocEstoque_ImpCIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 40
    end
    object cdsDocEstoque_ImpUF_FILIAL: TStringField
      FieldName = 'UF_FILIAL'
      Size = 2
    end
    object cdsDocEstoque_ImpCEP_FILIAL: TStringField
      FieldName = 'CEP_FILIAL'
      Size = 9
    end
    object cdsDocEstoque_ImpDDD_FILIAL: TIntegerField
      FieldName = 'DDD_FILIAL'
    end
    object cdsDocEstoque_ImpFONE_FILIAL: TStringField
      FieldName = 'FONE_FILIAL'
      Size = 15
    end
    object cdsDocEstoque_ImpINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object cdsDocEstoque_ImpID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsDocEstoque_ImpTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ImpNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsDocEstoque_ImpEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
  end
  object dsDocEstoque_Imp: TDataSource
    DataSet = cdsDocEstoque_Imp
    Left = 576
    Top = 72
  end
  object sdsDocEstoque_Imp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DI.*,  PRO.NOME NOME_PRODUTO, PRO.REFERENCIA, CC.DESCRICA' +
      'O NOME_CENTROCUSTO, CC.CODIGO COD_CENTROCUSTO'#13#10'FROM DOCESTOQUE_I' +
      'TENS DI'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON DI.ID_PRODUTO = PRO.ID'#13#10'LEFT' +
      ' JOIN CENTROCUSTO CC'#13#10'ON DI.ID_CENTROCUSTO = CC.ID'#13#10'WHERE DI.ID ' +
      '= :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 136
  end
  object cdsDocEstoque_Imp_Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspDocEstoque_Imp_Itens'
    Left = 608
    Top = 136
    object cdsDocEstoque_Imp_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDocEstoque_Imp_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsDocEstoque_Imp_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsDocEstoque_Imp_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsDocEstoque_Imp_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsDocEstoque_Imp_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsDocEstoque_Imp_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsDocEstoque_Imp_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsDocEstoque_Imp_ItensMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsDocEstoque_Imp_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsDocEstoque_Imp_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsDocEstoque_Imp_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsDocEstoque_Imp_ItensID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsDocEstoque_Imp_ItensNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      Size = 50
    end
    object cdsDocEstoque_Imp_ItensCOD_CENTROCUSTO: TStringField
      FieldName = 'COD_CENTROCUSTO'
    end
    object cdsDocEstoque_Imp_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsDocEstoque_Imp_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
  end
  object dsDocEstoque_Imp_Itens: TDataSource
    DataSet = cdsDocEstoque_Imp_Itens
    Left = 680
    Top = 136
  end
  object dspDocEstoque_Imp_Itens: TDataSetProvider
    DataSet = sdsDocEstoque_Imp_Itens
    Left = 536
    Top = 128
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 336
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
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField
      FieldName = 'CONTROLAR_ESTOQUE_SAIDA'
      FixedChar = True
      Size = 1
    end
    object qParametrosSENHA_LIBERA_ESTOQUE: TStringField
      FieldName = 'SENHA_LIBERA_ESTOQUE'
      Size = 10
    end
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FUNCIONARIO'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 440
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 520
    Top = 440
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 560
    Top = 440
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 600
    Top = 440
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CENTROCUSTO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 489
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 520
    Top = 489
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 560
    Top = 489
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsCentroCustoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 600
    Top = 489
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 600
    Top = 320
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsProduto_Tam
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 320
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 520
    Top = 320
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TAMANHO'
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 560
    Top = 320
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object qCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.ID, C.CODIGO, C.DESCRICAO'
      'FROM CENTROCUSTO C'
      'WHERE C.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 392
    object qCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.ID, P.REFERENCIA, P.NOME'
      'FROM PRODUTO P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 448
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
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, P.PRECO_CUSTO, P.id_cor_combinac' +
      'ao'#13#10'FROM PRODUTO_COMB P'#13#10'WHERE P.ID = :ID'#13#10'  AND P.INATIVO = '#39'N'#39 +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 240
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 792
    Top = 240
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 848
    Top = 240
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 912
    Top = 240
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 304
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 792
    Top = 304
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 848
    Top = 304
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
    Left = 912
    Top = 304
  end
  object dsmEtiquetas: TDataSource
    DataSet = mEtiquetas
    Left = 64
    Top = 336
  end
  object mEtiquetas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRECO'
        DataType = ftCurrency
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 336
    Data = {
      7F0000009619E0BD0100000018000000040000000000030000007F000A524546
      4552454E4349410100490000000100055749445448020002002800044E4F4D45
      010049000000010005574944544802000200640005505245434F080004000000
      010007535542545950450200490006004D6F6E65790002494404000100000000
      000000}
    object mEtiquetasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
    object mEtiquetasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mEtiquetasPRECO: TCurrencyField
      FieldName = 'PRECO'
    end
    object mEtiquetasID: TIntegerField
      FieldName = 'ID'
    end
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
    ReportOptions.CreateDate = 41928.578144409700000000
    ReportOptions.LastChange = 43380.783411990740000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 96
    Top = 336
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'mEiquetas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'PRECO=PRECO'
      'ID=ID')
    DataSource = dsmEtiquetas
    BCDToCurrency = False
    Left = 128
    Top = 336
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 160
    object qParametros_ProdUSA_ID_MATERIAL_CONS: TStringField
      FieldName = 'USA_ID_MATERIAL_CONS'
      Size = 1
    end
    object qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 248
    object qParametros_GeralATUALIZAR_PRECOVENDA_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECOVENDA_DOC'
      FixedChar = True
      Size = 1
    end
  end
  object qProduto_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PL.num_lote_controle, PL.preco_custo, PL.preco_venda,'
      '  (SELECT sum(L.qtd) QTD'
      '    FROM ESTOQUE_LOTE L'
      '   WHERE L.ID_PRODUTO = PL.ID'
      '     AND L.NUM_LOTE_CONTROLE = PL.num_lote_controle) QTD'
      'FROM PRODUTO_LOTE PL'
      'WHERE PL.ID = :ID'
      '  AND PL.NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE')
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 432
    object qProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object qProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qProduto_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object qCBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_BARRA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT B.*, P.NOME NOME_PRODUTO, C.NOME NOME_COR, '
      'P.REFERENCIA, P.UNIDADE, P.PRECO_CUSTO, P.PRECO_VENDA'
      'FROM CBARRA B'
      'INNER JOIN PRODUTO P'
      'ON B.ID_PRODUTO = P.ID'
      'LEFT JOIN COMBINACAO C'
      'ON B.ID_COR = C.ID'
      'WHERE B.COD_BARRA = :COD_BARRA')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 480
    object qCBarraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qCBarraID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qCBarraID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qCBarraTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qCBarraCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object qCBarraCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object qCBarraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qCBarraNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qCBarraNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object qCBarraREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qCBarraUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qCBarraPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qCBarraPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object mAuxCodBarra: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Preco_Custo'
        DataType = ftFloat
      end
      item
        Name = 'Preco_Venda'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 432
    Data = {
      230100009619E0BD01000000180000000B000000000003000000230104497465
      6D040001000000000008436F6442617272610100490000000100055749445448
      020002000E000A49445F50726F6475746F04000100000000000649445F436F72
      04000100000000000754616D616E686F01004900000001000557494454480200
      02000A000A5265666572656E6369610100490000000100055749445448020002
      000A000C4E6F6D655F50726F6475746F01004900000001000557494454480200
      02006400084E6F6D655F436F720100490000000100055749445448020002003C
      0007556E696461646501004900000001000557494454480200020006000B5072
      65636F5F437573746F08000400000000000B507265636F5F56656E6461080004
      00000000000000}
    object mAuxCodBarraItem: TIntegerField
      FieldName = 'Item'
    end
    object mAuxCodBarraCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
    object mAuxCodBarraID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mAuxCodBarraID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mAuxCodBarraTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mAuxCodBarraReferencia: TStringField
      FieldName = 'Referencia'
      Size = 10
    end
    object mAuxCodBarraNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mAuxCodBarraNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 60
    end
    object mAuxCodBarraUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mAuxCodBarraPreco_Custo: TFloatField
      FieldName = 'Preco_Custo'
    end
    object mAuxCodBarraPreco_Venda: TFloatField
      FieldName = 'Preco_Venda'
    end
  end
  object dsmAuxCodBarra: TDataSource
    DataSet = mAuxCodBarra
    Left = 248
    Top = 432
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.USA_LOCALIZACAO_LOTE, CONTROLA_DOC_CLIFORN'
      'FROM PARAMETROS_EST P')
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 80
    object qParametros_EstUSA_LOCALIZACAO_LOTE: TStringField
      FieldName = 'USA_LOCALIZACAO_LOTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstCONTROLA_DOC_CLIFORN: TStringField
      FieldName = 'CONTROLA_DOC_CLIFORN'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEtiqEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT D.ID, D.id_pessoa, CLI.NOME NOME_PESSOA, D.dtmovimento, P' +
      '.REFERENCIA,'#13#10'P.NOME NOME_PRODUTO, COMB.NOME NOME_COR, I.num_lot' +
      'e_controle, I.qtd,'#13#10'I.localizacao, i.item, cli.fantasia, '#39'25'#39'|| ' +
      'lpad(d.id,6,0)||lpad(i.item,3,0) CODBARRA'#13#10'FROM docestoque D'#13#10'IN' +
      'NER JOIN docestoque_itens I'#13#10'ON D.ID = I.ID'#13#10'INNER JOIN PRODUTO ' +
      'P'#13#10'ON I.id_produto = P.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON I.id_co' +
      'r = COMB.id'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON D.id_pessoa = CLI.CODIGO'#13#10 +
      'WHERE D.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 561
  end
  object dspEtiqEstoque: TDataSetProvider
    DataSet = sdsEtiqEstoque
    Left = 520
    Top = 561
  end
  object cdsEtiqEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEtiqEstoque'
    Left = 560
    Top = 561
    object cdsEtiqEstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEtiqEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEtiqEstoqueNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsEtiqEstoqueDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEtiqEstoqueREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEtiqEstoqueNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEtiqEstoqueNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsEtiqEstoqueNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEtiqEstoqueQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEtiqEstoqueLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsEtiqEstoqueITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsEtiqEstoqueFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsEtiqEstoqueCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Required = True
      Size = 11
    end
  end
  object dsEtiqEstoque: TDataSource
    DataSet = cdsEtiqEstoque
    Left = 600
    Top = 561
  end
  object frxEtiqEstoque: TfrxDBDataset
    UserName = 'frxEtiqEstoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_PESSOA=ID_PESSOA'
      'NOME_PESSOA=NOME_PESSOA'
      'DTMOVIMENTO=DTMOVIMENTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'NOME_COR=NOME_COR'
      'NUM_LOTE_CONTROLE=NUM_LOTE_CONTROLE'
      'QTD=QTD'
      'LOCALIZACAO=LOCALIZACAO'
      'ITEM=ITEM'
      'FANTASIA=FANTASIA'
      'CODBARRA=CODBARRA')
    DataSource = dsEtiqEstoque
    BCDToCurrency = False
    Left = 168
    Top = 336
  end
end
