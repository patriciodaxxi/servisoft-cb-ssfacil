object dmCupomFiscal: TdmCupomFiscal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 165
  Top = 18
  Height = 709
  Width = 1140
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, P.NOME NOME_CLIENTE_1, CP.NOME CONDPGTO, TC.NOME FO' +
      'RMAPGTO, TC.COD_IMP_FISCAL FORMAPGTO_CODIGO, V.NOME NOME_VENDEDO' +
      'R'#13#10'FROM CUPOMFISCAL CF'#13#10'INNER JOIN PESSOA P ON (CF.ID_CLIENTE = ' +
      'P.CODIGO)'#13#10'LEFT JOIN CONDPGTO CP ON (CP.ID = CF.ID_CONDPGTO)'#13#10'LE' +
      'FT JOIN TIPOCOBRANCA TC ON (TC.ID = CF.ID_TIPOCOBRANCA)'#13#10'LEFT JO' +
      'IN PESSOA V ON (CF.ID_VENDEDOR = V.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 8
    object sdsCupomFiscalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsCupomFiscalTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsCupomFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsCupomFiscalPERC_VENDEDOR: TFloatField
      FieldName = 'PERC_VENDEDOR'
    end
    object sdsCupomFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsCupomFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsCupomFiscalVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
    end
    object sdsCupomFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalVLR_RECEBIDO: TFloatField
      FieldName = 'VLR_RECEBIDO'
    end
    object sdsCupomFiscalVLR_TROCO: TFloatField
      FieldName = 'VLR_TROCO'
    end
    object sdsCupomFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsCupomFiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsCupomFiscalTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object sdsCupomFiscalCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object sdsCupomFiscalFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      ProviderFlags = []
      Size = 30
    end
    object sdsCupomFiscalVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object sdsCupomFiscalVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object sdsCupomFiscalVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object sdsCupomFiscalVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object sdsCupomFiscalNUM_CARTAO: TSmallintField
      FieldName = 'NUM_CARTAO'
    end
    object sdsCupomFiscalNOME_CLIENTE_1: TStringField
      FieldName = 'NOME_CLIENTE_1'
      ProviderFlags = []
      Size = 60
    end
    object sdsCupomFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsCupomFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsCupomFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsCupomFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object sdsCupomFiscalTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object sdsCupomFiscalTIPO_IMPRESSAO_NFCE: TSmallintField
      FieldName = 'TIPO_IMPRESSAO_NFCE'
    end
    object sdsCupomFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object sdsCupomFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsCupomFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsCupomFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsCupomFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsCupomFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCupomFiscalFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 25
    end
    object sdsCupomFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object sdsCupomFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 150
    end
    object sdsCupomFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsCupomFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object sdsCupomFiscalFORMAPGTO_CODIGO: TStringField
      FieldName = 'FORMAPGTO_CODIGO'
      ProviderFlags = []
      Size = 2
    end
    object sdsCupomFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsCupomFiscalMOTIVO_DENEGADO: TStringField
      FieldName = 'MOTIVO_DENEGADO'
      Size = 200
    end
    object sdsCupomFiscalQTD_PESSOA: TIntegerField
      FieldName = 'QTD_PESSOA'
    end
    object sdsCupomFiscalID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object sdsCupomFiscalCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
    object sdsCupomFiscalCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
    end
    object sdsCupomFiscalCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      Size = 120
    end
    object sdsCupomFiscalCLIENTE_OBS: TStringField
      FieldName = 'CLIENTE_OBS'
      Size = 120
    end
    object sdsCupomFiscalCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object sdsCupomFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsCupomFiscalNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sdsCupomFiscalID_LOCALESTOQUE: TIntegerField
      FieldName = 'ID_LOCALESTOQUE'
    end
    object sdsCupomFiscalESTOQUE_OK: TStringField
      FieldName = 'ESTOQUE_OK'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalFINANCEIRO_OK: TStringField
      FieldName = 'FINANCEIRO_OK'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalDTORIGINAL: TDateField
      FieldName = 'DTORIGINAL'
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 8
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCupomFiscal'
    BeforePost = cdsCupomFiscalBeforePost
    OnNewRecord = cdsCupomFiscalNewRecord
    Left = 120
    Top = 8
    object cdsCupomFiscalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsCupomFiscalTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsCupomFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsCupomFiscalPERC_VENDEDOR: TFloatField
      FieldName = 'PERC_VENDEDOR'
      DisplayFormat = '0.0%'
    end
    object cdsCupomFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLR_RECEBIDO: TFloatField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_TROCO: TFloatField
      FieldName = 'VLR_TROCO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupomFiscalsdsCupom_Parc: TDataSetField
      FieldName = 'sdsCupom_Parc'
      ProviderFlags = []
    end
    object cdsCupomFiscalsdsCupom_Itens: TDataSetField
      FieldName = 'sdsCupom_Itens'
      ProviderFlags = []
    end
    object cdsCupomFiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsCupomFiscalTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsCupomFiscalCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsCupomFiscalFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCupomFiscalVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsCupomFiscalVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsCupomFiscalVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsCupomFiscalNUM_CARTAO: TSmallintField
      FieldName = 'NUM_CARTAO'
    end
    object cdsCupomFiscalNOME_CLIENTE_1: TStringField
      FieldName = 'NOME_CLIENTE_1'
      ProviderFlags = []
      Size = 60
    end
    object cdsCupomFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsCupomFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsCupomFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsCupomFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsCupomFiscalTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsCupomFiscalTIPO_IMPRESSAO_NFCE: TSmallintField
      FieldName = 'TIPO_IMPRESSAO_NFCE'
    end
    object cdsCupomFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsCupomFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsCupomFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsCupomFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsCupomFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsCupomFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCupomFiscalFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 25
    end
    object cdsCupomFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object cdsCupomFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 150
    end
    object cdsCupomFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsCupomFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsCupomFiscalFORMAPGTO_CODIGO: TStringField
      FieldName = 'FORMAPGTO_CODIGO'
      ProviderFlags = []
      Size = 2
    end
    object cdsCupomFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsCupomFiscalMOTIVO_DENEGADO: TStringField
      FieldName = 'MOTIVO_DENEGADO'
      Size = 200
    end
    object cdsCupomFiscalQTD_PESSOA: TIntegerField
      FieldName = 'QTD_PESSOA'
    end
    object cdsCupomFiscalID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsCupomFiscalCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
    object cdsCupomFiscalCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      Size = 120
    end
    object cdsCupomFiscalCLIENTE_OBS: TStringField
      FieldName = 'CLIENTE_OBS'
      Size = 120
    end
    object cdsCupomFiscalCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cdsCupomFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsCupomFiscalsdsCupomFiscal_Cli: TDataSetField
      FieldName = 'sdsCupomFiscal_Cli'
    end
    object cdsCupomFiscalNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cdsCupomFiscalID_LOCALESTOQUE: TIntegerField
      FieldName = 'ID_LOCALESTOQUE'
    end
    object cdsCupomFiscalCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
    end
    object cdsCupomFiscalESTOQUE_OK: TStringField
      FieldName = 'ESTOQUE_OK'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalFINANCEIRO_OK: TStringField
      FieldName = 'FINANCEIRO_OK'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalDTORIGINAL: TDateField
      FieldName = 'DTORIGINAL'
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 152
    Top = 8
  end
  object dsmCupomFiscal: TDataSource
    DataSet = sdsCupomFiscal
    Left = 32
    Top = 56
  end
  object sdsCupom_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFI.*, P.NOME NOMEPRODUTO'#13#10'FROM CUPOMFISCAL_ITENS CFI'#13#10'IN' +
      'NER JOIN PRODUTO P ON (CFI.ID_PRODUTO = P.ID)'#13#10'WHERE CFI.ID = :I' +
      'D'
    DataSource = dsmCupomFiscal
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 104
    object sdsCupom_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupom_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupom_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCupom_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCupom_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsCupom_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsCupom_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsCupom_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsCupom_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsCupom_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsCupom_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCupom_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsCupom_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsCupom_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsCupom_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupom_ItensSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object sdsCupom_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCupom_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCupom_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsCupom_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsCupom_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCupom_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object sdsCupom_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsCupom_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsCupom_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object sdsCupom_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object sdsCupom_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object sdsCupom_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object sdsCupom_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object sdsCupom_ItensVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object sdsCupom_ItensVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object sdsCupom_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object sdsCupom_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCupom_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCupom_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCupom_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCupom_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsCupom_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsCupom_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCupom_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCupom_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsCupom_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsCupom_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsCupom_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsCupom_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsCupom_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsCupom_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsCupom_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsCupom_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object sdsCupom_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsCupom_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsCupom_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsCupom_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object sdsCupom_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
      Size = 30
    end
    object sdsCupom_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsCupom_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsCupom_ItensID_COR_COMBINACO: TIntegerField
      FieldName = 'ID_COR_COMBINACO'
    end
    object sdsCupom_ItensVLR_ACRESCIMO: TFloatField
      FieldName = 'VLR_ACRESCIMO'
    end
  end
  object cdsCupom_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupom_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 112
    Top = 104
    object cdsCupom_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupom_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupom_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCupom_ItensQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000'
    end
    object cdsCupom_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00%'
    end
    object cdsCupom_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsCupom_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00%'
    end
    object cdsCupom_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsCupom_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsCupom_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsCupom_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ItensSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object cdsCupom_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCupom_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCupom_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsCupom_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCupom_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCupom_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsCupom_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsCupom_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsCupom_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsCupom_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object cdsCupom_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object cdsCupom_ItensVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsCupom_ItensVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsCupom_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCupom_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCupom_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCupom_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCupom_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsCupom_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsCupom_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCupom_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCupom_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsCupom_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsCupom_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsCupom_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsCupom_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsCupom_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsCupom_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsCupom_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsCupom_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsCupom_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsCupom_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsCupom_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
      Size = 30
    end
    object cdsCupom_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsCupom_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsCupom_ItensID_COR_COMBINACO: TIntegerField
      FieldName = 'ID_COR_COMBINACO'
    end
    object cdsCupom_ItensVLR_ACRESCIMO: TFloatField
      FieldName = 'VLR_ACRESCIMO'
    end
  end
  object dsCupom_Itens: TDataSource
    DataSet = cdsCupom_Itens
    Left = 152
    Top = 104
  end
  object sdsCupom_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFP.*, TCOB.NOME TIPO_COBRANCA'#13#10'FROM CUPOMFISCAL_PARC CFP' +
      #13#10'LEFT JOIN TIPOCOBRANCA TCOB ON (CFP.ID_TIPOCOBRANCA = TCOB.ID)' +
      #13#10'WHERE CFP.ID = :ID'
    DataSource = dsmCupomFiscal
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 152
    object sdsCupom_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupom_ParcPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupom_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsCupom_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsCupom_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsCupom_ParcTIPO_COBRANCA: TStringField
      FieldName = 'TIPO_COBRANCA'
      ProviderFlags = []
      Size = 30
    end
    object sdsCupom_ParcID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object sdsCupom_ParcEDITADA: TStringField
      FieldName = 'EDITADA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCupom_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupom_Parc
    IndexFieldNames = 'ID;PARCELA'
    Params = <>
    Left = 112
    Top = 152
    object cdsCupom_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupom_ParcPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupom_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsCupom_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupom_ParcTIPO_COBRANCA: TStringField
      FieldName = 'TIPO_COBRANCA'
      ProviderFlags = []
      Size = 30
    end
    object cdsCupom_ParcID_DUPLICATA: TIntegerField
      FieldName = 'ID_DUPLICATA'
    end
    object cdsCupom_ParcEDITADA: TStringField
      FieldName = 'EDITADA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCupom_Parc: TDataSource
    DataSet = cdsCupom_Parc
    Left = 152
    Top = 152
  end
  object sdsCupom_Cons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, TC.DINHEIRO, TC.NOME NOME_TIPOCOBRANCA,'#13#10'(SELECT CO' +
      'UNT(1) CONTADOR_ITENS'#13#10'  FROM CUPOMFISCAL_ITENS CI'#13#10'  WHERE CI.I' +
      'D = CF.ID),'#13#10'(SELECT FE.DTFECHAMENTO'#13#10'  FROM FECHAMENTO FE'#13#10'  WH' +
      'ERE CF.ID_FECHAMENTO = FE.ID), P.NOME VENDEDOR'#13#10'FROM CUPOMFISCAL' +
      ' CF'#13#10'LEFT JOIN TIPOCOBRANCA TC ON (CF.ID_TIPOCOBRANCA = TC.ID)'#13#10 +
      'LEFT JOIN PESSOA P ON (CF.ID_VENDEDOR = P.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 256
  end
  object dspCupom_Cons: TDataSetProvider
    DataSet = sdsCupom_Cons
    Left = 72
    Top = 256
  end
  object cdsCupom_Cons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupom_Cons'
    Left = 112
    Top = 256
    object cdsCupom_ConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupom_ConsNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupom_ConsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupom_ConsVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupom_ConsCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupom_ConsCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsCupom_ConsID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupom_ConsNUM_CARTAO: TSmallintField
      FieldName = 'NUM_CARTAO'
    end
    object cdsCupom_ConsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsCupom_ConsNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsCupom_ConsNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsCupom_ConsNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsCupom_ConsNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsCupom_ConsTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsCupom_ConsTIPO_IMPRESSAO_NFCE: TSmallintField
      FieldName = 'TIPO_IMPRESSAO_NFCE'
    end
    object cdsCupom_ConsTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsCupom_ConsNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsCupom_ConsNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsCupom_ConsSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsCupom_ConsDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object cdsCupom_ConsQTD_PESSOA: TIntegerField
      FieldName = 'QTD_PESSOA'
    end
    object cdsCupom_ConsCONTADOR_ITENS: TIntegerField
      FieldName = 'CONTADOR_ITENS'
    end
    object cdsCupom_ConsID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsCupom_ConsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
    end
    object cdsCupom_ConsCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
    object cdsCupom_ConsCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      Size = 10
    end
    object cdsCupom_ConsCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      Size = 120
    end
    object cdsCupom_ConsCLIENTE_OBS: TStringField
      FieldName = 'CLIENTE_OBS'
      Size = 120
    end
    object cdsCupom_ConsHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupom_ConsVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 60
    end
    object cdsCupom_ConsESTOQUE_OK: TStringField
      FieldName = 'ESTOQUE_OK'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsFINANCEIRO_OK: TStringField
      FieldName = 'FINANCEIRO_OK'
      FixedChar = True
      Size = 1
    end
    object cdsCupom_ConsDTORIGINAL: TDateField
      FieldName = 'DTORIGINAL'
    end
  end
  object dsCupom_Cons: TDataSource
    DataSet = cdsCupom_Cons
    Left = 152
    Top = 256
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, ENDERECO, NUM_END, CNPJ_CPF, CLIENTE_CONTA_' +
      'ID, PESSOA, UF, TIPO_CONSUMIDOR, ID_CIDADE,'#13#10'ID_PAIS, COMPLEMENT' +
      'O_END, BAIRRO, CEP, TELEFONE1, DDDFONE1, TIPO_CONTRIBUINTE, INSC' +
      'R_EST, INSC_SUFRAMA,'#13#10'INSC_MUNICIPAL, EMAIL_NFE, VLR_LIMITE_CRED' +
      'ITO, ID_CONDPGTO, CIDADE,'#13#10'P.endereco_ent, P.num_end_ent, P.cida' +
      'de_ent, P.uf_ent, P.cep_ent, P.bairro_ent,'#13#10'P.complemento_end_en' +
      't, P.id_cidade_ent'#13#10'FROM PESSOA P'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 8
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 272
    Top = 8
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 312
    Top = 8
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      EditMask = '000.000.000-00'
      Size = 18
    end
    object cdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 352
    Top = 8
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, ID_CLIENTE_CONSUMIDOR, IMPRESSORA_FISCAL, QUITAR_AV' +
      'ISTA_AUT, ARREDONDAR_5, ID_CONTA_FECHAMENTO, TIPO_LEI_TRANSPAREN' +
      'CIA, USA_NFCE, APLICARDESCONTONOICMS, APLICARDESCONTONOIPI, ENDX' +
      'MLNFCE, ENDPDFNFCE, IMP_PERC_TRIB_DADOS_ADIC, IMP_NFE_REF_PROD, ' +
      'LEI_TRANSPARENCIA_TEXTO_ITEM, IMP_TIPO_TRIBUTOS_ITENS, IMP_TIPO_' +
      'TRIBUTOS, LEI_TRANSPARENCIA_IMP_ITEM, IMP_PERC_TRIB_ITENS, CONTR' +
      'OLAR_ESTOQUE_SAIDA, SENHA_LIBERA_ESTOQUE, ALERTA_VLR_ATRASO, USA' +
      '_LIMITE_CREDITO, SENHA_CREDITO, USA_VENDEDOR, GRAVAR_CONSUMO_NOT' +
      'A,'#13#10'EMPRESA_SUCATA, EMPRESA_AMBIENTES, EMPRESA_NAVALHA, CONTROLA' +
      'R_PEDIDO_LIBERACAO, USA_PEDIDO_FUT, UNIDADE_PECA, PERMITE_QTDMAI' +
      'OR_PEDIDO'#13#10'FROM PARAMETROS P'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 56
    object sdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object sdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosQUITAR_AVISTA_AUT: TStringField
      FieldName = 'QUITAR_AVISTA_AUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object sdsParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
    object sdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
    object sdsParametrosENDPDFNFCE: TStringField
      FieldName = 'ENDPDFNFCE'
      Size = 250
    end
    object sdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField
      FieldName = 'IMP_PERC_TRIB_DADOS_ADIC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_TEXTO_ITEM'
      Size = 150
    end
    object sdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_TIPO_TRIBUTOS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_PERC_TRIB_ITENS: TStringField
      FieldName = 'IMP_PERC_TRIB_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField
      FieldName = 'CONTROLAR_ESTOQUE_SAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_LIBERA_ESTOQUE: TStringField
      FieldName = 'SENHA_LIBERA_ESTOQUE'
      Size = 10
    end
    object sdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object sdsParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PEDIDO_FUT: TStringField
      FieldName = 'USA_PEDIDO_FUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUNIDADE_PECA: TStringField
      FieldName = 'UNIDADE_PECA'
      Size = 6
    end
    object sdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField
      FieldName = 'PERMITE_QTDMAIOR_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 272
    Top = 56
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    BeforePost = cdsParametrosBeforePost
    Left = 312
    Top = 56
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object cdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosQUITAR_AVISTA_AUT: TStringField
      FieldName = 'QUITAR_AVISTA_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object cdsParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
    object cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
    object cdsParametrosENDPDFNFCE: TStringField
      FieldName = 'ENDPDFNFCE'
      Size = 250
    end
    object cdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField
      FieldName = 'IMP_PERC_TRIB_DADOS_ADIC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_TEXTO_ITEM'
      Size = 150
    end
    object cdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_ITENS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_TIPO_TRIBUTOS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_PERC_TRIB_ITENS: TStringField
      FieldName = 'IMP_PERC_TRIB_ITENS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField
      FieldName = 'CONTROLAR_ESTOQUE_SAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_LIBERA_ESTOQUE: TStringField
      FieldName = 'SENHA_LIBERA_ESTOQUE'
      Size = 10
    end
    object cdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object cdsParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PEDIDO_FUT: TStringField
      FieldName = 'USA_PEDIDO_FUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUNIDADE_PECA: TStringField
      FieldName = 'UNIDADE_PECA'
      Size = 6
    end
    object cdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField
      FieldName = 'PERMITE_QTDMAIOR_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 104
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 272
    Top = 104
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 312
    Top = 104
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
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object cdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 352
    Top = 104
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 152
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 272
    Top = 152
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 312
    Top = 152
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
    object cdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoMOSTRAR_NFCE: TStringField
      FieldName = 'MOSTRAR_NFCE'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 352
    Top = 152
  end
  object sdsCondPgto_Dia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO_DIA'#13#10'WHERE ID = :ID'
    DataSource = dsmCondPgto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 272
    Top = 248
    object sdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    Params = <>
    Left = 312
    Top = 248
    object cdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object dsCondPgto_Dia: TDataSource
    DataSet = cdsCondPgto_Dia
    Left = 352
    Top = 248
  end
  object dsmCondPgto: TDataSource
    DataSet = sdsCondPgto
    Left = 232
    Top = 200
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONTAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 344
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 272
    Top = 344
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 312
    Top = 344
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 352
    Top = 344
  end
  object sdsEstoqueMov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_MOV'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 392
    object sdsEstoqueMovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEstoqueMovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsEstoqueMovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsEstoqueMovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsEstoqueMovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsEstoqueMovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoqueMovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object sdsEstoqueMovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsEstoqueMovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsEstoqueMovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsEstoqueMovQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoqueMovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsEstoqueMovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsEstoqueMovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsEstoqueMovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsEstoqueMovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoqueMovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoqueMovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object sdsEstoqueMovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsEstoqueMovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsEstoqueMovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsEstoqueMovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsEstoqueMovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object sdsEstoqueMovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object sdsEstoqueMovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object sdsEstoqueMovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object sdsEstoqueMovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object sdsEstoqueMovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEstoqueMov: TDataSetProvider
    DataSet = sdsEstoqueMov
    Left = 272
    Top = 392
  end
  object cdsEstoqueMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueMov'
    Left = 312
    Top = 392
    object cdsEstoqueMovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoqueMovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoqueMovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoqueMovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoqueMovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoqueMovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueMovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoqueMovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoqueMovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoqueMovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoqueMovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoqueMovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoqueMovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoqueMovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoqueMovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsEstoqueMovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoqueMovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoqueMovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoqueMovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoqueMovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoqueMovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoqueMovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoqueMovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoqueMovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoqueMovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoqueMovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoqueMovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoqueMovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEstoqueMov: TDataSource
    DataSet = cdsEstoqueMov
    Left = 352
    Top = 392
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 440
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 272
    Top = 440
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 312
    Top = 440
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField
      FieldName = 'ID_CFOP_NFCE_PADRAO'
    end
    object cdsFilialUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_NFCE: TStringField
      FieldName = 'SERIE_NFCE'
      Size = 3
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 352
    Top = 440
  end
  object qUltimo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) ULT '
      'FROM CUPOMFISCAL')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 376
    object qUltimoULT: TIntegerField
      FieldName = 'ULT'
    end
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10'WHERE MOSTRARNOCUPOM = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 296
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 272
    Top = 296
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 312
    Top = 296
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
    end
    object cdsTipoCobrancaGERAR_NFCE: TStringField
      FieldName = 'GERAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaABRE_GAVETA: TStringField
      FieldName = 'ABRE_GAVETA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaEXIGE_CLIENTE: TStringField
      FieldName = 'EXIGE_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaIMPRIME_CARNE: TStringField
      FieldName = 'IMPRIME_CARNE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCREDITO_LOJA: TStringField
      FieldName = 'CREDITO_LOJA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaPRECO_AVISTA: TStringField
      FieldName = 'PRECO_AVISTA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFATURAMENTO_LIQUIDO: TStringField
      FieldName = 'FATURAMENTO_LIQUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFATURAMENTO_BRUTO: TStringField
      FieldName = 'FATURAMENTO_BRUTO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 352
    Top = 296
  end
  object sdsCupomParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CFP.*'#13#10'FROM CUPOMFISCAL_PARAMETROS CFP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 368
    object sdsCupomParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomParametrosTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object sdsCupomParametrosUSA_IPI: TStringField
      FieldName = 'USA_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosSIT_TRIB_ID: TIntegerField
      FieldName = 'SIT_TRIB_ID'
    end
    object sdsCupomParametrosUSA_DESCONTO: TStringField
      FieldName = 'USA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField
      FieldName = 'QTD_MULTIPLICADOR'
    end
    object sdsCupomParametrosACBR_MODELO: TStringField
      FieldName = 'ACBR_MODELO'
      Size = 30
    end
    object sdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField
      FieldName = 'EXIGE_CAIXA_ABERTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosCASAS_DECIMAIS: TSmallintField
      FieldName = 'CASAS_DECIMAIS'
    end
    object sdsCupomParametrosPRIMEIRO_CAMPO: TSmallintField
      FieldName = 'PRIMEIRO_CAMPO'
    end
    object sdsCupomParametrosPRODUTO_PADRAO: TIntegerField
      FieldName = 'PRODUTO_PADRAO'
    end
    object sdsCupomParametrosQTD_PADRAO: TFMTBCDField
      FieldName = 'QTD_PADRAO'
      Precision = 15
      Size = 3
    end
    object sdsCupomParametrosUSA_BALANCA: TStringField
      FieldName = 'USA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosABRIR_CUPOM: TStringField
      FieldName = 'ABRIR_CUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_COD_REF: TStringField
      FieldName = 'USA_COD_REF'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosMOSTRA_NOME_PRODUTO: TStringField
      FieldName = 'MOSTRA_NOME_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_COPIA_PEDIDO_CF: TStringField
      FieldName = 'USA_COPIA_PEDIDO_CF'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosTAMANHO_LINHA: TSmallintField
      FieldName = 'TAMANHO_LINHA'
    end
    object sdsCupomParametrosMOSTRAR_BARRA_TOTAL: TStringField
      FieldName = 'MOSTRAR_BARRA_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosMOSTRAR_CONDPGTO: TStringField
      FieldName = 'MOSTRAR_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosID_CONDPGTO_PADRAO: TIntegerField
      FieldName = 'ID_CONDPGTO_PADRAO'
    end
    object sdsCupomParametrosUSA_QTD_PESSOA: TStringField
      FieldName = 'USA_QTD_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosVENDA_TIPO_PRODUTO: TStringField
      FieldName = 'VENDA_TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosCAIXA_NUMERA_COMANDA: TStringField
      FieldName = 'CAIXA_NUMERA_COMANDA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosIMPRIME_NUM_NFISCAL: TStringField
      FieldName = 'IMPRIME_NUM_NFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosBAIXAR_CONSUMO: TStringField
      FieldName = 'BAIXAR_CONSUMO'
      Size = 1
    end
    object sdsCupomParametrosID_CONTAPERDAS: TIntegerField
      FieldName = 'ID_CONTAPERDAS'
    end
    object sdsCupomParametrosORDEM_CAMPOS: TSmallintField
      FieldName = 'ORDEM_CAMPOS'
    end
    object sdsCupomParametrosIMPRIME_FISCAL_NFISCAL: TStringField
      FieldName = 'IMPRIME_FISCAL_NFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosETIQUETA_INFO: TStringField
      FieldName = 'ETIQUETA_INFO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_COMANDA: TStringField
      FieldName = 'USA_COMANDA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_CARNE: TStringField
      FieldName = 'USA_CARNE'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosALTURA_SALTO_LINHA: TSmallintField
      FieldName = 'ALTURA_SALTO_LINHA'
    end
    object sdsCupomParametrosUSA_CARTAO_COMANDA: TStringField
      FieldName = 'USA_CARTAO_COMANDA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_ORCAMENTO: TStringField
      FieldName = 'USA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_PEDIDO: TStringField
      FieldName = 'USA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosEXIGE_CAMPO_DESCONTO: TStringField
      FieldName = 'EXIGE_CAMPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosVIAS_CUPOM: TSmallintField
      FieldName = 'VIAS_CUPOM'
    end
    object sdsCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField
      FieldName = 'IMP_VENDAS_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA: TStringField
      FieldName = 'IMPRIME_NFISCAL_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosID_PRODUTO_GENERICO: TIntegerField
      FieldName = 'ID_PRODUTO_GENERICO'
    end
    object sdsCupomParametrosEXIGE_VENDEDOR: TStringField
      FieldName = 'EXIGE_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosREPETE_VENDEDOR: TStringField
      FieldName = 'REPETE_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosID_CONDPGTO_PRAZO: TIntegerField
      FieldName = 'ID_CONDPGTO_PRAZO'
    end
    object sdsCupomParametrosUSA_TABELA_PRECO: TStringField
      FieldName = 'USA_TABELA_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosTAMANHO_COD_ETIQUETA: TSmallintField
      FieldName = 'TAMANHO_COD_ETIQUETA'
    end
    object sdsCupomParametrosQTD_AUTO: TStringField
      FieldName = 'QTD_AUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_PREVIEW_CARNE: TStringField
      FieldName = 'USA_PREVIEW_CARNE'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosCARNE_RELATORIO: TStringField
      FieldName = 'CARNE_RELATORIO'
      Size = 100
    end
    object sdsCupomParametrosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosRACHAR_CONTA: TStringField
      FieldName = 'RACHAR_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_PRECO_AVISTA: TStringField
      FieldName = 'USA_PRECO_AVISTA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField
      FieldName = 'EXIBIR_DIALOGO_IMPRESSORA'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_COR_TAMANHO: TStringField
      FieldName = 'USA_COR_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
    end
    object sdsCupomParametrosAUTENTICA_VENDEDOR: TStringField
      FieldName = 'AUTENTICA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsCupomParametrosUSA_MODO_SINCRONO: TStringField
      FieldName = 'USA_MODO_SINCRONO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCupomParametros: TDataSetProvider
    DataSet = sdsCupomParametros
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 368
  end
  object cdsCupomParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCupomParametros'
    Left = 112
    Top = 368
    object cdsCupomParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomParametrosUSA_IPI: TStringField
      FieldName = 'USA_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosSIT_TRIB_ID: TIntegerField
      FieldName = 'SIT_TRIB_ID'
    end
    object cdsCupomParametrosUSA_DESCONTO: TStringField
      FieldName = 'USA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField
      FieldName = 'QTD_MULTIPLICADOR'
    end
    object cdsCupomParametrosACBR_MODELO: TStringField
      FieldName = 'ACBR_MODELO'
    end
    object cdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField
      FieldName = 'EXIGE_CAIXA_ABERTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsCupomParametrosCASAS_DECIMAIS: TSmallintField
      FieldName = 'CASAS_DECIMAIS'
    end
    object cdsCupomParametrosPRIMEIRO_CAMPO: TSmallintField
      FieldName = 'PRIMEIRO_CAMPO'
    end
    object cdsCupomParametrosPRODUTO_PADRAO: TIntegerField
      FieldName = 'PRODUTO_PADRAO'
    end
    object cdsCupomParametrosQTD_PADRAO: TFMTBCDField
      FieldName = 'QTD_PADRAO'
      Precision = 15
      Size = 3
    end
    object cdsCupomParametrosUSA_BALANCA: TStringField
      FieldName = 'USA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosABRIR_CUPOM: TStringField
      FieldName = 'ABRIR_CUPOM'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_COD_REF: TStringField
      FieldName = 'USA_COD_REF'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosMOSTRA_NOME_PRODUTO: TStringField
      FieldName = 'MOSTRA_NOME_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_COPIA_PEDIDO_CF: TStringField
      FieldName = 'USA_COPIA_PEDIDO_CF'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosTAMANHO_LINHA: TSmallintField
      FieldName = 'TAMANHO_LINHA'
    end
    object cdsCupomParametrosMOSTRAR_BARRA_TOTAL: TStringField
      FieldName = 'MOSTRAR_BARRA_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosMOSTRAR_CONDPGTO: TStringField
      FieldName = 'MOSTRAR_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosID_CONDPGTO_PADRAO: TIntegerField
      FieldName = 'ID_CONDPGTO_PADRAO'
    end
    object cdsCupomParametrosUSA_QTD_PESSOA: TStringField
      FieldName = 'USA_QTD_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosVENDA_TIPO_PRODUTO: TStringField
      FieldName = 'VENDA_TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosCAIXA_NUMERA_COMANDA: TStringField
      FieldName = 'CAIXA_NUMERA_COMANDA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosIMPRIME_NUM_NFISCAL: TStringField
      FieldName = 'IMPRIME_NUM_NFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosBAIXAR_CONSUMO: TStringField
      FieldName = 'BAIXAR_CONSUMO'
      Size = 1
    end
    object cdsCupomParametrosID_CONTAPERDAS: TIntegerField
      FieldName = 'ID_CONTAPERDAS'
    end
    object cdsCupomParametrosORDEM_CAMPOS: TSmallintField
      FieldName = 'ORDEM_CAMPOS'
    end
    object cdsCupomParametrosIMPRIME_FISCAL_NFISCAL: TStringField
      FieldName = 'IMPRIME_FISCAL_NFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosETIQUETA_INFO: TStringField
      FieldName = 'ETIQUETA_INFO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_COMANDA: TStringField
      FieldName = 'USA_COMANDA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_CARNE: TStringField
      FieldName = 'USA_CARNE'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosALTURA_SALTO_LINHA: TSmallintField
      FieldName = 'ALTURA_SALTO_LINHA'
    end
    object cdsCupomParametrosUSA_CARTAO_COMANDA: TStringField
      FieldName = 'USA_CARTAO_COMANDA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_ORCAMENTO: TStringField
      FieldName = 'USA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_PEDIDO: TStringField
      FieldName = 'USA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosEXIGE_CAMPO_DESCONTO: TStringField
      FieldName = 'EXIGE_CAMPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosVIAS_CUPOM: TSmallintField
      FieldName = 'VIAS_CUPOM'
    end
    object cdsCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField
      FieldName = 'IMP_VENDAS_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA: TStringField
      FieldName = 'IMPRIME_NFISCAL_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosID_PRODUTO_GENERICO: TIntegerField
      FieldName = 'ID_PRODUTO_GENERICO'
    end
    object cdsCupomParametrosEXIGE_VENDEDOR: TStringField
      FieldName = 'EXIGE_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosREPETE_VENDEDOR: TStringField
      FieldName = 'REPETE_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosID_CONDPGTO_PRAZO: TIntegerField
      FieldName = 'ID_CONDPGTO_PRAZO'
    end
    object cdsCupomParametrosUSA_TABELA_PRECO: TStringField
      FieldName = 'USA_TABELA_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosTAMANHO_COD_ETIQUETA: TSmallintField
      FieldName = 'TAMANHO_COD_ETIQUETA'
    end
    object cdsCupomParametrosQTD_AUTO: TStringField
      FieldName = 'QTD_AUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_PREVIEW_CARNE: TStringField
      FieldName = 'USA_PREVIEW_CARNE'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosCARNE_RELATORIO: TStringField
      FieldName = 'CARNE_RELATORIO'
      Size = 100
    end
    object cdsCupomParametrosFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosRACHAR_CONTA: TStringField
      FieldName = 'RACHAR_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_PRECO_AVISTA: TStringField
      FieldName = 'USA_PRECO_AVISTA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField
      FieldName = 'EXIBIR_DIALOGO_IMPRESSORA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_COR_TAMANHO: TStringField
      FieldName = 'USA_COR_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
    end
    object cdsCupomParametrosAUTENTICA_VENDEDOR: TStringField
      FieldName = 'AUTENTICA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsCupomParametrosUSA_MODO_SINCRONO: TStringField
      FieldName = 'USA_MODO_SINCRONO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsSitTribCF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10' FROM SITTRIB_CF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 416
    object sdsSitTribCFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsSitTribCFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object sdsSitTribCFPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dspSitTribCF: TDataSetProvider
    DataSet = sdsSitTribCF
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 416
  end
  object cdsSitTribCF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSitTribCf'
    Left = 112
    Top = 416
    object cdsSitTribCFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSitTribCFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object cdsSitTribCFPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dsSitTribCF: TDataSource
    DataSet = cdsSitTribCF
    Left = 152
    Top = 416
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 144
    object sdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object sdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object sdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object sdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object sdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object sdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object sdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object sdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object sdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object sdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object sdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsDuplicataID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object sdsDuplicataID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object sdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object sdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object sdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 457
    Top = 144
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    Left = 489
    Top = 144
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDuplicatasdsDuplicata_Hist: TDataSetField
      FieldName = 'sdsDuplicata_Hist'
    end
    object cdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDuplicataID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsDuplicata_Mestre: TDataSource
    DataSet = sdsDuplicata
    Left = 529
    Top = 144
  end
  object sdsDuplicata_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA_HIST'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsDuplicata_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 465
    Top = 192
    object sdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object sdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 70
    end
    object sdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
    end
    object sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
    end
    object sdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
    end
    object sdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object sdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object sdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object sdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object sdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
  end
  object cdsDuplicata_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDuplicatasdsDuplicata_Hist
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 497
    Top = 192
    object cdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object cdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 70
    end
    object cdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object cdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object cdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object cdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object cdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
  end
  object dsCupomParametros: TDataSource
    DataSet = cdsCupomParametros
    Left = 152
    Top = 368
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.PERC_COMISSAO, P.TIPO_COMISSAO, P.PER' +
      'C_COMISSAO_VEND, PF.SENHA'#13#10'FROM PESSOA P'#13#10'LEFT JOIN PESSOA_FISIC' +
      'A PF ON (P.CODIGO = PF.CODIGO)'#13#10'WHERE P.INATIVO = '#39'N'#39#13#10'      AND' +
      ' P.TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 248
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 457
    Top = 248
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 489
    Top = 248
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
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsVendedorSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 529
    Top = 248
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 352
    Top = 56
  end
  object qIBPT: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT I.PERC_NACIONAL, I.PERC_IMPORTACAO, I.PERC_ESTADUAL, I.PE' +
        'RC_MUNICIPAL, I.FONTE, I.VERSAO, N.NCM, N.ID'
      'FROM TAB_IBPT I'
      'LEFT JOIN TAB_NCM N ON (I.CODIGO = N.NCM)')
    SQLConnection = dmDatabase.scoDados
    Left = 888
    Top = 376
    object qIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object qIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object qIBPTNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qIBPTPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
    end
    object qIBPTPERC_MUNICIPAL: TFloatField
      FieldName = 'PERC_MUNICIPAL'
    end
    object qIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 30
    end
    object qIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
  end
  object sdsCupomTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 464
    object sdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dspCupomTerminal: TDataSetProvider
    DataSet = sdsCupomTerminal
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 464
  end
  object cdsCupomTerminal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCupomTerminal'
    Left = 112
    Top = 464
    object cdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsCupomTerminal: TDataSource
    DataSet = cdsCupomTerminal
    Left = 152
    Top = 464
  end
  object sdsComandaRel: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.ID, CF.NUMCUPOM, CF.DTEMISSAO, F.NOME_INTERNO FILIAL_N' +
      'OME, F.ENDERECO || '#39', '#39' || F.NUM_END AS FILIAL_END, F.BAIRRO || ' +
      #39' - '#39' || F.CIDADE AS FILIAL_CIDADE_BAIRRO, '#39'('#39' || F.DDD1 || '#39')'#39' ' +
      '|| F.FONE1 AS FILIAL_FONE, F.HOMEPAGE, F.EMAIL'#13#10'FROM CUPOMFISCAL' +
      ' CF'#13#10'INNER JOIN FILIAL F ON (CF.FILIAL = F.ID)'#13#10'WHERE CF.ID = :I' +
      'D'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 304
  end
  object dspComandaRel: TDataSetProvider
    DataSet = sdsComandaRel
    Left = 457
    Top = 304
  end
  object cdsComandaRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComandaRel'
    Left = 488
    Top = 304
    object cdsComandaRelID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsComandaRelNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsComandaRelDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsComandaRelFILIAL_NOME: TStringField
      FieldName = 'FILIAL_NOME'
      Size = 60
    end
    object cdsComandaRelFILIAL_END: TStringField
      FieldName = 'FILIAL_END'
      Size = 77
    end
    object cdsComandaRelFILIAL_FONE: TStringField
      FieldName = 'FILIAL_FONE'
      Size = 28
    end
    object cdsComandaRelHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsComandaRelEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cdsComandaRelFILIAL_CIDADE_BAIRRO: TStringField
      FieldName = 'FILIAL_CIDADE_BAIRRO'
      Size = 73
    end
  end
  object dsComandaRel: TDataSource
    DataSet = cdsComandaRel
    Left = 528
    Top = 304
  end
  object sdsComandaItem_Rel: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFI.QTD, CFI.ID_PRODUTO, CFI.VLR_UNITARIO, P.NOME PRODUTO' +
      '_NOME, CFI.VLR_TOTAL'#13#10'FROM CUPOMFISCAL_ITENS CFI'#13#10'INNER JOIN PRO' +
      'DUTO P ON (CFI.ID_PRODUTO = P.ID)'#13#10'WHERE CFI.ID = :ID'#13#10' AND CANC' +
      'ELADO = '#39'N'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 352
  end
  object dspComandaItem_Rel: TDataSetProvider
    DataSet = sdsComandaItem_Rel
    Left = 457
    Top = 352
  end
  object cdsComandaItem_Rel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComandaItem_Rel'
    Left = 488
    Top = 352
    object cdsComandaItem_RelQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsComandaItem_RelPRODUTO_NOME: TStringField
      FieldName = 'PRODUTO_NOME'
      Size = 100
    end
    object cdsComandaItem_RelVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsComandaItem_RelID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsComandaItem_RelVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dsComandaItem_Rel: TDataSource
    DataSet = cdsComandaItem_Rel
    Left = 528
    Top = 352
  end
  object mCupomItens: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOME_PRODUTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNIT'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'CARTAO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 440
    Top = 488
    object mCupomItensNOME_PRODUTO: TStringField
      DisplayWidth = 48
      FieldName = 'NOME_PRODUTO'
      Size = 40
    end
    object mCupomItensQTD: TFloatField
      DisplayWidth = 12
      FieldName = 'QTD'
    end
    object mCupomItensVLR_UNIT: TFloatField
      DisplayWidth = 16
      FieldName = 'VLR_UNIT'
      DisplayFormat = '0.00'
    end
    object mCupomItensVLR_TOTAL: TFloatField
      DisplayWidth = 18
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object mCupomItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mCupomItensCARTAO: TIntegerField
      FieldName = 'CARTAO'
    end
  end
  object dsmCupomItens: TDataSource
    DataSet = mCupomItens
    Left = 472
    Top = 488
  end
  object mCupom: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeDelete = mCupomBeforeDelete
    Left = 440
    Top = 440
    object mCupomCARTAO: TIntegerField
      FieldName = 'CARTAO'
    end
    object mCupomID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object mCupomVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object dsmCupom: TDataSource
    DataSet = mCupom
    Left = 472
    Top = 440
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.codcfop, T.nome, T.nome_interno, T.gerar_ipi, T.g' +
      'erar_icms, T.gerar_duplicata,'#13#10'T.gerar_icms_simples, T.gerar_tri' +
      'buto, T.gerar_estoque_mp, T.somar_vlrtotalproduto, T.id_csticms,' +
      #13#10'T.id_cstipi, T.id_pis, T.id_cofins, T.id_obs_lei, T.copiarnota' +
      'triangular, T.tipo_pis, T.tipo_cofins,'#13#10'T.tipo_empresa, T.tipo_i' +
      'nd_ven, T.substituicao_trib, T.mva, T.beneficiamento, T.maoobra,' +
      ' T.perc_tributo,'#13#10'T.perc_cofins, T.perc_pis, T.ENTRADASAIDA, T.G' +
      'ERAR_DESONERACAO_ICMS, T.GERAR_ESTOQUE, T.BAIXAR_FUT, T.ID_PIS_S' +
      'IMP, T.ID_COFINS_SIMP'#13#10'FROM TAB_CFOP T'#13#10'WHERE T.USA_NFCE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 216
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 633
    Top = 216
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 673
    Top = 216
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
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DESONERACAO_ICMS: TStringField
      FieldName = 'GERAR_DESONERACAO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPBAIXAR_FUT: TStringField
      FieldName = 'BAIXAR_FUT'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPsdsCFOP_Variacao: TDataSetField
      FieldName = 'sdsCFOP_Variacao'
    end
    object cdsCFOPID_PIS_SIMP: TIntegerField
      FieldName = 'ID_PIS_SIMP'
    end
    object cdsCFOPID_COFINS_SIMP: TIntegerField
      FieldName = 'ID_COFINS_SIMP'
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 713
    Top = 216
  end
  object qRegra_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PESSOA_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT tc.*'
      'FROM tab_cfop_variacao tc'
      'where TC.ID = :ID'
      '  and TC.TIPO_EMPRESA = :TIPO_EMPRESA'
      '  and TC.TIPO_CLIENTE = :TIPO_CLIENTE'
      '  AND TC.UF_CLIENTE = :UF_CLIENTE'
      '  AND TC.PESSOA_CLIENTE = :PESSOA_CLIENTE'
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 377
    object qRegra_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRegra_CFOPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qRegra_CFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qRegra_CFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qRegra_CFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qRegra_CFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qRegra_CFOPID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object qRegra_CFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qRegra_CFOPPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qRegra_CFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object qRegra_CFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qRegra_CFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qRegra_CFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qRegra_CFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qRegra_CFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
  end
  object qVariacao: TSQLQuery
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
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CFOP_VARIACAO T'
      'WHERE T.ID = :ID'
      '  AND T.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 376
    object qVariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qVariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qVariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qVariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qVariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qVariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object qVariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qVariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qVariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qVariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qVariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qVariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object qVariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qVariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object qVariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object qVariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qVariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qVariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qVariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object qVariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qVariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qVariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qVariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qVariacaoID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
  end
  object qUF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM UF'
      'WHERE UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 376
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object qUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object qUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object qUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10'WHERE TIPO = :TIPO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 593
    Top = 4
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 625
    Top = 4
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 665
    Top = 4
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTICMSCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 705
    Top = 4
  end
  object dsTab_CSTIPI: TDataSource
    DataSet = cdsTab_CSTIPI
    Left = 707
    Top = 56
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 667
    Top = 56
    object cdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 627
    Top = 56
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 595
    Top = 56
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 595
    Top = 106
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 627
    Top = 106
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 627
    Top = 160
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 595
    Top = 159
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 667
    Top = 160
    object cdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object cdsTab_CofinsGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Cofins: TDataSource
    DataSet = cdsTab_Cofins
    Left = 707
    Top = 160
  end
  object dsTab_Pis: TDataSource
    DataSet = cdsTab_Pis
    Left = 707
    Top = 106
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 667
    Top = 106
    object cdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object cdsTab_PisGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 400
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    Left = 457
    Top = 400
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORIGEM'
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 483
    Top = 400
    object cdsOrigem_ProdORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 1
    end
    object cdsOrigem_ProdNOME: TStringField
      FieldName = 'NOME'
      Size = 90
    end
  end
  object dsOrigem_Prod: TDataSource
    DataSet = cdsOrigem_Prod
    Left = 523
    Top = 400
  end
  object dsCFOP_Mestre: TDataSource
    DataSet = sdsCFOP
    Left = 745
    Top = 216
  end
  object sdsCFOP_Variacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP_VARIACAO'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsCFOP_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 272
    object sdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOP_VariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOP_VariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsCFOP_VariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCFOP_VariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOP_VariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCFOP_VariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOP_VariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOP_VariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOP_VariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
  end
  object cdsCFOP_Variacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCFOPsdsCFOP_Variacao
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 673
    Top = 272
    object cdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOP_VariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOP_VariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsCFOP_VariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCFOP_VariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOP_VariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOP_VariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOP_VariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOP_VariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOP_VariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
  end
  object dsCFOP_Variacao: TDataSource
    DataSet = cdsCFOP_Variacao
    Left = 713
    Top = 272
  end
  object qProximoCupom: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) NUMCUPOM'
      'FROM CUPOMFISCAL'
      'WHERE FILIAL = :FILIAL'
      '  AND TIPO = :TIPO')
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 376
    object qProximoCupomNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
  end
  object sdsTab_NCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.NCM, N.NOME, N.PERC_RED_STRIB, N.GERAR_ST, USAR_M' +
      'VA_UF_DESTINO, N.COD_CEST, ID_PIS,'#13#10'ID_COFINS, ID_CST_ICMS, PERC' +
      '_PIS, PERC_COFINS, PERC_BASE_ICMS, ID_OBS_LEI, N.ID_CFOP, N.PERC' +
      '_ICMS'#13#10'FROM TAB_NCM N'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 699
    Top = 432
  end
  object dspTab_NCM: TDataSetProvider
    DataSet = sdsTab_NCM
    Left = 731
    Top = 432
  end
  object cdsTab_NCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_NCM'
    Left = 771
    Top = 432
    object cdsTab_NCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_NCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsTab_NCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsTab_NCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsTab_NCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsTab_NCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsTab_NCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsTab_NCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsTab_NCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsTab_NCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsTab_NCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object cdsTab_NCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsTab_NCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsTab_NCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
  end
  object dsTab_NCM: TDataSource
    DataSet = cdsTab_NCM
    Left = 811
    Top = 432
  end
  object qUltimo_NFCe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) ULT FROM CUPOMFISCAL'
      'WHERE TIPO = '#39'NFC'#39
      '  AND FILIAL = :FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 920
    Top = 376
    object qUltimo_NFCeULT: TIntegerField
      FieldName = 'ULT'
    end
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT T.id, T.tamanho'#13#10'FROM PRODUTO_TAM T'#13#10'WHERE T.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 488
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 272
    Top = 488
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Tamanho'
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 312
    Top = 488
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 352
    Top = 488
  end
  object sdsCupomFiscal_ProdPrincipal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CUPOMFISCAL_PRODPRINCIPAL'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 520
    object sdsCupomFiscal_ProdPrincipalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscal_ProdPrincipalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCupomFiscal_ProdPrincipalVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object sdsCupomFiscal_ProdPrincipalQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsCupomFiscal_ProdPrincipalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dspCupomFiscal_ProdPrincipal: TDataSetProvider
    DataSet = sdsCupomFiscal_ProdPrincipal
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 520
  end
  object cdsCupomFiscal_ProdPrincipal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM_ORIGINAL'
    Params = <>
    ProviderName = 'dspCupomFiscal_ProdPrincipal'
    Left = 112
    Top = 520
    object cdsCupomFiscal_ProdPrincipalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscal_ProdPrincipalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCupomFiscal_ProdPrincipalVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object cdsCupomFiscal_ProdPrincipalQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsCupomFiscal_ProdPrincipalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dsCupomFiscal_ProdPrincipal: TDataSource
    DataSet = cdsCupomFiscal_ProdPrincipal
    Left = 152
    Top = 520
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.ID, PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI' +
      '.id_produto, PI.id_cfop, PE.NUM_PEDIDO, PI.vlr_unitario, PI.qtd,' +
      ' PI.qtd_faturado, PI.qtd_restante, PI.qtd_afaturar, PI.ID_NCM ID' +
      '_NCM_PED, PI.REFERENCIA, PI.ITEM_CLIENTE, CLI.NOME NOMECLIENTE, ' +
      'PRO.REFERENCIA REFERENCIA_PRO, PRO.NOME NOMEPRODUTO, CLI.CNPJ_CP' +
      'F,  PI.DTENTREGA, PI.ITEM, PI.VLR_DESCONTO, PRO.ID_NCM, PI.UNIDA' +
      'DE, PI.PERC_IPI, PI.OBS_COMPLEMENTAR, PI.NUMOS, PE.TIPO_FRETE, P' +
      'E.ID_CONDPGTO, PE.IMP_OC_NOTA, PI.ID_VARIACAO, PI.QTD_LIBERADA, ' +
      'PI.QTD_PRODUZIDA, PE.TIPO_REG, PI.TAMANHO, PE.ID_TRANSPORTADORA,' +
      ' PE.NUM_DOC, PI.NUM_TALAO, PI.VLR_DESCONTORATEIO, PI.QTD_PECA, P' +
      'I.QTD_FUT, PI.ID_COR, COMB.NOME NOME_COR, PI.ID_MOVESTOQUE, PI.T' +
      'IPO_ACESSORIO, PI.QTD_LANCAR_ESTOQUE, GR.NOME NOME_GRUPO, PE.NOM' +
      'E_CONSUMIDOR, PI.PERC_DESCONTO, PE.ID_TIPO_COBRANCA, PE.ID_VENDE' +
      'DOR, PE.PERC_COMISSAO PERC_COMISSAO_PED, PI.PERC_COMISSAO PERC_C' +
      'OMISSAO_ITEM, TIPO_ATENDIMENTO'#13#10'FROM PEDIDO PE'#13#10'INNER JOIN PEDID' +
      'O_ITEM PI ON (PE.ID = PI.ID)'#13#10'INNER JOIN PESSOA CLI ON (PE.ID_CL' +
      'IENTE = CLI.CODIGO)'#13#10'INNER JOIN PRODUTO PRO ON (PI.ID_PRODUTO = ' +
      'PRO.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON (PI.ID_COR = COMB.ID)'#13#10'LEF' +
      'T JOIN GRUPO GR ON (PRO.ID_GRUPO = GR.ID)'#13#10'WHERE PI.QTD_RESTANTE' +
      ' > 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 417
    Top = 5
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 457
    Top = 5
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    OnCalcFields = cdsPedidoCalcFields
    Left = 497
    Top = 5
    object cdsPedidoID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Pedido Cliente'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedidoDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QTD_FATURADO'
      ProviderFlags = []
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
      ProviderFlags = []
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_AFATURAR: TFloatField
      DisplayLabel = 'Qtd. A Faturar'
      FieldName = 'QTD_AFATURAR'
      ProviderFlags = []
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoQTD: TFloatField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QTD'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoID_PRODUTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPedidoDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoID_CFOP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID CFOP'
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoID_NCM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID NCM'
      FieldName = 'ID_NCM'
    end
    object cdsPedidoUNIDADE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsPedidoOBS_COMPLEMENTAR: TStringField
      DisplayLabel = 'Obs Complementar'
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedidoNUMOS: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedidoTIPO_FRETE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Frete'
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedidoID_CONDPGTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cond. Pgto'
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedidoIMP_OC_NOTA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Imp. OC. Nota'
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Ped. Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoID_VARIACAO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Varia'#231#227'o'
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedidoQTD_LIBERADA: TFloatField
      DisplayLabel = 'Qtd. Liberada'
      FieldName = 'QTD_LIBERADA'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_PRODUZIDA: TFloatField
      DisplayLabel = 'Qtd. Produzida'
      FieldName = 'QTD_PRODUZIDA'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoclQtd_Restante: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      DisplayFormat = '0.0000##'
      Calculated = True
    end
    object cdsPedidoclQtd_NaoLiberada: TFloatField
      DisplayLabel = 'Qtd. N'#227'o Liberada'
      FieldKind = fkCalculated
      FieldName = 'clQtd_NaoLiberada'
      DisplayFormat = '0.0000##'
      Calculated = True
    end
    object cdsPedidoTIPO_REG: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Reg'
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedidoID_TRANSPORTADORA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Transp.'
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedidoID_NCM_PED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID NCM Ped'
      FieldName = 'ID_NCM_PED'
    end
    object cdsPedidoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoREFERENCIA_PRO: TStringField
      DisplayLabel = 'Refer'#234'ncia Prod.'
      FieldName = 'REFERENCIA_PRO'
    end
    object cdsPedidoNUM_DOC: TIntegerField
      DisplayLabel = 'N'#186' Doc'
      FieldName = 'NUM_DOC'
    end
    object cdsPedidoNUM_TALAO: TStringField
      DisplayLabel = 'N'#186' Tal'#227'o'
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedidoVLR_DESCONTORATEIO: TFloatField
      DisplayLabel = 'Vlr. Desconto Rateio'
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsPedidoITEM_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item Cliente'
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsPedidoQTD_PECA: TIntegerField
      DisplayLabel = 'Qtd. Pe'#231'a'
      FieldName = 'QTD_PECA'
    end
    object cdsPedidoQTD_FUT: TFloatField
      DisplayLabel = 'Qtd. Enviada (N'#227'o Cobr.)'
      FieldName = 'QTD_FUT'
    end
    object cdsPedidoID_COR: TFMTBCDField
      DisplayLabel = 'ID Cor'
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoNOME_COR: TStringField
      DisplayLabel = 'Nome Cor'
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsPedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedidoTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsPedidoNOME_CONSUMIDOR: TStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsPedidoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedidoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoPERC_COMISSAO_PED: TFloatField
      FieldName = 'PERC_COMISSAO_PED'
    end
    object cdsPedidoPERC_COMISSAO_ITEM: TFloatField
      FieldName = 'PERC_COMISSAO_ITEM'
    end
    object cdsPedidoTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 537
    Top = 5
  end
  object sdsPedido_Tipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*'#13#10'FROM PEDIDO_ITEM_TIPO I'#13#10'WHERE I.ID = :ID'#13#10'  AND I.I' +
      'TEM = :ITEM'#13#10#13#10#13#10
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
    Left = 417
    Top = 48
  end
  object dspPedido_Tipo: TDataSetProvider
    DataSet = sdsPedido_Tipo
    Left = 457
    Top = 48
  end
  object cdsPedido_Tipo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Tipo'
    Left = 497
    Top = 48
    object cdsPedido_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedido_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedido_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedido_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedido_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedido_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedido_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedido_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedido_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedido_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedido_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsPedido_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsPedido_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object cdsPedido_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object cdsPedido_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object cdsPedido_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object cdsPedido_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object cdsPedido_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object cdsPedido_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
  end
  object dsPedido_Tipo: TDataSource
    DataSet = cdsPedido_Tipo
    Left = 537
    Top = 48
  end
  object sdsPrc_Atualiza_Status_Ped: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_STATUS_PED'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 433
    Top = 544
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 465
    Top = 544
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object sdsEnqIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_ENQIPI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 532
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = sdsEnqIPI
    Left = 272
    Top = 532
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 312
    Top = 532
    object cdsEnqIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsEnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dsEnqIPI: TDataSource
    DataSet = cdsEnqIPI
    Left = 352
    Top = 532
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM FILIAL F'
      'WHERE ((F.USA_CUPOM = '#39'S'#39') OR (F.USA_NFCE = '#39'S'#39'))'
      '  AND INATIVO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 376
    object qFilialCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qUltimo_CNF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUMCUPOM) ULT FROM CUPOMFISCAL'
      'WHERE CANCELADO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 952
    Top = 376
    object qUltimo_CNFULT: TIntegerField
      FieldName = 'ULT'
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT FIRST 1 CF.ID, CF.DTEMISSAO, CF.TIPO'
      'FROM CUPOMFISCAL CF'
      'WHERE CF.ID_TIPOCOBRANCA IS NOT NULL AND'
      ' CF.TIPO IN ('#39'PED'#39','#39'ORC'#39') AND'
      ' CF.ID_CLIENTE = :C1'
      'ORDER BY CF.DTEMISSAO')
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 376
  end
  object sdsProduto_Consumo_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(QTD_CONSUMO) QTD_CONSUMO, TAMANHO'#13#10'FROM PRODUTO_CONSU' +
      'MO_TAM'#13#10'WHERE ID = :ID'#13#10'   AND TAMANHO = :TAMANHO'#13#10'   AND ITEM =' +
      ' :ITEM'#13#10'GROUP BY TAMANHO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 707
    Top = 528
  end
  object dspProduto_Consumo_Tam: TDataSetProvider
    DataSet = sdsProduto_Consumo_Tam
    Left = 739
    Top = 528
  end
  object cdsProduto_Consumo_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo_Tam'
    Left = 779
    Top = 528
    object cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 675
    Top = 328
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
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 635
    Top = 328
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_CONSUMO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 603
    Top = 328
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42671.419546678200000000
    ReportOptions.LastChange = 42811.391278831020000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 696
    Top = 480
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxCupom'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUMCUPOM=NUMCUPOM'
      'DTEMISSAO=DTEMISSAO'
      'HREMISSAO=HREMISSAO'
      'ID_CLIENTE=ID_CLIENTE'
      'TIPO_PGTO=TIPO_PGTO'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_VENDEDOR=ID_VENDEDOR'
      'PERC_VENDEDOR=PERC_VENDEDOR'
      'BASE_ICMS=BASE_ICMS'
      'VLR_ICMS=VLR_ICMS'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_TOTAL=VLR_TOTAL'
      'CANCELADO=CANCELADO'
      'VLR_RECEBIDO=VLR_RECEBIDO'
      'VLR_TROCO=VLR_TROCO'
      'ID_CONTA=ID_CONTA'
      'FILIAL=FILIAL'
      'ID_TIPOCOBRANCA=ID_TIPOCOBRANCA'
      '-sdsCupom_Parc=sdsCupom_Parc'
      '-sdsCupom_Itens=sdsCupom_Itens'
      'TIPO=TIPO'
      'TERMINAL_ID=TERMINAL_ID'
      'CONDPGTO=CONDPGTO'
      'FORMAPGTO=FORMAPGTO'
      'VLR_TRIBUTO=VLR_TRIBUTO'
      'VLR_TRIBUTO_FEDERAL=VLR_TRIBUTO_FEDERAL'
      'VLR_TRIBUTO_ESTADUAL=VLR_TRIBUTO_ESTADUAL'
      'VLR_TRIBUTO_MUNICIPAL=VLR_TRIBUTO_MUNICIPAL'
      'NUM_CARTAO=NUM_CARTAO'
      'NOME_CLIENTE_1=NOME_CLIENTE_1'
      'NFEAMBIENTE=NFEAMBIENTE'
      'NFECHAVEACESSO=NFECHAVEACESSO'
      'NFEPROTOCOLO=NFEPROTOCOLO'
      'NFERECIBO=NFERECIBO'
      'NFEVERSAO=NFEVERSAO'
      'TIPO_ATENDIMENTO=TIPO_ATENDIMENTO'
      'TIPO_IMPRESSAO_NFCE=TIPO_IMPRESSAO_NFCE'
      'NFEPROTOCOLO_CANCELADA=NFEPROTOCOLO_CANCELADA'
      'ID_CFOP=ID_CFOP'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'VLR_IPI=VLR_IPI'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'DADOS_ADICIONAIS=DADOS_ADICIONAIS'
      'FONTE_TRIBUTOS=FONTE_TRIBUTOS'
      'NFEDENEGADA=NFEDENEGADA'
      'TIPO_DESTINO_OPERACAO=TIPO_DESTINO_OPERACAO'
      'MOTIVO_CANCELADA=MOTIVO_CANCELADA'
      'NFEFINALIDADE=NFEFINALIDADE'
      'TIPO_ENVIONFE=TIPO_ENVIONFE'
      'FORMAPGTO_CODIGO=FORMAPGTO_CODIGO'
      'SERIE=SERIE'
      'MOTIVO_DENEGADO=MOTIVO_DENEGADO'
      'QTD_PESSOA=QTD_PESSOA'
      'ID_FECHAMENTO=ID_FECHAMENTO'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CLIENTE_FONE=CLIENTE_FONE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_OBS=CLIENTE_OBS'
      'CPF=CPF'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      '-sdsCupomFiscal_Cli=sdsCupomFiscal_Cli'
      'NOME_VENDEDOR=NOME_VENDEDOR')
    DataSource = dsCupomFiscal
    BCDToCurrency = False
    Left = 728
    Top = 480
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxCupomItens'
    CloseDataSource = False
    DataSource = dsCupom_Itens
    BCDToCurrency = False
    Left = 760
    Top = 480
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxCupomParcelas'
    CloseDataSource = False
    DataSource = dsCupom_Parc
    BCDToCurrency = False
    Left = 792
    Top = 480
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxFilial'
    CloseDataSource = False
    DataSource = dsFilial
    BCDToCurrency = False
    Left = 824
    Top = 480
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 856
    Top = 480
  end
  object qCupomPed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT I.ID_PEDIDO'
      'FROM CUPOMFISCAL_ITENS I'
      'WHERE I.ID_PEDIDO > 0'
      'AND I.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 376
    object qCupomPedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
  end
  object qComissao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IC'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT ID FROM EXTCOMISSAO WHERE ID_CUPOM = :IC')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 376
  end
  object sdsTransp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, ENDERECO, NUM_END, CNPJ_CPF, PESSOA, UF, ID' +
      '_CIDADE,'#13#10'COMPLEMENTO_END, BAIRRO, CEP, TELEFONE1, DDDFONE1, INS' +
      'CR_EST,'#13#10'EMAIL_NFE, CIDADE'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  ' +
      'AND TP_TRANSPORTADORA = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 64
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    Left = 840
    Top = 64
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransp'
    Left = 880
    Top = 64
    object cdsTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsTranspNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsTranspUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsTranspID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsTranspCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTranspTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsTranspDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsTranspINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsTranspEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsTransp: TDataSource
    DataSet = cdsTransp
    Left = 920
    Top = 64
  end
  object sdsCupomFiscal_Cli: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM CUPOMFISCAL_CLI'#13#10'WHERE ID = :ID'
    DataSource = dsmCupomFiscal
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 200
    object sdsCupomFiscal_CliID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscal_CliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsCupomFiscal_CliNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsCupomFiscal_CliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sdsCupomFiscal_CliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sdsCupomFiscal_CliID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsCupomFiscal_CliDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object sdsCupomFiscal_CliFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sdsCupomFiscal_CliID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsCupomFiscal_CliCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsCupomFiscal_CliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object sdsCupomFiscal_CliTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsCupomFiscal_CliPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsCupomFiscal_CliUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object sdsCupomFiscal_CliTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
  end
  object cdsCupomFiscal_Cli: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupomFiscal_Cli
    IndexFieldNames = 'ID'
    Params = <>
    Left = 112
    Top = 200
    object cdsCupomFiscal_CliID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscal_CliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsCupomFiscal_CliNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsCupomFiscal_CliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object cdsCupomFiscal_CliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsCupomFiscal_CliID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsCupomFiscal_CliDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object cdsCupomFiscal_CliFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsCupomFiscal_CliID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsCupomFiscal_CliCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsCupomFiscal_CliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsCupomFiscal_CliTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsCupomFiscal_CliPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsCupomFiscal_CliUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object cdsCupomFiscal_CliTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
  end
  object dsCupomFiscal_Cli: TDataSource
    DataSet = cdsCupomFiscal_Cli
    Left = 152
    Top = 200
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 827
    Top = 160
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10'WHERE UF = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 795
    Top = 159
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 867
    Top = 160
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object cdsCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object cdsCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object cdsCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 907
    Top = 160
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 160
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object qCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object qCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object qCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object qCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object qCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
  end
  object mPedObs: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'OBS_Nota'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    Left = 969
    Top = 272
    Data = {
      490000009619E0BD01000000180000000200000000000300000049000949445F
      50656469646F0400010000000000084F42535F4E6F7461010049000000010005
      574944544802000200FA000000}
    object IntegerField1: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedidoAuxOBS_Nota: TStringField
      FieldName = 'OBS_Nota'
      Size = 250
    end
  end
  object qPedido_Cupom: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PEDIDO_CUPOM'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 96
    object qPedido_CupomID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPedido_CupomENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qPedido_CupomNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qPedido_CupomBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qPedido_CupomID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qPedido_CupomDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object qPedido_CupomFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object qPedido_CupomCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qPedido_CupomEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object qPedido_CupomPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qPedido_CupomUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qPedido_CupomTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qPedido_CupomCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 8
    object qParametros_FinID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_FinCONTROLE_DIG_PRECO: TStringField
      FieldName = 'CONTROLE_DIG_PRECO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_USUARIO'
      'WHERE USUARIO = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 8
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioALT_PRECO_PED: TStringField
      FieldName = 'ALT_PRECO_PED'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCupom_Cons_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sum(cp.vlr_vencimento)VALOR, cp.id_tipocobranca, tc.dinhe' +
      'iro'#13#10'from cupomfiscal_parc cp'#13#10'inner join CUPOMFISCAL CF'#13#10'on cp.' +
      'id = cf.id'#13#10'LEFT JOIN TIPOCOBRANCA TC ON (cp.ID_TIPOCOBRANCA = T' +
      'C.ID)'#13#10'WHERE cf.id = :ID'#13#10'group by cp.id_tipocobranca, tc.dinhei' +
      'ro'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 835
    Top = 216
  end
  object dspCupom_Cons_Parc: TDataSetProvider
    DataSet = sdsCupom_Cons_Parc
    Left = 867
    Top = 216
  end
  object cdsCupom_Cons_Parc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupom_Cons_Parc'
    Left = 907
    Top = 216
    object cdsCupom_Cons_ParcVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCupom_Cons_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupom_Cons_ParcDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsLocalEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM LOCAL_ESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 112
  end
  object dspLocalEstoque: TDataSetProvider
    DataSet = sdsLocalEstoque
    Left = 840
    Top = 112
  end
  object cdsLocalEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalEstoque'
    Left = 880
    Top = 112
    object cdsLocalEstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocalEstoqueNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsLocalEstoque: TDataSource
    DataSet = cdsLocalEstoque
    Left = 920
    Top = 112
  end
  object sdsTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 312
  end
  object dspTerminal: TDataSetProvider
    DataSet = sdsTerminal
    Left = 72
    Top = 312
  end
  object cdsTerminal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTerminal'
    Left = 112
    Top = 312
    object cdsTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object cdsTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsTerminal: TDataSource
    DataSet = cdsTerminal
    Left = 152
    Top = 312
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'U1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT FRACIONAVEL'
      'FROM UNIDADE'
      'WHERE UNIDADE = :U1')
    SQLConnection = dmDatabase.scoDados
    Left = 984
    Top = 376
    object qUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 10
    end
  end
  object qVer: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.ID, C.nfechaveacesso'
      'FROM CUPOMFISCAL C'
      'WHERE C.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 312
    object qVerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
  end
  object sdsCombinacao: TSQLDataSet
    CommandText = 
      'SELECT ID, ITEM, NOME'#13#10'FROM PRODUTO_COMB'#13#10'WHERE INATIVO = '#39'N'#39' AN' +
      'D'#13#10'  ID = :P1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 568
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 72
    Top = 568
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 104
    Top = 568
    object cdsCombinacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCombinacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 136
    Top = 568
  end
  object dsTamanho: TDataSource
    DataSet = cdsTamanho
    Left = 136
    Top = 600
  end
  object cdsTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTamanho'
    Left = 104
    Top = 600
    object cdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dspTamanho: TDataSetProvider
    DataSet = sdsTamanho
    Left = 72
    Top = 600
  end
  object sdsTamanho: TSQLDataSet
    CommandText = 'SELECT ID, TAMANHO'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :P1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 600
  end
  object sdsParametrosGeral: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID FROM PARAMETROS_GERAL'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 584
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspParametrosGeral: TDataSetProvider
    DataSet = sdsParametrosGeral
    Left = 272
    Top = 584
  end
  object cdsParametrosGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    BeforePost = cdsParametrosBeforePost
    Left = 312
    Top = 584
    object cdsParametrosGeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsParametrosGeral: TDataSource
    DataSet = cdsParametrosGeral
    Left = 352
    Top = 584
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ENDGRIDS'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 296
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
  end
  object qTipoDinheiro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME'
      'FROM TIPOCOBRANCA'
      'WHERE DINHEIRO = '#39'S'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 1016
    Top = 376
    object qTipoDinheiroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoDinheiroNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO'
      'FROM PESSOA'
      'WHERE CNPJ_CPF = :C1')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 376
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
end
