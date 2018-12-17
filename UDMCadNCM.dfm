object DMCadNCM: TDMCadNCM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 352
  Top = 32
  Height = 650
  Width = 951
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UF, PERC_ICMS_INTERNO, IDPAIS'#13#10'FROM UF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 312
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 592
    Top = 312
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 544
    Top = 312
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 648
    Top = 312
  end
  object qVerificar_NCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_NCM'
      'WHERE NCM = :NCM')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 304
    object qVerificar_NCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerificar_NCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qVerificar_NCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object qVerificar_NCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
  end
  object sdsObs_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, OBS'#13#10'FROM OBS_LEI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 360
  end
  object cdsObs_Lei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Lei'
    Left = 592
    Top = 360
    object cdsObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dspObs_Lei: TDataSetProvider
    DataSet = sdsObs_Lei
    Left = 544
    Top = 360
  end
  object dsObs_Lei: TDataSource
    DataSet = cdsObs_Lei
    Left = 648
    Top = 360
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 24
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object sdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object sdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsNCMTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object sdsNCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsNCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object sdsNCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsNCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object sdsNCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object sdsNCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object sdsNCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsNCMID_CFOP2: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsNCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsNCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsNCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object sdsNCMCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
    object sdsNCMIBPT_INATIVO: TStringField
      FieldName = 'IBPT_INATIVO'
      Size = 1
    end
  end
  object sdsNCM_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TAB.*, CASE TIPO_PRODUTO'#13#10'           WHEN '#39'I'#39' THEN '#39'Impor' +
      'tado'#39' '#13#10'           WHEN '#39'N'#39' THEN '#39'Nacional'#39' '#13#10'           WHEN '#39'A' +
      #39' THEN '#39'Ambos'#39#13#10'           ELSE TIPO_PRODUTO'#13#10'           END AS ' +
      'TIPO_PRODUTO_AUX,'#13#10' CASE AJUSTAR_MVA'#13#10'           WHEN '#39'S'#39' THEN '#39 +
      'Optante Simples'#39' '#13#10'           WHEN '#39'G'#39' THEN '#39'Geral'#39' '#13#10'          ' +
      ' WHEN '#39'A'#39' THEN '#39'Ambos'#39#13#10'           WHEN '#39'N'#39' THEN '#39'N'#227'o Ajustar'#39#13#10 +
      '           ELSE AJUSTAR_MVA'#13#10'           END AS AJUSTAR_MVA_AUX'#13#10 +
      'FROM TAB_NCM_UF TAB'#13#10'WHERE TAB.ID = :ID'
    DataSource = sdsNCM_Mestre
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
    Top = 136
    object sdsNCM_UFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCM_UFITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCM_UFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsNCM_UFMVAINTERNO: TFloatField
      FieldName = 'MVAINTERNO'
    end
    object sdsNCM_UFPERC_RED_MVA: TFloatField
      FieldName = 'PERC_RED_MVA'
    end
    object sdsNCM_UFPERC_RED_MVA_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_GERAL'
    end
    object sdsNCM_UFTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsNCM_UFTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsNCM_UFAJUSTAR_MVA: TStringField
      FieldName = 'AJUSTAR_MVA'
      FixedChar = True
      Size = 1
    end
    object sdsNCM_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object sdsNCM_UFID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object sdsNCM_UFPERC_RED_BASE_ST: TFloatField
      FieldName = 'PERC_RED_BASE_ST'
    end
    object sdsNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField
      FieldName = 'PERC_RED_BASE_ST_SIMPLES'
    end
    object sdsNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_GERAL'
    end
    object sdsNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_SIMPLES'
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 288
    Top = 24
  end
  object sdsNCM_Mestre: TDataSource
    DataSet = sdsNCM
    Left = 32
    Top = 80
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNCM'
    OnNewRecord = cdsNCMNewRecord
    Left = 216
    Top = 24
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object cdsNCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMsdsNCM_UF: TDataSetField
      FieldName = 'sdsNCM_UF'
    end
    object cdsNCMsdsNCM_CST: TDataSetField
      FieldName = 'sdsNCM_CST'
    end
    object cdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsNCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object cdsNCMsdsNCM_Uni: TDataSetField
      FieldName = 'sdsNCM_Uni'
    end
    object cdsNCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsNCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsNCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsNCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsNCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object cdsNCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsNCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsNCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
    object cdsNCMIBPT_INATIVO: TStringField
      FieldName = 'IBPT_INATIVO'
      Size = 1
    end
  end
  object cdsNCM_UF: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNCMsdsNCM_UF
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsNCM_UFCalcFields
    Left = 176
    Top = 136
    object cdsNCM_UFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCM_UFITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCM_UFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsNCM_UFMVAINTERNO: TFloatField
      FieldName = 'MVAINTERNO'
    end
    object cdsNCM_UFPERC_RED_MVA: TFloatField
      FieldName = 'PERC_RED_MVA'
    end
    object cdsNCM_UFPERC_RED_MVA_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_GERAL'
    end
    object cdsNCM_UFTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_UFTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_UFAJUSTAR_MVA: TStringField
      FieldName = 'AJUSTAR_MVA'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsNCM_UFID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsNCM_UFclOBS: TStringField
      FieldKind = fkCalculated
      FieldName = 'clOBS'
      Size = 250
      Calculated = True
    end
    object cdsNCM_UFclTIPO_PRODUTO_AUX: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTIPO_PRODUTO_AUX'
      Calculated = True
    end
    object cdsNCM_UFclAJUSTAR_MVA_AUX: TStringField
      FieldKind = fkCalculated
      FieldName = 'clAJUSTAR_MVA_AUX'
      Calculated = True
    end
    object cdsNCM_UFPERC_RED_BASE_ST: TFloatField
      FieldName = 'PERC_RED_BASE_ST'
    end
    object cdsNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField
      FieldName = 'PERC_RED_BASE_ST_SIMPLES'
    end
    object cdsNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_GERAL'
    end
    object cdsNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_SIMPLES'
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 24
  end
  object dsNCM_UF: TDataSource
    DataSet = cdsNCM_UF
    Left = 248
    Top = 136
  end
  object qOBS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM OBS_LEI'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 248
    object qOBSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOBSNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qOBSOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object sdsNCM_CST: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM_CST'#13#10'WHERE ID = :ID'
    DataSource = sdsNCM_Mestre
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
    Top = 216
    object sdsNCM_CSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCM_CSTITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNCM_CSTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsNCM_CSTID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object sdsNCM_CSTPERC_FCP: TFloatField
      FieldName = 'PERC_FCP'
    end
  end
  object cdsNCM_CST: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNCMsdsNCM_CST
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsNCM_CSTCalcFields
    Left = 176
    Top = 216
    object cdsNCM_CSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCM_CSTITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNCM_CSTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsNCM_CSTID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsNCM_CSTclCod_CST_ICMS: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCod_CST_ICMS'
      Size = 3
      Calculated = True
    end
    object cdsNCM_CSTclPerc_CST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_CST'
      Calculated = True
    end
    object cdsNCM_CSTPERC_FCP: TFloatField
      FieldName = 'PERC_FCP'
    end
  end
  object dsNCM_CST: TDataSource
    DataSet = cdsNCM_CST
    Left = 248
    Top = 216
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 497
    Top = 406
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 544
    Top = 406
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 592
    Top = 406
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
    Left = 648
    Top = 406
  end
  object qCSTICMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, COD_CST, PERCENTUAL'
      'FROM TAB_CSTICMS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 248
    object qCSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object qCSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object sdsNCM_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.*, I.cod_ipi, IBPT.codigo NCM_IBPT , IBPT.dt_final DT_I' +
      'BPTFIM,'#13#10'case'#13#10'  WHEN IBPT.CODIGO IS NULL THEN '#39'SEM IBPT'#39#13#10'  els' +
      'e '#39#39#13#10'  END ACHOU_IBPT'#13#10#13#10'FROM TAB_NCM N'#13#10'LEFT JOIN tab_cstipi I' +
      #13#10'ON N.id_cstipi = I.ID'#13#10'LEFT JOIN tab_ibpt IBPT'#13#10'ON N.ncm = IBP' +
      'T.codigo'#13#10'AND IBPT.ex = '#39#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 8
  end
  object dspNCM_Consulta: TDataSetProvider
    DataSet = sdsNCM_Consulta
    Left = 480
    Top = 8
  end
  object cdsNCM_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM_Consulta'
    Left = 512
    Top = 8
    object cdsNCM_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCM_ConsultaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCM_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCM_ConsultaPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCM_ConsultaGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object cdsNCM_ConsultaUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsNCM_ConsultaTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNCM_ConsultaCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
    object cdsNCM_ConsultaCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsNCM_ConsultaIBPT_INATIVO: TStringField
      FieldName = 'IBPT_INATIVO'
      Size = 1
    end
    object cdsNCM_ConsultaACHOU_IBPT: TStringField
      FieldName = 'ACHOU_IBPT'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsNCM_ConsultaDT_IBPTFIM: TDateField
      FieldName = 'DT_IBPTFIM'
    end
    object cdsNCM_ConsultaNCM_IBPT: TStringField
      FieldName = 'NCM_IBPT'
      Size = 10
    end
  end
  object dsNCM_Consulta: TDataSource
    DataSet = cdsNCM_Consulta
    Left = 544
    Top = 8
  end
  object qCest: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CEST'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CEST'
      'WHERE COD_CEST = :COD_CEST')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 112
    object qCestCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object qCestNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qCestDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 600
    end
  end
  object sdsTab_Cest: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select COUNT(1) CONTADOR,  c.ncm'#13#10'from tab_cest c'#13#10'GROUP BY C.nc' +
      'm'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 128
  end
  object dspTab_Cest: TDataSetProvider
    DataSet = sdsTab_Cest
    Left = 560
    Top = 128
  end
  object cdsTab_Cest: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Cest'
    Left = 592
    Top = 128
    object cdsTab_CestCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
    object cdsTab_CestNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
  end
  object sdsNCMAux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.NCM, N.COD_CEST'#13#10'FROM TAB_NCM N'#13#10'WHERE N.ncm LIKE' +
      ' :NCM || '#39'%'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 184
  end
  object dspNCMAux: TDataSetProvider
    DataSet = sdsNCMAux
    Left = 552
    Top = 184
  end
  object cdsNCMAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCMAux'
    Left = 584
    Top = 184
    object cdsNCMAuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMAuxNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMAuxCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
  end
  object qCestAux: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CEST'
      'WHERE NCM = :NCM')
    SQLConnection = dmDatabase.scoDados
    Left = 648
    Top = 184
    object qCestAuxCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object qCestAuxNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qCestAuxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 600
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42450.581960740700000000
    ReportOptions.LastChange = 42450.622028217590000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 216
    Top = 415
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
    Left = 256
    Top = 415
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 296
    Top = 415
  end
  object frxRichObject1: TfrxRichObject
    Left = 328
    Top = 415
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxNCM_Consulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NCM=NCM'
      'NOME=NOME'
      'PERC_RED_STRIB=PERC_RED_STRIB'
      'GERAR_ST=GERAR_ST'
      'INATIVO=INATIVO'
      'TIPO_AS=TIPO_AS'
      'COD_PRINCIPAL=COD_PRINCIPAL'
      'USAR_MVA_UF_DESTINO=USAR_MVA_UF_DESTINO'
      'COD_CEST=COD_CEST')
    DataSource = dsNCM_Consulta
    BCDToCurrency = False
    Left = 216
    Top = 463
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM unidade'#13#10'WHERE EXPORTACAO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 497
    Top = 470
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 544
    Top = 470
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 592
    Top = 470
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 648
    Top = 470
  end
  object sdsUnidade_Conv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT U.*'#13#10'FROM UNIDADE_CONV U'#13#10'WHERE U.unidade_conv = :UNIDADE' +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 497
    Top = 518
  end
  object dspUnidade_Conv: TDataSetProvider
    DataSet = sdsUnidade_Conv
    Left = 544
    Top = 518
  end
  object cdsUnidade_Conv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade_Conv'
    Left = 592
    Top = 518
    object cdsUnidade_ConvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidade_ConvITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsUnidade_ConvUNIDADE_CONV: TStringField
      FieldName = 'UNIDADE_CONV'
      Size = 6
    end
    object cdsUnidade_ConvNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsUnidade_ConvQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsUnidade_ConvTIPO_CONVERSOR: TStringField
      FieldName = 'TIPO_CONVERSOR'
      FixedChar = True
      Size = 1
    end
  end
  object dsUnidade_Conv: TDataSource
    DataSet = cdsUnidade_Conv
    Left = 648
    Top = 518
  end
  object sdsNCM_Uni: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM_UNI'#13#10'WHERE ID = :ID'
    DataSource = sdsNCM_Mestre
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
    Top = 272
    object sdsNCM_UniID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNCM_UniUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsNCM_UniITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
  end
  object cdsNCM_Uni: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNCMsdsNCM_Uni
    IndexFieldNames = 'ID;UNIDADE'
    Params = <>
    OnCalcFields = cdsNCM_UniCalcFields
    Left = 176
    Top = 272
    object cdsNCM_UniID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCM_UniUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsNCM_UniITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
    object cdsNCM_UniQtd: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qtd'
      Calculated = True
    end
  end
  object dsNCM_Uni: TDataSource
    DataSet = cdsNCM_Uni
    Left = 248
    Top = 272
  end
  object qUnidade_Conv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT U.unidade, u.item, u.qtd'
      'FROM UNIDADE_CONV U'
      'WHERE U.UNIDADE = :UNIDADE'
      '  and U.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 512
    object qUnidade_ConvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qUnidade_ConvITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qUnidade_ConvQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 730
    Top = 222
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 770
    Top = 222
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 818
    Top = 222
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
    Left = 866
    Top = 222
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 730
    Top = 276
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 770
    Top = 276
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 818
    Top = 276
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
    Left = 866
    Top = 276
  end
  object sdsCFOP2: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 112
  end
  object dspCFOP2: TDataSetProvider
    DataSet = sdsCFOP2
    Left = 768
    Top = 112
  end
  object cdsCFOP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP'
    Params = <>
    ProviderName = 'dspCFOP2'
    Left = 808
    Top = 112
    object cdsCFOP2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOP2CODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOP2NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsCFOP2: TDataSource
    DataSet = cdsCFOP2
    Left = 840
    Top = 112
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 729
    Top = 374
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 760
    Top = 374
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 792
    Top = 374
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
    Left = 824
    Top = 374
  end
  object qParametros_NFE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TOKEN_IBPT'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 168
    object qParametros_NFETOKEN_IBPT: TStringField
      FieldName = 'TOKEN_IBPT'
      Size = 130
    end
  end
  object qIBPT: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT I.*'
      'FROM tab_ibpt I'
      'WHERE I.CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 240
    object qIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qIBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object qIBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object qIBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object qIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object qIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object qIBPTPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
    end
    object qIBPTPERC_MUNICIPAL: TFloatField
      FieldName = 'PERC_MUNICIPAL'
    end
    object qIBPTDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object qIBPTDT_FINAL: TDateField
      FieldName = 'DT_FINAL'
    end
    object qIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object qIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object qIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 30
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TIPO_LEI_TRANSPARENCIA'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 328
    object qParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
  end
end
