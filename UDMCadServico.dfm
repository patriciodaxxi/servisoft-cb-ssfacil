object DMCadServico: TDMCadServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 319
  Top = 129
  Height = 542
  Width = 637
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object sdsServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object sdsServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object sdsServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object sdsServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object sdsServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object sdsServicoCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object sdsServicoCOD_SERVICO_EQUIV: TStringField
      FieldName = 'COD_SERVICO_EQUIV'
      Size = 5
    end
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    OnUpdateError = dspServicoUpdateError
    Left = 160
    Top = 32
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico'
    Left = 224
    Top = 32
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
    object cdsServicoCOD_SERVICO_EQUIV: TStringField
      FieldName = 'COD_SERVICO_EQUIV'
      Size = 5
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 296
    Top = 32
  end
  object qVerifica_Sintetica: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, CODIGO'
      'FROM SERVICO'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 88
    object qVerifica_SinteticaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_SinteticaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
  end
  object sdsAtividade_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 128
  end
  object dspAtividade_Cid: TDataSetProvider
    DataSet = sdsAtividade_Cid
    Left = 184
    Top = 128
  end
  object cdsAtividade_Cid: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAtividade_Cid'
    Left = 224
    Top = 128
    object cdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsAtividade_Cid: TDataSource
    DataSet = cdsAtividade_Cid
    Left = 264
    Top = 128
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
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LEI_TRANSPARENCIA_SERVICO'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 192
    object qParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
      FixedChar = True
      Size = 2
    end
  end
end
