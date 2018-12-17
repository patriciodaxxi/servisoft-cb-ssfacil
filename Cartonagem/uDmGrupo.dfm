object dmGrupo: TdmGrupo
  OldCreateOrder = False
  Left = 528
  Top = 158
  Height = 320
  Width = 415
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, CARTO_PRECO FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 40
    object sdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsGrupoCARTO_PRECO: TFloatField
      FieldName = 'CARTO_PRECO'
    end
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 96
    Top = 40
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 144
    Top = 40
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsGrupoCARTO_PRECO: TFloatField
      FieldName = 'CARTO_PRECO'
      DisplayFormat = '0.00'
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 192
    Top = 40
  end
end
