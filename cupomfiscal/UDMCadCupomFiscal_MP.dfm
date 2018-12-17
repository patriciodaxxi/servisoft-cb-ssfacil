object DMCadCupomFiscal_MP: TDMCadCupomFiscal_MP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 408
  Top = 201
  Height = 422
  Width = 732
  object sdsCupomFiscal_MP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CUPOMFISCAL_MP'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCupomFiscal_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCupomFiscal_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCupomFiscal_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsCupomFiscal_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCupomFiscal_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCupomFiscal_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dspCupomFiscal_MP: TDataSetProvider
    DataSet = sdsCupomFiscal_MP
    OnUpdateError = dspCupomFiscal_MPUpdateError
    Left = 128
    Top = 32
  end
  object cdsCupomFiscal_MP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspCupomFiscal_MP'
    Left = 192
    Top = 32
    object cdsCupomFiscal_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomFiscal_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCupomFiscal_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsCupomFiscal_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCupomFiscal_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCupomFiscal_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsCupomFiscal_MP: TDataSource
    DataSet = cdsCupomFiscal_MP
    Left = 264
    Top = 32
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Preco_Custo'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    OnNewRecord = mMaterialNewRecord
    Left = 184
    Top = 160
    Data = {
      AC0000009619E0BD010000001800000006000000000003000000AC000B49445F
      4D6174657269616C04000100000000000754616D616E686F0100490000000100
      055749445448020002000A000351746408000400000000000B507265636F5F43
      7573746F080004000000000007556E6964616465010049000000010005574944
      54480200020006000749445F43464F50040001000000000001000D4445464155
      4C545F4F524445520200820000000000}
    object mMaterialID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMaterialTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mMaterialQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mMaterialPreco_Custo: TFloatField
      FieldName = 'Preco_Custo'
    end
    object mMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mMaterialID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 224
    Top = 160
  end
  object qMaterial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 216
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qMaterialESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qMaterialID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object qMaterialORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object qMaterialCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object qMaterialPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object qMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qMaterialUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qMaterialID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
  end
  object sdsConsumo: TSQLDataSet
    CommandText = 
      'SELECT pc.id_material, pc.qtd_consumo, PC.TIPO_CONSUMO,'#13#10'PC.ITEM' +
      ' ITEM_CONSUMO, MAT.NOME NOME_MATERIAL, MAT.TRANSFER,'#13#10'MAT.ID_GRA' +
      'DE ID_GRADE_MAT,  MAT.ID_FORNECEDOR, MAT.preco_custo, PC.unidade' +
      #13#10'FROM PRODUTO_CONSUMO PC'#13#10'LEFT JOIN PRODUTO MAT'#13#10'ON PC.id_mater' +
      'ial = MAT.id'#13#10'WHERE PC.id = :ID_PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 256
  end
  object dspConsumo: TDataSetProvider
    DataSet = sdsConsumo
    Left = 120
    Top = 256
  end
  object cdsConsumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MATERIAL'
    Params = <>
    ProviderName = 'dspConsumo'
    Left = 152
    Top = 256
    object cdsConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsConsumoITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
      Required = True
    end
    object cdsConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsConsumoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsConsumoID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
    object cdsConsumoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsConsumoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object qConsumo_Tam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CT.qtd_consumo'
      'FROM produto_consumo_tam CT'
      'WHERE CT.id = :ID'
      '  AND CT.item = :ITEM'
      '  AND CT.tamanho = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 89
    Top = 312
    object qConsumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
end
