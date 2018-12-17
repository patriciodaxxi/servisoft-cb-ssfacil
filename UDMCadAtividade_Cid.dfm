object DMCadAtividade_Cid: TDMCadAtividade_Cid
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 356
  Top = 192
  Height = 328
  Width = 766
  object sdsAtividade_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object sdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsAtividade_CidID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
    object sdsAtividade_CidPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsAtividade_CidDT_INICIO_VIGENCIA: TDateField
      FieldName = 'DT_INICIO_VIGENCIA'
    end
    object sdsAtividade_CidDT_FINAL_VIGENCIA: TDateField
      FieldName = 'DT_FINAL_VIGENCIA'
    end
    object sdsAtividade_CidCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      Size = 10
    end
  end
  object dspAtividade_Cid: TDataSetProvider
    DataSet = sdsAtividade_Cid
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspAtividade_CidUpdateError
    Left = 128
    Top = 32
  end
  object cdsAtividade_Cid: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAtividade_Cid'
    Left = 200
    Top = 32
    object cdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsAtividade_CidID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
    object cdsAtividade_CidPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsAtividade_CidDT_INICIO_VIGENCIA: TDateField
      FieldName = 'DT_INICIO_VIGENCIA'
    end
    object cdsAtividade_CidDT_FINAL_VIGENCIA: TDateField
      FieldName = 'DT_FINAL_VIGENCIA'
    end
    object cdsAtividade_CidCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      Size = 10
    end
  end
  object dsAtividade_Cid: TDataSource
    DataSet = cdsAtividade_Cid
    Left = 264
    Top = 32
  end
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 112
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
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 448
    Top = 112
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico'
    Left = 512
    Top = 112
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
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 584
    Top = 112
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SERVICO'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 192
    object qServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object qServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object qServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object qServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object qServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object qServicoCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
end
