object DMConsPedLote: TDMConsPedLote
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 352
  Top = 164
  Height = 490
  Width = 449
  object sdsLote: TSQLDataSet
    CommandText = 
      'SELECT distinct l.num_ordem, l.num_lote, TP.id_pedido,'#13#10'l.id_pro' +
      'duto, l.referencia, PED.num_pedido, PED.pedido_cliente,'#13#10'CLI.NOM' +
      'E NOME_CLIENTE, CLI.FANTASIA, L.qtd, L.qtd_taloes'#13#10'FROM talao_pe' +
      'd TP'#13#10'INNER JOIN LOTE L'#13#10'ON TP.ID = L.ID'#13#10'INNER JOIN PEDIDO PED'#13 +
      #10'ON TP.id_pedido = PED.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.ID_CLIE' +
      'NTE = CLI.CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 32
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    Left = 104
    Top = 32
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLote'
    Left = 152
    Top = 32
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLoteID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsLotePEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsLoteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsLoteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 192
    Top = 32
  end
  object sdsOrdem: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT l.num_ordem, TP.id_pedido,'#13#10'PED.num_pedido, PED.' +
      'pedido_cliente,'#13#10'CLI.NOME NOME_CLIENTE, CLI.FANTASIA,'#13#10'(select S' +
      'UM(PP.QTD) QTD FROM PEDIDO PP WHERE PP.ID = TP.ID_PEDIDO) QTD,'#13#10 +
      '(select SUM(LL.qtd_taloes) QTD_TALAO FROM LOTE LL WHERE LL.num_o' +
      'rdem = L.NUM_ORDEM) QTD_TALAO,'#13#10'(select COUNT(1) QTD_TALAO2 FROM' +
      ' TALAO_PED TT WHERE TT.id_pedido = TP.id_pedido) QTD_TALAO_PED'#13#10 +
      'FROM talao_ped TP'#13#10'INNER JOIN LOTE L'#13#10'ON TP.ID = L.ID'#13#10'INNER JOI' +
      'N PEDIDO PED'#13#10'ON TP.id_pedido = PED.id'#13#10'INNER JOIN PESSOA CLI'#13#10'O' +
      'N PED.ID_CLIENTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 104
  end
  object dspOrdem: TDataSetProvider
    DataSet = sdsOrdem
    Left = 104
    Top = 104
  end
  object cdsOrdem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdem'
    Left = 152
    Top = 104
    object cdsOrdemNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsOrdemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsOrdemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOrdemPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsOrdemNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsOrdemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemQTD_TALAO: TFMTBCDField
      FieldName = 'QTD_TALAO'
      Precision = 15
      Size = 0
    end
    object cdsOrdemQTD_TALAO_PED: TIntegerField
      FieldName = 'QTD_TALAO_PED'
    end
  end
  object dsOrdem: TDataSource
    DataSet = cdsOrdem
    Left = 192
    Top = 104
  end
  object sdsTalao: TSQLDataSet
    CommandText = 
      'select l.num_ordem, l.num_lote, t.num_talao, t.qtd, l.id_produto' +
      ', l.referencia,'#13#10' tp.id_pedido, p.num_pedido, p.pedido_cliente, ' +
      'tp.item_pedido, cli.fantasia'#13#10', tp.qtd qtd_pedido'#13#10'from talao t'#13 +
      #10'inner join talao_ped tp'#13#10'on tp.id = t.id'#13#10'and tp.num_talao = t.' +
      'num_talao'#13#10'inner join lote l'#13#10'on l.id = t.id'#13#10'inner join pedido ' +
      'p'#13#10'on tp.id_pedido = p.id'#13#10'inner join pessoa cli'#13#10'on p.id_client' +
      'e = cli.codigo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 168
  end
  object dspTalao: TDataSetProvider
    DataSet = sdsTalao
    Left = 104
    Top = 168
  end
  object cdsTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao'
    Left = 152
    Top = 168
    object cdsTalaoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsTalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTalaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsTalaoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsTalaoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsTalaoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsTalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsTalaoQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
  end
  object dsTalao: TDataSource
    DataSet = cdsTalao
    Left = 192
    Top = 168
  end
end
