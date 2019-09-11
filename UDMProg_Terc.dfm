object DMProg_Terc: TDMProg_Terc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 382
  Top = 216
  Height = 359
  Width = 644
  object sdsProg_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROG_TERC'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 24
    object sdsProg_TercID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProg_TercDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsProg_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsProg_TercID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProg_TercID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsProg_TercITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsProg_TercQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspProg_Terc: TDataSetProvider
    DataSet = sdsProg_Terc
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 24
  end
  object cdsProg_Terc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProg_Terc'
    Left = 112
    Top = 23
    object cdsProg_TercID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProg_TercDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsProg_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProg_TercID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProg_TercID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsProg_TercITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsProg_TercQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsProg_Terc: TDataSource
    DataSet = cdsProg_Terc
    Left = 152
    Top = 24
  end
  object sdsPedido_Lib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.num_pedido, p.pedido_cliente, i.item, i.id_produt' +
      'o, i.referencia,'#13#10'i.nomeproduto nome_produto, i.qtd, i.qtd_resta' +
      'nte, i.qtd_faturado, i.qtd_liberada,'#13#10'cli.nome nome_cliente'#13#10'fro' +
      'm pedido p'#13#10'inner join pedido_item i'#13#10'on p.id = i.id'#13#10'inner join' +
      ' pessoa cli'#13#10'on p.id_cliente = cli.codigo'#13#10'where p.tipo_reg = '#39'P' +
      #39#13#10'  and p.cancelado = '#39'N'#39#13#10'  and i.cancelado = '#39'N'#39#13#10'  and coale' +
      'sce(i.qtd_liberada,0) > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 292
    Top = 38
  end
  object dspPedido_Lib: TDataSetProvider
    DataSet = sdsPedido_Lib
    Left = 329
    Top = 38
  end
  object cdsPedido_Lib: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Lib'
    Left = 369
    Top = 38
    object cdsPedido_LibID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_LibNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_LibPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_LibITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_LibID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_LibREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_LibNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_LibQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_LibQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_LibQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_LibQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_LibNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsPedido_Lib: TDataSource
    DataSet = cdsPedido_Lib
    Left = 409
    Top = 38
  end
  object sdsProduto_Lib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.num_pedido, p.pedido_cliente, i.item, i.id_produt' +
      'o, i.referencia,'#13#10'i.nomeproduto nome_produto, i.qtd, i.qtd_resta' +
      'nte, i.qtd_faturado, i.qtd_liberada,'#13#10'cli.nome nome_cliente'#13#10'fro' +
      'm pedido p'#13#10'inner join pedido_item i'#13#10'on p.id = i.id'#13#10'inner join' +
      ' pessoa cli'#13#10'on p.id_cliente = cli.codigo'#13#10'where p.tipo_reg = '#39'P' +
      #39#13#10'  and p.cancelado = '#39'N'#39#13#10'  and i.cancelado = '#39'N'#39#13#10'  and coale' +
      'sce(i.qtd_liberada,0) > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 294
    Top = 112
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sdsProduto_Lib
    Left = 331
    Top = 112
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Lib'
    Left = 371
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object StringField1: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object StringField2: TStringField
      FieldName = 'REFERENCIA'
    end
    object StringField3: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object FloatField1: TFloatField
      FieldName = 'QTD'
    end
    object FloatField2: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object FloatField3: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object FloatField4: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object StringField4: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 411
    Top = 112
  end
end
