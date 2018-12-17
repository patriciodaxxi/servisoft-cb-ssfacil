object DMCadTab_IBPT: TDMCadTab_IBPT
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 426
  Top = 185
  Height = 296
  Width = 478
  object sdsIBPT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_IBPT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object sdsIBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object sdsIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsIBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object sdsIBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object sdsIBPTPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
    end
    object sdsIBPTPERC_MUNICIPAL: TFloatField
      FieldName = 'PERC_MUNICIPAL'
    end
    object sdsIBPTDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object sdsIBPTDT_FINAL: TDateField
      FieldName = 'DT_FINAL'
    end
    object sdsIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object sdsIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object sdsIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 30
    end
  end
  object dspIBPT: TDataSetProvider
    DataSet = sdsIBPT
    OnUpdateError = dspIBPTUpdateError
    Left = 128
    Top = 32
  end
  object cdsIBPT: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspIBPT'
    Left = 192
    Top = 32
    object cdsIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsIBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object cdsIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsIBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object cdsIBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object cdsIBPTPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
    end
    object cdsIBPTPERC_MUNICIPAL: TFloatField
      FieldName = 'PERC_MUNICIPAL'
    end
    object cdsIBPTDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object cdsIBPTDT_FINAL: TDateField
      FieldName = 'DT_FINAL'
    end
    object cdsIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object cdsIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object cdsIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 30
    end
  end
  object dsIBPT: TDataSource
    DataSet = cdsIBPT
    Left = 264
    Top = 32
  end
  object qIBPT_Contador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM TAB_IBPT')
    SQLConnection = dmDatabase.scoDados
    Left = 168
    Top = 112
    object qIBPT_ContadorCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT F.id, F.nome, F.nome_interno, F.uf'
      'FROM FILIAL F')
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 144
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object qVerificaFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select count(1) as qtde_fil from filial where UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 176
    Top = 184
    object qVerificaFilialQTDE_FIL: TIntegerField
      FieldName = 'QTDE_FIL'
      ProviderFlags = []
      Required = True
    end
  end
end
