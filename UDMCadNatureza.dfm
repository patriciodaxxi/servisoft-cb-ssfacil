object DMCadNatureza: TDMCadNatureza
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsNatureza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NAT.*, P.NOME NOME_PROVEDOR'#13#10'FROM NFSE_NATUREZA NAT'#13#10'LEFT' +
      ' JOIN PROVEDOR P'#13#10'ON NAT.ID_PROVEDOR = P.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsNaturezaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNaturezaID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object sdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object sdsNaturezaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsNaturezaTRIBUTACAO_DF: TStringField
      FieldName = 'TRIBUTACAO_DF'
      FixedChar = True
      Size = 1
    end
    object sdsNaturezaCOD_TRIBUTO: TStringField
      FieldName = 'COD_TRIBUTO'
      Size = 5
    end
    object sdsNaturezaNOME_PROVEDOR: TStringField
      FieldName = 'NOME_PROVEDOR'
      ProviderFlags = []
      Size = 40
    end
    object sdsNaturezaRETER_ISSQN: TStringField
      FieldName = 'RETER_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsNaturezaMOSTRAR_BASE_ISSQN: TStringField
      FieldName = 'MOSTRAR_BASE_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsNaturezaUSA_CIDADE_CLI: TStringField
      FieldName = 'USA_CIDADE_CLI'
      FixedChar = True
      Size = 1
    end
  end
  object dspNatureza: TDataSetProvider
    DataSet = sdsNatureza
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspNaturezaUpdateError
    Left = 128
    Top = 32
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNatureza'
    OnNewRecord = cdsNaturezaNewRecord
    Left = 192
    Top = 32
    object cdsNaturezaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNaturezaID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsNaturezaTRIBUTACAO_DF: TStringField
      FieldName = 'TRIBUTACAO_DF'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaCOD_TRIBUTO: TStringField
      FieldName = 'COD_TRIBUTO'
      Size = 5
    end
    object cdsNaturezaNOME_PROVEDOR: TStringField
      FieldName = 'NOME_PROVEDOR'
      ProviderFlags = []
      Size = 40
    end
    object cdsNaturezaRETER_ISSQN: TStringField
      FieldName = 'RETER_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaMOSTRAR_BASE_ISSQN: TStringField
      FieldName = 'MOSTRAR_BASE_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaUSA_CIDADE_CLI: TStringField
      FieldName = 'USA_CIDADE_CLI'
      FixedChar = True
      Size = 1
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 264
    Top = 32
  end
  object sdsProvedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROVEDOR'#13#10'WHERE TIPO_NATUREZA = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 96
    object sdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspProvedor: TDataSetProvider
    DataSet = sdsProvedor
    OnUpdateError = dspNaturezaUpdateError
    Left = 128
    Top = 96
  end
  object cdsProvedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProvedor'
    Left = 192
    Top = 96
    object cdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsProvedor: TDataSource
    DataSet = cdsProvedor
    Left = 264
    Top = 96
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 168
    object qParametros_SerUSA_NATUREZA_CID_NFSE: TStringField
      FieldName = 'USA_NATUREZA_CID_NFSE'
      FixedChar = True
      Size = 1
    end
  end
end
