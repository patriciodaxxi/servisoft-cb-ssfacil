object DMCadFuncionario: TDMCadFuncionario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 272
  Top = 85
  Height = 577
  Width = 915
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT F.*'#13#10'FROM FUNCIONARIO F'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 32
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsFuncionarioID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object sdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFuncionarioDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsFuncionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFuncionarioDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object sdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object sdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object sdsFuncionarioSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object sdsFuncionarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsFuncionarioHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object sdsFuncionarioTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      Size = 1
    end
    object sdsFuncionarioVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
    end
    object sdsFuncionarioDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object sdsFuncionarioHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object sdsFuncionarioHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object sdsFuncionarioPERC_INSALUBRIDADE: TFloatField
      FieldName = 'PERC_INSALUBRIDADE'
    end
    object sdsFuncionarioPERC_PERICULOSIDADE: TFloatField
      FieldName = 'PERC_PERICULOSIDADE'
    end
    object sdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object sdsFuncionarioNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 40
    end
    object sdsFuncionarioINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioNUM_MATRICULA: TStringField
      FieldName = 'NUM_MATRICULA'
      Size = 15
    end
    object sdsFuncionarioNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsFuncionarioNUM_CARTEIRA_HAB: TStringField
      FieldName = 'NUM_CARTEIRA_HAB'
      Size = 15
    end
    object sdsFuncionarioCATEGORIA_HAB: TStringField
      FieldName = 'CATEGORIA_HAB'
      Size = 3
    end
    object sdsFuncionarioDTVENCIMENTO_HAB: TDateField
      FieldName = 'DTVENCIMENTO_HAB'
    end
    object sdsFuncionarioESTADO_CIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADO_CIVIL'
      Size = 2
    end
    object sdsFuncionarioESCOLARIDADE: TStringField
      DisplayLabel = 'Escolaridade'
      FieldName = 'ESCOLARIDADE'
      Size = 2
    end
    object sdsFuncionarioSETOR_ID: TIntegerField
      FieldName = 'SETOR_ID'
    end
    object sdsFuncionarioFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object sdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
    object sdsFuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sdsFuncionarioBAIXA_OS_MANUAL: TStringField
      FieldName = 'BAIXA_OS_MANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioNUM_CARTAO: TIntegerField
      FieldName = 'NUM_CARTAO'
    end
    object sdsFuncionarioUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object sdsFuncionarioMOSTRAR_ORC: TStringField
      FieldName = 'MOSTRAR_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioBAIXA_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXA_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioBAIXA_LOTE_COMPLETO: TStringField
      FieldName = 'BAIXA_LOTE_COMPLETO'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioBAIXA_PROCESSO: TStringField
      FieldName = 'BAIXA_PROCESSO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFuncionarioUpdateError
    Left = 192
    Top = 32
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspFuncionario'
    OnNewRecord = cdsFuncionarioNewRecord
    Left = 256
    Top = 32
    object cdsFuncionarioCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsFuncionarioID_CIDADE: TIntegerField
      DisplayLabel = 'Id Cidade'
      FieldName = 'ID_CIDADE'
    end
    object cdsFuncionarioBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
    end
    object cdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFuncionarioDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsFuncionarioFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFuncionarioDTADMISSAO: TDateField
      DisplayLabel = 'Data Admiss'#227'o'
      FieldName = 'DTADMISSAO'
    end
    object cdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object cdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object cdsFuncionarioSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object cdsFuncionarioDTNASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DTNASCIMENTO'
    end
    object cdsFuncionarioHRSEMANAIS: TFloatField
      DisplayLabel = 'Horas Semanais'
      FieldName = 'HRSEMANAIS'
    end
    object cdsFuncionarioTIPO_PGTO: TStringField
      DisplayLabel = 'Tipo Pagamento'
      FieldName = 'TIPO_PGTO'
      Size = 1
    end
    object cdsFuncionarioVLR_SALARIO: TFloatField
      DisplayLabel = 'Vlr. Sal'#225'rio'
      FieldName = 'VLR_SALARIO'
      DisplayFormat = '0.00'
    end
    object cdsFuncionarioDTDEMISSAO: TDateField
      DisplayLabel = 'Data Demiss'#227'o'
      FieldName = 'DTDEMISSAO'
    end
    object cdsFuncionarioHORARIO1: TStringField
      DisplayLabel = 'Hor'#225'rio 1'
      FieldName = 'HORARIO1'
      Size = 30
    end
    object cdsFuncionarioHORARIO2: TStringField
      DisplayLabel = 'Hor'#225'rio 2'
      FieldName = 'HORARIO2'
      Size = 30
    end
    object cdsFuncionarioPERC_INSALUBRIDADE: TFloatField
      DisplayLabel = '% Insalubridade'
      FieldName = 'PERC_INSALUBRIDADE'
    end
    object cdsFuncionarioPERC_PERICULOSIDADE: TFloatField
      DisplayLabel = '% Periculosidade'
      FieldName = 'PERC_PERICULOSIDADE'
    end
    object cdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioESTADO_CIVIL: TStringField
      DisplayLabel = 'Estado Civill'
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object cdsFuncionarioESCOLARIDADE: TStringField
      DisplayLabel = 'Escolaridade'
      FieldName = 'ESCOLARIDADE'
    end
    object cdsFuncionarioFUNCAO: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'FUNCAO'
    end
    object cdsFuncionarioNOME_CONJUGE: TStringField
      DisplayLabel = 'Nome Conjuge'
      FieldName = 'NOME_CONJUGE'
      Size = 40
    end
    object cdsFuncionarioNUM_MATRICULA: TStringField
      DisplayLabel = 'N'#186' Matr'#237'cula'
      FieldName = 'NUM_MATRICULA'
      Size = 15
    end
    object cdsFuncionarioINATIVO: TStringField
      DisplayLabel = 'Inativo'
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioNUM_END: TStringField
      DisplayLabel = 'N'#186' Endere'#231'o'
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFuncionarioNUM_CARTEIRA_HAB: TStringField
      DisplayLabel = 'N'#186' Carteira Habilita'#231#227'o'
      FieldName = 'NUM_CARTEIRA_HAB'
      Size = 15
    end
    object cdsFuncionarioCATEGORIA_HAB: TStringField
      DisplayLabel = 'Categoria Habilita'#231#227'o'
      FieldName = 'CATEGORIA_HAB'
      Size = 3
    end
    object cdsFuncionarioDTVENCIMENTO_HAB: TDateField
      DisplayLabel = 'Dt. Vencimento Cart. Habilita'#231#227'o'
      FieldName = 'DTVENCIMENTO_HAB'
    end
    object cdsFuncionarioSETOR_ID: TIntegerField
      FieldName = 'SETOR_ID'
    end
    object cdsFuncionarioFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
    object cdsFuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsFuncionarioBAIXA_OS_MANUAL: TStringField
      FieldName = 'BAIXA_OS_MANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioNUM_CARTAO: TIntegerField
      FieldName = 'NUM_CARTAO'
    end
    object cdsFuncionarioUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object cdsFuncionarioMOSTRAR_ORC: TStringField
      FieldName = 'MOSTRAR_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioBAIXA_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXA_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioBAIXA_LOTE_COMPLETO: TStringField
      FieldName = 'BAIXA_LOTE_COMPLETO'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionariosdsFuncionario_Sertor: TDataSetField
      FieldName = 'sdsFuncionario_Sertor'
    end
    object cdsFuncionariosdsFuncionario_Proc: TDataSetField
      FieldName = 'sdsFuncionario_Proc'
    end
    object cdsFuncionariosdsFuncionario_Reajuste: TDataSetField
      FieldName = 'sdsFuncionario_Reajuste'
    end
    object cdsFuncionarioBAIXA_PROCESSO: TStringField
      FieldName = 'BAIXA_PROCESSO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 328
    Top = 32
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 192
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 496
    Top = 192
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 536
    Top = 192
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
    Left = 576
    Top = 192
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 466
    Top = 236
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 498
    Top = 236
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 538
    Top = 236
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 578
    Top = 236
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 328
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
    object qParametrosIMP_CODPRODCLI_DANFE: TStringField
      FieldName = 'IMP_CODPRODCLI_DANFE'
      FixedChar = True
      Size = 1
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select f.id, f.cnpj_cpf'
      'from filial f'
      'where f.id = (select min(f2.id) from filial f2)')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 328
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 280
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 504
    Top = 280
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 544
    Top = 280
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 584
    Top = 280
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 384
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 488
    Top = 384
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 520
    Top = 384
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
    Left = 552
    Top = 384
  end
  object dsFuncionario_Mestre: TDataSource
    DataSet = sdsFuncionario
    Left = 56
    Top = 88
  end
  object sdsFuncionario_Reajuste: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FUNCIONARIO_REAJUSTE'#13#10'WHERE CODIGO = :CODIGO'
    DataSource = dsFuncionario_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 144
    object sdsFuncionario_ReajusteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_ReajusteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_ReajusteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsFuncionario_ReajusteMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object sdsFuncionario_ReajusteDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object cdsFuncionario_Reajuste: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFuncionariosdsFuncionario_Reajuste
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    Left = 232
    Top = 144
    object cdsFuncionario_ReajusteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_ReajusteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_ReajusteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsFuncionario_ReajusteMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsFuncionario_ReajusteDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dsFuncionario_Reajuste: TDataSource
    DataSet = cdsFuncionario_Reajuste
    Left = 328
    Top = 144
  end
  object sdsFuncionario_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.codigo, F.num_matricula, F.nome, F.ddd, F.fone, F.filia' +
      'l, F.cpf,'#13#10'FIL.nome NOME_FILIAL, FIL.nome_interno, F.INATIVO, F.' +
      'NUM_CARTAO'#13#10'FROM FUNCIONARIO F'#13#10'LEFT JOIN FILIAL FIL'#13#10'ON F.FILIA' +
      'L = FIL.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object dspFuncionario_Consulta: TDataSetProvider
    DataSet = sdsFuncionario_Consulta
    Left = 488
    Top = 24
  end
  object cdsFuncionario_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario_Consulta'
    Left = 528
    Top = 24
    object cdsFuncionario_ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionario_ConsultaNUM_MATRICULA: TStringField
      FieldName = 'NUM_MATRICULA'
      Size = 15
    end
    object cdsFuncionario_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionario_ConsultaDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsFuncionario_ConsultaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFuncionario_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFuncionario_ConsultaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsFuncionario_ConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsFuncionario_ConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFuncionario_ConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionario_ConsultaNUM_CARTAO: TIntegerField
      FieldName = 'NUM_CARTAO'
    end
  end
  object dsFuncionario_Consulta: TDataSource
    DataSet = cdsFuncionario_Consulta
    Left = 568
    Top = 24
  end
  object sdsFuncionario_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select FUN.CODIGO, FUN.ID_PROCESSO, PRO.NOME'#13#10'from FUNCIONARIO_P' +
      'ROC FUN'#13#10'left join PROCESSO PRO on FUN.ID_PROCESSO = PRO.ID'#13#10'whe' +
      're CODIGO = :CODIGO'
    DataSource = dsFuncionario_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 248
    object sdsFuncionario_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_ProcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_ProcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
  end
  object cdsFuncionario_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFuncionariosdsFuncionario_Proc
    IndexFieldNames = 'CODIGO;ID_PROCESSO'
    Params = <>
    Left = 176
    Top = 248
    object cdsFuncionario_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_ProcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_ProcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsFuncionario_Proc: TDataSource
    DataSet = cdsFuncionario_Proc
    Left = 224
    Top = 248
  end
  object qProcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PROCESSO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 96
    object qProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sdsUsuario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UCTABUSERS'#13#10'WHERE UCTYPEREC = '#39'U'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 210
    Top = 420
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    Left = 242
    Top = 420
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UCUSERNAME'
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 282
    Top = 420
    object cdsUsuarioUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
    end
    object cdsUsuarioUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object cdsUsuarioUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object cdsUsuarioUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Size = 30
    end
    object cdsUsuarioUCEMAIL: TStringField
      FieldName = 'UCEMAIL'
      Size = 150
    end
    object cdsUsuarioUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
    end
    object cdsUsuarioUCTYPEREC: TStringField
      FieldName = 'UCTYPEREC'
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
    object cdsUsuarioUCKEY: TStringField
      FieldName = 'UCKEY'
      Size = 255
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 322
    Top = 420
  end
  object sdsFuncionario_Sertor: TSQLDataSet
    CommandText = 
      'SELECT F.*, S.NOME NOME_SETOR'#13#10'FROM FUNCIONARIO_SETOR F'#13#10'LEFT JO' +
      'IN SETOR S'#13#10'ON F.ID_SETOR = S.ID'#13#10'WHERE CODIGO = :CODIGO'
    DataSource = dsFuncionario_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 296
    object sdsFuncionario_SertorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_SertorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionario_SertorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsFuncionario_SertorNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
      ProviderFlags = []
    end
  end
  object cdsFuncionario_Setor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFuncionariosdsFuncionario_Sertor
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    Left = 184
    Top = 296
    object cdsFuncionario_SetorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionario_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsFuncionario_SetorNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
      ProviderFlags = []
    end
  end
  object dsFuncionario_Setor: TDataSource
    DataSet = cdsFuncionario_Setor
    Left = 224
    Top = 296
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.lote_textil, p.LOTE_CALCADO_NOVO'
      'from parametros_lote p')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 272
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_CALCADO_NOVO: TStringField
      FieldName = 'LOTE_CALCADO_NOVO'
      FixedChar = True
      Size = 1
    end
  end
end
