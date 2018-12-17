object DMCadContas: TDMCadContas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 410
  Top = 30
  Height = 647
  Width = 741
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 32
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsContasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object sdsContasCNAB: TStringField
      FieldName = 'CNAB'
      Size = 15
    end
    object sdsContasDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsContasID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsContasDESCRICAO_NOTA: TStringField
      FieldName = 'DESCRICAO_NOTA'
      Size = 30
    end
    object sdsContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object sdsContasCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 16
    end
    object sdsContasACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 1
    end
    object sdsContasID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object sdsContasDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object sdsContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object sdsContasID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsContasID_INSTRUCAO1: TIntegerField
      FieldName = 'ID_INSTRUCAO1'
    end
    object sdsContasID_INSTRUCAO2: TIntegerField
      FieldName = 'ID_INSTRUCAO2'
    end
    object sdsContasID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsContasMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 1
    end
    object sdsContasVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object sdsContasTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 5
    end
    object sdsContasCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
    end
    object sdsContasMENSAGEM_FIXA: TStringField
      FieldName = 'MENSAGEM_FIXA'
      Size = 30
    end
    object sdsContasPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsContasPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object sdsContasVLR_IOF: TFloatField
      FieldName = 'VLR_IOF'
    end
    object sdsContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
    end
    object sdsContasLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 100
    end
    object sdsContasEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 200
    end
    object sdsContasNOME_ARQ_REM: TStringField
      FieldName = 'NOME_ARQ_REM'
      Size = 8
    end
    object sdsContasEXTENSAO_ARQ_REM: TStringField
      FieldName = 'EXTENSAO_ARQ_REM'
      Size = 3
    end
    object sdsContasDT_LIMITE_DESCONTO: TDateField
      FieldName = 'DT_LIMITE_DESCONTO'
    end
    object sdsContasCOMISSAO_PERMANENCIA: TStringField
      FieldName = 'COMISSAO_PERMANENCIA'
      Size = 2
    end
    object sdsContasNUM_CONVENIO_LIDER: TStringField
      FieldName = 'NUM_CONVENIO_LIDER'
      Size = 6
    end
    object sdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 2
    end
    object sdsContasDIAS_DEVOLUCAO: TIntegerField
      FieldName = 'DIAS_DEVOLUCAO'
    end
    object sdsContasNUM_ARQ_REMESSA: TIntegerField
      FieldName = 'NUM_ARQ_REMESSA'
    end
    object sdsContasPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object sdsContasPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object sdsContasPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
    end
    object sdsContasDIAS_MULTA: TIntegerField
      FieldName = 'DIAS_MULTA'
    end
    object sdsContasACBR_TIPOCOBRANCA: TStringField
      FieldName = 'ACBR_TIPOCOBRANCA'
      FixedChar = True
      Size = 2
    end
    object sdsContasACBR_LAYOUTREMESSA: TStringField
      FieldName = 'ACBR_LAYOUTREMESSA'
      Size = 4
    end
    object sdsContasNOSSONUMERO_POR_ANO: TStringField
      FieldName = 'NOSSONUMERO_POR_ANO'
      FixedChar = True
      Size = 1
    end
    object sdsContasBANCO_LOGO: TStringField
      FieldName = 'BANCO_LOGO'
      Size = 200
    end
    object sdsContasDT_REMESSA: TDateField
      FieldName = 'DT_REMESSA'
    end
    object sdsContasSEQ_REMESSA_DIA: TIntegerField
      FieldName = 'SEQ_REMESSA_DIA'
    end
    object sdsContasTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object sdsContasTIPO_DOCUMENTO_SANTANDER: TStringField
      FieldName = 'TIPO_DOCUMENTO_SANTANDER'
      FixedChar = True
      Size = 1
    end
    object sdsContasTIPO_CARTEIRA: TStringField
      FieldName = 'TIPO_CARTEIRA'
      Size = 2
    end
    object sdsContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsContasCONTROLA_EMISSAO_BOLETO: TStringField
      FieldName = 'CONTROLA_EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsContasGERAR_BOLETO: TStringField
      FieldName = 'GERAR_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsContasGERAR_DEPOSITO: TStringField
      FieldName = 'GERAR_DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object sdsContasCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
    end
    object sdsContasCODMORA: TSmallintField
      FieldName = 'CODMORA'
    end
    object sdsContasREMESSA_TESTE: TStringField
      FieldName = 'REMESSA_TESTE'
      FixedChar = True
      Size = 1
    end
    object sdsContasEND_ARQUIVO_RET: TStringField
      FieldName = 'END_ARQUIVO_RET'
      Size = 200
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspContasUpdateError
    Left = 152
    Top = 32
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContas'
    OnNewRecord = cdsContasNewRecord
    Left = 216
    Top = 32
    object cdsContasID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContasNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsContasNUMCONTA: TStringField
      DisplayLabel = 'N'#186' Conta'
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsContasFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsContasCNAB: TStringField
      FieldName = 'CNAB'
      Size = 15
    end
    object cdsContasDTENCERRAMENTO: TDateField
      DisplayLabel = 'Dt. Encerramento'
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContasID_TIPOCOBRANCA: TIntegerField
      DisplayLabel = 'ID Tipo Cobran'#231'a'
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsContasDESCRICAO_NOTA: TStringField
      DisplayLabel = 'Descri'#231#227'o na Nota'
      FieldName = 'DESCRICAO_NOTA'
      Size = 30
    end
    object cdsContasTIPO_CONTA: TStringField
      DisplayLabel = 'Tipo Conta'
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsContasCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 16
    end
    object cdsContasACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 1
    end
    object cdsContasID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object cdsContasDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object cdsContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object cdsContasID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsContasID_INSTRUCAO1: TIntegerField
      FieldName = 'ID_INSTRUCAO1'
    end
    object cdsContasID_INSTRUCAO2: TIntegerField
      FieldName = 'ID_INSTRUCAO2'
    end
    object cdsContasID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsContasMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 1
    end
    object cdsContasVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object cdsContasTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 5
    end
    object cdsContasCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
    end
    object cdsContasMENSAGEM_FIXA: TStringField
      FieldName = 'MENSAGEM_FIXA'
      Size = 30
    end
    object cdsContasPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsContasPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
      DisplayFormat = '0.00'
    end
    object cdsContasVLR_IOF: TFloatField
      FieldName = 'VLR_IOF'
      DisplayFormat = '0.00'
    end
    object cdsContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
      DisplayFormat = '0.00'
    end
    object cdsContasLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 100
    end
    object cdsContasEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 200
    end
    object cdsContasNOME_ARQ_REM: TStringField
      FieldName = 'NOME_ARQ_REM'
      Size = 8
    end
    object cdsContasEXTENSAO_ARQ_REM: TStringField
      FieldName = 'EXTENSAO_ARQ_REM'
      Size = 3
    end
    object cdsContasDT_LIMITE_DESCONTO: TDateField
      FieldName = 'DT_LIMITE_DESCONTO'
    end
    object cdsContasCOMISSAO_PERMANENCIA: TStringField
      FieldName = 'COMISSAO_PERMANENCIA'
      Size = 2
    end
    object cdsContasNUM_CONVENIO_LIDER: TStringField
      FieldName = 'NUM_CONVENIO_LIDER'
      Size = 6
    end
    object cdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 2
    end
    object cdsContasDIAS_DEVOLUCAO: TIntegerField
      FieldName = 'DIAS_DEVOLUCAO'
    end
    object cdsContasNUM_ARQ_REMESSA: TIntegerField
      FieldName = 'NUM_ARQ_REMESSA'
    end
    object cdsContasPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object cdsContasPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object cdsContassdsContas_Calculo: TDataSetField
      FieldName = 'sdsContas_Calculo'
    end
    object cdsContasPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
      DisplayFormat = '0.00'
    end
    object cdsContasDIAS_MULTA: TIntegerField
      FieldName = 'DIAS_MULTA'
    end
    object cdsContasACBR_TIPOCOBRANCA: TStringField
      FieldName = 'ACBR_TIPOCOBRANCA'
      FixedChar = True
      Size = 2
    end
    object cdsContasACBR_LAYOUTREMESSA: TStringField
      FieldName = 'ACBR_LAYOUTREMESSA'
      Size = 4
    end
    object cdsContasNOSSONUMERO_POR_ANO: TStringField
      FieldName = 'NOSSONUMERO_POR_ANO'
      FixedChar = True
      Size = 1
    end
    object cdsContasBANCO_LOGO: TStringField
      FieldName = 'BANCO_LOGO'
      Size = 200
    end
    object cdsContasDT_REMESSA: TDateField
      FieldName = 'DT_REMESSA'
    end
    object cdsContasSEQ_REMESSA_DIA: TIntegerField
      FieldName = 'SEQ_REMESSA_DIA'
    end
    object cdsContasTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object cdsContasTIPO_DOCUMENTO_SANTANDER: TStringField
      FieldName = 'TIPO_DOCUMENTO_SANTANDER'
      FixedChar = True
      Size = 1
    end
    object cdsContasTIPO_CARTEIRA: TStringField
      FieldName = 'TIPO_CARTEIRA'
      Size = 2
    end
    object cdsContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsContasCONTROLA_EMISSAO_BOLETO: TStringField
      FieldName = 'CONTROLA_EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsContasGERAR_BOLETO: TStringField
      FieldName = 'GERAR_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsContasGERAR_DEPOSITO: TStringField
      FieldName = 'GERAR_DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsContasCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
    end
    object cdsContasCODMORA: TSmallintField
      FieldName = 'CODMORA'
    end
    object cdsContasREMESSA_TESTE: TStringField
      FieldName = 'REMESSA_TESTE'
      FixedChar = True
      Size = 1
    end
    object cdsContassdsContas_Sacado: TDataSetField
      FieldName = 'sdsContas_Sacado'
    end
    object cdsContasEND_ARQUIVO_RET: TStringField
      FieldName = 'END_ARQUIVO_RET'
      Size = 200
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 288
    Top = 32
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 400
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 96
    Top = 400
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 136
    Top = 400
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
    Left = 176
    Top = 400
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 472
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    OnUpdateError = dspContasUpdateError
    Left = 128
    Top = 472
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspBanco'
    Left = 192
    Top = 472
    object cdsBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField
      FieldName = 'OPCAO_GERAR_NOSSNUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField
      FieldName = 'ACBR_USAR_MONTAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField
      FieldName = 'INICIAL_NOME_ARQ_REMESSA'
      Size = 2
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 256
    Top = 472
  end
  object sdsOcorrencia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM COB_TIPO_CADASTRO'#13#10'WHERE TIPO_REG = '#39'OCO'#39#13#10'   AND' +
      ' ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 80
  end
  object dspOcorrencia: TDataSetProvider
    DataSet = sdsOcorrencia
    OnUpdateError = dspContasUpdateError
    Left = 480
    Top = 80
  end
  object cdsOcorrencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspOcorrencia'
    Left = 544
    Top = 80
    object cdsOcorrenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOcorrenciaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsOcorrenciaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsOcorrenciaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsOcorrenciaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dsOcorrencia: TDataSource
    DataSet = cdsOcorrencia
    Left = 608
    Top = 80
  end
  object sdsEspecie: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM COB_TIPO_CADASTRO'#13#10'WHERE TIPO_REG = '#39'ESP'#39#13#10'   AND' +
      ' ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 152
  end
  object dspEspecie: TDataSetProvider
    DataSet = sdsEspecie
    OnUpdateError = dspContasUpdateError
    Left = 480
    Top = 152
  end
  object cdsEspecie: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEspecie'
    Left = 544
    Top = 152
    object cdsEspecieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEspecieCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsEspecieNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEspecieTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsEspecieID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dsEspecie: TDataSource
    DataSet = cdsEspecie
    Left = 608
    Top = 152
  end
  object sdsInstrucao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM COB_TIPO_CADASTRO'#13#10'WHERE TIPO_REG = '#39'INS'#39#13#10'    AN' +
      'D ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 216
  end
  object dspInstrucao: TDataSetProvider
    DataSet = sdsInstrucao
    OnUpdateError = dspContasUpdateError
    Left = 480
    Top = 216
  end
  object cdsInstrucao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspInstrucao'
    Left = 544
    Top = 216
    object cdsInstrucaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsInstrucaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsInstrucaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsInstrucaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsInstrucaoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dsInstrucao: TDataSource
    DataSet = cdsInstrucao
    Left = 608
    Top = 216
  end
  object sdsCarteira: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COB_CARTEIRA'#13#10'WHERE ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 272
  end
  object dspCarteira: TDataSetProvider
    DataSet = sdsCarteira
    OnUpdateError = dspContasUpdateError
    Left = 480
    Top = 272
  end
  object cdsCarteira: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspCarteira'
    Left = 544
    Top = 272
    object cdsCarteiraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCarteiraCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCarteiraCODIGO_IMP: TStringField
      FieldName = 'CODIGO_IMP'
      Size = 3
    end
    object cdsCarteiraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCarteiraGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsCarteiraGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsCarteiraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dsCarteira: TDataSource
    DataSet = cdsCarteira
    Left = 608
    Top = 272
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 328
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    OnUpdateError = dspContasUpdateError
    Left = 480
    Top = 328
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 544
    Top = 328
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object cdsTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 608
    Top = 328
  end
  object sdsContas_Retorno: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTAS_RETORNO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 280
    object sdsContas_RetornoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContas_RetornoPOS_NUM_NOTA: TIntegerField
      FieldName = 'POS_NUM_NOTA'
    end
    object sdsContas_RetornoQTD_NUM_NOTA: TIntegerField
      FieldName = 'QTD_NUM_NOTA'
    end
    object sdsContas_RetornoPOS_NOSSO_NUMERO: TIntegerField
      FieldName = 'POS_NOSSO_NUMERO'
    end
    object sdsContas_RetornoQTD_NOSSO_NUMERO: TIntegerField
      FieldName = 'QTD_NOSSO_NUMERO'
    end
    object sdsContas_RetornoPOS_ID_DUPLICATA: TIntegerField
      FieldName = 'POS_ID_DUPLICATA'
    end
    object sdsContas_RetornoQTD_ID_DUPLICATA: TIntegerField
      FieldName = 'QTD_ID_DUPLICATA'
    end
    object sdsContas_RetornoPOS_OCORRENCIA: TIntegerField
      FieldName = 'POS_OCORRENCIA'
    end
    object sdsContas_RetornoPOS_DT_OCORRENCIA: TIntegerField
      FieldName = 'POS_DT_OCORRENCIA'
    end
    object sdsContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField
      FieldName = 'POS_CONF_NOSSO_NUMERO'
    end
    object sdsContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField
      FieldName = 'QTD_CONF_NOSSO_NUMERO'
    end
    object sdsContas_RetornoPOS_DT_VENCIMENTO: TIntegerField
      FieldName = 'POS_DT_VENCIMENTO'
    end
    object sdsContas_RetornoPOS_VLR_TITULO: TIntegerField
      FieldName = 'POS_VLR_TITULO'
    end
    object sdsContas_RetornoQTD_VLR_TITULO: TIntegerField
      FieldName = 'QTD_VLR_TITULO'
    end
    object sdsContas_RetornoPOS_ESPECIE: TIntegerField
      FieldName = 'POS_ESPECIE'
    end
    object sdsContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField
      FieldName = 'POS_VLR_DESPESA_COB'
    end
    object sdsContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField
      FieldName = 'QTD_VLR_DESPESA_COB'
    end
    object sdsContas_RetornoPOS_VLR_IOF: TIntegerField
      FieldName = 'POS_VLR_IOF'
    end
    object sdsContas_RetornoQTD_VLR_IOF: TIntegerField
      FieldName = 'QTD_VLR_IOF'
    end
    object sdsContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField
      FieldName = 'POS_VLR_ABATIMENTO'
    end
    object sdsContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField
      FieldName = 'QTD_VLR_ABATIMENTO'
    end
    object sdsContas_RetornoPOS_VLR_DESCONTO: TIntegerField
      FieldName = 'POS_VLR_DESCONTO'
    end
    object sdsContas_RetornoQTD_VLR_DESCONTO: TIntegerField
      FieldName = 'QTD_VLR_DESCONTO'
    end
    object sdsContas_RetornoPOS_VLR_PAGO: TIntegerField
      FieldName = 'POS_VLR_PAGO'
    end
    object sdsContas_RetornoQTD_VLR_PAGO: TIntegerField
      FieldName = 'QTD_VLR_PAGO'
    end
    object sdsContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField
      FieldName = 'POS_VLR_JUROS_PAGO'
    end
    object sdsContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField
      FieldName = 'QTD_VLR_JUROS_PAGO'
    end
    object sdsContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField
      FieldName = 'POS_DT_LIQUIDACAO'
    end
    object sdsContas_RetornoPOS_INST_CANCELADA: TIntegerField
      FieldName = 'POS_INST_CANCELADA'
    end
    object sdsContas_RetornoPOS_ERRO: TIntegerField
      FieldName = 'POS_ERRO'
    end
    object sdsContas_RetornoQTD_ERRO: TIntegerField
      FieldName = 'QTD_ERRO'
    end
    object sdsContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField
      FieldName = 'POS_COD_LIQUIDACAO'
    end
    object sdsContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField
      FieldName = 'QTD_COD_LIQUIDACAO'
    end
    object sdsContas_RetornoPOS_CARTEIRA: TIntegerField
      FieldName = 'POS_CARTEIRA'
    end
    object sdsContas_RetornoPOS_NOME_CLIENTE: TIntegerField
      FieldName = 'POS_NOME_CLIENTE'
    end
    object sdsContas_RetornoQTD_NOME_CLIENTE: TIntegerField
      FieldName = 'QTD_NOME_CLIENTE'
    end
    object sdsContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object sdsContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object sdsContas_RetornoNUMCONTA_CEDENTE: TStringField
      FieldName = 'NUMCONTA_CEDENTE'
      FixedChar = True
      Size = 1
    end
    object sdsContas_RetornoQTD_ERRO_CADASTRO: TIntegerField
      FieldName = 'QTD_ERRO_CADASTRO'
    end
    object sdsContas_RetornoQTD_CARTEIRA: TIntegerField
      FieldName = 'QTD_CARTEIRA'
    end
  end
  object dspContas_Retorno: TDataSetProvider
    DataSet = sdsContas_Retorno
    OnUpdateError = dspContasUpdateError
    Left = 136
    Top = 280
  end
  object cdsContas_Retorno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContas_Retorno'
    Left = 200
    Top = 280
    object cdsContas_RetornoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContas_RetornoPOS_NUM_NOTA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Inicial N'#186' Nota'
      FieldName = 'POS_NUM_NOTA'
    end
    object cdsContas_RetornoQTD_NUM_NOTA: TIntegerField
      DisplayLabel = 'Qtd. N'#186' Nota'
      FieldName = 'QTD_NUM_NOTA'
    end
    object cdsContas_RetornoPOS_NOSSO_NUMERO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Nosso N'#250'mero'
      FieldName = 'POS_NOSSO_NUMERO'
    end
    object cdsContas_RetornoQTD_NOSSO_NUMERO: TIntegerField
      DisplayLabel = 'Qtd. Nosso N'#250'mero'
      FieldName = 'QTD_NOSSO_NUMERO'
    end
    object cdsContas_RetornoPOS_ID_DUPLICATA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Identifica'#231#227'o do T'#237'tulo'
      FieldName = 'POS_ID_DUPLICATA'
    end
    object cdsContas_RetornoQTD_ID_DUPLICATA: TIntegerField
      DisplayLabel = 'Qtd. Identifica'#231#227'o do T'#237'tulo'
      FieldName = 'QTD_ID_DUPLICATA'
    end
    object cdsContas_RetornoPOS_OCORRENCIA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Ocorr'#234'ncia'
      FieldName = 'POS_OCORRENCIA'
    end
    object cdsContas_RetornoPOS_DT_OCORRENCIA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Dt. Ocorr'#234'ncia'
      FieldName = 'POS_DT_OCORRENCIA'
    end
    object cdsContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Nosso N'#250'mero (Banco)'
      FieldName = 'POS_CONF_NOSSO_NUMERO'
    end
    object cdsContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField
      DisplayLabel = 'Qtd. Nosso N'#250'mero Banco'
      FieldName = 'QTD_CONF_NOSSO_NUMERO'
    end
    object cdsContas_RetornoPOS_DT_VENCIMENTO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Dt. Vencimento'
      FieldName = 'POS_DT_VENCIMENTO'
    end
    object cdsContas_RetornoPOS_VLR_TITULO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor T'#237'tulo'
      FieldName = 'POS_VLR_TITULO'
    end
    object cdsContas_RetornoQTD_VLR_TITULO: TIntegerField
      DisplayLabel = 'Qtd. Valor T'#237'tulo'
      FieldName = 'QTD_VLR_TITULO'
    end
    object cdsContas_RetornoPOS_ESPECIE: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Esp'#233'cie'
      FieldName = 'POS_ESPECIE'
    end
    object cdsContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor Despesa'
      FieldName = 'POS_VLR_DESPESA_COB'
    end
    object cdsContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField
      DisplayLabel = 'Qtd. Valor Despesa'
      FieldName = 'QTD_VLR_DESPESA_COB'
    end
    object cdsContas_RetornoPOS_VLR_IOF: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor IOF'
      FieldName = 'POS_VLR_IOF'
    end
    object cdsContas_RetornoQTD_VLR_IOF: TIntegerField
      DisplayLabel = 'Qtd. Valor IOF'
      FieldName = 'QTD_VLR_IOF'
    end
    object cdsContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor Abatimento'
      FieldName = 'POS_VLR_ABATIMENTO'
    end
    object cdsContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField
      DisplayLabel = 'Qtd. Valor Abatimento'
      FieldName = 'QTD_VLR_ABATIMENTO'
    end
    object cdsContas_RetornoPOS_VLR_DESCONTO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor Desconto'
      FieldName = 'POS_VLR_DESCONTO'
    end
    object cdsContas_RetornoQTD_VLR_DESCONTO: TIntegerField
      DisplayLabel = 'Qtd. Valor Desconto'
      FieldName = 'QTD_VLR_DESCONTO'
    end
    object cdsContas_RetornoPOS_VLR_PAGO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor Pago'
      FieldName = 'POS_VLR_PAGO'
    end
    object cdsContas_RetornoQTD_VLR_PAGO: TIntegerField
      DisplayLabel = 'Qtd. Valor Pago'
      FieldName = 'QTD_VLR_PAGO'
    end
    object cdsContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Valor Juros Pago'
      FieldName = 'POS_VLR_JUROS_PAGO'
    end
    object cdsContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField
      DisplayLabel = 'Qtd. Valor Juros Pago'
      FieldName = 'QTD_VLR_JUROS_PAGO'
    end
    object cdsContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Dt. Liquida'#231#227'o'
      FieldName = 'POS_DT_LIQUIDACAO'
    end
    object cdsContas_RetornoPOS_INST_CANCELADA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Instru'#231#227'o Cancelada'
      FieldName = 'POS_INST_CANCELADA'
    end
    object cdsContas_RetornoPOS_ERRO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Erro'
      FieldName = 'POS_ERRO'
    end
    object cdsContas_RetornoQTD_ERRO: TIntegerField
      DisplayLabel = 'Qtd Erros'
      FieldName = 'QTD_ERRO'
    end
    object cdsContas_RetornoQTD_ERRO_CADASTRO: TIntegerField
      DisplayLabel = 'Qtd. Erro (Digitos)'
      FieldName = 'QTD_ERRO_CADASTRO'
    end
    object cdsContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o C'#243'd. Liquida'#231#227'o'
      FieldName = 'POS_COD_LIQUIDACAO'
    end
    object cdsContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField
      DisplayLabel = 'Qtd. C'#243'd. Liquida'#231#227'o'
      FieldName = 'QTD_COD_LIQUIDACAO'
    end
    object cdsContas_RetornoPOS_CARTEIRA: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Carteira'
      FieldName = 'POS_CARTEIRA'
    end
    object cdsContas_RetornoQTD_CARTEIRA: TIntegerField
      DisplayLabel = 'Qtd. Carteira'
      FieldName = 'QTD_CARTEIRA'
    end
    object cdsContas_RetornoPOS_NOME_CLIENTE: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Nome Sacado'
      FieldName = 'POS_NOME_CLIENTE'
    end
    object cdsContas_RetornoQTD_NOME_CLIENTE: TIntegerField
      DisplayLabel = 'Qtd. Nome Sacado'
      FieldName = 'QTD_NOME_CLIENTE'
    end
    object cdsContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o N'#186' Conta'
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object cdsContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o C'#243'd. Banco'
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object cdsContas_RetornoNUMCONTA_CEDENTE: TStringField
      DisplayLabel = 'N=N'#186' Conta  C=Cedente'
      FieldName = 'NUMCONTA_CEDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dsContas_Retorno: TDataSource
    DataSet = cdsContas_Retorno
    Left = 272
    Top = 280
  end
  object sdsContas_Calculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTAS_CALCULO'#13#10'WHERE ID = :ID'
    DataSource = dsContas_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 136
    object sdsContas_CalculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object cdsContas_Calculo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContassdsContas_Calculo
    IndexFieldNames = 'ID;ANO;ITEM'
    Params = <>
    OnNewRecord = cdsContas_CalculoNewRecord
    Left = 184
    Top = 136
    object cdsContas_CalculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_CalculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_CalculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object dsContas_Calculo: TDataSource
    DataSet = cdsContas_Calculo
    Left = 256
    Top = 136
  end
  object dsContas_Mestre: TDataSource
    DataSet = sdsContas
    Left = 48
    Top = 88
  end
  object mArqNumero: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NossoNumero'
    Params = <>
    Left = 376
    Top = 440
    Data = {
      3A0000009619E0BD0100000018000000010000000000030000003A000B4E6F73
      736F4E756D65726F01004900000001000557494454480200020014000000}
    object mArqNumeroNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
  end
  object dsmArqNumero: TDataSource
    DataSet = mArqNumero
    Left = 416
    Top = 440
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 448
    object qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField
      FieldName = 'CONTROLAR_BANCO_REM_DEP'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 504
    object qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsContas_Sacado: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM CONTAS_SACADO'#13#10'WHERE ID = :ID'
    DataSource = dsContas_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 184
    object sdsContas_SacadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_SacadoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_SacadoCOD_SACADO: TStringField
      FieldName = 'COD_SACADO'
      Size = 10
    end
  end
  object cdsContas_Sacado: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContassdsContas_Sacado
    IndexFieldNames = 'ID;FILIAL'
    Params = <>
    Left = 168
    Top = 184
    object cdsContas_SacadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_SacadoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_SacadoCOD_SACADO: TStringField
      FieldName = 'COD_SACADO'
      Size = 10
    end
    object cdsContas_SacadolkNomeFilial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeFilial'
      LookupDataSet = cdsFiliallk
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FILIAL'
      Size = 70
      Lookup = True
    end
  end
  object dsContas_Sacado: TDataSource
    DataSet = cdsContas_Sacado
    Left = 240
    Top = 184
  end
  object sdsFiliallk: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 376
  end
  object dspFiliallk: TDataSetProvider
    DataSet = sdsFiliallk
    Left = 440
    Top = 376
  end
  object cdsFiliallk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFiliallk'
    Left = 480
    Top = 376
  end
  object dsFiliallk: TDataSource
    DataSet = cdsFiliallk
    Left = 520
    Top = 376
  end
end
