object DMConsLote: TDMConsLote
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 423
  Top = 225
  Height = 346
  Width = 643
  object sdsOrdProd: TSQLDataSet
    CommandText = 
      'SELECT L.num_ordem, SUM(T.qtd) Qtd'#13#10'FROM TALAO_PED T'#13#10'INNER JOIN' +
      ' LOTE L'#13#10'ON T.id = L.id'#13#10'WHERE T.id_pedido = :ID_Pedido'#13#10'GROUP B' +
      'Y L.num_ordem'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_Pedido'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 40
  end
  object dspOrdProd: TDataSetProvider
    DataSet = sdsOrdProd
    Left = 120
    Top = 40
  end
  object cdsOrdProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdProd'
    Left = 176
    Top = 40
    object cdsOrdProdNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsOrdProdQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsOrdProd: TDataSource
    DataSet = cdsOrdProd
    Left = 232
    Top = 40
  end
  object sdsTalao_Aux: TSQLDataSet
    CommandText = 
      'SELECT distinct L.num_ordem, l.num_lote, taux.id, taux.item, tau' +
      'x.id_setor, taux.id_atelier,'#13#10'taux.dtsaida, taux.dtretorno, s.no' +
      'me nome_setor, a.nome nome_atelier'#13#10'from talao_aux taux'#13#10'inner j' +
      'oin TALAO_PED T'#13#10'on taux.id = t.id'#13#10'INNER JOIN LOTE L'#13#10'ON taux.i' +
      'd = L.id'#13#10'left join setor s'#13#10'on taux.id_setor = s.id'#13#10'left join ' +
      'pessoa a'#13#10'on taux.id_atelier = a.codigo'#13#10'WHERE T.id_pedido = :ID' +
      '_Pedido'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_Pedido'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 112
  end
  object dspTalao_Aux: TDataSetProvider
    DataSet = sdsTalao_Aux
    Left = 120
    Top = 112
  end
  object cdsTalao_Aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao_Aux'
    Left = 176
    Top = 112
    object cdsTalao_AuxNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsTalao_AuxNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsTalao_AuxNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsTalao_AuxNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
  end
  object dsTalao_Aux: TDataSource
    DataSet = cdsTalao_Aux
    Left = 232
    Top = 112
  end
  object sdsConsTalao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id_pedido, V.num_talao, V.item_pedido, V.qtd, V.num_lot' +
      'e,'#13#10'V.id_processo, V.nome_processo, V.referencia, V.nome_produto' +
      ','#13#10'V.num_ordem, V.dtentrada, V.hrentrada, V.dtbaixa, V.hrbaixa'#13#10 +
      'FROM vtalao_ped V'#13#10'WHERE V.ID_PEDIDO = :ID_PEDIDO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 168
  end
  object dspConsTalao_Ped: TDataSetProvider
    DataSet = sdsConsTalao_Ped
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 168
  end
  object cdsConsTalao_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsTalao_Ped'
    Left = 183
    Top = 168
    object cdsConsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object cdsConsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsTalao_PedNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsTalao_PedID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsTalao_PedNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsTalao_PedREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsTalao_PedNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsTalao_PedNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsTalao_PedDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsConsTalao_PedHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsConsTalao_PedDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsConsTalao_PedHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
  end
  object dsConsTalao_Ped: TDataSource
    DataSet = cdsConsTalao_Ped
    Left = 231
    Top = 168
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT GERAR_TALAO_AUXILIAR, USA_LOTE'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 64
    object qParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTalao_Calc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.item_pedido, V.num_lote, V.num_ordem, V.qtd_pares_talao' +
      ', V.num_talao, V.id_pedido'#13#10'FROM VTALAO_PED V'#13#10'WHERE V.ID_PEDIDO' +
      ' = :ID_PEDIDO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 240
  end
  object dspTalao_Calc: TDataSetProvider
    DataSet = sdsTalao_Calc
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 240
  end
  object cdsTalao_Calc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao_Calc'
    Left = 183
    Top = 240
    object cdsTalao_CalcITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsTalao_CalcNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsTalao_CalcNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsTalao_CalcQTD_PARES_TALAO: TFloatField
      FieldName = 'QTD_PARES_TALAO'
    end
    object cdsTalao_CalcNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object cdsTalao_CalcID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
  end
  object dsTalao_Calc: TDataSource
    DataSet = cdsTalao_Calc
    Left = 231
    Top = 240
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LOTE_TEXTIL'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 144
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
  end
end
