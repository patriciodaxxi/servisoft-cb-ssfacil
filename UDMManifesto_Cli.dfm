object DMManifesto_Cli: TDMManifesto_Cli
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 78
  Top = 33
  Height = 643
  Width = 1119
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 248
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNotaFiscal_NFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_NFE'#13#10'WHERE ID = :ID'#13#10'  AND TIPO = :TIP' +
      'O'#13#10'  AND ITEMTIPO = :ITEMTIPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEMTIPO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 240
    Top = 234
    object sdsNotaFiscal_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_NFeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_NFeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object sdsNotaFiscal_NFeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsNotaFiscal_NFeMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscal_NFeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField
      FieldName = 'DATAHORAAUT'
    end
    object sdsNotaFiscal_NFeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_NFeDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsNotaFiscal_NFeHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object cdsNotaFiscal_NFe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_NFe'
    Left = 352
    Top = 234
    object cdsNotaFiscal_NFeID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_NFeITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_NFeTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_NFeITEMTIPO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item Tipo'
      FieldName = 'ITEMTIPO'
    end
    object cdsNotaFiscal_NFeDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsNotaFiscal_NFeMOTIVO: TMemoField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      DisplayLabel = 'NFe Protocolo'
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_NFeNFERECIBO: TStringField
      DisplayLabel = 'NFe Recibo'
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField
      DisplayLabel = 'Data Hora Autorizado'
      FieldName = 'DATAHORAAUT'
    end
    object cdsNotaFiscal_NFeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_NFeDTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsNotaFiscal_NFeHRCADASTRO: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'HRCADASTRO'
    end
  end
  object dsNotaFiscal_NFe: TDataSource
    DataSet = cdsNotaFiscal_NFe
    Left = 424
    Top = 234
  end
  object dspNotaFiscal_NFe: TDataSetProvider
    DataSet = sdsNotaFiscal_NFe
    Left = 296
    Top = 232
  end
  object qProximaItem_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(ITEM) ITEM'
      'FROM NOTAFISCAL_NFE'
      'WHERE ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 306
    object qProximaItem_NFeITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object cdsNFeCancelamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeretCancNFe
    Params = <>
    Left = 604
    Top = 328
  end
  object dsNFeCancelamento: TDataSource
    DataSet = cdsNFeCancelamento
    Left = 716
    Top = 328
  end
  object cdsNFeEventos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeprocEventoNFe
    IndexFieldNames = 'dhEvento'
    Params = <>
    Left = 604
    Top = 272
    object cdsNFeEventosId: TStringField
      FieldName = 'Id'
      Size = 17
    end
    object cdsNFeEventoscOrgao: TStringField
      FieldName = 'cOrgao'
      Size = 2
    end
    object cdsNFeEventosCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsNFeEventosdhEvento: TDateTimeField
      DisplayLabel = 'Data Hora Evento'
      FieldName = 'dhEvento'
    end
    object cdsNFeEventostpEvento: TIntegerField
      DisplayLabel = 'Tipo Evento'
      FieldName = 'tpEvento'
    end
    object cdsNFeEventosnSeqEvento: TIntegerField
      DisplayLabel = 'Seq. Evento'
      FieldName = 'nSeqEvento'
    end
    object cdsNFeEventosdescEvento: TStringField
      DisplayLabel = 'Descri'#231#227'o Evento'
      FieldName = 'descEvento'
      Size = 60
    end
    object cdsNFeEventosxJust: TStringField
      DisplayLabel = 'Justificativa Evento'
      FieldName = 'xJust'
      Size = 1000
    end
    object cdsNFeEventosxCorrecao: TStringField
      DisplayLabel = 'Corre'#231#227'o'
      FieldName = 'xCorrecao'
      Size = 1000
    end
  end
  object dsNFeEventos: TDataSource
    DataSet = cdsNFeEventos
    Left = 716
    Top = 272
  end
  object cdsNFeProtocolo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConsultaNFeprotNFe
    Params = <>
    Left = 604
    Top = 216
    object cdsNFeProtocolodhRecbto: TDateTimeField
      FieldName = 'dhRecbto'
    end
    object cdsNFeProtocolonProt: TStringField
      FieldName = 'nProt'
      Size = 15
    end
    object cdsNFeProtocolocStat: TIntegerField
      FieldName = 'cStat'
    end
    object cdsNFeProtocoloxMotivo: TStringField
      FieldName = 'xMotivo'
      Size = 60
    end
  end
  object dsNFeProtocolo: TDataSource
    DataSet = cdsNFeProtocolo
    Left = 716
    Top = 216
  end
  object cdsConsultaNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrConsultaNFe'
    Left = 604
    Top = 152
    object cdsConsultaNFetpAmb: TIntegerField
      DisplayLabel = 'Tipo Ambiente'
      FieldName = 'tpAmb'
    end
    object cdsConsultaNFecStat: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cStat'
    end
    object cdsConsultaNFexMotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'xMotivo'
      Size = 60
    end
    object cdsConsultaNFecUF: TIntegerField
      DisplayLabel = 'UF'
      FieldName = 'cUF'
    end
    object cdsConsultaNFechNFe: TStringField
      DisplayLabel = 'Chave Acesso'
      FieldName = 'chNFe'
      Size = 44
    end
    object cdsConsultaNFeprotNFe: TDataSetField
      DisplayLabel = 'Protocolo'
      FieldName = 'protNFe'
      UnNamed = True
    end
    object cdsConsultaNFeprocEventoNFe: TDataSetField
      DisplayLabel = 'Protocolo evento'
      FieldName = 'procEventoNFe'
      UnNamed = True
    end
    object cdsConsultaNFeretCancNFe: TDataSetField
      DisplayLabel = 'Ret. Cancelamento'
      FieldName = 'retCancNFe'
      UnNamed = True
    end
  end
  object dsConsultaNFe: TDataSource
    DataSet = cdsConsultaNFe
    Left = 716
    Top = 160
  end
  object xtrConsultaNFe: TXMLTransformProvider
    Left = 604
    Top = 104
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 192
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 240
    Top = 314
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object sdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 352
    Top = 314
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 424
    Top = 314
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Left = 296
    Top = 312
  end
end
