object DMCadCFOP: TDMCadCFOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 255
  Top = 72
  Height = 591
  Width = 1007
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPOBS_CLASSIFICACAO: TMemoField
      FieldName = 'OBS_CLASSIFICACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object sdsCFOPGERAR_DESONERACAO_ICMS: TStringField
      FieldName = 'GERAR_DESONERACAO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPBAIXAR_FUT: TStringField
      FieldName = 'BAIXAR_FUT'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField
      FieldName = 'CALCULAR_ICMS_DIFERIDO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_REGRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 10
    end
    object sdsCFOPNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 250
    end
    object sdsCFOPFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_COFINS_SIMP: TIntegerField
      FieldName = 'ID_COFINS_SIMP'
    end
    object sdsCFOPID_PIS_SIMP: TIntegerField
      FieldName = 'ID_PIS_SIMP'
    end
    object sdsCFOPTIPO_PIS_SIMP: TStringField
      FieldName = 'TIPO_PIS_SIMP'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS_SIMP: TStringField
      FieldName = 'TIPO_COFINS_SIMP'
      Size = 2
    end
    object sdsCFOPPERC_COFINS_SIMP: TFloatField
      FieldName = 'PERC_COFINS_SIMP'
    end
    object sdsCFOPPERC_PIS_SIMP: TFloatField
      FieldName = 'PERC_PIS_SIMP'
    end
    object sdsCFOPID_REGRA: TIntegerField
      FieldName = 'ID_REGRA'
    end
    object sdsCFOPNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsCFOPGERAR_CUSTO_MEDIO: TStringField
      FieldName = 'GERAR_CUSTO_MEDIO'
      Size = 1
    end
    object sdsCFOPUSA_UNIDADE_TRIB: TStringField
      FieldName = 'USA_UNIDADE_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPALT_NCM_CUSTO: TStringField
      FieldName = 'ALT_NCM_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCFOPUpdateError
    Left = 160
    Top = 32
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCFOP'
    OnNewRecord = cdsCFOPNewRecord
    Left = 224
    Top = 32
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      DisplayLabel = 'Gerar ICMS'
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      DisplayLabel = 'Gerar Duplicata'
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      DisplayLabel = 'Somar no Vlr. dos Produtos'
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      DisplayLabel = 'Nome Interno'
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      DisplayLabel = 'Gerar ICMS Simples'
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPO_EMPRESA'
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
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      DisplayLabel = 'Beneficiamento'
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPsdsCFOP_Variacao: TDataSetField
      FieldName = 'sdsCFOP_Variacao'
    end
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPOBS_CLASSIFICACAO: TMemoField
      FieldName = 'OBS_CLASSIFICACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
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
    object cdsCFOPUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField
      FieldName = 'CALCULAR_ICMS_DIFERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_REGRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 10
    end
    object cdsCFOPNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 250
    end
    object cdsCFOPFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_COFINS_SIMP: TIntegerField
      FieldName = 'ID_COFINS_SIMP'
    end
    object cdsCFOPID_PIS_SIMP: TIntegerField
      FieldName = 'ID_PIS_SIMP'
    end
    object cdsCFOPTIPO_PIS_SIMP: TStringField
      FieldName = 'TIPO_PIS_SIMP'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS_SIMP: TStringField
      FieldName = 'TIPO_COFINS_SIMP'
      Size = 2
    end
    object cdsCFOPPERC_COFINS_SIMP: TFloatField
      FieldName = 'PERC_COFINS_SIMP'
    end
    object cdsCFOPPERC_PIS_SIMP: TFloatField
      FieldName = 'PERC_PIS_SIMP'
    end
    object cdsCFOPID_REGRA: TIntegerField
      FieldName = 'ID_REGRA'
    end
    object cdsCFOPNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsCFOPGERAR_CUSTO_MEDIO: TStringField
      FieldName = 'GERAR_CUSTO_MEDIO'
      Size = 1
    end
    object cdsCFOPUSA_UNIDADE_TRIB: TStringField
      FieldName = 'USA_UNIDADE_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPALT_NCM_CUSTO: TStringField
      FieldName = 'ALT_NCM_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
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
    Left = 314
    Top = 254
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 386
    Top = 254
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 450
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
    Left = 522
    Top = 254
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 314
    Top = 308
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 386
    Top = 308
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 450
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
    Left = 522
    Top = 308
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 378
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 384
    Top = 378
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 448
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
    Left = 520
    Top = 378
  end
  object dsCFOP_Mestre: TDataSource
    DataSet = sdsCFOP
    Left = 56
    Top = 104
  end
  object sdsCFOP_Variacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFOP.*, ICMS.COD_CST COD_ICMS, IPI.COD_IPI, ENQ.CODIGO CO' +
      'D_ENQ,'#13#10'CASE'#13#10'  WHEN CFOP.tipo_consumidor = 0 THEN '#39'Normal'#39#13#10'  W' +
      'HEN CFOP.tipo_consumidor = 1 THEN '#39'Final'#39#13#10'  end DESC_TIPO_CONSU' +
      'MIDOR,'#13#10'CASE'#13#10'  WHEN CFOP.tipo_empresa = '#39'G'#39' THEN '#39'Geral'#39#13#10'  WHE' +
      'N CFOP.tipo_empresa = '#39'S'#39' THEN '#39'Simples'#39#13#10'  end DESC_TIPO_EMPRES' +
      'A,'#13#10'CASE'#13#10'  WHEN CFOP.tipo_cliente = '#39'G'#39' THEN '#39'Geral'#39#13#10'  WHEN CF' +
      'OP.tipo_cliente = '#39'S'#39' THEN '#39'Simples'#39#13#10'  end DESC_TIPO_CLIENTE,'#13#10 +
      'CASE'#13#10'  WHEN CFOP.pessoa_cliente = '#39'J'#39' THEN '#39'Jur'#237'dica'#39#13#10'  WHEN C' +
      'FOP.pessoa_cliente = '#39'F'#39' THEN '#39'F'#237'sica'#39#13#10'  end DESC_PESSOA_CLIENT' +
      'E'#13#10'FROM TAB_CFOP_VARIACAO CFOP'#13#10'FULL JOIN TAB_CSTICMS ICMS'#13#10'ON C' +
      'FOP.ID_CSTICMS = ICMS.ID'#13#10'FULL JOIN TAB_CSTIPI IPI'#13#10'ON CFOP.ID_C' +
      'STIPI = IPI.ID'#13#10'FULL JOIN TAB_ENQIPI ENQ'#13#10'ON CFOP.ID_ENQIPI = EN' +
      'Q.ID'#13#10#13#10'WHERE CFOP.ID = :ID'#13#10#13#10
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
    Left = 56
    Top = 168
    object sdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOP_VariacaoCOD_ICMS: TStringField
      FieldName = 'COD_ICMS'
      ProviderFlags = []
      Size = 3
    end
    object sdsCFOP_VariacaoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
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
    object sdsCFOP_VariacaoID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object sdsCFOP_VariacaoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsCFOP_VariacaoCOD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      ProviderFlags = []
      Size = 3
    end
    object sdsCFOP_VariacaoTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsCFOP_VariacaoTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsCFOP_VariacaoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoDESC_TIPO_CONSUMIDOR: TStringField
      FieldName = 'DESC_TIPO_CONSUMIDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object sdsCFOP_VariacaoDESC_TIPO_EMPRESA: TStringField
      FieldName = 'DESC_TIPO_EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsCFOP_VariacaoDESC_TIPO_CLIENTE: TStringField
      FieldName = 'DESC_TIPO_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsCFOP_VariacaoDESC_PESSOA_CLIENTE: TStringField
      FieldName = 'DESC_PESSOA_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
  end
  object cdsCFOP_Variacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCFOPsdsCFOP_Variacao
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsCFOP_VariacaoBeforePost
    OnCalcFields = cdsCFOP_VariacaoCalcFields
    OnNewRecord = cdsCFOP_VariacaoNewRecord
    Left = 168
    Top = 168
    object cdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOP_VariacaoCOD_ICMS: TStringField
      FieldName = 'COD_ICMS'
      ProviderFlags = []
      Size = 3
    end
    object cdsCFOP_VariacaoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
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
    object cdsCFOP_VariacaoID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsCFOP_VariacaoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsCFOP_VariacaoCOD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      ProviderFlags = []
      Size = 3
    end
    object cdsCFOP_VariacaoTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsCFOP_VariacaoTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsCFOP_VariacaoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoDESC_TIPO_CONSUMIDOR: TStringField
      FieldName = 'DESC_TIPO_CONSUMIDOR'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object cdsCFOP_VariacaoDESC_TIPO_EMPRESA: TStringField
      FieldName = 'DESC_TIPO_EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object cdsCFOP_VariacaoDESC_TIPO_CLIENTE: TStringField
      FieldName = 'DESC_TIPO_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object cdsCFOP_VariacaoDESC_PESSOA_CLIENTE: TStringField
      FieldName = 'DESC_PESSOA_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object cdsCFOP_VariacaoclDesc_Tipo_Consumidor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Consumidor'
      Calculated = True
    end
    object cdsCFOP_VariacaoclDesc_Tipo_Empresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Empresa'
      Calculated = True
    end
    object cdsCFOP_VariacaoclDesc_Tipo_Cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Tipo_Cliente'
      Calculated = True
    end
    object cdsCFOP_VariacaoclDesc_Pessoa_Cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDesc_Pessoa_Cliente'
      Size = 15
      Calculated = True
    end
  end
  object dsCFOP_Variacao: TDataSource
    DataSet = cdsCFOP_Variacao
    Left = 264
    Top = 168
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 432
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 384
    Top = 432
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_IPI'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 456
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
    Left = 528
    Top = 432
  end
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 160
  end
  object dspOperaca_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 400
    Top = 160
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperaca_Nota'
    Left = 432
    Top = 160
    object cdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 496
    Top = 160
  end
  object sdsCFOP_Ori: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CFOP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 296
  end
  object dspCFOP_Ori: TDataSetProvider
    DataSet = sdsCFOP_Ori
    Left = 128
    Top = 296
  end
  object cdsCFOP_Ori: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP_Ori'
    Left = 192
    Top = 296
    object cdsCFOP_OriCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 4
    end
    object cdsCFOP_OriCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object cdsCFOP_OriCFNOTA: TMemoField
      FieldName = 'CFNOTA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qVerifica: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CFOP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) NUM_REGISTRO,'
      '  (SELECT COUNT(1) NUM_REGISTRO2'
      '    FROM PEDIDO_ITEM PI'
      '    WHERE PI.ID_CFOP = :ID_CFOP)'
      'FROM NOTAFISCAL_ITENS I'
      'WHERE I.ID_CFOP = :ID_CFOP')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 208
    object qVerificaNUM_REGISTRO: TIntegerField
      FieldName = 'NUM_REGISTRO'
      Required = True
    end
    object qVerificaNUM_REGISTRO2: TIntegerField
      FieldName = 'NUM_REGISTRO2'
    end
  end
  object sdsObs_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_LEI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 197
  end
  object dspObs_Lei: TDataSetProvider
    DataSet = sdsObs_Lei
    Left = 584
    Top = 197
  end
  object cdsObs_Lei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Lei'
    Left = 624
    Top = 197
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
  object dsObs_Lei: TDataSource
    DataSet = cdsObs_Lei
    Left = 664
    Top = 197
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 272
    object qParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PERC_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO_IMP'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
  end
  object qVerifica_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODCFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, CODCFOP'
      'FROM TAB_CFOP'
      'WHERE CODCFOP = :CODCFOP')
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 336
    object qVerifica_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_CFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
  end
  object sdsCFOP_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.ID, T.CODCFOP, T.NOME, T.gerar_ipi, T.gerar_icms, T.ger' +
      'ar_duplicata,'#13#10'T.somar_vlrtotalproduto, T.gerar_icms_simples, T.' +
      'tipo_empresa, T.beneficiamento, T.nome_interno, T.INATIVO'#13#10'FROM ' +
      'TAB_CFOP T'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object dspCFOP_Consulta: TDataSetProvider
    DataSet = sdsCFOP_Consulta
    Left = 488
    Top = 24
  end
  object cdsCFOP_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP_Consulta'
    Left = 520
    Top = 24
    object cdsCFOP_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOP_ConsultaCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOP_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOP_ConsultaGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaGERAR_ICMS: TStringField
      DisplayLabel = 'Gerar ICMS'
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaGERAR_DUPLICATA: TStringField
      DisplayLabel = 'Gerar Duplicata'
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaSOMAR_VLRTOTALPRODUTO: TStringField
      DisplayLabel = 'Somar No Total do Produto'
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaGERAR_ICMS_SIMPLES: TStringField
      DisplayLabel = 'Gerar ICMS Simples'
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaTIPO_EMPRESA: TStringField
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaBENEFICIAMENTO: TStringField
      DisplayLabel = 'Beneficiamento'
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ConsultaNOME_INTERNO: TStringField
      DisplayLabel = 'Nome Interno'
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOP_ConsultaINATIVO: TStringField
      DisplayLabel = 'Inativo'
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP_Consulta: TDataSource
    DataSet = cdsCFOP_Consulta
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
    Left = 312
    Top = 488
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = sdsEnqIPI
    Left = 384
    Top = 488
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 456
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
    Left = 528
    Top = 488
  end
  object dsmImpAux: TDataSource
    DataSet = mImpAux
    Left = 88
    Top = 360
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42423.001568946800000000
    ReportOptions.LastChange = 42996.639654976850000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 712
    Top = 399
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
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 768
    Top = 399
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
    Left = 808
    Top = 399
  end
  object frxRichObject1: TfrxRichObject
    Left = 840
    Top = 399
  end
  object frxCFOP_Imp: TfrxDBDataset
    UserName = 'frxCFOP_Imp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CODCFOP=CODCFOP'
      'NOME=NOME'
      'GERAR_IPI=GERAR_IPI'
      'GERAR_ICMS=GERAR_ICMS'
      'GERAR_DUPLICATA=GERAR_DUPLICATA'
      'SOMAR_VLRTOTALPRODUTO=SOMAR_VLRTOTALPRODUTO'
      'GERAR_ICMS_SIMPLES=GERAR_ICMS_SIMPLES'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'BENEFICIAMENTO=BENEFICIAMENTO'
      'NOME_INTERNO=NOME_INTERNO'
      'INATIVO=INATIVO'
      'SUBSTITUICAO_TRIB=SUBSTITUICAO_TRIB'
      'CALCULAR_ICMS_DIFERIDO=CALCULAR_ICMS_DIFERIDO'
      'GERAR_DESONERACAO_ICMS=GERAR_DESONERACAO_ICMS'
      'GERAR_TRIBUTO=GERAR_TRIBUTO'
      'TIPO_IND_VEN=TIPO_IND_VEN'
      'FATURAMENTO=FATURAMENTO'
      'MAOOBRA=MAOOBRA'
      'DEVOLUCAO=DEVOLUCAO'
      'COPIARNOTATRIANGULAR=COPIARNOTATRIANGULAR'
      'USA_NFCE=USA_NFCE'
      'USA_UNIDADE_TRIB=USA_UNIDADE_TRIB'
      'NFEFINALIDADE=NFEFINALIDADE'
      'GERAR_ESTOQUE=GERAR_ESTOQUE'
      'GERAR_ESTOQUE_MP=GERAR_ESTOQUE_MP'
      'GERAR_CUSTO_MEDIO=GERAR_CUSTO_MEDIO'
      'PERC_TRIBUTO=PERC_TRIBUTO'
      'NOME_VARIACAO=NOME_VARIACAO'
      'ITEM=ITEM'
      'CALCULAR_ST=CALCULAR_ST'
      'TIPO_EMPRESA_1=TIPO_EMPRESA_1'
      'TIPO_CLIENTE=TIPO_CLIENTE'
      'UF_CLIENTE=UF_CLIENTE'
      'PESSOA_CLIENTE=PESSOA_CLIENTE'
      'TIPO_CONSUMIDOR=TIPO_CONSUMIDOR'
      'COD_CST=COD_CST'
      'COD_IPI=COD_IPI'
      'ENQIPI=ENQIPI')
    DataSource = dsCFOP_Imp
    BCDToCurrency = False
    Left = 688
    Top = 463
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxCFOP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CODCFOP=CODCFOP'
      'NOME=NOME'
      'GERAR_IPI=GERAR_IPI'
      'GERAR_ICMS=GERAR_ICMS'
      'GERAR_DUPLICATA=GERAR_DUPLICATA'
      'SOMAR_VLRTOTALPRODUTO=SOMAR_VLRTOTALPRODUTO'
      'NOME_INTERNO=NOME_INTERNO'
      'ID_CSTICMS=ID_CSTICMS'
      'ID_CSTIPI=ID_CSTIPI'
      'COPIARNOTATRIANGULAR=COPIARNOTATRIANGULAR'
      'ID_PIS=ID_PIS'
      'ID_COFINS=ID_COFINS'
      'TIPO_PIS=TIPO_PIS'
      'TIPO_COFINS=TIPO_COFINS'
      'GERAR_ICMS_SIMPLES=GERAR_ICMS_SIMPLES'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'SUBSTITUICAO_TRIB=SUBSTITUICAO_TRIB'
      'MVA=MVA'
      'PERC_COFINS=PERC_COFINS'
      'PERC_PIS=PERC_PIS'
      'LEI=LEI'
      'BENEFICIAMENTO=BENEFICIAMENTO'
      'sdsCFOP_Variacao=sdsCFOP_Variacao'
      'ENTRADASAIDA=ENTRADASAIDA'
      'MAOOBRA=MAOOBRA'
      'OBS_CLASSIFICACAO=OBS_CLASSIFICACAO'
      'GERAR_TRIBUTO=GERAR_TRIBUTO'
      'PERC_TRIBUTO=PERC_TRIBUTO'
      'TIPO_IND_VEN=TIPO_IND_VEN'
      'INATIVO=INATIVO'
      'DEVOLUCAO=DEVOLUCAO'
      'GERAR_ESTOQUE_MP=GERAR_ESTOQUE_MP'
      'ID_OBS_LEI=ID_OBS_LEI'
      'GERAR_DESONERACAO_ICMS=GERAR_DESONERACAO_ICMS'
      'GERAR_ESTOQUE=GERAR_ESTOQUE'
      'BAIXAR_FUT=BAIXAR_FUT'
      'USA_NFCE=USA_NFCE'
      'CALCULAR_ICMS_DIFERIDO=CALCULAR_ICMS_DIFERIDO'
      'USA_REGRA_ORGAO_PUBLICO=USA_REGRA_ORGAO_PUBLICO'
      'NOME_ORIGINAL=NOME_ORIGINAL'
      'FATURAMENTO=FATURAMENTO'
      'ID_COFINS_SIMP=ID_COFINS_SIMP'
      'ID_PIS_SIMP=ID_PIS_SIMP'
      'TIPO_PIS_SIMP=TIPO_PIS_SIMP'
      'TIPO_COFINS_SIMP=TIPO_COFINS_SIMP'
      'PERC_COFINS_SIMP=PERC_COFINS_SIMP'
      'PERC_PIS_SIMP=PERC_PIS_SIMP'
      'ID_REGRA=ID_REGRA'
      'NFEFINALIDADE=NFEFINALIDADE'
      'GERAR_CUSTO_MEDIO=GERAR_CUSTO_MEDIO'
      'USA_UNIDADE_TRIB=USA_UNIDADE_TRIB')
    DataSource = dsCFOP
    BCDToCurrency = False
    Left = 776
    Top = 479
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxCFOP_Variacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_CSTICMS=ID_CSTICMS'
      'ID_CSTIPI=ID_CSTIPI'
      'COD_ICMS=COD_ICMS'
      'COD_IPI=COD_IPI'
      'ID_PIS=ID_PIS'
      'ID_COFINS=ID_COFINS'
      'ID_OPERACAO_NOTA=ID_OPERACAO_NOTA'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'TIPO_CLIENTE=TIPO_CLIENTE'
      'UF_CLIENTE=UF_CLIENTE'
      'FINALIDADE=FINALIDADE'
      'CONTROLAR_ICMS=CONTROLAR_ICMS'
      'CONTROLAR_REDUCAO=CONTROLAR_REDUCAO'
      'CONTROLAR_IPI=CONTROLAR_IPI'
      'CONTROLAR_SUBSTICMS=CONTROLAR_SUBSTICMS'
      'CONTROLAR_DIFERIMENTO=CONTROLAR_DIFERIMENTO'
      'NOME=NOME'
      'PESSOA_CLIENTE=PESSOA_CLIENTE'
      'LEI=LEI'
      'PERC_TRIBUTO=PERC_TRIBUTO'
      'PERC_PIS=PERC_PIS'
      'PERC_COFINS=PERC_COFINS'
      'TIPO_PIS=TIPO_PIS'
      'TIPO_COFINS=TIPO_COFINS'
      'ID_OBS_LEI=ID_OBS_LEI'
      'ID_ENQIPI=ID_ENQIPI'
      'COD_ENQ=COD_ENQ')
    DataSource = dsCFOP_Variacao
    BCDToCurrency = False
    Left = 864
    Top = 455
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 288
    object qParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField
      FieldName = 'USA_TIPO_CONTR_VARIACAO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsRegra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGRA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 88
  end
  object dspRegra: TDataSetProvider
    DataSet = sdsRegra
    Left = 552
    Top = 88
  end
  object cdsRegra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspRegra'
    Left = 584
    Top = 88
    object cdsRegraID: TIntegerField
      FieldName = 'ID'
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
  end
  object dsRegra: TDataSource
    DataSet = cdsRegra
    Left = 616
    Top = 88
  end
  object sdsTab_CSTICMS_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10'WHERE TIPO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 146
  end
  object dspTab_CSTICMS_Simples: TDataSetProvider
    DataSet = sdsTab_CSTICMS_Simples
    Left = 728
    Top = 146
  end
  object cdsTab_CSTICMS_Simples: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspTab_CSTICMS_Simples'
    Left = 768
    Top = 146
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
    Top = 146
  end
  object mAuxItens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_Empresa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Cliente'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Consumidor'
        DataType = ftInteger
      end
      item
        Name = 'Pessoa_Cliente'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 856
    Top = 240
    Data = {
      A40000009619E0BD010000001800000005000000000003000000A40004497465
      6D04000100000000000C5469706F5F456D707265736101004900000001000557
      494454480200020001000C5469706F5F436C69656E7465010049000000010005
      57494454480200020001000F5469706F5F436F6E73756D69646F720400010000
      0000000E506573736F615F436C69656E74650100490000000100055749445448
      0200020001000000}
    object mAuxItensItem: TIntegerField
      FieldName = 'Item'
    end
    object mAuxItensTipo_Empresa: TStringField
      FieldName = 'Tipo_Empresa'
      Size = 1
    end
    object mAuxItensTipo_Cliente: TStringField
      FieldName = 'Tipo_Cliente'
      Size = 1
    end
    object mAuxItensTipo_Consumidor: TIntegerField
      FieldName = 'Tipo_Consumidor'
    end
    object mAuxItensPessoa_Cliente: TStringField
      FieldName = 'Pessoa_Cliente'
      Size = 1
    end
  end
  object sdsRegra_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT R.*, ICM.cod_cst, IPI.cod_ipi, ENQ.codigo COD_ENQIPI'#13#10'FRO' +
      'M REGRA_ITENS R'#13#10'LEFT JOIN tab_csticms ICM'#13#10'ON R.id_csticms = IC' +
      'M.id'#13#10'LEFT JOIN tab_cstipi IPI'#13#10'ON R.id_cstipi = IPI.id'#13#10'LEFT JO' +
      'IN tab_enqipi ENQ'#13#10'ON R.id_enqipi = ENQ.id'#13#10'WHERE R.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 56
  end
  object cdsRegra_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegra_Itens'
    Left = 824
    Top = 56
    object cdsRegra_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegra_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
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
    object cdsRegra_ItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      Size = 1
    end
    object cdsRegra_ItensCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsRegra_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsRegra_ItensCOD_ENQIPI: TStringField
      FieldName = 'COD_ENQIPI'
      Size = 3
    end
  end
  object dspRegra_Itens: TDataSetProvider
    DataSet = sdsRegra_Itens
    Left = 784
    Top = 56
  end
  object mImpAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Calcula_ICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Calcula_ICMS_Simples'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Calcula_IPI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Calcula_Subs_Trib'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Calcula_ICMS_Diferido'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Calcula_Desonera'#231#227'o'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Gera_Tributo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Controla_Estoque'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Gera_Custo_Medio'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Baixa_Estoque_Consumo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Gera_Duplicata'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Faturamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Mao_de_Obra'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Devolucao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Controla_Beneficiamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Copia_Nota_Triangular'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Usa_NFCe'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Usa_Unidade_Trib'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODCFOP'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 360
    Data = {
      EA0200009619E0BD010000001800000015000000000003000000EA0202494404
      00010000000000044E6F6D650100490000000100055749445448020002001E00
      0C43616C63756C615F49434D5301004900000001000557494454480200020001
      001443616C63756C615F49434D535F53696D706C657301004900000001000557
      494454480200020001000B43616C63756C615F49504901004900000001000557
      494454480200020001001143616C63756C615F537562735F5472696201004900
      000001000557494454480200020001001543616C63756C615F49434D535F4469
      66657269646F01004900000001000557494454480200020001001343616C6375
      6C615F4465736F6E657261E7E36F010049000000010005574944544802000200
      01000C476572615F5472696275746F0100490000000100055749445448020002
      00010010436F6E74726F6C615F4573746F717565010049000000010005574944
      544802000200010010476572615F437573746F5F4D6564696F01004900000001
      000557494454480200020001001542616978615F4573746F7175655F436F6E73
      756D6F01004900000001000557494454480200020001000E476572615F447570
      6C696361746101004900000001000557494454480200020001000B4661747572
      616D656E746F01004900000001000557494454480200020001000B4D616F5F64
      655F4F6272610100490000000100055749445448020002000100094465766F6C
      7563616F010049000000010005574944544802000200010017436F6E74726F6C
      615F42656E6566696369616D656E746F01004900000001000557494454480200
      0200010015436F7069615F4E6F74615F547269616E67756C6172010049000000
      0100055749445448020002000100085573615F4E464365010049000000010005
      5749445448020002000100105573615F556E69646164655F5472696201004900
      0000010005574944544802000200010007434F4443464F500100490000000100
      0557494454480200020014000000}
    object mImpAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mImpAuxNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object mImpAuxCalcula_ICMS: TStringField
      FieldName = 'Calcula_ICMS'
      Size = 1
    end
    object mImpAuxCalcula_ICMS_Simples: TStringField
      FieldName = 'Calcula_ICMS_Simples'
      Size = 1
    end
    object mImpAuxCalcula_IPI: TStringField
      FieldName = 'Calcula_IPI'
      Size = 1
    end
    object mImpAuxCalcula_Subs_Trib: TStringField
      FieldName = 'Calcula_Subs_Trib'
      Size = 1
    end
    object mImpAuxCalcula_ICMS_Diferido: TStringField
      FieldName = 'Calcula_ICMS_Diferido'
      Size = 1
    end
    object mImpAuxCalcula_Desonerao: TStringField
      FieldName = 'Calcula_Desonera'#231#227'o'
      Size = 1
    end
    object mImpAuxGera_Tributo: TStringField
      FieldName = 'Gera_Tributo'
      Size = 1
    end
    object mImpAuxControla_Estoque: TStringField
      FieldName = 'Controla_Estoque'
      Size = 1
    end
    object mImpAuxGera_Custo_Medio: TStringField
      FieldName = 'Gera_Custo_Medio'
      Size = 1
    end
    object mImpAuxBaixa_Estoque_Consumo: TStringField
      FieldName = 'Baixa_Estoque_Consumo'
      Size = 1
    end
    object mImpAuxGera_Duplicata: TStringField
      FieldName = 'Gera_Duplicata'
      Size = 1
    end
    object mImpAuxFaturamento: TStringField
      FieldName = 'Faturamento'
      Size = 1
    end
    object mImpAuxMao_de_Obra: TStringField
      FieldName = 'Mao_de_Obra'
      Size = 1
    end
    object mImpAuxDevolucao: TStringField
      FieldName = 'Devolucao'
      Size = 1
    end
    object mImpAuxControla_Beneficiamento: TStringField
      FieldName = 'Controla_Beneficiamento'
      Size = 1
    end
    object mImpAuxCopia_Nota_Triangular: TStringField
      FieldName = 'Copia_Nota_Triangular'
      Size = 1
    end
    object mImpAuxUsa_NFCe: TStringField
      FieldName = 'Usa_NFCe'
      Size = 1
    end
    object mImpAuxUsa_Unidade_Trib: TStringField
      FieldName = 'Usa_Unidade_Trib'
      Size = 1
    end
    object mImpAuxCODCFOP: TStringField
      FieldName = 'CODCFOP'
    end
  end
  object sdsCFOP_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select T.ID, T.CODCFOP, T.NOME,'#13#10'       case T.GERAR_IPI'#13#10'      ' +
      '   when '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end' +
      ' GERAR_IPI,'#13#10'       case T.GERAR_ICMS'#13#10'         when '#39'S'#39' then '#39'S' +
      'im'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GERAR_ICMS,'#13#10'     ' +
      '  case T.GERAR_DUPLICATA'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'        ' +
      ' when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GERAR_DUPLICATA,'#13#10'       case T' +
      '.SOMAR_VLRTOTALPRODUTO'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'         w' +
      'hen '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end SOMAR_VLRTOTALPRODUTO,'#13#10'       ca' +
      'se T.GERAR_ICMS_SIMPLES'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'         ' +
      'when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GERAR_ICMS_SIMPLES,'#13#10'       T.TI' +
      'PO_EMPRESA,'#13#10'       case T.BENEFICIAMENTO'#13#10'         when '#39'S'#39' the' +
      'n '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end BENEFICIAMENTO' +
      ','#13#10'       T.NOME_INTERNO,'#13#10'       case T.INATIVO'#13#10'         when ' +
      #39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end INATIVO' +
      ','#13#10'       case T.SUBSTITUICAO_TRIB'#13#10'         when '#39'S'#39' then '#39'Sim'#39 +
      #13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end SUBSTITUICAO_TRIB,'#13#10' ' +
      '      case T.CALCULAR_ICMS_DIFERIDO'#13#10'         when '#39'S'#39' then '#39'Sim' +
      #39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end CALCULAR_ICMS_DIFERI' +
      'DO,'#13#10'       case T.GERAR_DESONERACAO_ICMS'#13#10'         when '#39'S'#39' the' +
      'n '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GERAR_DESONERA' +
      'CAO_ICMS,'#13#10'       case T.GERAR_TRIBUTO'#13#10'         when '#39'S'#39' then '#39 +
      'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GERAR_TRIBUTO,'#13#10' ' +
      '      case T.TIPO_IND_VEN'#13#10'         when '#39'I'#39' then '#39'INDUSTRIALIZA' +
      #199#195'O'#39#13#10'         when '#39'V'#39' then '#39'VENDA'#39#13#10'       end TIPO_IND_VEN,'#13#10 +
      '       case T.FATURAMENTO'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'       ' +
      '  when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end FATURAMENTO,'#13#10'       case T.MA' +
      'OOBRA'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o' +
      #39#13#10'       end MAOOBRA,'#13#10'       case T.DEVOLUCAO'#13#10'         when '#39 +
      'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end DEVOLUCA' +
      'O,'#13#10'       case T.COPIARNOTATRIANGULAR'#13#10'         when '#39'S'#39' then '#39 +
      'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end COPIARNOTATRIANGU' +
      'LAR,'#13#10'       case T.USA_NFCE'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'    ' +
      '     when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end USA_NFCE,'#13#10'       case T.US' +
      'A_UNIDADE_TRIB'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' ' +
      'then '#39'N'#227'o'#39#13#10'       end USA_UNIDADE_TRIB,'#13#10'       case T.NFEFINAL' +
      'IDADE'#13#10'         when '#39'1'#39' then '#39'NORMAL'#39#13#10'         when '#39'2'#39' then '#39 +
      'DEVOLUCAO'#39#13#10'       end NFEFINALIDADE,'#13#10'       case T.GERAR_ESTOQ' +
      'UE'#13#10'         when '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10 +
      '       end GERAR_ESTOQUE,'#13#10'       case T.GERAR_ESTOQUE_MP'#13#10'     ' +
      '    when '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       en' +
      'd GERAR_ESTOQUE_MP,'#13#10'       case T.GERAR_CUSTO_MEDIO'#13#10'         w' +
      'hen '#39'S'#39' then '#39'Sim'#39#13#10'         when '#39'N'#39' then '#39'N'#227'o'#39#13#10'       end GER' +
      'AR_CUSTO_MEDIO,'#13#10'       T.PERC_TRIBUTO, V.NOME as NOME_VARIACAO,' +
      ' V.ITEM,'#13#10'       case V.CALCULAR_ST'#13#10'         when '#39'S'#39' then '#39'Sim' +
      #39#13#10'         else '#39'N'#227'o'#39#13#10'       end CALCULAR_ST,'#13#10'       case V.T' +
      'IPO_EMPRESA'#13#10'         when '#39'S'#39' then '#39'Simples'#39#13#10'         when '#39'G'#39 +
      ' then '#39'Geral'#39#13#10'       end TIPO_EMPRESA,'#13#10'       case V.TIPO_CLIE' +
      'NTE'#13#10'         when '#39'S'#39' then '#39'Simples'#39#13#10'         when '#39'G'#39' then '#39'G' +
      'eral'#39#13#10'       end TIPO_CLIENTE,'#13#10'       case V.UF_CLIENTE'#13#10'     ' +
      '    when '#39'D'#39' then '#39'Dentro'#39#13#10'         when '#39'F'#39' then '#39'Fora'#39#13#10'     ' +
      '  end UF_CLIENTE,'#13#10'       case V.PESSOA_CLIENTE'#13#10'         when '#39 +
      'J'#39' then '#39'Jur'#237'dica'#39#13#10'         when '#39'F'#39' then '#39'F'#237'sica'#39#13#10'       end ' +
      'PESSOA_CLIENTE,'#13#10'       case V.TIPO_CONSUMIDOR'#13#10'         when '#39'0' +
      #39' then '#39'Normal'#39#13#10'         else '#39'Consumidor Final'#39#13#10'       end TI' +
      'PO_CONSUMIDOR,'#13#10'       IC.COD_CST, II.COD_IPI, IE.CODIGO ENQIPI'#13 +
      #10'from TAB_CFOP T'#13#10'left join TAB_CFOP_VARIACAO V on T.ID = V.ID'#13#10 +
      'left join TAB_CSTICMS IC on V.ID_CSTICMS = IC.ID'#13#10'left join TAB_' +
      'CSTIPI II on V.ID_CSTIPI = II.ID'#13#10'left join TAB_ENQIPI IE on V.I' +
      'D_ENQIPI = IE.ID  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 440
  end
  object dspCFOP_Imp: TDataSetProvider
    DataSet = sdsCFOP_Imp
    Left = 88
    Top = 440
  end
  object cdsCFOP_Imp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP_Imp'
    Left = 160
    Top = 432
    object cdsCFOP_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOP_ImpCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOP_ImpNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOP_ImpGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_ImpBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOP_ImpINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpCALCULAR_ICMS_DIFERIDO: TStringField
      FieldName = 'CALCULAR_ICMS_DIFERIDO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_DESONERACAO_ICMS: TStringField
      FieldName = 'GERAR_DESONERACAO_ICMS'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 16
    end
    object cdsCFOP_ImpFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpUSA_UNIDADE_TRIB: TStringField
      FieldName = 'USA_UNIDADE_TRIB'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      FixedChar = True
      Size = 9
    end
    object cdsCFOP_ImpGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpGERAR_CUSTO_MEDIO: TStringField
      FieldName = 'GERAR_CUSTO_MEDIO'
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOP_ImpNOME_VARIACAO: TStringField
      FieldName = 'NOME_VARIACAO'
      Size = 40
    end
    object cdsCFOP_ImpITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsCFOP_ImpCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsCFOP_ImpTIPO_EMPRESA_1: TStringField
      FieldName = 'TIPO_EMPRESA_1'
      FixedChar = True
      Size = 7
    end
    object cdsCFOP_ImpTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 7
    end
    object cdsCFOP_ImpUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 6
    end
    object cdsCFOP_ImpPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 8
    end
    object cdsCFOP_ImpTIPO_CONSUMIDOR: TStringField
      FieldName = 'TIPO_CONSUMIDOR'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsCFOP_ImpCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsCFOP_ImpCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsCFOP_ImpENQIPI: TStringField
      FieldName = 'ENQIPI'
      Size = 3
    end
  end
  object dsCFOP_Imp: TDataSource
    DataSet = cdsCFOP_Imp
    Left = 216
    Top = 440
  end
end
