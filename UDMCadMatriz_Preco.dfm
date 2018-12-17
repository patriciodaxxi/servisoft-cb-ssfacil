object DMCadMatriz_Preco: TDMCadMatriz_Preco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsMatriz_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*,  CASE TIPO_REG'#13#10'           WHEN '#39'ACB'#39' THEN '#39'Acabamen' +
      'to'#39#13#10'           WHEN '#39'RMO'#39' THEN '#39'Redondo/Modelado'#39#13#10'           W' +
      'HEN '#39'CMO'#39' THEN '#39'Canto Moeda'#39#13#10'           WHEN '#39'FRS'#39' THEN '#39'Furos'#39 +
      #13#10'           WHEN '#39'FRC'#39' THEN '#39'Furacao'#39#13#10'           ELSE '#39#39#13#10'    ' +
      '       END AS DESCRICAO_TIPO,'#13#10'CASE TIPO_PRECO'#13#10'           WHEN ' +
      #39'P'#39' THEN '#39'Com Produto'#39#13#10'           WHEN '#39'D'#39' THEN '#39'Direto'#39#13#10'     ' +
      '      ELSE '#39#39#13#10'           END AS DESCRICAO_TIPO_PRECO,'#13#10'CASE TIP' +
      'O_VP'#13#10'           WHEN '#39'V'#39' THEN '#39'Valor'#39#13#10'           WHEN '#39'P'#39' THEN' +
      ' '#39'Percentual'#39#13#10'           ELSE '#39#39#13#10'           END AS DESCRICAO_T' +
      'IPO_VP'#13#10'FROM MATRIZ_PRECO M'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsMatriz_PrecoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMatriz_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsMatriz_PrecoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsMatriz_PrecoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsMatriz_PrecoTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsMatriz_PrecoTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
    object sdsMatriz_PrecoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 16
    end
    object sdsMatriz_PrecoDESCRICAO_TIPO_PRECO: TStringField
      FieldName = 'DESCRICAO_TIPO_PRECO'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object sdsMatriz_PrecoDESCRICAO_TIPO_VP: TStringField
      FieldName = 'DESCRICAO_TIPO_VP'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
  end
  object dspMatriz_Preco: TDataSetProvider
    DataSet = sdsMatriz_Preco
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMatriz_PrecoUpdateError
    Left = 128
    Top = 32
  end
  object cdsMatriz_Preco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMatriz_Preco'
    Left = 192
    Top = 32
    object cdsMatriz_PrecoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMatriz_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMatriz_PrecoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMatriz_PrecoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsMatriz_PrecoTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsMatriz_PrecoTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
    object cdsMatriz_PrecoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 16
    end
    object cdsMatriz_PrecoDESCRICAO_TIPO_PRECO: TStringField
      FieldName = 'DESCRICAO_TIPO_PRECO'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object cdsMatriz_PrecoDESCRICAO_TIPO_VP: TStringField
      FieldName = 'DESCRICAO_TIPO_VP'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
  end
  object dsMatriz_Preco: TDataSource
    DataSet = cdsMatriz_Preco
    Left = 264
    Top = 32
  end
end
