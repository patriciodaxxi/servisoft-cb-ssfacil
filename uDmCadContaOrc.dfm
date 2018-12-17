object dmCadContaOrc: TdmCadContaOrc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 109
  Height = 480
  Width = 906
  object sdsContaOrc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE'#13#10'   WHEN NIVEL = 1 THEN DESCRICAO'#13#10'   WHEN NIVE' +
      'L = 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||C.DESCRICAO'#13#10'   WHEN NIVEL > 2' +
      ' THEN LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.DESCRICAO'#13#10'   END AS ' +
      'NOME_AUX'#13#10'from CONTA_ORCAMENTO C  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 16
    object sdsContaOrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsContaOrcNIVEL: TIntegerField
      FieldName = 'NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcINATIVO: TStringField
      FieldName = 'INATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object sdsContaOrcID_TIPO_CONTA: TIntegerField
      FieldName = 'ID_TIPO_CONTA'
    end
    object sdsContaOrcVLR_ORC: TFloatField
      FieldName = 'VLR_ORC'
    end
    object sdsContaOrcANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspContaOrc: TDataSetProvider
    DataSet = sdsContaOrc
    Options = [poCascadeUpdates]
    UpdateMode = upWhereChanged
    OnUpdateError = dspContaOrcUpdateError
    Left = 96
    Top = 16
  end
  object cdsContaOrc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContaOrc'
    OnNewRecord = cdsContaOrcNewRecord
    Left = 152
    Top = 16
    object cdsContaOrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContaOrcNIVEL: TIntegerField
      FieldName = 'NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcINATIVO: TStringField
      FieldName = 'INATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrcNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object cdsContaOrcsdsContaOrc_CCusto: TDataSetField
      FieldName = 'sdsContaOrc_CCusto'
    end
    object cdsContaOrcsdsContaOrc_Itens: TDataSetField
      FieldName = 'sdsContaOrc_Itens'
    end
    object cdsContaOrcID_TIPO_CONTA: TIntegerField
      FieldName = 'ID_TIPO_CONTA'
    end
    object cdsContaOrcVLR_ORC: TFloatField
      FieldName = 'VLR_ORC'
    end
    object cdsContaOrcANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dsContaOrc: TDataSource
    DataSet = cdsContaOrc
    Left = 216
    Top = 16
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, DESCRICAO, NIVEL'#13#10'FROM CONTA_ORCAMENTO'#13#10'WHERE' +
      ' TIPO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 96
    object sdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsSuperiorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dspSuperior: TDataSetProvider
    DataSet = sdsSuperior
    OnUpdateError = dspContaOrcUpdateError
    Left = 616
    Top = 96
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 680
    Top = 96
    object cdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsSuperiorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dsSuperior: TDataSource
    DataSet = cdsSuperior
    Left = 752
    Top = 96
  end
  object sqProximo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(CODIGO)'
      'FROM CONTA_ORCAMENTO'
      'WHERE CODIGO LIKE '#39':C%'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 160
    object sqProximoMAX: TStringField
      FieldName = 'MAX'
    end
  end
  object dsContaOrc_Mestre: TDataSource
    DataSet = sdsContaOrc
    Left = 40
    Top = 80
  end
  object sdsContaOrc_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTA_ORCAMENTO_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsContaOrc_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 136
    object sdsContaOrc_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContaOrc_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContaOrc_ItensANO: TIntegerField
      FieldName = 'ANO'
    end
    object sdsContaOrc_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsContaOrc_ItensVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object cdsContaOrc_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContaOrcsdsContaOrc_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 128
    Top = 136
    object cdsContaOrc_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaOrc_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaOrc_ItensANO: TIntegerField
      FieldName = 'ANO'
    end
    object cdsContaOrc_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrc_ItensVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
  end
  object dsContaOrc_Itens: TDataSource
    DataSet = cdsContaOrc_Itens
    Left = 224
    Top = 136
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND ((TP_CLIEN' +
      'TE = '#39'S'#39')'#13#10'      OR (TP_FORNECEDOR = '#39'S'#39'))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 208
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 576
    Top = 208
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 616
    Top = 208
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
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 656
    Top = 208
  end
  object qCalculo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(CTA.VALOR) VALOR'
      'FROM CONTA_ORCAMENTO CTA'
      'WHERE CTA.inativo = '#39'N'#39
      '  AND CTA.tipo_despesa = '#39'F'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 328
    object qCalculoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 232
    object qParametrosUSA_PREVISAO: TStringField
      FieldName = 'USA_PREVISAO'
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
    Left = 368
    Top = 288
    object qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsContaOrc_CCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*,B.DESCRICAO'#13#10'FROM CONTA_ORCAMENTO_CCUSTO A'#13#10'inner JOI' +
      'N CENTROCUSTO B ON A.ID_CENTROCUSTO = B.ID'#13#10'WHERE A.ID = :ID'
    DataSource = dsContaOrc_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 200
    object sdsContaOrc_CCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContaOrc_CCustoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContaOrc_CCustoID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsContaOrc_CCustoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsContaOrc_CCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsContaOrc_CCusto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContaOrcsdsContaOrc_CCusto
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 128
    Top = 200
    object cdsContaOrc_CCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaOrc_CCustoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaOrc_CCustoID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaOrc_CCustoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
    end
    object cdsContaOrc_CCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsContaOrc_CCusto: TDataSource
    DataSet = cdsContaOrc_CCusto
    Left = 224
    Top = 200
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
      'SELECT * FROM CENTROCUSTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 272
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
    object qCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
  end
  object qPlanoContabil: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select A.ID, A.CODIGO || '#39' - '#39' || A.NOME AS NOME_AUX'
      'from PLANO_CONTABIL A'
      'where A.ID = :ID   ')
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 272
    object qPlanoContabilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPlanoContabilNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 163
    end
  end
  object qParametros_Cta_Orc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_CTA_ORC')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 160
    object qParametros_Cta_OrcUSA_VALOR_ORC: TStringField
      FieldName = 'USA_VALOR_ORC'
      FixedChar = True
      Size = 1
    end
    object qParametros_Cta_OrcMOSTRAR_PESSOA: TStringField
      FieldName = 'MOSTRAR_PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTipo_Conta_Orc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_CONTA_ORC'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 280
  end
  object dspTipo_Conta_Orc: TDataSetProvider
    DataSet = sdsTipo_Conta_Orc
    Left = 608
    Top = 280
  end
  object cdsTipo_Conta_Orc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Conta_Orc'
    Left = 648
    Top = 280
    object cdsTipo_Conta_OrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_Conta_OrcNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipo_Conta_Orc: TDataSource
    DataSet = cdsTipo_Conta_Orc
    Left = 688
    Top = 280
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*,'#13#10'CASE'#13#10' WHEN NIVEL = 1 THEN DESCRICAO'#13#10' WHEN NIVEL =' +
      ' 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||C.DESCRICAO'#13#10' WHEN NIVEL > 2 THEN' +
      ' LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.DESCRICAO'#13#10' END AS NOME_AU' +
      'X, C.ANO, C.vlr_orc VALOR_ORC'#13#10'from CONTA_ORCAMENTO C'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Options = [poCascadeUpdates]
    UpdateMode = upWhereChanged
    OnUpdateError = dspContaOrcUpdateError
    Left = 456
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    OnCalcFields = cdsConsultaCalcFields
    Left = 512
    Top = 8
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsultaSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsConsultaDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object cdsConsultaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsConsultaTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsConsultaTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
    end
    object cdsConsultaID_TIPO_CONTA: TIntegerField
      FieldName = 'ID_TIPO_CONTA'
    end
    object cdsConsultaNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 32765
    end
    object cdsConsultaANO: TIntegerField
      FieldName = 'ANO'
    end
    object cdsConsultaVALOR_ORC: TFloatField
      FieldName = 'VALOR_ORC'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaclPerc_Adim: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_Adim'
      Calculated = True
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 576
    Top = 8
  end
  object qTotalFixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(c.vlr_orc) VLR_ORC'
      'from conta_orcamento c'
      'WHERE C.TIPO_DESPESA = '#39'F'#39
      '  AND C.INATIVO = '#39'N'#39
      '  AND C.vlr_orc IS NOT NULL'
      '  AND C.tipo = '#39'A'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 368
    object qTotalFixaVLR_ORC: TFloatField
      FieldName = 'VLR_ORC'
      DisplayFormat = '0.00'
    end
  end
  object sdsPRC_SOMA_VLR_ORC: TSQLDataSet
    CommandText = 'PRC_SOMA_VLR_ORC'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 433
    Top = 368
  end
  object sdsANT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*,'#13#10'CASE'#13#10' WHEN NIVEL = 1 THEN DESCRICAO'#13#10' WHEN NIVEL =' +
      ' 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||C.DESCRICAO'#13#10' WHEN NIVEL > 2 THEN' +
      ' LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.DESCRICAO'#13#10' END AS NOME_AU' +
      'X, CI.ANO, CI.VALOR VALOR_ORC'#13#10'from CONTA_ORCAMENTO C'#13#10'LEFT JOIN' +
      ' conta_orcamento_itens CI'#13#10'ON C.ID = CI.ID'#13#10'  AND C.ANO = (selec' +
      't first 1 ANO from conta_orcamento_itens WHERE ID = C.ID order b' +
      'y ANO desc )'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 56
  end
  object qTotalPares: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT sum(p.previsao) PREVISAO'
      'FROM projecao_semana p'
      'WHERE P.ANO = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 360
    object qTotalParesPREVISAO: TFMTBCDField
      FieldName = 'PREVISAO'
      Precision = 15
      Size = 0
    end
  end
end
