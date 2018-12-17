object DMCadGrupo_Pessoa: TDMCadGrupo_Pessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsGrupo_Pessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRUPO_PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsGrupo_PessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupo_PessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupo_Pessoa: TDataSetProvider
    DataSet = sdsGrupo_Pessoa
    OnUpdateError = dspGrupo_PessoaUpdateError
    Left = 128
    Top = 32
  end
  object cdsGrupo_Pessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspGrupo_Pessoa'
    Left = 192
    Top = 32
    object cdsGrupo_PessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupo_PessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupo_Pessoa: TDataSource
    DataSet = cdsGrupo_Pessoa
    Left = 264
    Top = 32
  end
end
