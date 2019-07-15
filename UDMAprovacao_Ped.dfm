object DMAprovacao_Ped: TDMAprovacao_Ped
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 310
  Top = 82
  Height = 582
  Width = 988
  object sdsAprovacao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id,  PED.pedido_cliente, PED.num_pedido, PED.vlr_tota' +
      'l,'#13#10'PED.id_cliente, PED.dtemissao, CLI.nome NOME_CLIENTE, CLI.cn' +
      'pj_cpf, CLI.cidade,'#13#10'CLI.vlr_limite_credito,'#13#10'(SELECT SUM(DUP.vl' +
      'r_restante) FROM DUPLICATA DUP'#13#10'  WHERE DUP.id_pessoa = PED.id_c' +
      'liente'#13#10'    AND DUP.vlr_restante > 0) VLR_RESTANTE'#13#10#13#10'FROM PEDID' +
      'O PED'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.id_cliente = CLI.codigo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 353
    Top = 73
  end
  object dspAprovacao_Ped: TDataSetProvider
    DataSet = sdsAprovacao_Ped
    Left = 385
    Top = 73
  end
  object cdsAprovacao_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAprovacao_Ped'
    Left = 417
    Top = 72
    object cdsAprovacao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAprovacao_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsAprovacao_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsAprovacao_PedVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsAprovacao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsAprovacao_PedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsAprovacao_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsAprovacao_PedCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsAprovacao_PedCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsAprovacao_PedVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsAprovacao_PedVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
  end
  object dsAprovacao_Ped: TDataSource
    DataSet = cdsAprovacao_Ped
    Left = 449
    Top = 73
  end
  object sdsCliente_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CLI.CODIGO, CLI.nome NOME_CLIENTE, CLI.cnpj_cpf, CLI.vlr_' +
      'limite_credito,'#13#10'  (SELECT SUM(PED.vlr_total)'#13#10'    FROM PEDIDO P' +
      'ED'#13#10'    WHERE PED.CANCELADO = '#39'N'#39#13#10'      AND PED.APROVADO_PED = ' +
      #39'P'#39#13#10'      AND PED.id_cliente = CLI.CODIGO'#13#10'      AND PED.TIPO_R' +
      'EG = '#39'P'#39') VLR_TOTAL_PEND_APROV,'#13#10#13#10'  (SELECT SUM(DUP.vlr_restant' +
      'e) FROM DUPLICATA DUP'#13#10'    WHERE DUP.id_pessoa = CLI.CODIGO'#13#10'   ' +
      '   AND DUP.vlr_restante > 0) VLR_RESTANTE_DUP,'#13#10#13#10'  (SELECT SUM(' +
      'VIT.vlr_restante)'#13#10'    FROM vpedido_item_pend VIT'#13#10'      WHERE V' +
      'IT.id_cliente  = CLI.CODIGO'#13#10'        AND vit.tipo_reg = '#39'P'#39') VLR' +
      '_TOTAL_PED,'#13#10#13#10'  (SELECT SUM(DUPA.vlr_restante) FROM DUPLICATA D' +
      'UPA'#13#10'    WHERE DUPA.id_pessoa = CLI.CODIGO'#13#10'      AND DUPA.DTVEN' +
      'CIMENTO < :DTVENCIMENTO'#13#10'      AND DUPA.vlr_restante > 0) VLR_AT' +
      'RASADO,'#13#10#13#10'  (SELECT SUM(DPG.vlr_pago) FROM DUPLICATA DPG'#13#10'    W' +
      'HERE DPG.id_pessoa = CLI.CODIGO'#13#10'      AND DPG.DTVENCIMENTO < DP' +
      'G.dtultpagamento'#13#10'      AND DPG.vlr_restante <= 0'#13#10'      AND DPG' +
      '.tipo_es = '#39'E'#39') VLR_PAGO_EM_ATRASO,'#13#10#13#10'  (SELECT count(1) FROM D' +
      'UPLICATA DPG1'#13#10'    WHERE DPG1.id_pessoa = CLI.CODIGO'#13#10'      AND ' +
      'DPG1.vlr_restante <= 0'#13#10'      AND DPG1.tipo_es = '#39'E'#39') QTD_TITULO' +
      'S_PAGOS,'#13#10#13#10'  (SELECT count(1) FROM DUPLICATA DPG2'#13#10'    WHERE DP' +
      'G2.id_pessoa = CLI.CODIGO'#13#10'      AND DPG2.vlr_restante <= 0'#13#10'   ' +
      '   AND DPG2.DTVENCIMENTO < DPG2.dtultpagamento'#13#10'      AND DPG2.t' +
      'ipo_es = '#39'E'#39') QTD_TITULOS_PAGOS_EM_ATRASO,'#13#10#13#10'  (SELECT PED2.dte' +
      'missao'#13#10'    FROM PEDIDO PED2'#13#10'    WHERE PED2.ID ='#13#10'           (S' +
      'ELECT MAX(PED2A.ID) FROM PEDIDO PED2A'#13#10'               WHERE PED2' +
      'A.CANCELADO = '#39'N'#39#13#10'                 AND PED2A.APROVADO_PED = '#39'A'#39 +
      #13#10'                 AND PED2A.id_cliente = CLI.CODIGO'#13#10'          ' +
      '       AND PED2A.TIPO_REG = '#39'P'#39')) DT_ULTIMA_COMPRA,'#13#10#13#10'  (SELECT' +
      ' VLR_TOTAL'#13#10'    FROM PEDIDO PED3'#13#10'    WHERE PED3.ID ='#13#10'         ' +
      '  (SELECT MAX(PED4.ID) FROM PEDIDO PED4'#13#10'               WHERE PE' +
      'D4.CANCELADO = '#39'N'#39#13#10'                 AND PED4.APROVADO_PED = '#39'A'#39 +
      #13#10'                 AND PED4.id_cliente = CLI.CODIGO'#13#10'           ' +
      '      AND PED4.TIPO_REG = '#39'P'#39')) VLR_ULTIMA_COMPRA,'#13#10#13#10'  (SELECT ' +
      'COUNT(1) CONTADOR_PED'#13#10'    FROM PEDIDO PQ'#13#10'    WHERE pq.id_clien' +
      'te = cli.codigo'#13#10'      and pq.cancelado = '#39'N'#39#13#10'      and pq.tipo' +
      '_reg = '#39'P'#39#13#10'      AND PQ.aprovado_ped = '#39'A'#39') CONTADOR_PED,'#13#10#13#10' (' +
      'SELECT COUNT(1) CONTADOR_PED_CANC'#13#10'    FROM PEDIDO PQCANC'#13#10'    W' +
      'HERE PQCANC.id_cliente = cli.codigo'#13#10'      and PQCANC.cancelado ' +
      '= '#39'S'#39#13#10'      and PQCANC.tipo_reg = '#39'P'#39') CONTADOR_PED_CANC,'#13#10#13#10' (' +
      'SELECT COUNT(1) CONTADOR_PED_NAO_APROV'#13#10'    FROM PEDIDO PQN'#13#10'   ' +
      ' WHERE PQN.id_cliente = cli.codigo'#13#10'      and PQN.cancelado = '#39'N' +
      #39#13#10'      and PQN.tipo_reg = '#39'P'#39#13#10'      and PQN.aprovado_ped = '#39'N' +
      #39') CONTADOR_PED_NAO_APROV'#13#10#13#10'FROM PESSOA CLI'#13#10'WHERE (SELECT COUN' +
      'T(1) FROM PEDIDO P2'#13#10'              WHERE P2.ID_CLIENTE = CLI.COD' +
      'IGO'#13#10'                AND P2.cancelado = '#39'N'#39#13#10'                AND' +
      ' P2.aprovado_ped = '#39'P'#39#13#10'                AND P2.tipo_reg = '#39'P'#39') >' +
      ' 0'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTVENCIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 353
    Top = 129
  end
  object dspCliente_Pend: TDataSetProvider
    DataSet = sdsCliente_Pend
    Left = 385
    Top = 129
  end
  object cdsCliente_Pend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente_Pend'
    Left = 417
    Top = 128
    object cdsCliente_PendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCliente_PendNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsCliente_PendCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsCliente_PendVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
      DisplayFormat = '0.00'
    end
    object cdsCliente_PendVLR_TOTAL_PEND_APROV: TFloatField
      FieldName = 'VLR_TOTAL_PEND_APROV'
      DisplayFormat = '0.00'
    end
    object cdsCliente_PendVLR_RESTANTE_DUP: TFloatField
      FieldName = 'VLR_RESTANTE_DUP'
      DisplayFormat = '0.00'
    end
    object cdsCliente_PendVLR_TOTAL_PED: TFloatField
      FieldName = 'VLR_TOTAL_PED'
      DisplayFormat = '0.00'
    end
    object cdsCliente_PendVLR_ATRASADO: TFloatField
      FieldName = 'VLR_ATRASADO'
      DisplayFormat = '0.00'
    end
    object cdsCliente_PendVLR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VLR_ULTIMA_COMPRA'
    end
    object cdsCliente_PendDT_ULTIMA_COMPRA: TDateField
      FieldName = 'DT_ULTIMA_COMPRA'
    end
    object cdsCliente_PendCONTADOR_PED: TIntegerField
      FieldName = 'CONTADOR_PED'
    end
    object cdsCliente_PendVLR_PAGO_EM_ATRASO: TFloatField
      FieldName = 'VLR_PAGO_EM_ATRASO'
    end
    object cdsCliente_PendCONTADOR_PED_CANC: TIntegerField
      FieldName = 'CONTADOR_PED_CANC'
    end
    object cdsCliente_PendCONTADOR_PED_NAO_APROV: TIntegerField
      FieldName = 'CONTADOR_PED_NAO_APROV'
    end
    object cdsCliente_PendQTD_TITULOS_PAGOS: TIntegerField
      FieldName = 'QTD_TITULOS_PAGOS'
    end
    object cdsCliente_PendQTD_TITULOS_PAGOS_EM_ATRASO: TIntegerField
      FieldName = 'QTD_TITULOS_PAGOS_EM_ATRASO'
    end
  end
  object dsCliente_Pend: TDataSource
    DataSet = cdsCliente_Pend
    Left = 449
    Top = 129
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Nome_CondPgto'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Cliente'
    MasterFields = 'CODIGO'
    MasterSource = dsCliente_Pend
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 72
    Data = {
      E50000009619E0BD010000001800000008000000000003000000E5000949445F
      50656469646F04000100000000000A4E756D5F50656469646F04000100000000
      000E50656469646F5F436C69656E746501004900000001000557494454480200
      02001E0009566C725F546F74616C0800040000000000094474456D697373616F
      04000600000000000A49445F436C69656E746504000100000000000B566C725F
      456E747261646108000400000000000D4E6F6D655F436F6E645067746F010049
      000000010005574944544802000200280001000D44454641554C545F4F524445
      520200820000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedidoAuxNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mPedidoAuxPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
      Size = 30
    end
    object mPedidoAuxVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mPedidoAuxDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mPedidoAuxID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mPedidoAuxVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
      DisplayFormat = '0.00'
    end
    object mPedidoAuxNome_CondPgto: TStringField
      FieldName = 'Nome_CondPgto'
      Size = 40
    end
  end
  object dsmPedidoAux: TDataSource
    DataSet = mPedidoAux
    Left = 624
    Top = 72
  end
  object sdsPedido_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id ID_Pedido,  PED.pedido_cliente, PED.num_pedido, PE' +
      'D.vlr_total, PED.dtemissao, PED.ID_CLIENTE, PED.VLR_ADIANTAMENTO' +
      ', PED.ID_CONDPGTO'#13#10'FROM PEDIDO PED'#13#10'WHERE PED.aprovado_PED = '#39'P'#39 +
      #13#10'  AND PED.cancelado = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 353
    Top = 177
  end
  object dspPedido_Pend: TDataSetProvider
    DataSet = sdsPedido_Pend
    Left = 385
    Top = 177
  end
  object cdsPedido_Pend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Pend'
    Left = 417
    Top = 176
    object cdsPedido_PendID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedido_PendPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_PendNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_PendVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_PendDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_PendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_PendVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsPedido_PendID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
  end
  object dsPedido_Pend: TDataSource
    DataSet = cdsPedido_Pend
    Left = 449
    Top = 177
  end
  object sdsPedido_Aprov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO_APROV'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 73
    Top = 73
    object sdsPedido_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_AprovAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_AprovDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsPedido_AprovMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPedido_AprovDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsPedido_AprovHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsPedido_AprovAPROVADO_PELO_LIMITE: TStringField
      FieldName = 'APROVADO_PELO_LIMITE'
      FixedChar = True
      Size = 1
    end
  end
  object dspPedido_Aprov: TDataSetProvider
    DataSet = sdsPedido_Aprov
    UpdateMode = upWhereKeyOnly
    Left = 105
    Top = 73
  end
  object cdsPedido_Aprov: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Aprov'
    Left = 137
    Top = 72
    object cdsPedido_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_AprovAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_AprovDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPedido_AprovMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedido_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedido_AprovDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsPedido_AprovHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsPedido_AprovAPROVADO_PELO_LIMITE: TStringField
      FieldName = 'APROVADO_PELO_LIMITE'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Aprov: TDataSource
    DataSet = cdsPedido_Aprov
    Left = 169
    Top = 73
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, APROVADO_PED, FILIAL'#13#10'FROM PEDIDO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 73
    Top = 25
    object sdsPedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedidoAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 25
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    Left = 137
    Top = 24
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 169
    Top = 25
  end
  object sdsFornecedor_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CLI.CODIGO, CLI.nome NOME_CLIENTE, CLI.cnpj_cpf, CLI.vlr_' +
      'limite_credito,'#13#10'  (SELECT SUM(PED.vlr_total)'#13#10'    FROM PEDIDO P' +
      'ED'#13#10'    WHERE PED.CANCELADO = '#39'N'#39#13#10'      AND PED.APROVADO_PED = ' +
      #39'P'#39#13#10'      AND PED.id_cliente = CLI.CODIGO'#13#10'      AND PED.TIPO_R' +
      'EG = '#39'C'#39') VLR_TOTAL_PEND_APROV,'#13#10#13#10'  (SELECT SUM(DUP.vlr_restant' +
      'e) FROM DUPLICATA DUP'#13#10'    WHERE DUP.id_pessoa = CLI.CODIGO'#13#10'   ' +
      '   AND DUP.vlr_restante > 0) VLR_RESTANTE_DUP,'#13#10#13#10'  (SELECT SUM(' +
      'VIT.vlr_restante)'#13#10'    FROM vpedido_item_pend VIT'#13#10'      WHERE V' +
      'IT.id_cliente  = CLI.CODIGO'#13#10'        AND vit.tipo_reg = '#39'C'#39') VLR' +
      '_TOTAL_PED,'#13#10#13#10'  (SELECT SUM(DUPA.vlr_restante) FROM DUPLICATA D' +
      'UPA'#13#10'    WHERE DUPA.id_pessoa = CLI.CODIGO'#13#10'      AND DUPA.DTVEN' +
      'CIMENTO < :DTVENCIMENTO'#13#10'      AND DUPA.vlr_restante > 0) VLR_AT' +
      'RASADO,'#13#10#13#10'  (SELECT PED2.dtemissao'#13#10'    FROM PEDIDO PED2'#13#10'    W' +
      'HERE PED2.ID ='#13#10'           (SELECT MAX(PED2A.ID) FROM PEDIDO PED' +
      '2A'#13#10'               WHERE PED2A.CANCELADO = '#39'N'#39#13#10'                ' +
      ' AND PED2A.APROVADO_PED = '#39'A'#39#13#10'                 AND PED2A.id_cli' +
      'ente = CLI.CODIGO'#13#10'                 AND PED2A.TIPO_REG = '#39'C'#39')) D' +
      'T_ULTIMA_COMPRA,'#13#10#13#10'  (SELECT VLR_TOTAL'#13#10'    FROM PEDIDO PED3'#13#10' ' +
      '   WHERE PED3.ID ='#13#10'           (SELECT MAX(PED4.ID) FROM PEDIDO ' +
      'PED4'#13#10'               WHERE PED4.CANCELADO = '#39'N'#39#13#10'               ' +
      '  AND PED4.APROVADO_PED = '#39'A'#39#13#10'                 AND PED4.id_clie' +
      'nte = CLI.CODIGO'#13#10'                 AND PED4.TIPO_REG = '#39'C'#39')) VLR' +
      '_ULTIMA_COMPRA,'#13#10'cast(0 AS INTEGER) CONTADOR_PED,'#13#10'cast(0 AS INT' +
      'EGER) CONTADOR_PED_CANC,'#13#10'cast(0 AS INTEGER) CONTADOR_PED_NAO_AP' +
      'ROV,'#13#10'cast(0 AS INTEGER) QTD_TITULOS_PAGOS,'#13#10'cast(0 AS INTEGER) ' +
      'QTD_TITULOS_PAGOS_EM_ATRASO,'#13#10'cast(0 AS Float) VLR_PAGO_EM_ATRAS' +
      'O'#13#10#13#10'FROM PESSOA CLI'#13#10'WHERE (SELECT COUNT(1) FROM PEDIDO P2'#13#10'   ' +
      '           WHERE P2.ID_CLIENTE = CLI.CODIGO'#13#10'                AND' +
      ' P2.cancelado = '#39'N'#39#13#10'                AND P2.aprovado_ped = '#39'P'#39#13#10 +
      '                AND P2.tipo_reg = '#39'C'#39') > 0'#13#10#13#10#13#10#13#10'       '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DTVENCIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 585
    Top = 129
  end
  object qCondPgto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id, nome'
      'from condpgto'
      'where id = :id')
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 8
    object qCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object qBuscaPed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT p.ID, p.ID_CLIENTE, p.NUM_PEDIDO, p.tipo_reg, P.cancelado' +
        ', P.aprovado_ped'
      'FROM PEDIDO p'
      'WHERE p.NUM_PEDIDO = :NUM_PEDIDO'
      '  AND P.tipo_reg = :TIPO_REG')
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 8
    object qBuscaPedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qBuscaPedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qBuscaPedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qBuscaPedTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qBuscaPedCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qBuscaPedAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPedido_Processo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_PROCESSO'#13#10'WHERE ID = :ID'#13#10'    AND ITEM = :' +
      'ITEM'
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
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 110
    Top = 336
    object sdsPedido_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ProcessoTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ProcessoDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object sdsPedido_ProcessoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPedido_ProcessoEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ProcessoCOD_RASTREAMENTO: TStringField
      FieldName = 'COD_RASTREAMENTO'
      Size = 25
    end
    object sdsPedido_ProcessoSMS_ENVIADO: TStringField
      FieldName = 'SMS_ENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPedido_Processo: TDataSetProvider
    DataSet = sdsPedido_Processo
    UpdateMode = upWhereKeyOnly
    Left = 139
    Top = 336
  end
  object cdsPedido_Processo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedido_Processo'
    OnNewRecord = cdsPedido_ProcessoNewRecord
    Left = 171
    Top = 335
    object cdsPedido_ProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ProcessoTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ProcessoDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object cdsPedido_ProcessoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedido_ProcessoEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ProcessoCOD_RASTREAMENTO: TStringField
      FieldName = 'COD_RASTREAMENTO'
      Size = 25
    end
    object cdsPedido_ProcessoSMS_ENVIADO: TStringField
      FieldName = 'SMS_ENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Processo: TDataSource
    DataSet = cdsPedido_Processo
    Left = 207
    Top = 336
  end
  object sdsConsulta_Processo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PP.*, TRANSP.nome NOME_TRANSPORTADORA,'#13#10'case'#13#10'  WHEN PP.t' +
      'ipo_status = '#39'C'#39' THEN '#39'Cadastro'#39#13#10'  WHEN PP.tipo_status = '#39'E'#39' TH' +
      'EN '#39'Liberado Expedi'#231#227'o'#39#13#10'  WHEN PP.tipo_status = '#39'F'#39' THEN '#39'Fatur' +
      'ado'#39#13#10'  WHEN PP.tipo_status = '#39'T'#39' THEN '#39'Liberado Transportadora'#39 +
      #13#10'  end as DESCRICAO_STATUS'#13#10'FROM PEDIDO_PROCESSO PP'#13#10'LEFT JOIN ' +
      'PESSOA TRANSP'#13#10'ON PP.id_transportadora = TRANSP.codigo'#13#10'WHERE ID' +
      ' = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 16
  end
  object dspConsulta_Processo: TDataSetProvider
    DataSet = sdsConsulta_Processo
    UpdateMode = upWhereKeyOnly
    Left = 383
    Top = 16
  end
  object cdsConsulta_Processo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspConsulta_Processo'
    Left = 414
    Top = 16
    object cdsConsulta_ProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_ProcessoTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProcessoDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object cdsConsulta_ProcessoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsConsulta_ProcessoNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsConsulta_ProcessoDESCRICAO_STATUS: TStringField
      FieldName = 'DESCRICAO_STATUS'
      FixedChar = True
      Size = 23
    end
    object cdsConsulta_ProcessoEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProcessoCOD_RASTREAMENTO: TStringField
      FieldName = 'COD_RASTREAMENTO'
      Size = 25
    end
  end
  object dsConsulta_Processo: TDataSource
    DataSet = cdsConsulta_Processo
    Left = 445
    Top = 16
  end
  object qPedido2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P.ID, P.id_cliente, P.FILIAL, P.num_pedido, P.pedido_clie' +
        'nte, CLI.nome NOME_CLIENTE,'
      
        'CLI.email_compras, p.vlr_total, CLI.cnpj_cpf, P.DDD, P.FONE, P.N' +
        'OME_CONSUMIDOR'
      'FROM PEDIDO P    '
      'INNER JOIN PESSOA CLI'
      'ON P.id_cliente = CLI.codigo'
      'WHERE P.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 8
    object qPedido2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPedido2ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPedido2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object qPedido2EMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object qPedido2FILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qPedido2NUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qPedido2PEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object qPedido2VLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object qPedido2CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object qPedido2DDD: TIntegerField
      FieldName = 'DDD'
    end
    object qPedido2FONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object qPedido2NOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 8
    object qParametros_PedDESCRICAO_PHP: TStringField
      FieldName = 'DESCRICAO_PHP'
      Size = 50
    end
    object qParametros_PedENVIAR_EMAIL_PROC_PED: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedENVIAR_EMAIL_PROC_EXP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_EXP'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedENVIAR_EMAIL_PROC_FAT: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_FAT'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedENVIAR_EMAIL_PROC_TRANSP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_TRANSP'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_EMAIL_NO_PED: TStringField
      FieldName = 'USA_EMAIL_NO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_EMAIL_NFECONFIG_CONF: TStringField
      FieldName = 'USA_EMAIL_NFECONFIG_CONF'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedENVIA_SMS: TStringField
      FieldName = 'ENVIA_SMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_APROVACAO_ITEM: TStringField
      FieldName = 'USA_APROVACAO_ITEM'
      FixedChar = True
      Size = 1
    end
  end
  object qFilial_Email: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FE.ID ID_FILIAL, FE.id_config_email, CE.nome_config, CE.r' +
        'emetente_nome, CE.remetente_email,'
      
        'CE.smtp_cliente, CE.smtp_porta, CE.smtp_requer_ssl, CE.smtp_usua' +
        'rio, CE.smtp_senha,'
      'CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL'
      'FROM FILIAL_EMAIL FE'
      'INNER JOIN FILIAL F'
      'ON FE.ID = F.ID'
      'INNER JOIN CONFIG_EMAIL CE'
      'ON FE.id_config_email = CE.id'
      'WHERE FE.ID = :ID'
      '   AND FE.TIPO_REG = 6')
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 8
    object qFilial_EmailID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object qFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
    object qFilial_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object qFilial_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object qFilial_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object qFilial_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object qFilial_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object qFilial_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object qFilial_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Size = 100
    end
    object qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
    object qFilial_EmailCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LOCALSERVIDORNFE, ID_CLIENTE_CONSUMIDOR'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 768
    Top = 8
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
  end
  object qFilial_SMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_SMS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 8
    object qFilial_SMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_SMSLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 200
    end
    object qFilial_SMSSENHA: TStringField
      FieldName = 'SENHA'
    end
    object qFilial_SMSTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 300
    end
    object qFilial_SMSFONE_ORIGEM: TStringField
      FieldName = 'FONE_ORIGEM'
      Size = 15
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT FILIAL_PADRAO_PEDWEB FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 8
    object qParametros_GeralFILIAL_PADRAO_PEDWEB: TIntegerField
      FieldName = 'FILIAL_PADRAO_PEDWEB'
    end
  end
  object sdsConsultaPedWeb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PWEB.*, P.NOME NOME_CLIENTE, P1.NOME NOME_USUARIO'#13#10'from P' +
      'EDWEB PWEB'#13#10'left join PESSOA P on P.CODIGO = PWEB.ID_PESSOA'#13#10'lef' +
      't join PESSOA P1 on P1.CODIGO = PWEB.ID_USUARIO  '#13#10'where COALESC' +
      'E(PWEB.GERADO,'#39'N'#39') <> '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 240
    object sdsConsultaPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaPedWebID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object sdsConsultaPedWebID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsConsultaPedWebHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object sdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsConsultaPedWebVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsConsultaPedWebVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sdsConsultaPedWebTIPO_OPERACAO: TIntegerField
      FieldName = 'TIPO_OPERACAO'
    end
    object sdsConsultaPedWebCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object sdsConsultaPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaPedWebNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsultaPedWebNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 60
    end
    object sdsConsultaPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object sdsConsultaPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object sdsConsultaPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sdsConsultaPedWebPRAZO_PEDIDO: TStringField
      FieldName = 'PRAZO_PEDIDO'
      Size = 30
    end
  end
  object dspConsultaPedWeb: TDataSetProvider
    DataSet = sdsConsultaPedWeb
    Left = 402
    Top = 240
  end
  object cdsConsultaPedWeb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaPedWeb'
    Left = 430
    Top = 240
    object cdsConsultaPedWebID: TIntegerField
      DisplayLabel = 'ID PedWeb'
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaPedWebID_USUARIO: TIntegerField
      DisplayLabel = 'Cod.Usu'#225'rio'
      FieldName = 'ID_USUARIO'
    end
    object cdsConsultaPedWebID_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_PESSOA'
    end
    object cdsConsultaPedWebHORA_EMISSAO: TStringField
      DisplayLabel = 'Hora Emiss'#227'o'
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object cdsConsultaPedWebID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsConsultaPedWebVLR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Vlr.Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPedWebVLR_TOTAL: TFMTBCDField
      DisplayLabel = 'Vlr.Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##.#00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPedWebTIPO_OPERACAO: TIntegerField
      DisplayLabel = 'Tipo Opera'#231#227'o'
      FieldName = 'TIPO_OPERACAO'
    end
    object cdsConsultaPedWebCOND_PAGAMENTO: TIntegerField
      DisplayLabel = 'Cond.Pagamento'
      FieldName = 'COND_PAGAMENTO'
    end
    object cdsConsultaPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPedWebNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaPedWebNOME_USUARIO: TStringField
      DisplayLabel = 'Nome Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 60
    end
    object cdsConsultaPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object cdsConsultaPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object cdsConsultaPedWebDATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
    end
    object cdsConsultaPedWebPRAZO_PEDIDO: TStringField
      DisplayLabel = 'Prazo Pedido'
      DisplayWidth = 15
      FieldName = 'PRAZO_PEDIDO'
      Size = 30
    end
  end
  object dsConsultaPedWeb: TDataSource
    DataSet = cdsConsultaPedWeb
    Left = 460
    Top = 240
  end
  object sdsPedWeb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PEDWEB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 100
    Top = 381
    object sdsPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedWebID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object sdsPedWebID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsPedWebHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object sdsPedWebID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsPedWebVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsPedWebTIPO_OPERACAO: TIntegerField
      FieldName = 'TIPO_OPERACAO'
    end
    object sdsPedWebCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object sdsPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedWebVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sdsPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object sdsPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object sdsPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sdsPedWebPRAZO_PEDIDO: TStringField
      FieldName = 'PRAZO_PEDIDO'
      Size = 30
    end
  end
  object dspPedWeb: TDataSetProvider
    DataSet = sdsPedWeb
    Left = 126
    Top = 381
  end
  object cdsPedWeb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedWeb'
    Left = 154
    Top = 381
    object cdsPedWebID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedWebID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPedWebID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsPedWebHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 10
    end
    object cdsPedWebID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsPedWebVLR_DESCONTO: TFMTBCDField
      FieldName = 'VLR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsPedWebTIPO_OPERACAO: TIntegerField
      FieldName = 'TIPO_OPERACAO'
    end
    object cdsPedWebCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object cdsPedWebGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedWebVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsPedWebOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object cdsPedWebDATA_APROVADO: TDateField
      FieldName = 'DATA_APROVADO'
    end
    object cdsPedWebDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsPedWebPRAZO_PEDIDO: TStringField
      FieldName = 'PRAZO_PEDIDO'
      Size = 30
    end
    object cdsPedWebsdsPedWeb_Item: TDataSetField
      FieldName = 'sdsPedWeb_Item'
    end
  end
  object dsPedWeb: TDataSource
    DataSet = cdsPedWeb
    Left = 184
    Top = 381
  end
  object dsMestre: TDataSource
    DataSet = sdsPedWeb
    Left = 100
    Top = 429
  end
  object sdsPedWeb_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PEDWEB_ITEM'#13#10'where ID_PEDIDO = :ID'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 100
    Top = 477
    object sdsPedWeb_ItemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object sdsPedWeb_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object sdsPedWeb_ItemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object sdsPedWeb_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedWeb_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedWeb_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedWeb_ItemOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object cdsPedWeb_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 132
    Top = 477
    object cdsPedWeb_ItemID_PEDIDO: TIntegerField
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedWeb_ItemID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsPedWeb_ItemQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object cdsPedWeb_ItemVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##.#00'
    end
    object cdsPedWeb_ItemOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object dsPedWeb_Item: TDataSource
    DataSet = cdsPedWeb_Item
    Left = 164
    Top = 477
  end
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.ID, I.ITEM, I.APROVADO_ITEM, I.ID_PRODUTO, I.REFERENCIA' +
      ', I.NOMEPRODUTO, I.CANCELADO, I.QTD'#13#10'FROM PEDIDO_ITEM I'#13#10'WHERE I' +
      '.ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 147
    object sdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ItemAPROVADO_ITEM: TStringField
      FieldName = 'APROVADO_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_ItemCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    UpdateMode = upWhereKeyOnly
    Left = 97
    Top = 146
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedido_Item'
    Left = 131
    Top = 145
    object cdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ItemAPROVADO_ITEM: TStringField
      FieldName = 'APROVADO_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_ItemCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 162
    Top = 146
  end
  object sdsPedido_Item_Aprov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, F.NOME NOME_FUNCIONARIO'#13#10'FROM PEDIDO_ITEM_APROV P'#13#10'L' +
      'EFT JOIN FUNCIONARIO F'#13#10'ON P.ID_FUNCIONARIO = F.CODIGO'#13#10'WHERE P.' +
      'ID = :ID'#13#10'  AND P.ITEM = :ITEM'#13#10
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
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 68
    Top = 202
    object sdsPedido_Item_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_AprovITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_AprovITEM_APROV: TIntegerField
      FieldName = 'ITEM_APROV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPedido_Item_AprovDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsPedido_Item_AprovHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsPedido_Item_AprovID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsPedido_Item_AprovAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 1
    end
    object sdsPedido_Item_AprovMOTIVO_NAO_APROV: TStringField
      FieldName = 'MOTIVO_NAO_APROV'
      Size = 250
    end
    object sdsPedido_Item_AprovNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object sdsPedido_Item_AprovDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dspPedido_Item_Aprov: TDataSetProvider
    DataSet = sdsPedido_Item_Aprov
    UpdateMode = upWhereKeyOnly
    Left = 100
    Top = 203
  end
  object cdsPedido_Item_Aprov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_APROV'
    Params = <>
    ProviderName = 'dspPedido_Item_Aprov'
    Left = 132
    Top = 201
    object cdsPedido_Item_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_AprovITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_AprovITEM_APROV: TIntegerField
      FieldName = 'ITEM_APROV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedido_Item_AprovDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsPedido_Item_AprovHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsPedido_Item_AprovID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsPedido_Item_AprovAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 1
    end
    object cdsPedido_Item_AprovMOTIVO_NAO_APROV: TStringField
      FieldName = 'MOTIVO_NAO_APROV'
      Size = 250
    end
    object cdsPedido_Item_AprovNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedido_Item_AprovDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dsPedido_Item_Aprov: TDataSource
    DataSet = cdsPedido_Item_Aprov
    Left = 164
    Top = 203
  end
  object qFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO_LOG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select f.codigo, f.nome, f.usuario_log'
      'from funcionario f'
      'where f.usuario_log = :USUARIO_LOG')
    SQLConnection = dmDatabase.scoDados
    Left = 804
    Top = 72
    object qFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qFuncionarioUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
  end
  object sdsPrc_Atualiza_Aprov_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'PRC_ATUALIZA_APROV_PED'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 603
    Top = 261
  end
  object qParametros_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_aprovacao_item'
      'FROM PARAMETROS_OC P')
    SQLConnection = dmDatabase.scoDados
    Left = 834
    Top = 8
    object qParametros_OCUSA_APROVACAO_ITEM: TStringField
      FieldName = 'USA_APROVACAO_ITEM'
      FixedChar = True
      Size = 1
    end
  end
end
