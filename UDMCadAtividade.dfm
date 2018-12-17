object DMCadAtividade: TDMCadAtividade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsAtividade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsAtividadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsAtividadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsAtividadeCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
  end
  object dspAtividade: TDataSetProvider
    DataSet = sdsAtividade
    OnUpdateError = dspAtividadeUpdateError
    Left = 128
    Top = 32
  end
  object cdsAtividade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAtividade'
    OnNewRecord = cdsAtividadeNewRecord
    Left = 192
    Top = 32
    object cdsAtividadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAtividadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsAtividadeCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
  end
  object dsAtividade: TDataSource
    DataSet = cdsAtividade
    Left = 264
    Top = 32
  end
  object qVerifica_Ativ: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ID, TIPO'
      'from ATIVIDADE '
      'WHERE NOME = :NOME'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 96
    object qVerifica_AtivID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_AtivTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
end
