object dmDevolucao: TdmDevolucao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 403
  Top = 113
  Height = 406
  Width = 479
  object sdsDevolucao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFD.*,  CF.FILIAL, CF.NUMCUPOM, CF.SERIE, CF.TIPO'#13#10'FROM C' +
      'UPOMFISCAL_DEVOLUCAO CFD'#13#10'INNER JOIN CUPOMFISCAL CF ON (CFD.ID_C' +
      'UPOM = CF.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 24
    object sdsDevolucaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDevolucaoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsDevolucaoID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsDevolucaoVLR_CREDITO: TFloatField
      FieldName = 'VLR_CREDITO'
    end
    object sdsDevolucaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      ProviderFlags = []
    end
    object sdsDevolucaoNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
      ProviderFlags = []
    end
    object sdsDevolucaoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = []
      Size = 3
    end
    object sdsDevolucaoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 3
    end
    object sdsDevolucaoCREDITADO: TStringField
      FieldName = 'CREDITADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDevolucao: TDataSetProvider
    DataSet = sdsDevolucao
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 24
  end
  object cdsDevolucao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDevolucao'
    Left = 104
    Top = 24
    object cdsDevolucaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDevolucaoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDevolucaoID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDevolucaoVLR_CREDITO: TFloatField
      FieldName = 'VLR_CREDITO'
      DisplayFormat = '0.00'
    end
    object cdsDevolucaosdsDevolucaoItens: TDataSetField
      FieldName = 'sdsDevolucaoItens'
    end
    object cdsDevolucaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      ProviderFlags = []
    end
    object cdsDevolucaoNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
      ProviderFlags = []
    end
    object cdsDevolucaoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = []
      Size = 3
    end
    object cdsDevolucaoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 3
    end
    object cdsDevolucaoCREDITADO: TStringField
      FieldName = 'CREDITADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDevolucao: TDataSource
    DataSet = cdsDevolucao
    Left = 136
    Top = 24
  end
  object dsmCupomDevolucao: TDataSource
    DataSet = sdsDevolucao
    Left = 176
    Top = 24
  end
  object sdsDevolucaoItens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT DI.*'#13#10'FROM CUPOMFISCAL_DEV_ITENS DI'#13#10'WHERE DI.ID = :ID'
    DataSource = dsmCupomDevolucao
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 80
    object sdsDevolucaoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDevolucaoItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDevolucaoItensID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsDevolucaoItensID_CUPOM_ITEM: TIntegerField
      FieldName = 'ID_CUPOM_ITEM'
    end
    object sdsDevolucaoItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsDevolucaoItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsDevolucaoItensVLR_CREDITO: TFloatField
      FieldName = 'VLR_CREDITO'
    end
    object sdsDevolucaoItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsDevolucaoItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsDevolucaoItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsDevolucaoItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsDevolucaoItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object cdsDevolucaoItens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDevolucaosdsDevolucaoItens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 104
    Top = 80
    object cdsDevolucaoItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDevolucaoItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDevolucaoItensID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDevolucaoItensID_CUPOM_ITEM: TIntegerField
      FieldName = 'ID_CUPOM_ITEM'
    end
    object cdsDevolucaoItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsDevolucaoItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsDevolucaoItensVLR_CREDITO: TFloatField
      FieldName = 'VLR_CREDITO'
      DisplayFormat = '0.00'
    end
    object cdsDevolucaoItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsDevolucaoItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsDevolucaoItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsDevolucaoItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsDevolucaoItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsDevolucaoItens: TDataSource
    DataSet = cdsDevolucaoItens
    Left = 136
    Top = 80
  end
  object sdsCupomItens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, ITEM, ID_PRODUTO, VLR_UNITARIO, QTD, NOME_PRODUTO, UN' +
      'IDADE, TAMANHO, QTD_DEVOLVIDA, VLR_DESCONTO'#13#10'FROM CUPOMFISCAL_IT' +
      'ENS'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 176
  end
  object dspCupomItens: TDataSetProvider
    DataSet = sdsCupomItens
    Left = 72
    Top = 176
  end
  object cdsCupomItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomItens'
    Left = 104
    Top = 176
    object cdsCupomItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCupomItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCupomItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsCupomItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsCupomItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCupomItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsCupomItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCupomItensQTD_DEVOLVIDA: TFloatField
      FieldName = 'QTD_DEVOLVIDA'
    end
    object cdsCupomItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
  end
  object dsCupomItens: TDataSource
    DataSet = cdsCupomItens
    Left = 136
    Top = 176
  end
  object mItensDevolucao: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'NOME_PRODUTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VLR_UNITARIO'
        DataType = ftCurrency
      end
      item
        Name = 'QTD_ORIGINAL'
        DataType = ftCurrency
      end
      item
        Name = 'QTD_DEVOLVER'
        DataType = ftCurrency
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TAMANHO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 104
    Top = 224
    Data = {
      0E0100009619E0BD0100000018000000080000000000030000000E0104495445
      4D04000100000000000A49445F50524F4455544F04000100000000000C4E4F4D
      455F50524F4455544F01004900000001000557494454480200020032000C564C
      525F554E49544152494F08000400000001000753554254595045020049000600
      4D6F6E6579000C5154445F4F524947494E414C08000400000001000753554254
      5950450200490006004D6F6E6579000C5154445F4445564F4C56455208000400
      0000010007535542545950450200490006004D6F6E65790007554E4944414445
      01004900000001000557494454480200020014000754414D414E484F01004900
      00000100055749445448020002000A000000}
    object mItensDevolucaoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object mItensDevolucaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mItensDevolucaoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 50
    end
    object mItensDevolucaoVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
    end
    object mItensDevolucaoQTD_ORIGINAL: TCurrencyField
      FieldName = 'QTD_ORIGINAL'
      currency = False
    end
    object mItensDevolucaoQTD_DEVOLVER: TCurrencyField
      FieldName = 'QTD_DEVOLVER'
      currency = False
    end
    object mItensDevolucaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
    end
    object mItensDevolucaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsItensDevolucao: TDataSource
    DataSet = mItensDevolucao
    Left = 136
    Top = 224
  end
  object sdsProdutos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM PRODUTO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 272
  end
  object dspProdutos: TDataSetProvider
    DataSet = sdsProdutos
    Left = 72
    Top = 272
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 104
    Top = 272
    object cdsProdutosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 136
    Top = 272
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, SERIE_NFCE, NOME_INTERNO'#13#10'FROM FILIAL'#13#10'ORDER BY' +
      ' NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 320
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 72
    Top = 320
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 104
    Top = 320
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialSERIE_NFCE: TStringField
      FieldName = 'SERIE_NFCE'
      Size = 3
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 136
    Top = 320
  end
  object qCupomFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'T1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID'
      'FROM CUPOMFISCAL'
      'WHERE FILIAL = :F1'
      ' AND TIPO = :T1'
      ' AND NUMCUPOM = :C1')
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 128
    object qCupomFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qCupomParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CP.ALTURA_SALTO_LINHA'
      'FROM CUPOMFISCAL_PARAMETROS CP')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 320
    object qCupomParametrosALTURA_SALTO_LINHA: TSmallintField
      FieldName = 'ALTURA_SALTO_LINHA'
    end
  end
end
