object DMComissaoVend: TDMComissaoVend
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 260
  Top = 202
  Height = 394
  Width = 850
  object sdsProduto_Comissao_Vend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PRODUTO_COMISSAO_VEND'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 76
    Top = 43
    object sdsProduto_Comissao_VendID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comissao_VendITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comissao_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsProduto_Comissao_VendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dspProduto_Comissao_Vend: TDataSetProvider
    DataSet = sdsProduto_Comissao_Vend
    UpdateMode = upWhereKeyOnly
    Left = 137
    Top = 43
  end
  object cdsProduto_Comissao_Vend: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comissao_Vend'
    Left = 192
    Top = 43
    object cdsProduto_Comissao_VendID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comissao_VendITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comissao_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsProduto_Comissao_VendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dsProduto_Comissao_Vend: TDataSource
    DataSet = cdsProduto_Comissao_Vend
    Left = 255
    Top = 43
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.codigo, P.nome,  P.perc_comissao'#13#10'FROM PESSOA P'#13#10'WHERE ' +
      'P.tp_vendedor = '#39'S'#39#13#10'  AND P.inativo = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 451
    Top = 38
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 38
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 565
    Top = 37
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 630
    Top = 38
  end
  object dspConsProduto: TDataSetProvider
    DataSet = sdsConsProduto
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 94
  end
  object cdsConsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspConsProduto'
    Left = 565
    Top = 93
    object cdsConsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsProdutoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 12
    end
    object cdsConsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dsConsProduto: TDataSource
    DataSet = cdsConsProduto
    Left = 631
    Top = 94
  end
  object qVerProdVend: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_VENDEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM produto_comissao_vend P'
      'WHERE P.ID = :ID'
      '  AND P.ID_VENDEDOR = :ID_VENDEDOR')
    SQLConnection = dmDatabase.scoDados
    Left = 669
    Top = 216
    object qVerProdVendCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsConsProduto: TSQLDataSet
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA,'#13#10'case'#13#10'  when P.TIPO_REG = '#39'P' +
      #39' Then '#39'Produto'#39#13#10'  when P.TIPO_REG = '#39'S'#39' Then '#39'Semiacabado'#39#13#10'  ' +
      'end Tipo_Produto, PV.PERC_COMISSAO'#13#10'FROM PRODUTO P'#13#10'left join pr' +
      'oduto_comissao_vend pv'#13#10'on p.id = pv.id'#13#10'WHERE P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 457
    Top = 95
  end
end
