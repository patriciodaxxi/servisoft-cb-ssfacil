object DMCadNotaFiscal_MP: TDMCadNotaFiscal_MP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 408
  Top = 201
  Height = 422
  Width = 732
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
    object sdsNotaFiscal_MPID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object sdsNotaFiscal_MPNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsNotaFiscal_MPQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object sdsNotaFiscal_MPID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsNotaFiscal_MPNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsNotaFiscal_MPITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
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
    object cdsNotaFiscal_MPID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object cdsNotaFiscal_MPNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsNotaFiscal_MPQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object cdsNotaFiscal_MPID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_MPNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaFiscal_MPITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
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
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Num_Ordem'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Reserva'
        DataType = ftFloat
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'Item_Nota'
        DataType = ftInteger
      end
      item
        Name = 'Preco_Custo_Total'
        DataType = ftFloat
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
      0D0100009619E0BD01000000180000000B0000000000030000000D010B49445F
      4D6174657269616C04000100000000000754616D616E686F0100490000000100
      055749445448020002000A000351746408000400000000000B507265636F5F43
      7573746F080004000000000007556E6964616465010049000000010005574944
      54480200020006000649445F436F720400010000000000094E756D5F4F726465
      6D04000100000000000B5174645F526573657276610800040000000000074944
      5F43464F500400010000000000094974656D5F4E6F7461040001000000000011
      507265636F5F437573746F5F546F74616C080004000000000001000D44454641
      554C545F4F524445520200820000000000}
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
    object mMaterialID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mMaterialNum_Ordem: TIntegerField
      FieldName = 'Num_Ordem'
    end
    object mMaterialQtd_Reserva: TFloatField
      FieldName = 'Qtd_Reserva'
    end
    object mMaterialID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mMaterialItem_Nota: TIntegerField
      FieldName = 'Item_Nota'
    end
    object mMaterialPreco_Custo_Total: TFloatField
      FieldName = 'Preco_Custo_Total'
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
    object qMaterialPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object sdsConsumo: TSQLDataSet
    CommandText = 
      'SELECT AUX.*, COR.NOME NOME_COR'#13#10'from ('#13#10'SELECT P.id, P.referenc' +
      'ia, P.nome NOME_PRODUTO, PB.id_cor_combinacao,'#13#10'PB.nome NOME_COM' +
      'BINACAO, pc.id_material, pc.qtd_consumo, PC.TIPO_CONSUMO,'#13#10'PC.IT' +
      'EM ITEM_CONSUMO, MAT.NOME NOME_MATERIAL, MAT.TRANSFER,'#13#10'MAT.ID_G' +
      'RADE ID_GRADE_MAT,  MAT.ID_FORNECEDOR, MAT.preco_custo, PC.unida' +
      'de,'#13#10'MAT.PRECO_CUSTO_TOTAL,'#13#10'  ( SELECT PMAT.id_cor'#13#10'    FROM PR' +
      'ODUTO_COMB_MAT PMAT'#13#10'    WHERE PMAT.id = PB.id'#13#10'      AND PMAT.i' +
      'tem = PB.item'#13#10'      AND PMAT.id_material = PC.id_material) ID_C' +
      'OR_MAT'#13#10#13#10'FROM PRODUTO P'#13#10'INNER JOIN PRODUTO_CONSUMO PC'#13#10'ON P.id' +
      ' = PC.id'#13#10'LEFT JOIN PRODUTO_COMB PB'#13#10'ON PC.id = pb.ID'#13#10'AND PB.id' +
      '_cor_combinacao = :ID_COMBINACAO'#13#10'LEFT JOIN PRODUTO MAT'#13#10'ON PC.i' +
      'd_material = MAT.id'#13#10#13#10'WHERE P.TIPO_REG = '#39'P'#39#13#10'and p.id = :ID_PR' +
      'ODUTO)'#13#10'AUX'#13#10'LEFT JOIN COMBINACAO COR'#13#10'ON AUX.ID_COR_MAT = COR.I' +
      'D'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMBINACAO'
        ParamType = ptInput
      end
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
    IndexFieldNames = 'ID_MATERIAL;ID_COR_MAT'
    Params = <>
    ProviderName = 'dspConsumo'
    Left = 152
    Top = 256
    object cdsConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsumoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsumoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsConsumoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
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
    object cdsConsumoID_COR_MAT: TIntegerField
      FieldName = 'ID_COR_MAT'
    end
    object cdsConsumoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
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
    object cdsConsumoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
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
  object qReserva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select aux.*, (SELECT SUM(ER.qtd2) FROM ESTOQUE_MOV_RES ER'
      '                WHERE ER.id_produto = :ID_MATERIAL'
      '                  AND ER.id_cor = :ID_COR'
      '                  AND ER.tamanho = :TAMANHO'
      '                  AND ER.num_ordem = aux.num_ordem) QTD_RESERVA'
      'from  (SELECT L.num_ordem'
      'FROM talao_ped TP'
      'INNER JOIN LOTE L'
      'ON TP.ID = L.id'
      'WHERE TP.id_pedido = :ID_PEDIDO'
      '  AND TP.item_pedido = :ITEM_PEDIDO'
      ' ) aux'
      ''
      ''
      ''
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 96
    object qReservaNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object qReservaQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
  end
  object qReserva_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDPROD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select SUM(ITE.qtd_restante) QTD_OC_RESTANTE, SUM(LMAT.qtd_oc_or' +
        'iginal) qtd_oc_original, SUM(ITE.qtd) qtd'
      'FROM PEDIDO PED'
      'INNER JOIN PEDIDO_ITEM ITE'
      '   ON PED.ID = ITE.ID'
      'LEFT JOIN LOTE_MAT LMAT'
      '   ON ITE.id = LMAT.id_oc'
      '  AND ITE.item = LMAT.item_oc'
      'WHERE PED.NUM_ORDPROD = :NUM_ORDPROD'
      '  AND ITE.ID_PRODUTO = :ID_PRODUTO'
      '  AND ITE.ID_COR    = :ID_COR'
      '  AND ITE.TAMANHO = :TAMANHO'
      '  AND PED.cancelado = '#39'N'#39
      '  AND ITE.cancelado = '#39'N'#39
      '  AND ITE.qtd_restante > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 160
    object qReserva_OCQTD_OC_RESTANTE: TFloatField
      FieldName = 'QTD_OC_RESTANTE'
    end
    object qReserva_OCQTD_OC_ORIGINAL: TFloatField
      FieldName = 'QTD_OC_ORIGINAL'
    end
    object qReserva_OCQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object qOC_Pend: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT count(1) CONTADOR'
      'FROM PEDIDO_ITEM I'
      'WHERE I.tipo_reg = '#39'C'#39
      '  AND I.qtd_restante > 0'
      '  AND I.cancelado = '#39'N'#39
      '  AND I.id_produto = :ID_PRODUTO'
      '  and i.id_cor = :ID_COR')
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 224
    object qOC_PendCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qOC_Pend_Ord: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_ORDPROD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT count(1) CONTADOR'
      'FROM PEDIDO_ITEM I'
      'inner join pedido p'
      'on i.id = p.id'
      'WHERE I.tipo_reg = '#39'C'#39
      '  AND I.qtd_restante > 0'
      '  AND I.cancelado = '#39'N'#39
      '  AND I.id_produto = :ID_PRODUTO'
      '  and i.id_cor = :ID_COR'
      '  AND P.NUM_ORDPROD = :NUM_ORDPROD')
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 296
    object qOC_Pend_OrdCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsProduto_CMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id, v.item, v.nome_combinacao, v.id_material, v.materia' +
      'l, v.id_setor, v.nome_posicao, v.qtd_consumo,'#13#10'v.nome_setor, v.T' +
      'IPO_CONSUMO, V.ITEM_CONSUMO, V.ID_COR_MAT, V.NOME_COR NOME_COR_M' +
      'AT,'#13#10'V.PRECO_CUSTO, V.PRECO_CUSTO_TOTAL, V.UNIDADE'#13#10'FROM vficha_' +
      'tecnica2 V'#13#10'WHERE V.ID = :ID'#13#10'  AND V.id_cor_combinacao = :ID_CO' +
      'R_COMBINACAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR_COMBINACAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 240
    Top = 304
  end
  object dspProduto_CMat: TDataSetProvider
    DataSet = sdsProduto_CMat
    Left = 280
    Top = 304
  end
  object cdsProduto_CMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_CMat'
    Left = 320
    Top = 304
    object cdsProduto_CMatID: TIntegerField
      FieldName = 'ID'
    end
    object cdsProduto_CMatITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsProduto_CMatNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsProduto_CMatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_CMatMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsProduto_CMatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_CMatNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsProduto_CMatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_CMatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsProduto_CMatTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CMatITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
    end
    object cdsProduto_CMatID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsProduto_CMatNOME_COR_MAT: TStringField
      FieldName = 'NOME_COR_MAT'
      Size = 60
    end
    object cdsProduto_CMatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_CMatPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProduto_CMatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsProduto_CMat: TDataSource
    DataSet = cdsProduto_CMat
    Left = 360
    Top = 304
  end
end
