object DMCadRet_Tabela_Rej: TDMCadRet_Tabela_Rej
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 490
  Top = 224
  Height = 296
  Width = 478
  object sdsRet_Tabela_Rej: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CAD.*, B.NOME NOME_BANCO'#13#10'FROM RET_TABELA_REJ CAD'#13#10'INNER ' +
      'JOIN BANCO B'#13#10'ON CAD.ID_BANCO = B.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsRet_Tabela_RejID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRet_Tabela_RejCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object sdsRet_Tabela_RejNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object sdsRet_Tabela_RejID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsRet_Tabela_RejNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
  end
  object dspRet_Tabela_Rej: TDataSetProvider
    DataSet = sdsRet_Tabela_Rej
    OnUpdateError = dspRet_Tabela_RejUpdateError
    Left = 128
    Top = 32
  end
  object cdsRet_Tabela_Rej: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspRet_Tabela_Rej'
    Left = 192
    Top = 32
    object cdsRet_Tabela_RejID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRet_Tabela_RejCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object cdsRet_Tabela_RejNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object cdsRet_Tabela_RejID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsRet_Tabela_RejNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsRet_Tabela_Rej: TDataSource
    DataSet = cdsRet_Tabela_Rej
    Left = 264
    Top = 32
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
    object sdsBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBancoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 128
    Top = 88
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 192
    Top = 88
    object cdsBancoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsBancoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 264
    Top = 88
  end
end
