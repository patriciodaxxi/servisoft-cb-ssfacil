object DMCadRegra: TDMCadRegra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 278
  Top = 22
  Height = 591
  Width = 1007
  object sdsRegra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGRA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsRegraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegraNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsRegraFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      Size = 1
    end
    object sdsRegraCALCULA_ST: TStringField
      FieldName = 'CALCULA_ST'
      Size = 1
    end
    object sdsRegraID_CSTPIS: TIntegerField
      FieldName = 'ID_CSTPIS'
    end
    object sdsRegraID_CSTCOFINS: TIntegerField
      FieldName = 'ID_CSTCOFINS'
    end
    object sdsRegraPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsRegraPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsRegraTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 1
    end
    object sdsRegraTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 1
    end
    object sdsRegraID_CSTPIS_SIMP: TIntegerField
      FieldName = 'ID_CSTPIS_SIMP'
    end
    object sdsRegraID_CSTCOFINS_SIMP: TIntegerField
      FieldName = 'ID_CSTCOFINS_SIMP'
    end
    object sdsRegraPERC_PIS_SIMP: TFloatField
      FieldName = 'PERC_PIS_SIMP'
    end
    object sdsRegraPERC_COFINS_SIMP: TFloatField
      FieldName = 'PERC_COFINS_SIMP'
    end
    object sdsRegraTIPO_PIS_SIMP: TStringField
      FieldName = 'TIPO_PIS_SIMP'
      Size = 1
    end
    object sdsRegraTIPO_COFINS_SIMP: TStringField
      FieldName = 'TIPO_COFINS_SIMP'
      Size = 1
    end
  end
  object dspRegra: TDataSetProvider
    DataSet = sdsRegra
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspRegraUpdateError
    Left = 160
    Top = 32
  end
  object cdsRegra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRegra'
    OnNewRecord = cdsRegraNewRecord
    Left = 224
    Top = 32
    object cdsRegraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegraNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRegraFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      Size = 1
    end
    object cdsRegraCALCULA_ST: TStringField
      FieldName = 'CALCULA_ST'
      Size = 1
    end
    object cdsRegraID_CSTPIS: TIntegerField
      FieldName = 'ID_CSTPIS'
    end
    object cdsRegraID_CSTCOFINS: TIntegerField
      FieldName = 'ID_CSTCOFINS'
    end
    object cdsRegraPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsRegraPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsRegraTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 1
    end
    object cdsRegraTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 1
    end
    object cdsRegraID_CSTPIS_SIMP: TIntegerField
      FieldName = 'ID_CSTPIS_SIMP'
    end
    object cdsRegraID_CSTCOFINS_SIMP: TIntegerField
      FieldName = 'ID_CSTCOFINS_SIMP'
    end
    object cdsRegraPERC_PIS_SIMP: TFloatField
      FieldName = 'PERC_PIS_SIMP'
    end
    object cdsRegraPERC_COFINS_SIMP: TFloatField
      FieldName = 'PERC_COFINS_SIMP'
    end
    object cdsRegraTIPO_PIS_SIMP: TStringField
      FieldName = 'TIPO_PIS_SIMP'
      Size = 1
    end
    object cdsRegraTIPO_COFINS_SIMP: TStringField
      FieldName = 'TIPO_COFINS_SIMP'
      Size = 1
    end
    object cdsRegrasdsRegra_CFOP: TDataSetField
      FieldName = 'sdsRegra_CFOP'
    end
    object cdsRegrasdsRegra_Itens: TDataSetField
      FieldName = 'sdsRegra_Itens'
    end
  end
  object dsRegra: TDataSource
    DataSet = cdsRegra
    Left = 296
    Top = 32
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 254
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 490
    Top = 254
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 554
    Top = 254
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
  end
  object dsTab_Pis: TDataSource
    DataSet = cdsTab_Pis
    Left = 626
    Top = 254
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 308
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 490
    Top = 308
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 554
    Top = 308
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
  end
  object dsTab_Cofins: TDataSource
    DataSet = cdsTab_Cofins
    Left = 626
    Top = 308
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 378
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 488
    Top = 378
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 552
    Top = 378
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
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 624
    Top = 378
  end
  object dsRegra_Mestre: TDataSource
    DataSet = sdsRegra
    Left = 48
    Top = 64
  end
  object sdsRegra_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT RI.*, ICMS.COD_CST COD_ICMS, IPI.COD_IPI, ENQ.CODIGO COD_' +
      'ENQ'#13#10'FROM REGRA_ITENS RI'#13#10'FULL JOIN TAB_CSTICMS ICMS'#13#10'ON RI.ID_C' +
      'STICMS = ICMS.ID'#13#10'FULL JOIN TAB_CSTIPI IPI'#13#10'ON RI.ID_CSTIPI = IP' +
      'I.ID'#13#10'FULL JOIN TAB_ENQIPI ENQ'#13#10'ON RI.ID_ENQIPI = ENQ.ID'#13#10'WHERE ' +
      'RI.ID = :ID'#13#10#13#10
    DataSource = dsRegra_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 112
    object sdsRegra_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRegra_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRegra_ItensNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsRegra_ItensTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_ItensTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_ItensTIPO_CONSUMIDOR: TStringField
      FieldName = 'TIPO_CONSUMIDOR'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsRegra_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsRegra_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsRegra_ItensOBS_LEI: TStringField
      FieldName = 'OBS_LEI'
      Size = 500
    end
    object sdsRegra_ItensCOD_ICMS: TStringField
      FieldName = 'COD_ICMS'
      ProviderFlags = []
      Size = 3
    end
    object sdsRegra_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object sdsRegra_ItensCOD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      ProviderFlags = []
      Size = 3
    end
    object sdsRegra_ItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      Size = 1
    end
  end
  object cdsRegra_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRegrasdsRegra_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsRegra_ItensCalcFields
    Left = 184
    Top = 112
    object cdsRegra_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRegra_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRegra_ItensNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRegra_ItensTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_ItensTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_ItensTIPO_CONSUMIDOR: TStringField
      FieldName = 'TIPO_CONSUMIDOR'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsRegra_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsRegra_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsRegra_ItensOBS_LEI: TStringField
      FieldName = 'OBS_LEI'
      Size = 500
    end
    object cdsRegra_ItensCOD_ICMS: TStringField
      FieldName = 'COD_ICMS'
      ProviderFlags = []
      Size = 3
    end
    object cdsRegra_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object cdsRegra_ItensCOD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      ProviderFlags = []
      Size = 3
    end
    object cdsRegra_ItensclDesc_Tipo_Empresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Empresa'
      Calculated = True
    end
    object cdsRegra_ItensclDesc_Tipo_Cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Cliente'
      Calculated = True
    end
    object cdsRegra_ItensclDesc_Tipo_Consumidor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Consumidor'
      Calculated = True
    end
    object cdsRegra_ItensclDesc_Pessoa_Cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Pessoa_Cliente'
      Calculated = True
    end
    object cdsRegra_ItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      Size = 1
    end
  end
  object dsRegra_Itens: TDataSource
    DataSet = cdsRegra_Itens
    Left = 256
    Top = 112
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 432
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 488
    Top = 432
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_IPI'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 560
    Top = 432
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
  object dsTab_CSTIPI: TDataSource
    DataSet = cdsTab_CSTIPI
    Left = 632
    Top = 432
  end
  object sdsRegra_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT R.*, PIS.codigo COD_PIS, COFINS.codigo COD_COFINS'#13#10'FROM R' +
      'EGRA R'#13#10'LEFT JOIN tab_pis PIS'#13#10'ON R.id_cstpis = PIS.id'#13#10'LEFT JOI' +
      'N TAB_COFINS COFINS'#13#10'ON R.id_cstcofins = COFINS.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object dspRegra_Consulta: TDataSetProvider
    DataSet = sdsRegra_Consulta
    Left = 488
    Top = 24
  end
  object cdsRegra_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegra_Consulta'
    Left = 520
    Top = 24
    object cdsRegra_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegra_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRegra_ConsultaFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      Size = 1
    end
    object cdsRegra_ConsultaCALCULA_ST: TStringField
      FieldName = 'CALCULA_ST'
      Size = 1
    end
    object cdsRegra_ConsultaID_CSTPIS: TIntegerField
      FieldName = 'ID_CSTPIS'
    end
    object cdsRegra_ConsultaID_CSTCOFINS: TIntegerField
      FieldName = 'ID_CSTCOFINS'
    end
    object cdsRegra_ConsultaPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsRegra_ConsultaPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsRegra_ConsultaTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 1
    end
    object cdsRegra_ConsultaTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 1
    end
    object cdsRegra_ConsultaCOD_PIS: TStringField
      FieldName = 'COD_PIS'
      Size = 2
    end
    object cdsRegra_ConsultaCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 2
    end
  end
  object dsRegra_Consulta: TDataSource
    DataSet = cdsRegra_Consulta
    Left = 560
    Top = 24
  end
  object sdsEnqIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_ENQIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 488
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = sdsEnqIPI
    Left = 488
    Top = 488
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 560
    Top = 488
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
    Left = 632
    Top = 488
  end
  object sdsRegra_CFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT RC.*, CFOP.codcfop'#13#10'FROM REGRA_CFOP RC'#13#10'LEFT JOIN TAB_CFO' +
      'P CFOP'#13#10'ON RC.id_cfop = CFOP.ID'#13#10'WHERE RC.ID = :ID'#13#10
    DataSource = dsRegra_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 168
    object sdsRegra_CFOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_CFOPITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_CFOPID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsRegra_CFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
    end
  end
  object cdsRegra_CFOP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRegrasdsRegra_CFOP
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 184
    Top = 168
    object cdsRegra_CFOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_CFOPITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_CFOPID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsRegra_CFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
    end
  end
  object dsRegra_CFOP: TDataSource
    DataSet = cdsRegra_CFOP
    Left = 272
    Top = 168
  end
  object sdsTab_CSTICMS_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10'WHERE TIPO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 138
  end
  object dspTab_CSTICMS_Simples: TDataSetProvider
    DataSet = sdsTab_CSTICMS_Simples
    Left = 664
    Top = 138
  end
  object cdsTab_CSTICMS_Simples: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspTab_CSTICMS_Simples'
    Left = 728
    Top = 138
    object cdsTab_CSTICMS_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMS_SimplesPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMS_SimplesHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMS_SimplesCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTICMS_SimplesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMS_SimplesNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMS_SimplesUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      Size = 1
    end
    object cdsTab_CSTICMS_SimplesCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object cdsTab_CSTICMS_SimplesPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
  end
  object dsTab_CSTICMS_Simples: TDataSource
    DataSet = cdsTab_CSTICMS_Simples
    Left = 800
    Top = 138
  end
end
