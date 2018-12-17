object DMCadLote: TDMCadLote
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 89
  Top = 15
  Height = 695
  Width = 1221
  object sdsLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOTE'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 24
    object sdsLoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object sdsLoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsLoteHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsLoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsLoteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLoteDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsLoteTALAO_AUX_GERADO: TStringField
      FieldName = 'TALAO_AUX_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLoteID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsLoteTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsLoteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsLoteDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsLoteHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsLoteDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsLoteHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsLoteQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object sdsLoteQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsLoteNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 160
    Top = 24
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLote'
    OnNewRecord = cdsLoteNewRecord
    Left = 207
    Top = 24
    object cdsLoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object cdsLoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsLoteHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsLotesdsTalao: TDataSetField
      FieldName = 'sdsTalao'
    end
    object cdsLoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsLoteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLoteDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsLotesdsTalao_Aux: TDataSetField
      FieldName = 'sdsTalao_Aux'
    end
    object cdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsLoteTALAO_AUX_GERADO: TStringField
      FieldName = 'TALAO_AUX_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLoteID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsLoteTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLoteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLotesdsLote_Ped: TDataSetField
      FieldName = 'sdsLote_Ped'
    end
    object cdsLoteDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsLoteHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsLoteDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsLoteHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsLoteQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object cdsLoteQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsLoteNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 255
    Top = 24
  end
  object dsLote_Mestre: TDataSource
    DataSet = sdsLote
    Left = 64
    Top = 48
  end
  object sdsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TALAO'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsLote_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 88
    object sdsTalaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsTalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object sdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsTalaoID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalaoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsTalaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsTalaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object cdsTalao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsLotesdsTalao
    IndexFieldNames = 'ID;NUM_TALAO'
    Params = <>
    Left = 184
    Top = 88
    object cdsTalaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsTalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object cdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsTalaoID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsTalaosdsTalao_Ped: TDataSetField
      FieldName = 'sdsTalao_Ped'
    end
    object cdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalaosdsTalao_Processo: TDataSetField
      FieldName = 'sdsTalao_Processo'
    end
    object cdsTalaoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsTalaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsTalaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsTalao: TDataSource
    DataSet = cdsTalao
    Left = 240
    Top = 88
  end
  object dsTalao_Mestre: TDataSource
    DataSet = sdsTalao
    Left = 96
    Top = 112
  end
  object sdsTalao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM TALAO_PED'#13#10'WHERE ID = :ID'#13#10'  AND NUM_TALAO = :NUM' +
      '_TALAO'#13#10
    DataSource = dsTalao_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 152
    object sdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object sdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object sdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsTalao_PedNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsTalao_PedBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsTalao_Ped: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTalaosdsTalao_Ped
    IndexFieldNames = 'ID;NUM_TALAO;ID_PEDIDO;ITEM_PEDIDO'
    Params = <>
    Left = 200
    Top = 152
    object cdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsTalao_PedBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTalao_Ped: TDataSource
    DataSet = cdsTalao_Ped
    Left = 256
    Top = 152
  end
  object qProximo_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_LOTE) NUM_LOTE'
      'FROM LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1080
    Top = 280
    object qProximo_LoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
  end
  object sdsPendente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.NUM_PEDIDO, PED.PEDIDO_CLIENTE, PED.ID_CLIENTE, PED.D' +
      'TEMISSAO, PED.ID, PED.FILIAL,'#13#10'PI2.item, PI2.id_produto, PI2.id_' +
      'cor,  PI2.tamanho, PI2.dtentrega, PI2.QTD qtd_restante, PI2.numo' +
      's,'#13#10'PI2.nomeproduto, PI2.referencia, CLI.nome NOME_CLIENTE, CLI.' +
      'fantasia, PI2.CARIMBO,'#13#10'COMB.NOME NOME_COMBINACAO, PI2.item_orig' +
      'inal, PI2.selecionado, PROD.id_cor ID_COR_PROD,'#13#10'COR.NOME NOME_C' +
      'OR_PROD, PROD.TIPO_MAT,'#13#10'case'#13#10'  WHEN (SELECT GRAVAR_OBS_LOTE FR' +
      'OM PARAMETROS_LOTE WHERE ID = 1) = '#39'I'#39' THEN PI2.OBS'#13#10'  WHEN (SEL' +
      'ECT GRAVAR_OBS_LOTE FROM PARAMETROS_LOTE WHERE ID = 1) = '#39'P'#39' THE' +
      'N PROD.OBS'#13#10'  WHEN (SELECT GRAVAR_OBS_LOTE FROM PARAMETROS_LOTE ' +
      'WHERE ID = 1) = '#39'A'#39' THEN coalesce(PI2.obs,'#39#39') || '#39' '#39' || coalesce' +
      '(prod.obs,'#39#39')'#13#10'  ELSE '#39#39#13#10'  END OBS_LOTE'#13#10#13#10'FROM PEDIDO PED'#13#10'INN' +
      'ER JOIN PEDIDO_ITEM PI2'#13#10'ON PED.ID = PI2.ID'#13#10'INNER JOIN PESSOA C' +
      'LI'#13#10'ON PED.ID_CLIENTE = CLI.codigo'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'O' +
      'N PI2.ID_COR = COMB.ID'#13#10'LEFT JOIN PRODUTO PROD'#13#10'ON PI2.id_produt' +
      'o = PROD.ID'#13#10'LEFT JOIN COR'#13#10'ON PROD.ID_COR = COR.ID'#13#10'WHERE PED.T' +
      'IPO_REG = '#39'P'#39#13#10'  AND PI2.GERAR_LOTE = '#39'S'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 16
  end
  object dspPendente: TDataSetProvider
    DataSet = sdsPendente
    Left = 512
    Top = 16
  end
  object cdsPendente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPendente'
    Left = 576
    Top = 16
    object cdsPendenteNUM_PEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Ped. Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPendentePEDIDO_CLIENTE: TStringField
      DisplayLabel = 'Pedido Cliente (OC)'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPendenteID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPendenteDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPendenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPendenteFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPendenteITEM: TIntegerField
      DisplayLabel = 'Item Ped.'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPendenteID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsPendenteTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPendenteDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPendenteNUMOS: TStringField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPendenteNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPendenteREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPendenteNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPendenteFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPendenteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsPendenteID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPendenteNOME_COMBINACAO: TStringField
      DisplayLabel = 'Nome Combina'#231#227'o'
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsPendenteQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPendenteITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsPendenteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPendenteID_COR_PROD: TIntegerField
      FieldName = 'ID_COR_PROD'
    end
    object cdsPendenteNOME_COR_PROD: TStringField
      FieldName = 'NOME_COR_PROD'
      Size = 45
    end
    object cdsPendenteTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object cdsPendenteOBS_LOTE: TMemoField
      FieldName = 'OBS_LOTE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsPendente: TDataSource
    DataSet = cdsPendente
    Left = 624
    Top = 16
  end
  object sdsConsulta_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.dtemissao, L.num_lote, L.filial, L.hremissao, L.DTENTRE' +
      'GA,'#13#10'L.qtd_taloes, L.NUM_ORDEM, L.CARIMBO, L.TALAO_AUX_GERADO,'#13#10 +
      'T.id, T.num_talao, T.id, T.id_produto, T.tamanho, T.qtd, T.qtd_p' +
      'endente, T.qtd_produzido,'#13#10'T.dtbaixa, T.hrbaixa, T.impresso, T.i' +
      'd_combinacao, T.dtentrada,'#13#10'T.hrentrada, T.item_pedido, T.id_ped' +
      'ido, PRO.REFERENCIA, PRO.UNIDADE, FIL.NOME NOME_FILIAL, PRO.ID_G' +
      'RADE,'#13#10'PCP.acabamento, PCP.cor_acabamento, PCP.id_tipo_matriz, T' +
      'M.NOME NOME_TIPOMATRIZ,'#13#10'COMB.nome NOME_COMBINACAO, L.NOME NOME_' +
      'LOTE, PR.NOME NOME_PROCESSO, L.TIPO_LOTE,'#13#10'L.num_pedido, PED.ped' +
      'ido_cliente, CLI.nome NOME_CLIENTE, PRO.id_cor ID_COR_PROD, T.un' +
      'idade UNIDADE_TALAO, t.id_processo,'#13#10'PRO.id_forma, FORMA.NOME NO' +
      'ME_FORMA, L.OBS OBS_LOTE,'#13#10'CASE'#13#10'  WHEN L.nome_produto IS NULL T' +
      'HEN PRO.NOME'#13#10'  ELSE L.nome_produto'#13#10'  END NOME_PRODUTO'#13#10'FROM LO' +
      'TE L'#13#10'INNER JOIN TALAO T'#13#10'ON L.ID = T.ID'#13#10'INNER JOIN FILIAL FIL'#13 +
      #10'ON L.FILIAL = FIL.ID'#13#10'LEFT JOIN PRODUTO PRO'#13#10'ON T.ID_PRODUTO = ' +
      'PRO.ID'#13#10'LEFT JOIN PRODUTO_PCP PCP'#13#10'ON T.ID_PRODUTO = PCP.ID'#13#10'LEF' +
      'T JOIN TIPO_MATRIZ TM'#13#10'ON PCP.ID_TIPO_MATRIZ = TM.ID'#13#10'LEFT JOIN ' +
      'combinacao COMB'#13#10'ON L.id_combinacao = COMB.id'#13#10'LEFT JOIN PROCESS' +
      'O PR'#13#10'ON T.id_processo = PR.ID'#13#10'LEFT JOIN pedido PED'#13#10'ON L.id_pe' +
      'dido = PED.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON PED.id_cliente = CLI.cod' +
      'igo'#13#10'LEFT JOIN PRODUTO FORMA'#13#10'ON PRO.id_forma = FORMA.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 160
  end
  object dspConsulta_Lote: TDataSetProvider
    DataSet = sdsConsulta_Lote
    Left = 512
    Top = 160
  end
  object cdsConsulta_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Lote'
    Left = 576
    Top = 160
    object cdsConsulta_LoteDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_LoteNUM_LOTE: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      FieldName = 'NUM_LOTE'
    end
    object cdsConsulta_LoteFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsConsulta_LoteHREMISSAO: TTimeField
      DisplayLabel = 'Hora Emiss'#227'o'
      FieldName = 'HREMISSAO'
    end
    object cdsConsulta_LoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_LoteNUM_TALAO: TIntegerField
      DisplayLabel = 'N'#186' Tal'#227'o'
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsConsulta_LoteID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_LoteTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsConsulta_LoteQTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'QTD'
    end
    object cdsConsulta_LoteQTD_PRODUZIDO: TFloatField
      DisplayLabel = 'Qtd. Produzido'
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsConsulta_LoteQTD_PENDENTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_PENDENTE'
    end
    object cdsConsulta_LoteDTBAIXA: TDateField
      DisplayLabel = 'Data Baixa'
      FieldName = 'DTBAIXA'
    end
    object cdsConsulta_LoteHRBAIXA: TTimeField
      DisplayLabel = 'Hora Baixa'
      FieldName = 'HRBAIXA'
    end
    object cdsConsulta_LoteNOME_PRODUTO: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_LoteIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_LoteDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_LoteQTD_TALOES: TIntegerField
      DisplayLabel = 'N'#186' de Tal'#245'es'
      FieldName = 'QTD_TALOES'
    end
    object cdsConsulta_LoteNOME_FILIAL: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsulta_LoteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsConsulta_LoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsulta_LoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsConsulta_LoteID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsConsulta_LoteACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_LoteCOR_ACABAMENTO: TStringField
      FieldName = 'COR_ACABAMENTO'
      Size = 30
    end
    object cdsConsulta_LoteID_TIPO_MATRIZ: TIntegerField
      FieldName = 'ID_TIPO_MATRIZ'
    end
    object cdsConsulta_LoteNOME_TIPOMATRIZ: TStringField
      FieldName = 'NOME_TIPOMATRIZ'
      Size = 40
    end
    object cdsConsulta_LoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsConsulta_LoteTALAO_AUX_GERADO: TStringField
      FieldName = 'TALAO_AUX_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_LoteNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsConsulta_LoteNOME_LOTE: TStringField
      FieldName = 'NOME_LOTE'
      Size = 30
    end
    object cdsConsulta_LoteITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsulta_LoteID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsulta_LoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsulta_LotePEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsulta_LoteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_LoteTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_LoteUNIDADE_TALAO: TStringField
      FieldName = 'UNIDADE_TALAO'
      Size = 6
    end
    object cdsConsulta_LoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_LoteNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsulta_LoteID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsulta_LoteID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object cdsConsulta_LoteNOME_FORMA: TStringField
      FieldName = 'NOME_FORMA'
      Size = 100
    end
    object cdsConsulta_LoteOBS_LOTE: TMemoField
      FieldName = 'OBS_LOTE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsConsulta_Lote: TDataSource
    DataSet = cdsConsulta_Lote
    Left = 624
    Top = 160
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.*, PCP.cavidade_molde, PCP.cavidade_peca, PCP.ciclo, ' +
      'PCP.qtd_talao, PCP.tempo_troca_matriz, PCP.tempo_troca_cor'#13#10'FROM' +
      ' PRODUTO PRO'#13#10'LEFT JOIN PRODUTO_PCP PCP'#13#10'ON PRO.id = PCP.ID'#13#10'WHE' +
      'RE PRO.TIPO_REG = '#39'P'#39#13#10'    AND PRO.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 200
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 512
    Top = 200
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 576
    Top = 200
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
    end
    object cdsProdutoCAVIDADE_MOLDE: TFloatField
      FieldName = 'CAVIDADE_MOLDE'
    end
    object cdsProdutoCAVIDADE_PECA: TFloatField
      FieldName = 'CAVIDADE_PECA'
    end
    object cdsProdutoCICLO: TFloatField
      FieldName = 'CICLO'
    end
    object cdsProdutoQTD_TALAO: TIntegerField
      FieldName = 'QTD_TALAO'
    end
    object cdsProdutoTEMPO_TROCA_MATRIZ: TFloatField
      FieldName = 'TEMPO_TROCA_MATRIZ'
    end
    object cdsProdutoTEMPO_TROCA_COR: TFloatField
      FieldName = 'TEMPO_TROCA_COR'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 624
    Top = 200
  end
  object mLote: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Lote'
        DataType = ftInteger
      end
      item
        Name = 'Num_Talao'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Qtd_Taloes'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_Lote'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ID_Grade'
        DataType = ftInteger
      end
      item
        Name = 'Num_Ordem'
        DataType = ftInteger
      end
      item
        Name = 'Acabamento'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cor_Acabamento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_TipoMatriz'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Selecionado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'Talao_Aux_Gerado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Lote'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_Processo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Processo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tipo_Lote'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Descricao_Tipo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_Forma'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Forma'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'OBS'
        DataType = ftMemo
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Num_Lote'
    Params = <>
    StoreDefs = True
    Left = 496
    Top = 488
    Data = {
      FD0300009619E0BD010000001800000025000000000003000000FD03084E756D
      5F4C6F74650400010000000000094E756D5F54616C616F04000100000000000A
      49445F50726F6475746F0400010000000000094474456E747265676104000600
      000000000A5174645F54616C6F65730400010000000000035174640800040000
      0000000646696C69616C04000100000000000A5265666572656E636961010049
      00000001000557494454480200020014000C4E6F6D655F50726F6475746F0100
      490000000100055749445448020002002800094474456D697373616F04000600
      000000000B4E6F6D655F46696C69616C01004900000001000557494454480200
      02003C0007556E69646164650100490000000100055749445448020002000600
      0749445F4C6F746504000100000000000754616D616E686F0100490000000100
      055749445448020002000A0007436172696D626F010049000000010005574944
      54480200020019000849445F47726164650400010000000000094E756D5F4F72
      64656D04000100000000000A41636162616D656E746F01004900000001000557
      49445448020002000F000E436F725F41636162616D656E746F01004900000001
      00055749445448020002001E000F4E6F6D655F5469706F4D617472697A010049
      0000000100055749445448020002001E000B53656C6563696F6E61646F010049
      00000001000557494454480200020001000F4E6F6D655F436F6D62696E616361
      6F01004900000001000557494454480200020028000D49445F436F6D62696E61
      63616F04000100000000001054616C616F5F4175785F47657261646F01004900
      00000100055749445448020002000100094E6F6D655F4C6F7465010049000000
      0100055749445448020002001E000B49445F50726F636573736F040001000000
      00000D4E6F6D655F50726F636573736F01004900000001000557494454480200
      02003C00095469706F5F4C6F7465010049000000010005574944544802000200
      01000E44657363726963616F5F5469706F010049000000010005574944544802
      0002001E000E50656469646F5F436C69656E7465010049000000010005574944
      54480200020014000A4E756D5F50656469646F04000100000000000C4E6F6D65
      5F436C69656E74650100490000000100055749445448020002003C000849445F
      466F726D6104000100000000000A4E6F6D655F466F726D610100490000000100
      055749445448020002003C000643696461646501004900000001000557494454
      480200020028000255460100490000000100055749445448020002000200034F
      425304004B000000020007535542545950450200490005005465787400055749
      445448020002000A0001000D44454641554C545F4F5244455202008200000000
      00}
    object mLoteNum_Lote: TIntegerField
      FieldName = 'Num_Lote'
    end
    object mLoteNum_Talao: TIntegerField
      FieldName = 'Num_Talao'
    end
    object mLoteID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mLoteDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mLoteQtd_Taloes: TIntegerField
      FieldName = 'Qtd_Taloes'
    end
    object mLoteQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mLoteFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mLoteReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mLoteNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 40
    end
    object mLoteDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mLoteNome_Filial: TStringField
      FieldName = 'Nome_Filial'
      Size = 60
    end
    object mLoteUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mLoteID_Lote: TIntegerField
      FieldName = 'ID_Lote'
    end
    object mLoteTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mLoteCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 25
    end
    object mLoteID_Grade: TIntegerField
      FieldName = 'ID_Grade'
    end
    object mLoteNum_Ordem: TIntegerField
      FieldName = 'Num_Ordem'
    end
    object mLoteAcabamento: TStringField
      FieldName = 'Acabamento'
      Size = 15
    end
    object mLoteCor_Acabamento: TStringField
      FieldName = 'Cor_Acabamento'
      Size = 30
    end
    object mLoteNome_TipoMatriz: TStringField
      FieldName = 'Nome_TipoMatriz'
      Size = 30
    end
    object mLoteSelecionado: TStringField
      FieldName = 'Selecionado'
      Size = 1
    end
    object mLoteNome_Combinacao: TStringField
      FieldName = 'Nome_Combinacao'
      Size = 40
    end
    object mLoteID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mLoteTalao_Aux_Gerado: TStringField
      FieldName = 'Talao_Aux_Gerado'
      Size = 1
    end
    object mLoteNome_Lote: TStringField
      FieldName = 'Nome_Lote'
      Size = 30
    end
    object mLoteID_Processo: TIntegerField
      FieldName = 'ID_Processo'
    end
    object mLoteNome_Processo: TStringField
      FieldName = 'Nome_Processo'
      Size = 60
    end
    object mLoteTipo_Lote: TStringField
      FieldName = 'Tipo_Lote'
      Size = 1
    end
    object mLoteDescricao_Tipo: TStringField
      FieldName = 'Descricao_Tipo'
      Size = 30
    end
    object mLotePedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mLoteNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mLoteNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mLoteID_Forma: TIntegerField
      FieldName = 'ID_Forma'
    end
    object mLoteNome_Forma: TStringField
      FieldName = 'Nome_Forma'
      Size = 60
    end
    object mLoteCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object mLoteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mLoteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 10
    end
  end
  object mTalao: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Num_Lote;Tamanho'
    MasterFields = 'Num_Lote'
    MasterSource = dsmLote
    PacketRecords = 0
    Params = <>
    Left = 568
    Top = 488
    Data = {
      650000009619E0BD0100000018000000040000000000030000006500084E756D
      5F4C6F74650400010000000000094E756D5F54616C616F040001000000000007
      54616D616E686F0100490000000100055749445448020002000A000351746408
      000400000000000000}
    object mTalaoNum_Lote: TIntegerField
      FieldName = 'Num_Lote'
    end
    object mTalaoNum_Talao: TIntegerField
      FieldName = 'Num_Talao'
    end
    object mTalaoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mTalaoQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmLote: TDataSource
    DataSet = mLote
    Left = 528
    Top = 488
  end
  object dsmTalao: TDataSource
    DataSet = mTalao
    Left = 608
    Top = 488
  end
  object sdsBusca_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT TP.id, TP.id_pedido, PED.num_pedido, PED.pedido_' +
      'cliente'#13#10'FROM TALAO_PED TP'#13#10'INNER JOIN PEDIDO PED'#13#10'ON TP.ID_PEDI' +
      'DO = PED.ID'#13#10'WHERE TP.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 256
  end
  object dspBusca_Ped: TDataSetProvider
    DataSet = sdsBusca_Ped
    Left = 520
    Top = 256
  end
  object cdsBusca_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca_Ped'
    Left = 592
    Top = 256
    object cdsBusca_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBusca_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsBusca_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsBusca_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
  end
  object qProxima_Ordem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_ORDEM) NUM_ORDEM'
      'FROM LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 224
    object qProxima_OrdemNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
  end
  object qVerificaExclusao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1)'
      'FROM lote L'
      'INNER JOIN TALAO T'
      'ON L.ID = T.ID'
      'WHERE T.DTBAIXA IS NOT NULL'
      'AND L.NUM_ORDEM = :NUM_ORDEM')
    SQLConnection = dmDatabase.scoDados
    Left = 360
    Top = 32
    object qVerificaExclusaoCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.*, PS.IMP_TALAO IMP_TALAO_POS, MAT.NOME NOME_MATERIAL,' +
      ' MAT.ID_GRADE, MAT.REFERENCIA REF_MATERIAL,'#13#10'PS.NOME NOME_POSICA' +
      'O, PS.imp_material, PS.imp_agrupado_material, COR.NOME NOME_COR,' +
      ' MAT.ID_COR'#13#10'FROM PRODUTO_CONSUMO PC'#13#10'LEFT JOIN POSICAO PS'#13#10'ON P' +
      'C.ID_POSICAO = PS.ID'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON PC.ID_MATERIAL ' +
      '= MAT.ID'#13#10'LEFT JOIN COR'#13#10'ON MAT.ID_COR = COR.ID'#13#10'WHERE PC.ID = :' +
      'ID'#13#10'  AND ((PS.IMP_TALAO = '#39'S'#39'  AND PC.ID_POSICAO > 0) OR'#13#10'  (PC' +
      '.IMP_TALAO = '#39'S'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 536
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 528
    Top = 536
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 592
    Top = 536
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsProduto_ConsumoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProduto_ConsumoREF_MATERIAL: TStringField
      FieldName = 'REF_MATERIAL'
    end
    object cdsProduto_ConsumoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoIMP_TALAO_POS: TStringField
      FieldName = 'IMP_TALAO_POS'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsProduto_ConsumoIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoIMP_AGRUPADO_MATERIAL: TStringField
      FieldName = 'IMP_AGRUPADO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 45
    end
    object cdsProduto_ConsumoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
  end
  object dsProduto_Consumo: TDataSource
    DataSet = cdsProduto_Consumo
    Left = 640
    Top = 536
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 1120
    Top = 328
    object qParametrosMOSTRAR_MAT_LOTE: TStringField
      FieldName = 'MOSTRAR_MAT_LOTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object qParametrosALTURA_ETIQ_ROT: TIntegerField
      FieldName = 'ALTURA_ETIQ_ROT'
    end
    object qParametrosIMP_NOME_POSICAO: TStringField
      FieldName = 'IMP_NOME_POSICAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_LINHA_PROD: TStringField
      FieldName = 'MOSTRAR_LINHA_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SETOR_CONSUMO: TStringField
      FieldName = 'USA_SETOR_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_ATELIER_PROD: TStringField
      FieldName = 'MOSTRAR_ATELIER_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ROTULO2: TStringField
      FieldName = 'USA_ROTULO2'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
  end
  object mTamanho: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Tamanho'
    Params = <>
    Left = 416
    Top = 488
    Data = {
      420000009619E0BD01000000180000000200000000000300000042000754616D
      616E686F0100490000000100055749445448020002000A000351746408000400
      000000000000}
    object mTamanhoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mTamanhoQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmTamanho: TDataSource
    DataSet = mTamanho
    Left = 448
    Top = 488
  end
  object mAuxiliar_Talao: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Num_Talao'
        DataType = ftInteger
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Produto;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 1080
    Top = 328
    Data = {
      A30000009619E0BD010000001800000005000000000003000000A3000A49445F
      50726F6475746F04000100000000000754616D616E686F010049000000010005
      5749445448020002000A00094E756D5F54616C616F0400010000000000074361
      72696D626F0100490000000100055749445448020002001E000D49445F436F6D
      62696E6163616F040001000000000001000D44454641554C545F4F5244455202
      00820000000000}
    object mAuxiliar_TalaoID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mAuxiliar_TalaoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mAuxiliar_TalaoNum_Talao: TIntegerField
      FieldName = 'Num_Talao'
    end
    object mAuxiliar_TalaoCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mAuxiliar_TalaoID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME, FANTASIA'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 128
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object sdsPedido_Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT TP.id_pedido, PED.num_pedido, PED.pedido_cliente' +
      ','#13#10'PES.NOME NOME_CLIENTE, PES.FANTASIA, PI.numos, PED.ID_CLIENTE' +
      '_TRIANGULAR, CTRI.NOME NOME_TRIANGULAR'#13#10'FROM TALAO_PED TP'#13#10'INNER' +
      ' JOIN PEDIDO PED'#13#10'ON TP.ID_PEDIDO = PED.ID'#13#10'INNER JOIN PESSOA PE' +
      'S'#13#10'ON TP.ID_CLIENTE = PES.CODIGO'#13#10'INNER JOIN PEDIDO_ITEM PI'#13#10'ON ' +
      'TP.id_pedido = PI.ID'#13#10'AND TP.item_pedido = PI.ITEM'#13#10'LEFT JOIN PE' +
      'SSOA CTRI'#13#10'ON PED.id_cliente_triangular = CTRI.codigo'#13#10'WHERE TP.' +
      'ID = :ID'#13#10'      AND TP.NUM_TALAO = :NUM_TALAO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 304
  end
  object dspPedido_Talao: TDataSetProvider
    DataSet = sdsPedido_Talao
    Left = 520
    Top = 304
  end
  object cdsPedido_Talao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Talao'
    Left = 584
    Top = 304
    object cdsPedido_TalaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedido_TalaoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_TalaoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_TalaoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_TalaoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_TalaoNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_TalaoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsPedido_TalaoNOME_TRIANGULAR: TStringField
      FieldName = 'NOME_TRIANGULAR'
      Size = 60
    end
  end
  object qProduto_Consumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PC.id, PC.id_material, MAT.nome NOME_MATERIAL'
      'FROM PRODUTO_CONSUMO PC'
      'INNER JOIN PRODUTO MAT'
      'ON PC.id_material = MAT.ID'
      'WHERE PC.IMP_ROTULO = '#39'S'#39
      '     AND PC.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 176
    object qProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qProduto_ConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
  end
  object mPendente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 8
    Data = {
      8B0100009619E0BD0100000018000000100000000000030000008B010A4E554D
      5F50454449444F04000100000000000A49445F50524F4455544F040001000000
      00000E50454449444F5F434C49454E5445010049000000010005574944544802
      00020014000A49445F434C49454E54450400010000000000094454454D495353
      414F040006000000000002494404000100000000000646494C49414C04000100
      000000000649445F434F520400010000000000094454454E5452454741040006
      00000000000C5154445F52455354414E54450800040000000000054E554D4F53
      0100490000000100055749445448020002001E000B4E4F4D4550524F4455544F
      01004900000001000557494454480200020064000A5245464552454E43494101
      004900000001000557494454480200020014000C4E4F4D455F434C49454E5445
      0100490000000100055749445448020002003C000846414E5441534941010049
      0000000100055749445448020002001E0007434152494D424F01004900000001
      000557494454480200020019000000}
    object mPendenteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object mPendenteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mPendentePEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object mPendenteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object mPendenteID: TIntegerField
      FieldName = 'ID'
    end
    object mPendenteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object mPendenteID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object mPendenteDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object mPendenteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object mPendenteQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object mPendenteNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object mPendenteNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object mPendenteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object mPendenteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object mPendenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object mPendenteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
  end
  object dsmPendente: TDataSource
    DataSet = mPendente
    Left = 776
    Top = 8
  end
  object mPendente_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NUM_PEDIDO;ID_PRODUTO;TAMANHO'
    MasterFields = 'NUM_PEDIDO;ID_PRODUTO'
    MasterSource = dsmPendente
    PacketRecords = 0
    Params = <>
    Left = 720
    Top = 64
    Data = {
      710000009619E0BD01000000180000000400000000000300000071000A4E554D
      5F50454449444F04000100000000000A49445F50524F4455544F040001000000
      00000754414D414E484F0100490000000100055749445448020002000A000C51
      54445F52455354414E544508000400000000000000}
    object mPendente_TamNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object mPendente_TamID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mPendente_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object mPendente_TamQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
  end
  object dsmPendente_Tam: TDataSource
    DataSet = mPendente_Tam
    Left = 784
    Top = 64
  end
  object qProduto_Consumo_Tam: TSQLQuery
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
      'SELECT *'
      'FROM PRODUTO_CONSUMO_TAM'
      'WHERE ID = :ID'
      '    AND ITEM = :ITEM'
      '    AND TAMANHO = :TAMANHO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 240
    object qProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object sdsPedido_PorTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT PED.dtemissao, PED.id, PED.num_pedido, PED.pedid' +
      'o_cliente, L.num_lote, L.num_ordem,'#13#10'PED.id_cliente, PES.nome NO' +
      'ME_CLIENTE'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN TALAO_PED TPED'#13#10'ON PED.I' +
      'D = TPED.id_pedido'#13#10'INNER JOIN LOTE L'#13#10'ON TPED.id = L.id'#13#10'INNER ' +
      'JOIN PESSOA PES'#13#10'ON PED.id_cliente = PES.codigo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 584
  end
  object dspPedido_PorTalao: TDataSetProvider
    DataSet = sdsPedido_PorTalao
    Left = 528
    Top = 584
  end
  object cdsPedido_PorTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_PorTalao'
    Left = 592
    Top = 584
    object cdsPedido_PorTalaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_PorTalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_PorTalaoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_PorTalaoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_PorTalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsPedido_PorTalaoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsPedido_PorTalaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_PorTalaoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsPedido_PorTalao: TDataSource
    DataSet = cdsPedido_PorTalao
    Left = 640
    Top = 584
  end
  object sdsTalao_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TALAO_AUX'#13#10'WHERE ID = :ID'
    DataSource = dsLote_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 256
    object sdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object sdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object sdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object sdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object sdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
    object sdsTalao_AuxDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object sdsTalao_AuxSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object cdsTalao_Aux: TClientDataSet
    Aggregates = <>
    DataSetField = cdsLotesdsTalao_Aux
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsTalao_AuxBeforePost
    Left = 184
    Top = 256
    object cdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object cdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object cdsTalao_AuxsdsTalao_Aux_Tam: TDataSetField
      FieldName = 'sdsTalao_Aux_Tam'
    end
    object cdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object cdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
    object cdsTalao_AuxDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object cdsTalao_AuxSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dsTalao_Aux: TDataSource
    DataSet = cdsTalao_Aux
    Left = 232
    Top = 256
  end
  object dsTalao_Aux_Mestre: TDataSource
    DataSet = sdsTalao_Aux
    Left = 96
    Top = 288
  end
  object sdsTalao_Aux_Tam: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM TALAO_AUX_TAM'#13#10'WHERE ID = :ID'#13#10'      AND ITEM = :' +
      'ITEM'
    DataSource = dsTalao_Aux_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 328
    object sdsTalao_Aux_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_Aux_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_Aux_TamITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_Aux_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsTalao_Aux_TamQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object cdsTalao_Aux_Tam: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTalao_AuxsdsTalao_Aux_Tam
    IndexFieldNames = 'ID;ITEM;ITEM_TAM'
    Params = <>
    Left = 200
    Top = 328
    object cdsTalao_Aux_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_Aux_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_Aux_TamITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_Aux_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsTalao_Aux_TamQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsTalao_Aux_Tam: TDataSource
    DataSet = cdsTalao_Aux_Tam
    Left = 264
    Top = 328
  end
  object qCombinacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM COMBINACAO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1032
    Top = 288
    object qCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qCombinacaoITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object qCombinacaoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object qProduto_Emb: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT E.*, MAT.NOME NOME_MATERIAL'
      'FROM PRODUTO_EMB E'
      'INNER JOIN PRODUTO MAT'
      'ON E.ID_MATERIAL = MAT.ID'
      'WHERE E.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 784
    Top = 176
    object qProduto_EmbID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_EmbITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_EmbID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qProduto_EmbQTD_EMB: TFloatField
      FieldName = 'QTD_EMB'
    end
    object qProduto_EmbNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
  end
  object qProduto_Comb: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cor_combinacao'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT C.ID, C.id_cor_combinacao, C.nome, M.id_material, M.id_co' +
        'r, M.ID_POSICAO,'
      'C.ITEM, COMB.nome NOME_COR_MATERIAL'
      'FROM PRODUTO_COMB C'
      'LEFT JOIN produto_comb_mat M'
      'ON C.id = M.id'
      'AND C.item = M.item'
      'LEFT JOIN COMBINACAO COMB'
      'ON M.id_cor = COMB.ID'
      'WHERE C.ID = :ID'
      '     AND C.id_cor_combinacao = :id_cor_combinacao')
    SQLConnection = dmDatabase.scoDados
    Left = 784
    Top = 128
    object qProduto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object qProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qProduto_CombID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qProduto_CombID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object qProduto_CombNOME_COR_MATERIAL: TStringField
      FieldName = 'NOME_COR_MATERIAL'
      Size = 60
    end
  end
  object qProduto_Atelier: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PRO.id, PRO.ITEM, PRO.id_atelier, PRO.id_setor, PRO.vlr_p' +
        'ar,'
      'ATE.nome NOME_ATELIER, S.nome NOME_SETOR, S.limite_por_talao,'
      'S.qtd_limite_por_talao, S.gerar_talao'
      'FROM PRODUTO_ATELIER PRO'
      'INNER JOIN PESSOA ATE'
      'ON PRO.id_atelier = ATE.codigo'
      'INNER JOIN SETOR S'
      'ON PRO.id_setor = S.id'
      'WHERE PRO.ID = :ID'
      '   AND S.GERAR_TALAO = '#39'S'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 784
    Top = 240
    object qProduto_AtelierID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_AtelierITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object qProduto_AtelierID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object qProduto_AtelierVLR_PAR: TFloatField
      FieldName = 'VLR_PAR'
    end
    object qProduto_AtelierNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object qProduto_AtelierNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object qProduto_AtelierLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object qProduto_AtelierQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
    object qProduto_AtelierGERAR_TALAO: TStringField
      FieldName = 'GERAR_TALAO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConsulta_Talao_Aux: TSQLDataSet
    CommandText = 
      'SELECT T.ID ID_TALAO, T.ITEM, T.id_atelier, T.id_setor, T.id_pro' +
      'duto,'#13#10'T.id_combinacao, T.qtd QTD_TALAO, T.dtsaida, T.hrsaida, T' +
      '.dtretorno,'#13#10'T.hrretorno, ATE.NOME NOME_ATELIER, S.nome NOME_SET' +
      'OR, PRO.REFERENCIA,'#13#10'PRO.nome NOME_PRODUTO, COMB.nome NOME_COMBI' +
      'NACAO, LOTE.num_lote, LOTE.num_ordem,'#13#10'LOTE.filial, FIL.NOME NOM' +
      'E_FILIAL, LOTE.CARIMBO, FIL.endlogo, LOTE.NOME NOME_LOTE,'#13#10#39'2'#39' |' +
      '| lpad(T.ID,7,0) || lpad(T.ITEM,4,0) TALAO_COD_BARRA'#13#10'FROM TALAO' +
      '_AUX T'#13#10'INNER JOIN PESSOA ATE'#13#10'ON T.id_atelier = ATE.CODIGO'#13#10'INN' +
      'ER JOIN SETOR S'#13#10'ON T.id_setor = S.ID'#13#10'INNER JOIN PRODUTO PRO'#13#10'O' +
      'N T.id_produto = PRO.id'#13#10'INNER JOIN lote '#13#10'ON T.id = LOTE.ID'#13#10'IN' +
      'NER JOIN FILIAL FIL'#13#10'ON LOTE.FILIAL = FIL.ID'#13#10'LEFT JOIN COMBINAC' +
      'AO COMB'#13#10'ON T.id_combinacao = COMB.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 8
  end
  object dspConsulta_Talao_Aux: TDataSetProvider
    DataSet = sdsConsulta_Talao_Aux
    Left = 920
    Top = 8
  end
  object cdsConsulta_Talao_Aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Talao_Aux'
    AfterScroll = cdsConsulta_Talao_AuxAfterScroll
    Left = 976
    Top = 8
    object cdsConsulta_Talao_AuxID_TALAO: TIntegerField
      FieldName = 'ID_TALAO'
      Required = True
    end
    object cdsConsulta_Talao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_Talao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsulta_Talao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsConsulta_Talao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_Talao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsConsulta_Talao_AuxQTD_TALAO: TFloatField
      FieldName = 'QTD_TALAO'
    end
    object cdsConsulta_Talao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsConsulta_Talao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsConsulta_Talao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsConsulta_Talao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object cdsConsulta_Talao_AuxNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsConsulta_Talao_AuxNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsConsulta_Talao_AuxREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_Talao_AuxNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_Talao_AuxNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsConsulta_Talao_AuxNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsulta_Talao_AuxNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsulta_Talao_AuxFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsulta_Talao_AuxNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsulta_Talao_AuxCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsConsulta_Talao_AuxENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsConsulta_Talao_AuxNOME_LOTE: TStringField
      FieldName = 'NOME_LOTE'
      Size = 30
    end
    object cdsConsulta_Talao_AuxTALAO_COD_BARRA: TStringField
      FieldName = 'TALAO_COD_BARRA'
      Required = True
      Size = 12
    end
  end
  object dsConsulta_Talao_Aux: TDataSource
    DataSet = cdsConsulta_Talao_Aux
    Left = 1016
    Top = 8
  end
  object sdsAtelier: TSQLDataSet
    CommandText = 
      'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA P'#13#10'WHERE P.TP_ATELIER' +
      ' = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 192
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 912
    Top = 192
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 968
    Top = 192
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAtelierCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 1008
    Top = 192
  end
  object sdsSetor: TSQLDataSet
    CommandText = 'SELECT S.id, S.nome'#13#10'FROM SETOR S'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 240
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 912
    Top = 240
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 968
    Top = 240
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 1008
    Top = 240
  end
  object mLoteAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Percentual'
        DataType = ftFloat
      end
      item
        Name = 'QtdAux'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    OnNewRecord = mLoteAuxNewRecord
    Left = 880
    Top = 296
    Data = {
      530000009619E0BD010000001800000004000000000003000000530002494404
      000100000000000351746404000100000000000A50657263656E7475616C0800
      0400000000000651746441757804000100000000000000}
    object mLoteAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mLoteAuxQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mLoteAuxPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object mLoteAuxQtdAux: TIntegerField
      FieldName = 'QtdAux'
    end
  end
  object mTalaoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID;Tamanho'
    MasterFields = 'ID'
    MasterSource = dsmLoteAux
    PacketRecords = 0
    Params = <>
    Left = 952
    Top = 296
    Data = {
      4D0000009619E0BD0100000018000000030000000000030000004D0002494404
      000100000000000754616D616E686F0100490000000100055749445448020002
      000A000351746404000100000000000000}
    object mTalaoAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mTalaoAuxTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mTalaoAuxQtd: TIntegerField
      FieldName = 'Qtd'
    end
  end
  object dsmLoteAux: TDataSource
    DataSet = mLoteAux
    Left = 904
    Top = 296
  end
  object sdsConsulta_Talao_Aux_Tam: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM talao_aux_tam'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :ITEM'
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
    Left = 864
    Top = 72
  end
  object dspConsulta_Talao_Aux_Tam: TDataSetProvider
    DataSet = sdsConsulta_Talao_Aux_Tam
    Left = 920
    Top = 72
  end
  object cdsConsulta_Talao_Aux_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Talao_Aux_Tam'
    Left = 976
    Top = 72
    object cdsConsulta_Talao_Aux_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_Talao_Aux_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_Talao_Aux_TamITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
      Required = True
    end
    object cdsConsulta_Talao_Aux_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsConsulta_Talao_Aux_TamQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsConsulta_Talao_Aux_Tam: TDataSource
    DataSet = cdsConsulta_Talao_Aux_Tam
    Left = 1024
    Top = 72
  end
  object mImpTalao_Aux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 1064
    Top = 152
    Data = {
      320000009619E0BD010000001800000002000000000003000000320002494404
      00010000000000044974656D04000100000000000000}
    object mImpTalao_AuxID: TIntegerField
      FieldName = 'ID'
    end
    object mImpTalao_AuxItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object dsImpTalao_Aux: TDataSource
    DataSet = mImpTalao_Aux
    Left = 1088
    Top = 152
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
      
        'SELECT P.id, P.id_grade, P.NOME, P.ID_FORNECEDOR, FORN.NOME NOME' +
        '_FORNECEDOR, P.PRECO_CUSTO, P.PERC_IPI, P.REFERENCIA, P.ID_NCM, ' +
        'P.TIPO_REG'
      'FROM PRODUTO P'
      'LEFT JOIN PESSOA FORN'
      'ON P.ID_FORNECEDOR = FORN.CODIGO'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 312
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qMaterialNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object qMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterialPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object qMaterialTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto_Consumo_Setor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.*, PS.IMP_TALAO IMP_TALAO_POS, MAT.NOME NOME_MATERIAL,' +
      ' MAT.ID_GRADE, MAT.REFERENCIA REF_MATERIAL,'#13#10'PS.NOME NOME_POSICA' +
      'O'#13#10'FROM PRODUTO_CONSUMO PC'#13#10'LEFT JOIN POSICAO PS'#13#10'ON PC.ID_POSIC' +
      'AO = PS.ID'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON PC.ID_MATERIAL = MAT.ID'#13#10 +
      'WHERE PC.ID = :ID'#13#10'  AND ((PS.IMP_TALAO = '#39'S'#39'  AND PC.ID_POSICAO' +
      ' > 0) OR'#13#10'  (PC.IMP_TALAO = '#39'S'#39'))'#13#10'  AND PC.ID_SETOR = :ID_SETOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SETOR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 440
  end
  object dspProduto_Consumo_Setor: TDataSetProvider
    DataSet = sdsProduto_Consumo_Setor
    Left = 520
    Top = 440
  end
  object cdsProduto_Consumo_Setor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo_Setor'
    Left = 584
    Top = 440
    object cdsProduto_Consumo_SetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_Consumo_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_Consumo_SetorID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_Consumo_SetorQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_Consumo_SetorQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsProduto_Consumo_SetorUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_Consumo_SetorID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_Consumo_SetorTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Consumo_SetorIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Consumo_SetorIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Consumo_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_Consumo_SetorIMP_TALAO_POS: TStringField
      FieldName = 'IMP_TALAO_POS'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Consumo_SetorNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsProduto_Consumo_SetorID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProduto_Consumo_SetorREF_MATERIAL: TStringField
      FieldName = 'REF_MATERIAL'
    end
    object cdsProduto_Consumo_SetorNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
  end
  object dsProduto_Consumo_Setor: TDataSource
    DataSet = cdsProduto_Consumo_Setor
    Left = 632
    Top = 440
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
    Left = 345
    Top = 312
    object qConsumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object sdsLote_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOTE_MAT'#13#10'WHERE NUM_ORDEM = :NUM_ORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 464
    object sdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object sdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object sdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object sdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object sdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object sdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_MatID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
  end
  object dspLote_Mat: TDataSetProvider
    DataSet = sdsLote_Mat
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspLoteUpdateError
    Left = 136
    Top = 464
  end
  object cdsLote_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_ORDEM;ITEM'
    Params = <>
    ProviderName = 'dspLote_Mat'
    Left = 183
    Top = 464
    object cdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object cdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object cdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object cdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object cdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object cdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
  end
  object dsLote_Mat: TDataSource
    DataSet = cdsLote_Mat
    Left = 231
    Top = 464
  end
  object sdsConsumo: TSQLDataSet
    CommandText = 
      'SELECT AUX.*, COR.NOME NOME_COR'#13#10'from'#13#10'  (SELECT P.id, P.referen' +
      'cia, P.nome NOME_PRODUTO, PB.id_cor_combinacao, Mat.TIPO_REG TIP' +
      'O_REG_MAT,'#13#10'    PB.nome NOME_COMBINACAO, pc.id_material, pc.qtd_' +
      'consumo, PC.TIPO_CONSUMO,'#13#10'    PC.ITEM ITEM_CONSUMO, MAT.NOME NO' +
      'ME_MATERIAL, MAT.TRANSFER, MAT.ID_GRADE ID_GRADE_MAT,  MAT.ID_FO' +
      'RNECEDOR,'#13#10'    MAT.USA_CARIMBO_OC, PC.UNIDADE, MAT.referencia RE' +
      'FERENCIA_MAT,'#13#10'   ( SELECT PMAT.id_cor'#13#10'       FROM PRODUTO_COMB' +
      '_MAT PMAT'#13#10'      WHERE PMAT.id = PB.id'#13#10'        AND PMAT.item = ' +
      'PB.item'#13#10'         AND PMAT.id_material = PC.id_material'#13#10'       ' +
      '  and pmat.id_posicao = pc.id_posicao) ID_COR_MAT'#13#10'FROM PRODUTO ' +
      'P'#13#10'INNER JOIN PRODUTO_CONSUMO PC'#13#10'ON P.id = PC.id'#13#10'LEFT JOIN PRO' +
      'DUTO_COMB PB'#13#10'ON PC.id = pb.ID'#13#10'AND PB.id_cor_combinacao = :ID_C' +
      'OMBINACAO'#13#10'LEFT JOIN PRODUTO MAT'#13#10'ON PC.id_material = MAT.id'#13#10'WH' +
      'ERE P.TIPO_REG = '#39'P'#39#13#10'  and p.id = :ID_PRODUTO)'#13#10'  AUX'#13#10'  LEFT J' +
      'OIN COMBINACAO COR'#13#10'  ON AUX.ID_COR_MAT = COR.ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_COMBINACAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 192
  end
  object dspConsumo: TDataSetProvider
    DataSet = sdsConsumo
    Left = 368
    Top = 192
  end
  object cdsConsumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MATERIAL;ID_COR_MAT'
    Params = <>
    ProviderName = 'dspConsumo'
    Left = 400
    Top = 192
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
    object cdsConsumoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsConsumoREFERENCIA_MAT: TStringField
      FieldName = 'REFERENCIA_MAT'
    end
    object cdsConsumoTIPO_REG_MAT: TStringField
      FieldName = 'TIPO_REG_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object qVerificaExclusao2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM LOTE_MAT'
      'WHERE NUM_ORDEM = :NUM_ORDEM'
      '  AND ID_OC > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 360
    Top = 88
    object qVerificaExclusao2CONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsPedido_Ord: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT TP.id_pedido, PED.num_pedido, PED.pedido_cliente' +
      ', PES.NOME NOME_CLIENTE, PES.FANTASIA, L.num_ordem'#13#10'FROM TALAO_P' +
      'ED TP'#13#10'INNER JOIN PEDIDO PED'#13#10'ON TP.ID_PEDIDO = PED.ID'#13#10'INNER JO' +
      'IN PESSOA PES'#13#10'ON TP.ID_CLIENTE = PES.CODIGO'#13#10'INNER JOIN LOTE L'#13 +
      #10'ON L.id = TP.id'#13#10'WHERE PED.tipo_reg = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 368
  end
  object dspPedido_Ord: TDataSetProvider
    DataSet = sdsPedido_Ord
    Left = 520
    Top = 368
  end
  object cdsPedido_Ord: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Ord'
    Left = 584
    Top = 368
    object cdsPedido_OrdID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPedido_OrdNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_OrdPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_OrdNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_OrdFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_OrdNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
  end
  object dsPedido_Ord: TDataSource
    DataSet = cdsPedido_Ord
    Left = 632
    Top = 368
  end
  object mGerarAux: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 392
    Data = {
      420000009619E0BD01000000180000000200000000000300000042000754616D
      616E686F0100490000000100055749445448020002000A000351746408000400
      000000000000}
    object mGerarAuxTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mGerarAuxQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object qProduto_Processo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PRO.id, PRO.ITEM, PRO.id_processo, PRO.id_setor,'
      'P.NOME NOME_PROCESSO, S.nome NOME_SETOR, P.limite_por_talao,'
      'P.qtd_limite_por_talao, P.AGRUPAR_PEDIDOS'
      'FROM PRODUTO_PROCESSO PRO'
      'INNER JOIN processo P'
      'ON PRO.id_processo = P.id'
      'LEFT JOIN SETOR S'
      'ON PRO.id_setor = S.id'
      'WHERE PRO.ID = :ID'
      '  ')
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 136
    object qProduto_ProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object qProduto_ProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object qProduto_ProcessoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object qProduto_ProcessoNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object qProduto_ProcessoLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object qProduto_ProcessoQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
    object qProduto_ProcessoAGRUPAR_PEDIDOS: TStringField
      FieldName = 'AGRUPAR_PEDIDOS'
      FixedChar = True
      Size = 1
    end
  end
  object mPedTalao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1080
    Top = 224
    Data = {
      6C0000009619E0BD0100000018000000050000000000030000006C000749445F
      4C6F746504000100000000000949445F50656469646F04000100000000000849
      74656D5F50656404000100000000000351746408000400000000000A49445F43
      6C69656E746504000100000000000000}
    object mPedTalaoID_Lote: TIntegerField
      FieldName = 'ID_Lote'
    end
    object mPedTalaoID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedTalaoItem_Ped: TIntegerField
      FieldName = 'Item_Ped'
    end
    object mPedTalaoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mPedTalaoID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
  end
  object sdsTalao_Processo: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM TALAO_PROCESSO'#13#10'WHERE ID = :ID'#13#10'  AND NUM_TALAO =' +
      ' :NUM_TALAO'
    DataSource = dsTalao_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 200
    object sdsTalao_ProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalao_ProcessoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalao_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalao_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsTalao_ProcessoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalao_ProcessoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsTalao_ProcessoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsTalao_ProcessoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsTalao_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_ProcessoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
  end
  object cdsTalao_Processo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTalaosdsTalao_Processo
    Params = <>
    Left = 200
    Top = 200
    object cdsTalao_ProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_ProcessoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalao_ProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalao_ProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsTalao_ProcessoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalao_ProcessoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsTalao_ProcessoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsTalao_ProcessoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsTalao_ProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_ProcessoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
  end
  object dsTalao_Processo: TDataSource
    DataSet = cdsTalao_Processo
    Left = 256
    Top = 200
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1128
    Top = 376
    object qParametros_LoteLOTE_POR_PEDIDO: TStringField
      FieldName = 'LOTE_POR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteUSA_GEROU_LOTE_PROD: TStringField
      FieldName = 'USA_GEROU_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteQTD_DIAS_DTEMISSAO: TIntegerField
      FieldName = 'QTD_DIAS_DTEMISSAO'
    end
    object qParametros_LoteIMP_CLIENTE_LOTE: TStringField
      FieldName = 'IMP_CLIENTE_LOTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_CALCADO_NOVO: TStringField
      FieldName = 'LOTE_CALCADO_NOVO'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteGRAVAR_OBS_LOTE: TStringField
      FieldName = 'GRAVAR_OBS_LOTE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPendente_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.NUM_PEDIDO, PED.PEDIDO_CLIENTE, PED.ID_CLIENTE, PED.D' +
      'TEMISSAO, PED.ID, PED.FILIAL,'#13#10'CLI.nome NOME_CLIENTE, CLI.fantas' +
      'ia, PED.SELECIONADO'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN PESSOA CLI'#13#10'ON ' +
      'PED.ID_CLIENTE = CLI.codigo'#13#10'WHERE PED.TIPO_REG = '#39'P'#39#13#10'  AND PED' +
      '.faturado <> '#39'S'#39#13#10'  AND PED.faturado <> '#39'P'#39#13#10'  AND NOT EXISTS( S' +
      'ELECT 1'#13#10'                     FROM TALAO_PED'#13#10'                  ' +
      '   WHERE TALAO_PED.ID_PEDIDO =  PED.ID)'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 80
    object sdsPendente_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPendente_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPendente_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPendente_PedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPendente_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPendente_PedFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPendente_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsPendente_PedFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPendente_PedSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPendente_Ped: TDataSetProvider
    DataSet = sdsPendente_Ped
    Left = 512
    Top = 80
  end
  object cdsPendente_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPendente_Ped'
    Left = 576
    Top = 80
    object cdsPendente_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPendente_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPendente_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPendente_PedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPendente_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPendente_PedFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPendente_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPendente_PedFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPendente_PedSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPendente_Ped: TDataSource
    DataSet = cdsPendente_Ped
    Left = 624
    Top = 80
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
        Name = 'Nome_Material'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd_Consumo'
        DataType = ftFloat
      end
      item
        Name = 'Referencia_Mat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_Fornecedor'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Produto'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 536
    Data = {
      DC0000009619E0BD010000001800000008000000000003000000DC000B49445F
      4D6174657269616C04000100000000000D4E6F6D655F4D6174657269616C0100
      490000000100055749445448020002003C000B5174645F436F6E73756D6F0800
      0400000000000E5265666572656E6369615F4D61740100490000000100055749
      44544802000200140007556E6964616465010049000000010005574944544802
      00020006000D49445F466F726E656365646F7204000100000000000649445F43
      6F7204000100000000000B5174645F50726F6475746F04000100000000000000}
    object mMaterialID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMaterialNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mMaterialQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
    end
    object mMaterialReferencia_Mat: TStringField
      FieldName = 'Referencia_Mat'
    end
    object mMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mMaterialID_Fornecedor: TIntegerField
      FieldName = 'ID_Fornecedor'
    end
    object mMaterialID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mMaterialQtd_Produto: TIntegerField
      FieldName = 'Qtd_Produto'
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 352
    Top = 536
  end
  object mMaterial_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Material;Tamanho'
    MasterFields = 'ID_Material'
    MasterSource = dsmMaterial
    PacketRecords = 0
    Params = <>
    Left = 312
    Top = 584
    Data = {
      560000009619E0BD01000000180000000300000000000300000056000B49445F
      4D6174657269616C04000100000000000754616D616E686F0100490000000100
      055749445448020002000A000351746408000400000000000000}
    object mMaterial_TamID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMaterial_TamTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mMaterial_TamQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmMaterial_Tam: TDataSource
    DataSet = mMaterial_Tam
    Left = 352
    Top = 584
  end
  object qProcesso_Ope: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO_MAT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT OPE.id_processo, OPE.tipo_mat, P.nome, P.tipo TIPO_PROCES' +
        'SO'
      'FROM PROCESSO_OPE OPE'
      'INNER JOIN PROCESSO P'
      'ON OPE.id_processo = P.ID'
      'WHERE OPE.TIPO_MAT = :TIPO_MAT')
    SQLConnection = dmDatabase.scoDados
    Left = 1120
    Top = 280
    object qProcesso_OpeID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qProcesso_OpeTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object qProcesso_OpeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qProcesso_OpeTIPO_PROCESSO: TStringField
      FieldName = 'TIPO_PROCESSO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsLote_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOTE_PED'#13#10'WHERE ID = :ID'
    DataSource = dsLote_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 384
    object sdsLote_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLote_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsLote_PedNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsLote_PedBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsLote_Ped: TClientDataSet
    Aggregates = <>
    DataSetField = cdsLotesdsLote_Ped
    Params = <>
    Left = 168
    Top = 384
    object cdsLote_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLote_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsLote_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsLote_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLote_PedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsLote_PedNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLote_PedBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLote_Ped: TDataSource
    DataSet = cdsLote_Ped
    Left = 232
    Top = 384
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 1088
    Top = 384
    object qParametros_GeralEMPRESA_CALCADOS: TStringField
      FieldName = 'EMPRESA_CALCADOS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEmbalagem: TSQLDataSet
    CommandText = 
      'SELECT P2.id, P2.referencia, P2.nome NOME_PRODUTO, 0 AS id_cor_c' +
      'ombinacao, Mat2.TIPO_REG TIPO_REG_MAT,'#13#10'    '#39#39' AS NOME_COMBINACA' +
      'O, EMB.id_material, EMB.qtd_emb qtd_consumo, '#39#39' AS TIPO_CONSUMO,' +
      #13#10'    0 ITEM_CONSUMO, MAT2.NOME NOME_MATERIAL, MAT2.TRANSFER, MA' +
      'T2.ID_GRADE ID_GRADE_MAT, MAT2.ID_FORNECEDOR,'#13#10'    MAT2.USA_CARI' +
      'MBO_OC, MAT2.UNIDADE, MAT2.referencia REFERENCIA_MAT, 0 ID_COR_M' +
      'AT, EMB.TIPO_EMB'#13#10'FROM PRODUTO P2'#13#10'INNER JOIN PRODUTO_EMB EMB'#13#10'O' +
      'N P2.ID = EMB.ID'#13#10'LEFT JOIN PRODUTO MAT2'#13#10'ON EMB.id_material = M' +
      'AT2.id'#13#10'WHERE P2.TIPO_REG = '#39'P'#39#13#10'  and p2.id = :ID_PRODUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 304
  end
  object dspEmbalagem: TDataSetProvider
    DataSet = sdsEmbalagem
    Left = 768
    Top = 304
  end
  object cdsEmbalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmbalagem'
    Left = 800
    Top = 304
    object cdsEmbalagemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmbalagemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEmbalagemNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEmbalagemID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
      Required = True
    end
    object cdsEmbalagemTIPO_REG_MAT: TStringField
      FieldName = 'TIPO_REG_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsEmbalagemID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsEmbalagemQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsEmbalagemITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
      Required = True
    end
    object cdsEmbalagemNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsEmbalagemTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsEmbalagemID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
    object cdsEmbalagemID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsEmbalagemUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsEmbalagemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEmbalagemREFERENCIA_MAT: TStringField
      FieldName = 'REFERENCIA_MAT'
    end
    object cdsEmbalagemID_COR_MAT: TIntegerField
      FieldName = 'ID_COR_MAT'
      Required = True
    end
    object cdsEmbalagemTIPO_EMB: TStringField
      FieldName = 'TIPO_EMB'
      Size = 1
    end
  end
  object mProdAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_PRODUTO'
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 352
    Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F000A49445F
      50726F6475746F040001000000000003517464080004000000000001000D4445
      4641554C545F4F524445520200820000000000}
    object mProdAuxID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mProdAuxQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.permite_alt_nomeprod'
      'from parametros_ped p')
    SQLConnection = dmDatabase.scoDados
    Left = 1040
    Top = 328
    object qParametros_PedPERMITE_ALT_NOMEPROD: TStringField
      FieldName = 'PERMITE_ALT_NOMEPROD'
      FixedChar = True
      Size = 1
    end
  end
  object qTalaoPed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FIRST 1 P.ID_CLIENTE, CLI.NOME, CLI.fantasia, CID.nome NO' +
        'ME_CIDADE, CID.UF'
      'FROM TALAO_PED P'
      'LEFT JOIN PESSOA CLI'
      'ON P.ID_CLIENTE = CLI.CODIGO'
      'LEFT JOIN CIDADE CID'
      'ON CLI.ID_CIDADE = CID.ID'
      'WHERE P.ID = :ID'
      '  AND P.NUM_TALAO = :NUM_TALAO')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 384
    object qTalaoPedID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qTalaoPedNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qTalaoPedFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qTalaoPedNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object qTalaoPedUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43411.400438541700000000
    ReportOptions.LastChange = 43412.460828900460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 864
    Top = 456
    Datasets = <
      item
        DataSet = frxLote
        DataSetName = 'frxLote'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'NumPedido'
        Value = Null
      end
      item
        Name = 'CodigoBarra'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxLote
        DataSetName = 'frxLote'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 14.000000000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."Nome_Filial"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 274.378170000000000000
          Top = 14.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dt Entrega:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 335.732530000000000000
          Top = 14.000000000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."DtEntrega"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 445.338900000000000000
          Top = 12.779530000000000000
          Width = 139.842519690000000000
          Height = 113.385900000000000000
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Width = 0.500000000000000000
        end
        object BarCode1: TfrxBarCodeView
          Left = 456.457020000000000000
          Top = 27.897650000000000000
          Width = 112.000000000000000000
          Height = 56.692950000000000000
          BarType = bcCodeEAN128A
          Expression = '<CodigoBarra>'
          Rotation = 0
          TestLine = False
          Text = '123456'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Shape2: TfrxShapeView
          Top = 31.677180000000000000
          Width = 444.850393700787000000
          Height = 41.574830000000000000
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape3: TfrxShapeView
          Top = 72.913420000000000000
          Width = 444.850393700000000000
          Height = 52.913420000000000000
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 6.015770000000000000
          Top = 37.118120000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'N'#194#186' Ordem Produ'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 153.385900000000000000
          Top = 37.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."Num_Ordem"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Color = clWhite
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 21.015770000000000000
          Top = 78.472480000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 80.590600000000000000
          Top = 78.472480000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."Nome_Cliente"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.149660000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 80.590600000000000000
          Top = 102.149660000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."Cidade"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 362.260050000000000000
          Top = 102.149660000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'UF:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 394.291590000000000000
          Top = 102.149660000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."UF"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 585.165740000000000000
          Top = 12.779530000000000000
          Width = 128.503937010000000000
          Height = 113.385826771654000000
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape5: TfrxShapeView
          Top = 126.047310000000000000
          Width = 714.330708660000000000
          Height = 86.929190000000000000
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo18: TfrxMemoView
          Left = 6.692950000000000000
          Top = 145.047310000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8 = (
            'Refer'#195#170'ncia:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 93.267780000000000000
          Top = 144.267780000000000000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            '[frxLote."Referencia"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 6.692950000000000000
          Top = 176.944960000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8 = (
            'Produto:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 93.267780000000000000
          Top = 176.165430000000000000
          Width = 415.748300000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            '[frxLote."Nome_Produto"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 283.464750000000000000
          Top = 144.267780000000000000
          Width = 64.252010000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Unidade:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 354.039580000000000000
          Top = 144.267780000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxLote."Unidade"]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Top = 226.330860000000000000
          Width = 714.330708661417000000
          Height = 37.795300000000000000
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 235.889920000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 14211288
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            'Quantidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 87.811070000000000000
          Top = 235.889920000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxLote."Qtd"]')
          ParentFont = False
        end
        object NumPedido: TfrxMemoView
          Left = 257.008040000000000000
          Top = 54.354360000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[NumPedido]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Color = clWhite
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 153.385900000000000000
          Top = 56.692950000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxLote."Num_Lote"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 54.692950000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'N'#194#186' Lote:')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 464.882190000000000000
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 279.685220000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'OBS:')
        end
        object Memo9: TfrxMemoView
          Left = 45.354360000000000000
          Top = 279.685220000000000000
          Width = 665.197280000000000000
          Height = 181.417440000000000000
          Memo.UTF8 = (
            '[frxLote."OBS"]')
        end
      end
    end
  end
  object frxLote: TfrxDBDataset
    UserName = 'frxLote'
    OnFirst = frxLoteFirst
    OnNext = frxLoteNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'Num_Lote=Num_Lote'
      'Num_Talao=Num_Talao'
      'ID_Produto=ID_Produto'
      'DtEntrega=DtEntrega'
      'Qtd_Taloes=Qtd_Taloes'
      'Qtd=Qtd'
      'Filial=Filial'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'DtEmissao=DtEmissao'
      'Nome_Filial=Nome_Filial'
      'Unidade=Unidade'
      'ID_Lote=ID_Lote'
      'Tamanho=Tamanho'
      'Carimbo=Carimbo'
      'ID_Grade=ID_Grade'
      'Num_Ordem=Num_Ordem'
      'Acabamento=Acabamento'
      'Cor_Acabamento=Cor_Acabamento'
      'Nome_TipoMatriz=Nome_TipoMatriz'
      'Selecionado=Selecionado'
      'Nome_Combinacao=Nome_Combinacao'
      'ID_Combinacao=ID_Combinacao'
      'Talao_Aux_Gerado=Talao_Aux_Gerado'
      'Nome_Lote=Nome_Lote'
      'ID_Processo=ID_Processo'
      'Nome_Processo=Nome_Processo'
      'Tipo_Lote=Tipo_Lote'
      'Descricao_Tipo=Descricao_Tipo'
      'Pedido_Cliente=Pedido_Cliente'
      'Num_Pedido=Num_Pedido'
      'Nome_Cliente=Nome_Cliente'
      'ID_Forma=ID_Forma'
      'Nome_Forma=Nome_Forma'
      'Cidade=Cidade'
      'UF=UF'
      'OBS=OBS')
    DataSet = mLote
    BCDToCurrency = False
    Left = 864
    Top = 520
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 920
    Top = 456
  end
end
