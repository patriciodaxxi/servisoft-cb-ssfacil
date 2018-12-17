object DMPreFat: TDMPreFat
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 335
  Top = 184
  Height = 382
  Width = 783
  object sdsConsPreFat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, CLI.NOME, TRA.NOME NOME_TRANSP, CLI.cnpj_cpf CNPJ_CP' +
      'F_CLIENTE'#13#10'FROM PREFAT P'#13#10'INNER JOIN PESSOA CLI'#13#10'ON P.ID_CLIENTE' +
      ' = CLI.CODIGO'#13#10'LEFT JOIN PESSOA TRA'#13#10'ON P.ID_TRANSPORTADORA = TR' +
      'A.CODIGO'#13#10'WHERE P.FATURADO = '#39'N'#39#13#10'  AND P.LIBERADO_FAT = '#39'S'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 32
  end
  object dspConsPreFat: TDataSetProvider
    DataSet = sdsConsPreFat
    Left = 368
    Top = 32
  end
  object cdsConsPreFat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsPreFat'
    Left = 416
    Top = 32
    object cdsConsPreFatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsPreFatID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsConsPreFatQTD_VOLUME: TIntegerField
      FieldName = 'QTD_VOLUME'
    end
    object cdsConsPreFatFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsConsPreFatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsPreFatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsPreFatDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsPreFatID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsConsPreFatNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsPreFatID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsConsPreFatNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 60
    end
    object cdsConsPreFatCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
    end
  end
  object dsConsPreFat: TDataSource
    DataSet = cdsConsPreFat
    Left = 456
    Top = 32
  end
  object sdsPreFat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PREFAT'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
    object sdsPreFatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPreFatID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsPreFatQTD_VOLUME: TIntegerField
      FieldName = 'QTD_VOLUME'
    end
    object sdsPreFatFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object sdsPreFatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPreFatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPreFatDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsPreFatID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsPreFatID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
  end
  object dspPreFat: TDataSetProvider
    DataSet = sdsPreFat
    Left = 120
    Top = 32
  end
  object cdsPreFat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPreFat'
    Left = 168
    Top = 32
    object cdsPreFatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPreFatID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsPreFatQTD_VOLUME: TIntegerField
      FieldName = 'QTD_VOLUME'
    end
    object cdsPreFatFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsPreFatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPreFatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPreFatDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPreFatID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsPreFatID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPreFatsdsPreFat_Itens: TDataSetField
      FieldName = 'sdsPreFat_Itens'
    end
  end
  object dsPreFat: TDataSource
    DataSet = cdsPreFat
    Left = 208
    Top = 32
  end
  object dsPreFat_Mestre: TDataSource
    DataSet = sdsPreFat
    Left = 40
    Top = 56
  end
  object sdsPreFat_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PREFAT_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsPreFat_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 120
    object sdsPreFat_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPreFat_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPreFat_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsPreFat_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsPreFat_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPreFat_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object cdsPreFat_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPreFatsdsPreFat_Itens
    Params = <>
    Left = 128
    Top = 120
    object cdsPreFat_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPreFat_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPreFat_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsPreFat_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsPreFat_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPreFat_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object dsPreFat_Itens: TDataSource
    DataSet = cdsPreFat_Itens
    Left = 200
    Top = 120
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.codcfop, T.nome'#13#10'FROM TAB_CFOP T'#13#10'WHERE T.ENTRADA' +
      'SAIDA = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 369
    Top = 192
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 401
    Top = 192
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 441
    Top = 192
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 481
    Top = 192
  end
  object sdsConsPreFat_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*, IPED.id_produto, IPED.referencia, IPED.nomeproduto N' +
      'OME_PRODUTO, C.nome NOME_COMBINACAO,'#13#10'PED.num_pedido, PED.pedido' +
      '_cliente'#13#10'FROM prefat_itens I'#13#10'LEFT JOIN pedido_item IPED'#13#10'ON I.' +
      'id_pedido = IPED.ID'#13#10'AND I.item_pedido = IPED.item'#13#10'LEFT JOIN PE' +
      'DIDO PED'#13#10'ON I.id_pedido = PED.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON IP' +
      'ED.id_cor = C.ID'#13#10'WHERE I.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 88
  end
  object dspConsPreFat_Itens: TDataSetProvider
    DataSet = sdsConsPreFat_Itens
    Left = 384
    Top = 88
  end
  object cdsConsPreFat_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsPreFat_Itens'
    Left = 432
    Top = 88
    object cdsConsPreFat_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsPreFat_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsPreFat_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsPreFat_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsPreFat_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsPreFat_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsPreFat_ItensEXISTE_VOL_ETIQ: TStringField
      FieldName = 'EXISTE_VOL_ETIQ'
      FixedChar = True
      Size = 1
    end
    object cdsConsPreFat_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsPreFat_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsPreFat_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsPreFat_ItensNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsConsPreFat_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsPreFat_ItensPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object dsConsPreFat_Itens: TDataSource
    DataSet = cdsConsPreFat_Itens
    Left = 472
    Top = 88
  end
end
