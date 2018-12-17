object DMCadServico_Int: TDMCadServico_Int
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 319
  Top = 129
  Height = 542
  Width = 637
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsServico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsServico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsServico_IntCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object sdsServico_IntID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    OnUpdateError = dspServico_IntUpdateError
    Left = 160
    Top = 32
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 224
    Top = 32
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
      DisplayFormat = '0.00'
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
    object cdsServico_IntID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 296
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 128
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosTIPO_COMISSAO_NFSE: TStringField
      FieldName = 'TIPO_COMISSAO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
      FixedChar = True
      Size = 2
    end
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  AND TP_VENDEDOR = ' +
      #39'S'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 104
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    OnUpdateError = dspServico_IntUpdateError
    Left = 152
    Top = 104
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 216
    Top = 104
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 288
    Top = 104
  end
  object sdsTab_IBPT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_IBPT'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 168
    Top = 200
    object sdsTab_IBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_IBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object sdsTab_IBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object sdsTab_IBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object sdsTab_IBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsTab_IBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object sdsTab_IBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
  end
  object dspTab_IBPT: TDataSetProvider
    DataSet = sdsTab_IBPT
    Left = 200
    Top = 200
  end
  object cdsTab_IBPT: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_IBPT'
    Left = 240
    Top = 200
    object cdsTab_IBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_IBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsTab_IBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object cdsTab_IBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object cdsTab_IBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsTab_IBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object cdsTab_IBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
  end
  object dsTab_IBPT: TDataSource
    DataSet = cdsTab_IBPT
    Left = 280
    Top = 200
  end
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO, CNAE, PERC_ISS, ID_ATIVIDADE_CID, CODIGO_NBS'#13#10'FROM SER' +
      'VICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 168
    Top = 294
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 200
    Top = 294
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 240
    Top = 294
    object cdsServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
    object cdsServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsServicoCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 280
    Top = 294
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT F.id_servico_sint, I.codigo'
      'FROM FILIAL F'
      'inner join servico I'
      'ON F.id_servico_sint = I.id')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 240
    object qFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object qFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
  end
end
