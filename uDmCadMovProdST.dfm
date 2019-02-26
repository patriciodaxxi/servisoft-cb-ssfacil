object DmCadMovProdST: TDmCadMovProdST
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 118
  Top = 192
  Height = 436
  Width = 807
  object sdsMovProdST: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOVPRODST'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 24
    object sdsMovProdSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMovProdSTDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsMovProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object sdsMovProdSTVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object sdsMovProdSTPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object sdsMovProdSTQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object sdsMovProdSTQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsMovProdSTUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object sdsMovProdSTTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object sdsMovProdSTBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
    end
    object sdsMovProdSTVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
    end
    object sdsMovProdSTID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
  end
  object dspMovProdST: TDataSetProvider
    DataSet = sdsMovProdST
    OnUpdateError = dspMovProdSTUpdateError
    Left = 152
    Top = 24
  end
  object cdsMovProdST: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMovProdST'
    Left = 216
    Top = 24
    object cdsMovProdSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMovProdSTDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsMovProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object cdsMovProdSTVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object cdsMovProdSTPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object cdsMovProdSTQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object cdsMovProdSTQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsMovProdSTUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object cdsMovProdSTTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsMovProdSTBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
    end
    object cdsMovProdSTVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
    end
    object cdsMovProdSTID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
  end
  object dsMovProdST: TDataSource
    DataSet = cdsMovProdST
    Left = 288
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, P.NOME NOME_PRODUTO'#13#10'FROM MOVPRODST M'#13#10'INNER JOIN PR' +
      'ODUTO P'#13#10'ON M.ID_PRODUTO = P.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 48
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 544
    Top = 48
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 584
    Top = 48
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsultaBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object cdsConsultaVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object cdsConsultaPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object cdsConsultaQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object cdsConsultaQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsConsultaUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object cdsConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsConsultaBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
    end
    object cdsConsultaVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
    end
    object cdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 624
    Top = 48
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, REFERENCIA, NOME'#13#10'FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 136
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 536
    Top = 136
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 576
    Top = 136
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 616
    Top = 136
  end
end
