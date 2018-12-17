object DMCadNotaFiscal_Lote: TDMCadNotaFiscal_Lote
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 408
  Top = 201
  Height = 422
  Width = 411
  object sdsNotaFiscal_MP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_MP'#13#10'WHERE ID = :ID'#13#10
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
    object sdsNotaFiscal_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsNotaFiscal_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsNotaFiscal_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dspNotaFiscal_MP: TDataSetProvider
    DataSet = sdsNotaFiscal_MP
    OnUpdateError = dspNotaFiscal_MPUpdateError
    Left = 128
    Top = 32
  end
  object cdsNotaFiscal_MP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_MP'
    Left = 192
    Top = 32
    object cdsNotaFiscal_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsNotaFiscal_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsNotaFiscal_MP: TDataSource
    DataSet = cdsNotaFiscal_MP
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
    Left = 168
    Top = 128
    Data = {
      9C0000009619E0BD0100000018000000050000000000030000009C000B49445F
      4D6174657269616C04000100000000000754616D616E686F0100490000000100
      055749445448020002000A000351746408000400000000000B507265636F5F43
      7573746F080004000000000007556E6964616465010049000000010005574944
      544802000200060001000D44454641554C545F4F524445520200820000000000}
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
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 208
    Top = 128
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
    Left = 176
    Top = 184
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
end
