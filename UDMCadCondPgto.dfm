object DMCadCondPgto: TDMCadCondPgto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 329
  Top = 199
  Height = 296
  Width = 675
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
    object sdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object sdsCondPgtoMOSTRAR_NFCE: TStringField
      FieldName = 'MOSTRAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
    object sdsCondPgtoIMPOSTOS: TStringField
      FieldName = 'IMPOSTOS'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    OnUpdateError = dspCondPgtoUpdateError
    Left = 192
    Top = 32
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondPgto'
    OnNewRecord = cdsCondPgtoNewRecord
    Left = 256
    Top = 32
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object cdsCondPgtoMOSTRAR_NFCE: TStringField
      FieldName = 'MOSTRAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
    object cdsCondPgtoIMPOSTOS: TStringField
      FieldName = 'IMPOSTOS'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 328
    Top = 32
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 48
    Top = 80
  end
  object sdsCondPgto_Dia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO_DIA'#13#10'WHERE ID = :ID'
    DataSource = dsCondPgto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 176
    object sdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object sdsCondPgto_DiaPERC_PARCELA: TFloatField
      FieldName = 'PERC_PARCELA'
    end
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 176
    object cdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgto_DiaITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCondPgto_DiaQTDDIAS: TIntegerField
      DisplayLabel = 'Qtd. Dias'
      FieldName = 'QTDDIAS'
    end
    object cdsCondPgto_DiaPERC_PARCELA: TFloatField
      FieldName = 'PERC_PARCELA'
    end
  end
  object dsCondPgto_Dia: TDataSource
    DataSet = cdsCondPgto_Dia
    Left = 296
    Top = 176
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_PERC_CONDPGTO, CONDPGTO_FRETE_IMP'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 104
    object qParametros_FinUSA_PERC_CONDPGTO: TStringField
      FieldName = 'USA_PERC_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinCONDPGTO_FRETE_IMP: TStringField
      FieldName = 'CONDPGTO_FRETE_IMP'
      FixedChar = True
      Size = 1
    end
  end
end
