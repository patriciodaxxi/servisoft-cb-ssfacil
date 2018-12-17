object dmAcabado: TdmAcabado
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 371
  Top = 138
  Height = 560
  Width = 635
  object sdsAcabado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PA.*'#13#10'FROM CARTO_ACABADO PA'#13#10'WHERE PA.ID = :ID'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 64
    object sdsAcabadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsAcabadoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object sdsAcabadoPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
  end
  object cdsAcabado: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsAcabado
    Params = <>
    Left = 208
    Top = 64
    object cdsAcabadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabadoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsAcabadoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object cdsAcabadoPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
  end
  object dsAcabado: TDataSource
    DataSet = cdsAcabado
    Left = 264
    Top = 64
  end
  object sdsAcabadoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA, P.NOME, CA.FACA_ID, CA.FICHA_TEC_ID, ' +
      'CA.PASTA_ID, CFT.NOME FICHATECNICA, CF.NOME FACA, CP.DESCRICAO P' +
      'ASTA, P.LOCALIZACAO'#13#10'FROM PRODUTO P '#13#10'LEFT JOIN CARTO_ACABADO CA' +
      ' ON (CA.ID = P.ID)'#13#10'LEFT JOIN CARTO_FT CFT ON (CA.FICHA_TEC_ID =' +
      ' CFT.ID)'#13#10'LEFT JOIN CARTO_FACA CF ON (CA.FACA_ID = CF.ID)'#13#10'LEFT ' +
      'JOIN CARTO_PASTA CP ON (CA.PASTA_ID = CP.ID)'#13#10'WHERE P.TIPO_REG =' +
      ' '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 368
    Top = 64
    object sdsAcabadoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAcabadoConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAcabadoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsAcabadoConsFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsAcabadoConsFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object sdsAcabadoConsPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
    object sdsAcabadoConsFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      ProviderFlags = []
      Size = 50
    end
    object sdsAcabadoConsFACA: TStringField
      FieldName = 'FACA'
      ProviderFlags = []
      Size = 50
    end
    object sdsAcabadoConsPASTA: TStringField
      FieldName = 'PASTA'
      ProviderFlags = []
      Size = 30
    end
    object sdsAcabadoConsLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dspAcabadoCons: TDataSetProvider
    DataSet = sdsAcabadoCons
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspAcabadoUpdateError
    Left = 432
    Top = 64
  end
  object cdsAcabadoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabadoCons'
    Left = 488
    Top = 64
    object cdsAcabadoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabadoConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAcabadoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcabadoConsFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsAcabadoConsFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object cdsAcabadoConsPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
    object cdsAcabadoConsFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      ProviderFlags = []
      Size = 50
    end
    object cdsAcabadoConsFACA: TStringField
      FieldName = 'FACA'
      ProviderFlags = []
      Size = 50
    end
    object cdsAcabadoConsPASTA: TStringField
      FieldName = 'PASTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsAcabadoConsLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dsAcabadoCons: TDataSource
    DataSet = cdsAcabadoCons
    Left = 544
    Top = 64
  end
  object sdsFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, FECHAMENTO_FD, FECHAMENTO_CT, FECHAMENTO_TP, FE' +
      'CHAMENTO_SP'#13#10'FROM CARTO_FACA CF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 112
    object sdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object sdsFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object sdsFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object sdsFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
  end
  object dspFaca: TDataSetProvider
    DataSet = sdsFaca
    Left = 152
    Top = 112
  end
  object cdsFaca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaca'
    Left = 208
    Top = 112
    object cdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object cdsFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object cdsFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object cdsFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
  end
  object dsFaca: TDataSource
    DataSet = cdsFaca
    Left = 264
    Top = 112
  end
  object sdsFichaTecnica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CFT.ID, CFT.NOME'#13#10'FROM CARTO_FT CFT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 160
    object sdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sdsFichaTecnica
    Left = 152
    Top = 160
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 208
    Top = 160
    object cdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 264
    Top = 160
  end
  object sdsPasta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CARTO_PASTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 208
    object sdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dspPasta: TDataSetProvider
    DataSet = sdsPasta
    Left = 152
    Top = 208
  end
  object cdsPasta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPasta'
    Left = 208
    Top = 208
    object cdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsPasta: TDataSource
    DataSet = cdsPasta
    Left = 264
    Top = 208
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, REFERENCIA, NOME, INATIVO, ORIGEM_PROD, TIPO_REG, POS' +
      'SE_MATERIAL, MATERIAL_OUTROS, ESTOQUE, ID_NCM, PERC_IPI, PERC_RE' +
      'DUCAOICMSSUBST, PRECO_VENDA, UNIDADE, LOCALIZACAO'#13#10'FROM PRODUTO'#13 +
      #10'WHERE TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 16
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspAcabadoUpdateError
    Left = 152
    Top = 16
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    OnNewRecord = cdsProdutoNewRecord
    Left = 208
    Top = 16
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdsAcabado: TDataSetField
      FieldName = 'sdsAcabado'
    end
    object cdsProdutosdsAcabadoProcesso: TDataSetField
      FieldName = 'sdsAcabadoProcesso'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
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
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.0000'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 264
    Top = 16
  end
  object dsmProduto: TDataSource
    DataSet = sdsProduto
    Left = 320
    Top = 16
  end
  object sdsAcabadoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACAB_PROCESSO'#13#10'WHERE ID = :ID'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 256
    object sdsAcabadoProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sdsAcabadoProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object cdsAcabadoProcesso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsAcabadoProcesso
    Params = <>
    Left = 208
    Top = 256
    object cdsAcabadoProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabadoProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsAcabadoProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAcabadoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object dsAcabadoProcesso: TDataSource
    DataSet = cdsAcabadoProcesso
    Left = 264
    Top = 256
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NCM'#13#10'FROM TAB_NCM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 304
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 152
    Top = 304
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 208
    Top = 304
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 264
    Top = 304
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID_NCM_PADRAO, PERC_IPI_PADRAO'#13#10'FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 352
    object sdsParametrosID_NCM_PADRAO: TIntegerField
      FieldName = 'ID_NCM_PADRAO'
    end
    object sdsParametrosPERC_IPI_PADRAO: TFloatField
      FieldName = 'PERC_IPI_PADRAO'
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 152
    Top = 352
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 208
    Top = 352
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 264
    Top = 352
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UNIDADE'#13#10'FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 400
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 152
    Top = 400
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 208
    Top = 400
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 264
    Top = 400
  end
end
