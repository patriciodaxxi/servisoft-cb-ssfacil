object DMConsMaterial: TDMConsMaterial
  OldCreateOrder = False
  Left = 343
  Top = 244
  Height = 332
  Width = 635
  object sdsConsMatPrima: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.nome, p.tipo_reg, p.referencia, pc.qtd_consumo'#13#10'f' +
      'rom produto p'#13#10'inner join produto_consumo pc'#13#10'on p.id = pc.id'#13#10'W' +
      'HERE PC.ID_MATERIAL = :ID_MATERIAL'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MATERIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 16
  end
  object dspConsMatPrima: TDataSetProvider
    DataSet = sdsConsMatPrima
    Left = 104
    Top = 16
  end
  object cdsConsMatPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsMatPrima'
    Left = 160
    Top = 16
    object cdsConsMatPrimaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsMatPrimaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsMatPrimaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsConsMatPrimaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsMatPrimaQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsConsMatPrima: TDataSource
    DataSet = cdsConsMatPrima
    Left = 208
    Top = 16
  end
  object qEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(E.QTD) QTD'
      'FROM ESTOQUE_ATUAL E'
      'WHERE E.ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 80
    object qEstoqueQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
end
