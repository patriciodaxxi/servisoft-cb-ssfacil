object dmCadProduto: TdmCadProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 45
  Top = 6
  Height = 714
  Width = 1288
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PRO.*'#13#10'FROM PRODUTO PRO'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 1
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object sdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object sdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
    end
    object sdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object sdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object sdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object sdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object sdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object sdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object sdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object sdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object sdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object sdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object sdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object sdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object sdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object sdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object sdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object sdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object sdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object sdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object sdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object sdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object sdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object sdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object sdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object sdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object sdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object sdsProdutoID_MATERIAL_CRU: TIntegerField
      FieldName = 'ID_MATERIAL_CRU'
    end
    object sdsProdutoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object sdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object sdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object sdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object sdsProdutoTESTE: TStringField
      FieldName = 'TESTE'
      Size = 15
    end
    object sdsProdutoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsProdutoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object sdsProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsProdutoMULTIPLICADOR: TFloatField
      FieldName = 'MULTIPLICADOR'
    end
    object sdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
    object sdsProdutoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object sdsProdutoREF_ORD: TStringField
      FieldName = 'REF_ORD'
    end
    object sdsProdutoGERAR_WEB: TStringField
      FieldName = 'GERAR_WEB'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
    object sdsProdutoPOSSUE_LADO: TStringField
      FieldName = 'POSSUE_LADO'
      Size = 1
    end
    object sdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object sdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object sdsProdutoCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object sdsProdutoSEPARA_COR: TStringField
      FieldName = 'SEPARA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object sdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 1
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    BeforePost = cdsProdutoBeforePost
    OnCalcFields = cdsProdutoCalcFields
    OnNewRecord = cdsProdutoNewRecord
    OnReconcileError = cdsProdutoReconcileError
    Left = 114
    Top = 1
    object cdsProdutoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      DisplayLabel = 'Inativo'
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      DisplayLabel = 'ID IPI'
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoTIPO_REG: TStringField
      DisplayLabel = 'Tipo Reg.'
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      DisplayLabel = 'Posso Material'
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      DisplayLabel = 'Material/Outros'
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      DisplayLabel = 'Hora Cadastro'
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      DisplayLabel = 'ID NCM'
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      DisplayLabel = 'C'#243'd. SIT Cupom Fiscal'
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutosdsProduto_Forn: TDataSetField
      FieldName = 'sdsProduto_Forn'
    end
    object cdsProdutosdsProduto_Consumo: TDataSetField
      FieldName = 'sdsProduto_Consumo'
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
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
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdsProduto_Tam: TDataSetField
      FieldName = 'sdsProduto_Tam'
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
      DisplayFormat = '0.00'
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object cdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object cdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object cdsProdutosdsProduto_UF: TDataSetField
      FieldName = 'sdsProduto_UF'
    end
    object cdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProdutosdsProduto_Uni: TDataSetField
      FieldName = 'sdsProduto_Uni'
    end
    object cdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object cdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProdutoNCM: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
      Calculated = True
    end
    object cdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object cdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.00####'
    end
    object cdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object cdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object cdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object cdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object cdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object cdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object cdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object cdsProdutoID_MATERIAL_CRU: TIntegerField
      FieldName = 'ID_MATERIAL_CRU'
    end
    object cdsProdutoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
    end
    object cdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object cdsProdutoPRECO_LIQ: TFloatField
      FieldName = 'PRECO_LIQ'
    end
    object cdsProdutoUSA_CLIQ: TStringField
      FieldName = 'USA_CLIQ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object cdsProdutoTESTE: TStringField
      FieldName = 'TESTE'
      Size = 15
    end
    object cdsProdutoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsProdutoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsProdutoMULTIPLICADOR: TFloatField
      FieldName = 'MULTIPLICADOR'
    end
    object cdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
    object cdsProdutoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object cdsProdutoREF_ORD: TStringField
      FieldName = 'REF_ORD'
    end
    object cdsProdutoGERAR_WEB: TStringField
      FieldName = 'GERAR_WEB'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
    object cdsProdutoPOSSUE_LADO: TStringField
      FieldName = 'POSSUE_LADO'
      Size = 1
    end
    object cdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object cdsProdutoCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object cdsProdutoSEPARA_COR: TStringField
      FieldName = 'SEPARA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 146
    Top = 1
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 560
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 760
    Top = 560
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 792
    Top = 560
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
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 824
    Top = 560
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 59
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 760
    Top = 59
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NCM'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 792
    Top = 59
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
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
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 824
    Top = 59
  end
  object sdsCSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 101
  end
  object dspCSTIPI: TDataSetProvider
    DataSet = sdsCSTIPI
    Left = 760
    Top = 101
  end
  object cdsCSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_IPI'
    Params = <>
    ProviderName = 'dspCSTIPI'
    Left = 792
    Top = 101
    object cdsCSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsCSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsCSTIPI: TDataSource
    DataSet = cdsCSTIPI
    Left = 824
    Top = 101
  end
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 144
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    Left = 760
    Top = 144
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORIGEM'
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 792
    Top = 144
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
    Left = 824
    Top = 144
  end
  object qReferencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT REFERENCIA, ID'
      'FROM PRODUTO '
      'WHERE REFERENCIA = :REFERENCIA'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 197
    object qReferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qReferenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsProduto_Mestre: TDataSource
    DataSet = sdsProduto
    Left = 34
    Top = 25
  end
  object sdsProduto_Forn: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PRO.*'#13#10'FROM PRODUTO_FORN PRO'#13#10'WHERE ID = :ID'
    DataSource = dsProduto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 67
    object sdsProduto_FornID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object sdsProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
      Size = 60
    end
    object sdsProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_FornTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object sdsProduto_FornNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsProduto_FornITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
    object sdsProduto_FornUNIDADE_FORN: TStringField
      FieldName = 'UNIDADE_FORN'
      Size = 6
    end
    object sdsProduto_FornPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object sdsProduto_FornNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
    object sdsProduto_FornCNPJ_FABRICANTE: TStringField
      FieldName = 'CNPJ_FABRICANTE'
      Size = 14
    end
    object sdsProduto_FornCOD_BARRA_PACOTE: TStringField
      FieldName = 'COD_BARRA_PACOTE'
      Size = 14
    end
  end
  object cdsProduto_Forn: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Forn
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsProduto_FornBeforePost
    OnCalcFields = cdsProduto_FornCalcFields
    OnNewRecord = cdsProduto_FornNewRecord
    OnReconcileError = cdsProduto_FornReconcileError
    Left = 114
    Top = 67
    object cdsProduto_FornID: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_FornITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_FornID_FORNECEDOR: TIntegerField
      DisplayLabel = 'ID Fornecedor'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object cdsProduto_FornCOD_MATERIAL_FORN: TStringField
      DisplayLabel = 'C'#243'd. Produto Fornecedor'
      FieldName = 'COD_MATERIAL_FORN'
      Size = 60
    end
    object cdsProduto_FornTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsProduto_FornID_COR: TIntegerField
      DisplayLabel = 'ID Cor'
      FieldName = 'ID_COR'
    end
    object cdsProduto_FornCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_FornTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsProduto_FornNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsProduto_FornITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
    object cdsProduto_FornUNIDADE_FORN: TStringField
      FieldName = 'UNIDADE_FORN'
      Size = 6
    end
    object cdsProduto_FornNOMEFORNECEDOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsProduto_FornPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProduto_FornNOME_COR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_COR'
      Size = 60
      Calculated = True
    end
    object cdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object cdsProduto_FornNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
    object cdsProduto_FornCNPJ_FABRICANTE: TStringField
      FieldName = 'CNPJ_FABRICANTE'
      Size = 14
    end
    object cdsProduto_FornCOD_BARRA_PACOTE: TStringField
      FieldName = 'COD_BARRA_PACOTE'
      Size = 14
    end
  end
  object dsProduto_Forn: TDataSource
    DataSet = cdsProduto_Forn
    Left = 146
    Top = 67
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_FORNECEDOR = '#39'S'#39#13#10'   ' +
      ' OR TP_CLIENTE = '#39'S'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 188
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 760
    Top = 188
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 792
    Top = 188
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 824
    Top = 188
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PRO.*'#13#10'FROM PRODUTO_CONSUMO PRO'#13#10'WHERE PRO.ID = :ID'
    DataSource = dsProduto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 113
    object sdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object sdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProduto_ConsumoTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConsumoESPECIFICO: TStringField
      FieldName = 'ESPECIFICO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Consumo
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsProduto_ConsumoBeforePost
    OnCalcFields = cdsProduto_ConsumoCalcFields
    OnNewRecord = cdsProduto_ConsumoNewRecord
    Left = 114
    Top = 113
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
      DisplayFormat = '0.00000'
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
    object cdsProduto_ConsumoclVlr_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total'
      ProviderFlags = []
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsProduto_ConsumosdsProduto_Consumo_Tam: TDataSetField
      FieldName = 'sdsProduto_Consumo_Tam'
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
    object cdsProduto_ConsumoNOMEMATERIAL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsProduto_ConsumoREFERENCIA: TStringField
      FieldKind = fkCalculated
      FieldName = 'REFERENCIA'
      ProviderFlags = []
      Calculated = True
    end
    object cdsProduto_ConsumoPRECO_CUSTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
      Calculated = True
    end
    object cdsProduto_ConsumoNOME_POSICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_POSICAO'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsProduto_ConsumoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_ConsumoNOME_SETOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_SETOR'
      Size = 40
      Calculated = True
    end
    object cdsProduto_ConsumoclPreco_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPreco_Venda'
      Calculated = True
    end
    object cdsProduto_ConsumoclTIPO_REG: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTIPO_REG'
      Size = 1
      Calculated = True
    end
    object cdsProduto_ConsumoTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoESPECIFICO: TStringField
      FieldName = 'ESPECIFICO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumosdsProduto_Consumo_Proc: TDataSetField
      FieldName = 'sdsProduto_Consumo_Proc'
    end
  end
  object dsProduto_Consumo: TDataSource
    DataSet = cdsProduto_Consumo
    Left = 146
    Top = 113
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, UNIDADE, REFERENCIA, PRECO_CUSTO, PRECO_CUSTO_T' +
      'OTAL'#13#10'FROM PRODUTO'#13#10'WHERE ((TIPO_REG = '#39'M'#39') OR (TIPO_REG = '#39'S'#39'))' +
      #13#10'      AND  INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 236
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 760
    Top = 236
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 792
    Top = 236
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object cdsMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMaterialPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 824
    Top = 236
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 383
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
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
    object qParametrosCADASTRAR_REF_DUP: TStringField
      FieldName = 'CADASTRAR_REF_DUP'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_NO_CONSUMO: TStringField
      FieldName = 'MOSTRAR_NO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_VEICULO: TStringField
      FieldName = 'EMPRESA_VEICULO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_NOME_ETIQUETA: TStringField
      FieldName = 'MOSTRAR_NOME_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_CARTONAGEM: TStringField
      FieldName = 'EMPRESA_CARTONAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_NUM_SERIE_PROD: TStringField
      FieldName = 'USA_NUM_SERIE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosPERC_IPI_PADRAO: TFloatField
      FieldName = 'PERC_IPI_PADRAO'
    end
    object qParametrosID_NCM_PADRAO: TIntegerField
      FieldName = 'ID_NCM_PADRAO'
    end
    object qParametrosUSA_EDI: TStringField
      FieldName = 'USA_EDI'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_FCI: TStringField
      FieldName = 'USA_FCI'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField
      FieldName = 'PRODUTO_PRECO_POR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_MARCAR_PROD: TStringField
      FieldName = 'MOSTRAR_MARCAR_PROD'
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
    object qParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField
      FieldName = 'OPCAO_ESCOLHER_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL_RZ: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL_RZ'
      FixedChar = True
      Size = 1
    end
    object qParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_FORNECEDOR: TStringField
      FieldName = 'USA_PRODUTO_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_LOCALIZACAO: TStringField
      FieldName = 'USA_PRODUTO_LOCALIZACAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_LIVRARIA: TStringField
      FieldName = 'EMPRESA_LIVRARIA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object qParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object qParametrosCALCULAR_PESO_CONSUMO: TStringField
      FieldName = 'CALCULAR_PESO_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO, G.NIVEL, G.SUPERIOR, G.CO' +
      'D_PRINCIPAL, G.TIPO_PROD , G.UNIDADE, G.ID_NCM, '#13#10'CASE NIVEL'#13#10'  ' +
      '         WHEN 5 THEN '#39'          '#39' ||  NOME'#13#10'           WHEN 4 TH' +
      'EN '#39'        '#39' ||  NOME'#13#10'           WHEN 3 THEN '#39'      '#39' ||  NOME' +
      #13#10'           WHEN 2 THEN '#39'    '#39' ||  NOME'#13#10'           WHEN 1 THEN' +
      ' NOME'#13#10'           ELSE G.NOME'#13#10'           END AS NOME_AUX'#13#10'FROM ' +
      'GRUPO G'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 289
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 760
    Top = 289
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 792
    Top = 289
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 40
    end
    object cdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsGrupoTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsGrupoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 824
    Top = 289
  end
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MARCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 374
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    Left = 760
    Top = 374
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca'
    Left = 792
    Top = 374
    object cdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsMarca: TDataSource
    DataSet = cdsMarca
    Left = 824
    Top = 374
  end
  object sdsProduto_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PRO.ID, PRO.NOME, PRO.REFERENCIA, PRO.REFERENCIA_PADRAO, ' +
      'PRO.COMPLEMENTO, PRO.PRECO_CUSTO, PRO.PRECO_VENDA,'#13#10'       PRO.U' +
      'NIDADE, PRO.CA, PRO.INATIVO, PRO.ID_GRUPO, PRO.TIPO_REG, PRO.EST' +
      'OQUE, PRO.ID_NCM, PRO.ORIGEM_PROD,'#13#10'       PRO.PERC_MARGEMLUCRO,' +
      ' PRO.LOCALIZACAO, PRO.ID_MARCA, PRO.COD_BARRA, PRO.SPED_TIPO_ITE' +
      'M, PRO.COD_ANT, PRO.OBS,'#13#10'       PRO.PRECO_CUSTO_TOTAL, NCM.NCM,' +
      ' MARCA.NOME NOMEMARCA, GRUPO.NOME NOMEGRUPO, GRUPO.CODIGO COD_GR' +
      'UPO, PV.PLACA,'#13#10'       PV.NUM_CHASSI, PV.NUM_RENAVAM, PV.ANO_FAB' +
      ', PV.ANO_MOD, PV.MOTORIZACAO, PV.NOME_COR, PV.MARCA MARCA_VEICUL' +
      'O,'#13#10'       PV.MODELO MODELO_VEICULO, PV.COMBUSTIVEL, PV.ESPECIE,' +
      ' PV.DT_ENTRADA, PRO.TAMANHO, PRO.TESTE, PV.DT_VENDA,'#13#10'       GRU' +
      'PO.COD_PRINCIPAL, LI.AUTOR, LI.DTLANCAMENTO, LI.PAGINA, LI.SELO,' +
      ' LI.CICLO, PRO.QTD_EMBALAGEM, PRO.QTD_PECA_EMB,'#13#10'       PRO.LARG' +
      'URA, PRO.ALTURA,PRO.ESPESSURA, PRO.TAM_CALC, PRO.TIPO_PRODUCAO, ' +
      #13#10'       case'#13#10'         when (PRO.TIPO_REG = '#39'P'#39') then '#39'Produto'#39 +
      #13#10'         when (PRO.TIPO_REG = '#39'M'#39') then '#39'Material'#39#13#10'         w' +
      'hen (PRO.TIPO_REG = '#39'N'#39') then '#39'Outros'#39#13#10'         when (PRO.TIPO_' +
      'REG = '#39'C'#39') then '#39'Material Consumo'#39#13#10'         when (PRO.TIPO_REG ' +
      '= '#39'I'#39') then '#39'Imobilizado'#39#13#10'         when (PRO.TIPO_REG = '#39'S'#39') th' +
      'en '#39'Semiacabado'#39#13#10'         else '#39#39#13#10'       end as TIPO_REG_DESCR' +
      'ICAO,'#13#10#13#10'       (select sum(E2.QTD) QTDGERAL'#13#10'        from ESTOQ' +
      'UE_ATUAL E2'#13#10'        where E2.ID_PRODUTO = PRO.ID) QTD_ESTOQUE'#13#10 +
      'from PRODUTO PRO'#13#10'left join TAB_NCM NCM on (PRO.ID_NCM = NCM.ID)' +
      #13#10'left join MARCA on (PRO.ID_MARCA = MARCA.ID)'#13#10'left join GRUPO ' +
      'on (PRO.ID_GRUPO = GRUPO.ID)'#13#10'left join PRODUTO_VEICULO PV on (P' +
      'RO.ID = PV.ID)'#13#10'left join PRODUTO_LIVRO LI on (PRO.ID = LI.ID)  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
  end
  object dspProduto_Consulta: TDataSetProvider
    DataSet = sdsProduto_Consulta
    OnUpdateError = dspProdutoUpdateError
    Left = 466
  end
  object cdsProduto_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspProduto_Consulta'
    Left = 496
    object cdsProduto_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsultaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_ConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaCA: TStringField
      FieldName = 'CA'
    end
    object cdsProduto_ConsultaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProduto_ConsultaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProduto_ConsultaORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProduto_ConsultaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProduto_ConsultaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProduto_ConsultaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProduto_ConsultaNOMEMARCA: TStringField
      FieldName = 'NOMEMARCA'
      Size = 40
    end
    object cdsProduto_ConsultaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_ConsultaPLACA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsProduto_ConsultaNUM_CHASSI: TStringField
      DisplayLabel = 'N'#186' Chassi'
      FieldName = 'NUM_CHASSI'
    end
    object cdsProduto_ConsultaNUM_RENAVAM: TStringField
      DisplayLabel = 'N'#186' Renavam'
      FieldName = 'NUM_RENAVAM'
      Size = 10
    end
    object cdsProduto_ConsultaANO_FAB: TIntegerField
      DisplayLabel = 'Ano Fabrica'#231#227'o'
      FieldName = 'ANO_FAB'
    end
    object cdsProduto_ConsultaANO_MOD: TIntegerField
      DisplayLabel = 'Ano Modelo'
      FieldName = 'ANO_MOD'
    end
    object cdsProduto_ConsultaMOTORIZACAO: TStringField
      DisplayLabel = 'Motoriza'#231#227'o'
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object cdsProduto_ConsultaNOME_COR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsProduto_ConsultaMARCA_VEICULO: TStringField
      DisplayLabel = 'Marca Veiculo'
      FieldName = 'MARCA_VEICULO'
      Size = 25
    end
    object cdsProduto_ConsultaMODELO_VEICULO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO_VEICULO'
      Size = 25
    end
    object cdsProduto_ConsultaCOMBUSTIVEL: TStringField
      DisplayLabel = 'Combust'#237'vel'
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object cdsProduto_ConsultaESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'ESPECIE'
      Size = 25
    end
    object cdsProduto_ConsultaDT_ENTRADA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Entrada'
      FieldName = 'DT_ENTRADA'
    end
    object cdsProduto_ConsultaDT_VENDA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Venda'
      FieldName = 'DT_VENDA'
    end
    object cdsProduto_ConsultaQTD_ESTOQUE: TFMTBCDField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000##'
      Precision = 15
      Size = 6
    end
    object cdsProduto_ConsultaNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 40
    end
    object cdsProduto_ConsultaCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsProduto_ConsultaREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProduto_ConsultaSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProduto_ConsultaCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsProduto_ConsultaTIPO_REG_DESCRICAO: TStringField
      FieldName = 'TIPO_REG_DESCRICAO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsProduto_ConsultaAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 70
    end
    object cdsProduto_ConsultaDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object cdsProduto_ConsultaPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
    object cdsProduto_ConsultaSELO: TStringField
      FieldName = 'SELO'
      Size = 40
    end
    object cdsProduto_ConsultaCICLO: TStringField
      FieldName = 'CICLO'
      Size = 30
    end
    object cdsProduto_ConsultaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProduto_ConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProduto_ConsultaPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object cdsProduto_ConsultaTESTE: TStringField
      FieldName = 'TESTE'
      Size = 1
    end
    object cdsProduto_ConsultaQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
      DisplayFormat = '0.00##'
    end
    object cdsProduto_ConsultaQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object cdsProduto_ConsultaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsProduto_ConsultaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsProduto_ConsultaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsProduto_ConsultaTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
    object cdsProduto_ConsultaTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
  end
  object dsProduto_Consulta: TDataSource
    DataSet = cdsProduto_Consulta
    Left = 528
  end
  object sdsProduto_Veiculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_VEICULO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 365
    object sdsProduto_VeiculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_VeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsProduto_VeiculoNUM_CHASSI: TStringField
      FieldName = 'NUM_CHASSI'
    end
    object sdsProduto_VeiculoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
    end
    object sdsProduto_VeiculoANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
    end
    object sdsProduto_VeiculoANO_MOD: TIntegerField
      FieldName = 'ANO_MOD'
    end
    object sdsProduto_VeiculoMOTORIZACAO: TStringField
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object sdsProduto_VeiculoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object sdsProduto_VeiculoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object sdsProduto_VeiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object sdsProduto_VeiculoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object sdsProduto_VeiculoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object sdsProduto_VeiculoDT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
    end
    object sdsProduto_VeiculoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object sdsProduto_VeiculoNUM_RENAVAM: TStringField
      FieldName = 'NUM_RENAVAM'
      Size = 15
    end
  end
  object dspProduto_Veiculo: TDataSetProvider
    DataSet = sdsProduto_Veiculo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 365
  end
  object cdsProduto_Veiculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Veiculo'
    BeforePost = cdsProduto_VeiculoBeforePost
    Left = 114
    Top = 365
    object cdsProduto_VeiculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_VeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsProduto_VeiculoNUM_CHASSI: TStringField
      FieldName = 'NUM_CHASSI'
    end
    object cdsProduto_VeiculoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
    end
    object cdsProduto_VeiculoANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
    end
    object cdsProduto_VeiculoANO_MOD: TIntegerField
      FieldName = 'ANO_MOD'
    end
    object cdsProduto_VeiculoMOTORIZACAO: TStringField
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object cdsProduto_VeiculoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsProduto_VeiculoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object cdsProduto_VeiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object cdsProduto_VeiculoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object cdsProduto_VeiculoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object cdsProduto_VeiculoDT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
    end
    object cdsProduto_VeiculoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object cdsProduto_VeiculoNUM_RENAVAM: TStringField
      FieldName = 'NUM_RENAVAM'
      Size = 15
    end
  end
  object dsProduto_Veiculo: TDataSource
    DataSet = cdsProduto_Veiculo
    Left = 146
    Top = 365
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'
    DataSource = dsProduto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 236
    object sdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsProduto_TamTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Tam
    IndexFieldNames = 'ID;TAMANHO'
    Params = <>
    OnCalcFields = cdsProduto_TamCalcFields
    Left = 114
    Top = 236
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsProduto_TamclTamanho_USA: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTamanho_USA'
      ProviderFlags = []
      Size = 10
      Calculated = True
    end
    object cdsProduto_TamclTamanho_EUR: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTamanho_EUR'
      ProviderFlags = []
      Size = 10
      Calculated = True
    end
    object cdsProduto_TamTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 146
    Top = 236
  end
  object sdsGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 236
    object sdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspGrade: TDataSetProvider
    DataSet = sdsGrade
    Left = 608
    Top = 236
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrade'
    Left = 640
    Top = 236
    object cdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 672
    Top = 236
  end
  object qGrade_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM GRADE_ITENS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 946
    Top = 241
    object qGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object sdsPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM POSICAO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 422
  end
  object dspPosicao: TDataSetProvider
    DataSet = sdsPosicao
    Left = 760
    Top = 422
  end
  object cdsPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPosicao'
    Left = 792
    Top = 422
    object cdsPosicaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPosicaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsPosicaoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoPRIMEIRO_MAT: TStringField
      FieldName = 'PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object dsPosicao: TDataSource
    DataSet = cdsPosicao
    Left = 824
    Top = 422
  end
  object dsProduto_Consumo_Mestre: TDataSource
    DataSet = sdsProduto_Consumo
    Left = 40
    Top = 151
  end
  object sdsProduto_Consumo_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_CONSUMO_TAM'#13#10'WHERE ID = :ID'#13#10'   AND ITEM ' +
      '= :ITEM'
    DataSource = dsProduto_Consumo_Mestre
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
    Left = 50
    Top = 190
    object sdsProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object cdsProduto_Consumo_Tam: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProduto_ConsumosdsProduto_Consumo_Tam
    IndexFieldNames = 'ID;ITEM;TAMANHO'
    Params = <>
    Left = 114
    Top = 190
    object cdsProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsProduto_Consumo_Tam: TDataSource
    DataSet = cdsProduto_Consumo_Tam
    Left = 146
    Top = 190
  end
  object sdsProduto_Pcp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_PCP'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 410
    object sdsProduto_PcpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_PcpCAVIDADE_MOLDE: TFloatField
      FieldName = 'CAVIDADE_MOLDE'
    end
    object sdsProduto_PcpCAVIDADE_PECA: TFloatField
      FieldName = 'CAVIDADE_PECA'
    end
    object sdsProduto_PcpCICLO: TFloatField
      FieldName = 'CICLO'
    end
    object sdsProduto_PcpQTD_TALAO: TIntegerField
      FieldName = 'QTD_TALAO'
    end
    object sdsProduto_PcpTEMPO_TROCA_MATRIZ: TFloatField
      FieldName = 'TEMPO_TROCA_MATRIZ'
    end
    object sdsProduto_PcpTEMPO_TROCA_COR: TFloatField
      FieldName = 'TEMPO_TROCA_COR'
    end
    object sdsProduto_PcpID_TIPO_MATRIZ: TIntegerField
      FieldName = 'ID_TIPO_MATRIZ'
    end
    object sdsProduto_PcpACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_PcpCOR_ACABAMENTO: TStringField
      FieldName = 'COR_ACABAMENTO'
      Size = 30
    end
    object sdsProduto_PcpFORMATO: TStringField
      FieldName = 'FORMATO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_PcpCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsProduto_PcpLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsProduto_PcpGRAMATURA: TIntegerField
      FieldName = 'GRAMATURA'
    end
    object sdsProduto_PcpPRECO_CALCULO: TFloatField
      FieldName = 'PRECO_CALCULO'
    end
    object sdsProduto_PcpFIBRA: TStringField
      FieldName = 'FIBRA'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto_Pcp: TDataSetProvider
    DataSet = sdsProduto_Pcp
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 410
  end
  object cdsProduto_Pcp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Pcp'
    Left = 114
    Top = 410
    object cdsProduto_PcpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_PcpCAVIDADE_MOLDE: TFloatField
      FieldName = 'CAVIDADE_MOLDE'
    end
    object cdsProduto_PcpCAVIDADE_PECA: TFloatField
      FieldName = 'CAVIDADE_PECA'
    end
    object cdsProduto_PcpCICLO: TFloatField
      FieldName = 'CICLO'
    end
    object cdsProduto_PcpQTD_TALAO: TIntegerField
      FieldName = 'QTD_TALAO'
    end
    object cdsProduto_PcpTEMPO_TROCA_MATRIZ: TFloatField
      FieldName = 'TEMPO_TROCA_MATRIZ'
    end
    object cdsProduto_PcpTEMPO_TROCA_COR: TFloatField
      FieldName = 'TEMPO_TROCA_COR'
    end
    object cdsProduto_PcpID_TIPO_MATRIZ: TIntegerField
      FieldName = 'ID_TIPO_MATRIZ'
    end
    object cdsProduto_PcpACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_PcpCOR_ACABAMENTO: TStringField
      FieldName = 'COR_ACABAMENTO'
      Size = 30
    end
    object cdsProduto_PcpFORMATO: TStringField
      FieldName = 'FORMATO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_PcpCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.0'
    end
    object cdsProduto_PcpLARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.0'
    end
    object cdsProduto_PcpGRAMATURA: TIntegerField
      FieldName = 'GRAMATURA'
    end
    object cdsProduto_PcpPRECO_CALCULO: TFloatField
      FieldName = 'PRECO_CALCULO'
      DisplayFormat = '0.00'
    end
    object cdsProduto_PcpFIBRA: TStringField
      FieldName = 'FIBRA'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto_Pcp: TDataSource
    DataSet = cdsProduto_Pcp
    Left = 146
    Top = 410
  end
  object sdsTipo_Matriz: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATRIZ'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 464
  end
  object dspTipo_Matriz: TDataSetProvider
    DataSet = sdsTipo_Matriz
    Left = 760
    Top = 464
  end
  object cdsTipo_Matriz: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Matriz'
    Left = 792
    Top = 464
    object cdsTipo_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_MatrizNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsTipo_Matriz: TDataSource
    DataSet = cdsTipo_Matriz
    Left = 824
    Top = 464
  end
  object sdsProduto_Serie: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_SERIE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 454
    object sdsProduto_SerieID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_SerieITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_SerieNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsProduto_SerieDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsProduto_SerieINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_SerieNUM_SERIE_SEQ: TIntegerField
      FieldName = 'NUM_SERIE_SEQ'
    end
  end
  object dspProduto_Serie: TDataSetProvider
    DataSet = sdsProduto_Serie
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 454
  end
  object cdsProduto_Serie: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Serie'
    AfterInsert = cdsProduto_SerieAfterInsert
    BeforePost = cdsProduto_SerieBeforePost
    Left = 114
    Top = 454
    object cdsProduto_SerieID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_SerieITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_SerieNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsProduto_SerieDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsProduto_SerieINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_SerieNUM_SERIE_SEQ: TIntegerField
      FieldName = 'NUM_SERIE_SEQ'
    end
  end
  object dsProduto_Serie: TDataSource
    DataSet = cdsProduto_Serie
    Left = 146
    Top = 454
  end
  object qProximaSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(coalesce(NUM_SERIE_SEQ,0)) NUM_SERIE'
      'FROM PRODUTO_SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 946
    Top = 197
    object qProximaSerieNUM_SERIE: TIntegerField
      FieldName = 'NUM_SERIE'
    end
  end
  object mGrupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 981
    Top = 5
    Data = {
      780000009619E0BD01000000180000000400000000000300000078000849445F
      477275706F040001000000000006436F6469676F010049000000010005574944
      5448020002001400044E6F6D6501004900000001000557494454480200020028
      00045469706F01004900000001000557494454480200020001000000}
    object mGrupoID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
    end
    object mGrupoCodigo: TStringField
      FieldName = 'Codigo'
    end
    object mGrupoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mGrupoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object dsmGrupo: TDataSource
    DataSet = mGrupo
    Left = 1025
    Top = 5
  end
  object mGrupo_Produto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 960
    Top = 53
    Data = {
      0E0100009619E0BD01000000180000000A0000000000030000000E010A49445F
      50726F6475746F04000100000000000849445F477275706F0400010000000000
      09436F645F477275706F01004900000001000557494454480200020014000A52
      65666572656E63696101004900000001000557494454480200020014000C4E6F
      6D655F50726F6475746F0100490000000100055749445448020002003C00034E
      434D0100490000000100055749445448020002000A0007556E69646164650100
      4900000001000557494454480200020006000B507265636F5F437573746F0800
      0400000000000B507265636F5F56656E646108000400000000000D53616C646F
      5F4573746F71756508000400000000000000}
    object mGrupo_ProdutoID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mGrupo_ProdutoID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
    end
    object mGrupo_ProdutoCod_Grupo: TStringField
      FieldName = 'Cod_Grupo'
    end
    object mGrupo_ProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mGrupo_ProdutoNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mGrupo_ProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object mGrupo_ProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mGrupo_ProdutoPreco_Custo: TFloatField
      FieldName = 'Preco_Custo'
    end
    object mGrupo_ProdutoPreco_Venda: TFloatField
      FieldName = 'Preco_Venda'
    end
    object mGrupo_ProdutoSaldo_Estoque: TFloatField
      FieldName = 'Saldo_Estoque'
    end
  end
  object dsmGrupo_Produto: TDataSource
    DataSet = mGrupo_Produto
    Left = 997
    Top = 51
  end
  object sdsProduto_Ativo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_ATIVO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 497
    object sdsProduto_AtivoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_AtivoTIPO_ATIVO: TStringField
      FieldName = 'TIPO_ATIVO'
      Size = 1
    end
    object sdsProduto_AtivoNUM_PARCELA_BEM: TIntegerField
      FieldName = 'NUM_PARCELA_BEM'
    end
    object sdsProduto_AtivoID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
    end
    object sdsProduto_AtivoID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object sdsProduto_AtivoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 100
    end
    object sdsProduto_AtivoVIDA_UTIL: TIntegerField
      FieldName = 'VIDA_UTIL'
    end
    object sdsProduto_AtivoID_PRODUTO_PRINCIPAL: TIntegerField
      FieldName = 'ID_PRODUTO_PRINCIPAL'
    end
  end
  object dspProduto_Ativo: TDataSetProvider
    DataSet = sdsProduto_Ativo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 497
  end
  object cdsProduto_Ativo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Ativo'
    Left = 114
    Top = 497
    object cdsProduto_AtivoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_AtivoTIPO_ATIVO: TStringField
      FieldName = 'TIPO_ATIVO'
      Size = 1
    end
    object cdsProduto_AtivoNUM_PARCELA_BEM: TIntegerField
      FieldName = 'NUM_PARCELA_BEM'
    end
    object cdsProduto_AtivoID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
    end
    object cdsProduto_AtivoID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object cdsProduto_AtivoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 100
    end
    object cdsProduto_AtivoVIDA_UTIL: TIntegerField
      FieldName = 'VIDA_UTIL'
    end
    object cdsProduto_AtivoID_PRODUTO_PRINCIPAL: TIntegerField
      FieldName = 'ID_PRODUTO_PRINCIPAL'
    end
  end
  object dsProduto_Ativo: TDataSource
    DataSet = cdsProduto_Ativo
    Left = 146
    Top = 497
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CENTROCUSTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 515
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 760
    Top = 515
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 792
    Top = 515
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 824
    Top = 515
  end
  object sdsConsumo_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.*, MAT.NOME NOMEMATERIAL, MAT.REFERENCIA, MAT.PRECO_C' +
      'USTO, POS.NOME NOME_POSICAO'#13#10'FROM PRODUTO_CONSUMO PRO'#13#10'INNER JOI' +
      'N PRODUTO MAT'#13#10'ON PRO.ID_MATERIAL = MAT.ID'#13#10'LEFT JOIN POSICAO PO' +
      'S'#13#10'ON PRO.ID_POSICAO = POS.ID'#13#10'WHERE PRO.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 49
    object sdsConsumo_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsumo_ImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsConsumo_ImpID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsConsumo_ImpQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsConsumo_ImpQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object sdsConsumo_ImpUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsConsumo_ImpID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsConsumo_ImpTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsConsumo_ImpIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsConsumo_ImpIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsConsumo_ImpNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      Size = 100
    end
    object sdsConsumo_ImpREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsConsumo_ImpPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsConsumo_ImpNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
  end
  object cdsConsumo_Imp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspConsumo_Imp'
    OnCalcFields = cdsProduto_ConsumoCalcFields
    OnNewRecord = cdsProduto_ConsumoNewRecord
    Left = 640
    Top = 49
    object cdsConsumo_ImpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsumo_ImpITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsumo_ImpID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumo_ImpQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsumo_ImpQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsConsumo_ImpUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsConsumo_ImpNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 65
    end
    object cdsConsumo_ImpREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsConsumo_ImpPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
    end
    object cdsConsumo_ImpID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsConsumo_ImpNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsConsumo_ImpTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsConsumo_ImpIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsConsumo_ImpIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsumo_Imp: TDataSource
    DataSet = cdsConsumo_Imp
    Left = 672
    Top = 49
  end
  object dspConsumo_Imp: TDataSetProvider
    DataSet = sdsConsumo_Imp
    Left = 608
    Top = 49
  end
  object sdsConsumo_Imp_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_CONSUMO_TAM'#13#10'WHERE ID = :ID'#13#10'   AND ITEM ' +
      '= :ITEM'
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
    Left = 576
    Top = 96
    object sdsConsumo_Imp_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsumo_Imp_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsConsumo_Imp_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsConsumo_Imp_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object cdsConsumo_Imp_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;TAMANHO'
    Params = <>
    ProviderName = 'dspConsumo_Imp_Tam'
    Left = 640
    Top = 96
    object cdsConsumo_Imp_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsumo_Imp_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsumo_Imp_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsConsumo_Imp_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsConsumo_Imp_Tam: TDataSource
    DataSet = cdsConsumo_Imp_Tam
    Left = 672
    Top = 96
  end
  object dspConsumo_Imp_Tam: TDataSetProvider
    DataSet = sdsConsumo_Imp_Tam
    Left = 608
    Top = 96
  end
  object sdsPlano_Contas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE NIVEL'#13#10'           WHEN 9 THEN '#39'                ' +
      #39' ||  NOME'#13#10'           WHEN 8 THEN '#39'              '#39' ||  NOME'#13#10'  ' +
      '         WHEN 7 THEN '#39'            '#39' ||  NOME'#13#10'           WHEN 6 ' +
      'THEN '#39'          '#39' ||  NOME'#13#10'           WHEN 5 THEN '#39'        '#39' ||' +
      '  NOME'#13#10'           WHEN 4 THEN '#39'      '#39' ||  NOME'#13#10'           WHE' +
      'N 3 THEN '#39'    '#39' ||  NOME'#13#10'           WHEN 2 THEN '#39'  '#39' ||  NOME'#13#10 +
      '           WHEN 1 THEN NOME'#13#10'           ELSE NOME'#13#10'           EN' +
      'D AS NOME_AUX'#13#10'FROM PLANO_CONTAS C'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 289
  end
  object dspPlano_Contas: TDataSetProvider
    DataSet = sdsPlano_Contas
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 289
  end
  object cdsPlano_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlano_Contas'
    Left = 640
    Top = 289
    object cdsPlano_ContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlano_ContasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_ContasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPlano_ContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_ContasTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object cdsPlano_ContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlano_ContasDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object cdsPlano_ContasDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object cdsPlano_ContasNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 116
    end
  end
  object dsPlano_Contas: TDataSource
    DataSet = cdsPlano_Contas
    Left = 672
    Top = 289
  end
  object sdsAtivoImob: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.ID, PRO.NOME, PRO.REFERENCIA'#13#10'FROM PRODUTO PRO'#13#10'WHERE' +
      ' PRO.sped_tipo_item = '#39'08'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 160
  end
  object dspAtivoImob: TDataSetProvider
    DataSet = sdsAtivoImob
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 160
  end
  object cdsAtivoImob: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtivoImob'
    Left = 640
    Top = 160
    object cdsAtivoImobID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtivoImobNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAtivoImobREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dsAtivoImob: TDataSource
    DataSet = cdsAtivoImob
    Left = 672
    Top = 160
  end
  object sdsProduto_UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_UF'#13#10'WHERE ID = :ID'
    DataSource = dsProduto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 279
    object sdsProduto_UFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_UFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sdsProduto_UFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsProduto_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object sdsProduto_UFPERC_REDUCAO_ST: TFloatField
      FieldName = 'PERC_REDUCAO_ST'
    end
    object sdsProduto_UFPERC_REDUCAO_ICMS: TFloatField
      FieldName = 'PERC_REDUCAO_ICMS'
    end
    object sdsProduto_UFID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
  end
  object cdsProduto_UF: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_UF
    IndexFieldNames = 'ID;UF'
    Params = <>
    OnCalcFields = cdsProduto_UFCalcFields
    Left = 114
    Top = 279
    object cdsProduto_UFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_UFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object cdsProduto_UFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsProduto_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsProduto_UFPERC_REDUCAO_ST: TFloatField
      FieldName = 'PERC_REDUCAO_ST'
    end
    object cdsProduto_UFPERC_REDUCAO_ICMS: TFloatField
      FieldName = 'PERC_REDUCAO_ICMS'
    end
    object cdsProduto_UFID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsProduto_UFCOD_CST_ICMS: TStringField
      FieldKind = fkCalculated
      FieldName = 'COD_CST_ICMS'
      ProviderFlags = []
      Size = 3
      Calculated = True
    end
  end
  object dsProduto_UF: TDataSource
    DataSet = cdsProduto_UF
    Left = 146
    Top = 279
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 2
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 760
    Top = 2
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 792
    Top = 2
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 824
    Top = 2
  end
  object sdsSitTribCf: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SITTRIB_CF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 552
    object sdsSitTribCfID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsSitTribCfCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object sdsSitTribCfPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dspSitTribCf: TDataSetProvider
    DataSet = sdsSitTribCf
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 608
    Top = 552
  end
  object cdsSitTribCf: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSitTribCf'
    Left = 640
    Top = 552
    object cdsSitTribCfID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSitTribCfCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object cdsSitTribCfPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dsSitTribCf: TDataSource
    DataSet = cdsSitTribCf
    Left = 672
    Top = 552
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10'    AN' +
      'D INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 374
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 608
    Top = 374
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 640
    Top = 374
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 672
    Top = 374
  end
  object sdsProduto_Uni: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_UNI'#13#10'WHERE ID = :ID'
    DataSource = dsProduto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 321
    object sdsProduto_UniID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_UniITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_UniUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProduto_UniITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
  end
  object cdsProduto_Uni: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Uni
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsProduto_UniCalcFields
    Left = 114
    Top = 321
    object cdsProduto_UniID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_UniITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_UniUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_UniITEM_UNIDADE: TIntegerField
      FieldName = 'ITEM_UNIDADE'
    end
    object cdsProduto_UniclUnidade_Conv: TStringField
      FieldKind = fkCalculated
      FieldName = 'clUnidade_Conv'
      ProviderFlags = []
      Size = 6
      Calculated = True
    end
    object cdsProduto_UniclQtd_Conv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Conv'
      ProviderFlags = []
      Calculated = True
    end
    object cdsProduto_UniclTipo_Conversor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo_Conversor'
      Size = 30
      Calculated = True
    end
  end
  object dsProduto_Uni: TDataSource
    DataSet = cdsProduto_Uni
    Left = 146
    Top = 321
  end
  object sdsUnidade_Conv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE_CONV'#13#10'WHERE UNIDADE = :UNIDADE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 420
  end
  object dspUnidade_Conv: TDataSetProvider
    DataSet = sdsUnidade_Conv
    Left = 608
    Top = 420
  end
  object cdsUnidade_Conv: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE_CONV'
    Params = <>
    ProviderName = 'dspUnidade_Conv'
    Left = 640
    Top = 420
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
    Left = 672
    Top = 420
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
      'SELECT *'
      'FROM UNIDADE_CONV'
      'WHERE UNIDADE = :UNIDADE'
      '   AND ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 241
    object qUnidade_ConvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qUnidade_ConvITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qUnidade_ConvUNIDADE_CONV: TStringField
      FieldName = 'UNIDADE_CONV'
      Size = 6
    end
    object qUnidade_ConvNOME: TStringField
      FieldName = 'NOME'
    end
    object qUnidade_ConvQTD: TFloatField
      FieldName = 'QTD'
    end
    object qUnidade_ConvTIPO_CONVERSOR: TStringField
      FieldName = 'TIPO_CONVERSOR'
      FixedChar = True
      Size = 1
    end
  end
  object qGradeMarcar: TSQLQuery
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
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM GRADE_ITENS'
      'WHERE ID = :ID'
      '  AND TAMANHO = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 337
    object qGradeMarcarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGradeMarcarTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qGradeMarcarTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object qGradeMarcarTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
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
    Left = 946
    Top = 383
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField
      FieldName = 'MOSTRAR_CODIGO_PROD_ANT'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.id, C.nome'#13#10'FROM COMBINACAO C'#13#10'WHERE C.TIPO_REG = :Tipo' +
      '_Reg'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Tipo_Reg'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 464
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    Left = 608
    Top = 464
  end
  object cdsCor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCor'
    Left = 640
    Top = 464
    object cdsCorID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCor: TDataSource
    DataSet = cdsCor
    Left = 672
    Top = 464
  end
  object qFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 986
    Top = 289
    object qFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
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
      
        'SELECT P.ID, P.NOME, P.REFERENCIA, P.PRECO_CUSTO PRECO_CUSTO_MAT' +
        ', P.usa_preco_cor, C.preco_custo PRECO_CUSTO_COR, P.PRECO_VENDA,' +
        ' P.TIPO_REG,'
      'PRECO_CUSTO_TOTAL'
      'FROM PRODUTO P'
      'LEFT JOIN produto_comb C'
      'ON P.id = C.id'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 946
    Top = 289
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialPRECO_CUSTO_MAT: TFloatField
      FieldName = 'PRECO_CUSTO_MAT'
    end
    object qMaterialUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qMaterialPRECO_CUSTO_COR: TFloatField
      FieldName = 'PRECO_CUSTO_COR'
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qMaterialPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object qPosicao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME'
      'FROM POSICAO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 289
    object qPosicaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPosicaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qNCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NCM, TIPO_ESCALA'
      'FROM TAB_NCM'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 986
    Top = 241
    object qNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qNCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto_Matriz: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_MATRIZ'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 541
    object sdsProduto_MatrizID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MatrizITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MatrizID_MATRIZ_PRECO: TIntegerField
      FieldName = 'ID_MATRIZ_PRECO'
    end
    object sdsProduto_MatrizVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dspProduto_Matriz: TDataSetProvider
    DataSet = sdsProduto_Matriz
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 541
  end
  object cdsProduto_Matriz: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Matriz'
    OnCalcFields = cdsProduto_MatrizCalcFields
    Left = 114
    Top = 541
    object cdsProduto_MatrizID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MatrizITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MatrizID_MATRIZ_PRECO: TIntegerField
      FieldName = 'ID_MATRIZ_PRECO'
    end
    object cdsProduto_MatrizVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsProduto_MatrizclNome_Matriz: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Matriz'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsProduto_MatrizclTipo_Reg: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo_Reg'
      ProviderFlags = []
      Calculated = True
    end
  end
  object dsProduto_Matriz: TDataSource
    DataSet = cdsProduto_Matriz
    Left = 146
    Top = 541
  end
  object qMatriz_Preco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME, VLR_UNITARIO, TIPO_REG'
      'FROM MATRIZ_PRECO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 986
    Top = 197
    object qMatriz_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMatriz_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qMatriz_PrecoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object qMatriz_PrecoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
  end
  object sdsMatriz_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MATRIZ_PRECO'#13#10'WHERE TIPO_PRECO = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
  end
  object dspMatriz_Preco: TDataSetProvider
    DataSet = sdsMatriz_Preco
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 608
  end
  object cdsMatriz_Preco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMatriz_Preco'
    Left = 640
    object cdsMatriz_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMatriz_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMatriz_PrecoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMatriz_PrecoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsMatriz_PrecoTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
  end
  object dsMatriz_Preco: TDataSource
    DataSet = cdsMatriz_Preco
    Left = 672
  end
  object sdsProduto_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_COMB'#13#10'WHERE ID = :ID'#13#10'  AND TIPO_REG = '#39'B' +
      #39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 102
    object sdsProduto_CombID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsProduto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProduto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object sdsProduto_CombFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object sdsProduto_CombOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
    object sdsProduto_CombNOME_FOTO: TStringField
      FieldName = 'NOME_FOTO'
      Size = 100
    end
  end
  object dspProduto_Comb: TDataSetProvider
    DataSet = sdsProduto_Comb
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 102
  end
  object cdsProduto_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comb'
    Left = 272
    Top = 102
    object cdsProduto_CombID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProduto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProduto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_CombsdsProduto_Comb_Mat: TDataSetField
      FieldName = 'sdsProduto_Comb_Mat'
    end
    object cdsProduto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsProduto_CombFOTO: TStringField
      FieldName = 'FOTO'
      Size = 200
    end
    object cdsProduto_CombOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
    object cdsProduto_CombNOME_FOTO: TStringField
      FieldName = 'NOME_FOTO'
      Size = 100
    end
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 304
    Top = 102
  end
  object sdsProduto_Cor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_COMB'#13#10'WHERE ID = :ID'#13#10'  AND TIPO_REG = '#39'C' +
      #39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 583
    object sdsProduto_CorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CorID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_CorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsProduto_CorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CorTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_CorPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_CorPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProduto_CorPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProduto_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dspProduto_Cor: TDataSetProvider
    DataSet = sdsProduto_Cor
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 583
  end
  object cdsProduto_Cor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Cor'
    OnNewRecord = cdsProduto_CorNewRecord
    Left = 114
    Top = 583
    object cdsProduto_CorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CorID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_CorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProduto_CorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CorTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CorPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_CorPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProduto_CorPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dsProduto_Cor: TDataSource
    DataSet = cdsProduto_Cor
    Left = 146
    Top = 583
  end
  object dsProduto_Comb_Mestre: TDataSource
    DataSet = sdsProduto_Comb
    Left = 184
    Top = 144
  end
  object sdsProduto_Comb_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*'#13#10'FROM PRODUTO_COMB_MAT M'#13#10'WHERE M.ID = :ID'#13#10'    AND M' +
      '.ITEM = :ITEM'
    DataSource = dsProduto_Comb_Mestre
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
    Left = 208
    Top = 184
    object sdsProduto_Comb_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comb_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comb_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comb_MatID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProduto_Comb_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsProduto_Comb_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_Comb_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsProduto_Comb_MatQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object sdsProduto_Comb_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProduto_Comb_MatTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      Size = 1
    end
    object sdsProduto_Comb_MatIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Comb_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
  end
  object cdsProduto_Comb_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProduto_CombsdsProduto_Comb_Mat
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    BeforePost = cdsProduto_Comb_MatBeforePost
    OnCalcFields = cdsProduto_Comb_MatCalcFields
    OnNewRecord = cdsProduto_Comb_MatNewRecord
    Left = 272
    Top = 184
    object cdsProduto_Comb_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comb_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comb_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comb_MatID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_Comb_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_Comb_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_Comb_MatclNome_Material: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Material'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsProduto_Comb_MatclNome_Posicao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Posicao'
      ProviderFlags = []
      Size = 40
      Calculated = True
    end
    object cdsProduto_Comb_MatNOME_COR_COMBINACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
      Calculated = True
    end
    object cdsProduto_Comb_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
      DisplayFormat = '0.00000'
    end
    object cdsProduto_Comb_MatQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsProduto_Comb_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_Comb_MatTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      Size = 1
    end
    object cdsProduto_Comb_MatIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Comb_MatclPrimeiro_Mat: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPrimeiro_Mat'
      ProviderFlags = []
      Size = 1
      Calculated = True
    end
    object cdsProduto_Comb_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_Comb_MatclSetor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clSetor'
      ProviderFlags = []
      Size = 40
      Calculated = True
    end
  end
  object dsProduto_Comb_Mat: TDataSource
    DataSet = cdsProduto_Comb_Mat
    Left = 304
    Top = 184
  end
  object sdsMaterial_Cor: TSQLDataSet
    CommandText = 
      'SELECT P.id, P.id_cor_combinacao, C.nome NOME_COR_COMBINACAO'#13#10'FR' +
      'OM PRODUTO_COMB P'#13#10'INNER JOIN combinacao C'#13#10'ON P.id_cor_combinac' +
      'ao = C.ID'#13#10'WHERE P.ID = :ID'#13#10'   AND P.INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 447
  end
  object dspMaterial_Cor: TDataSetProvider
    DataSet = sdsMaterial_Cor
    Left = 240
    Top = 447
  end
  object cdsMaterial_Cor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_COR_COMBINACAO'
    Params = <>
    ProviderName = 'dspMaterial_Cor'
    Left = 272
    Top = 447
    object cdsMaterial_CorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterial_CorID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsMaterial_CorNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
  end
  object dsMaterial_Cor: TDataSource
    DataSet = cdsMaterial_Cor
    Left = 304
    Top = 447
  end
  object mCombinacaoAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item_Mat'
        DataType = ftInteger
      end
      item
        Name = 'ID_Posicao'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd_Consumo'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Unidade'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Imp_Talao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tingimento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Setor'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item_Mat'
    Params = <>
    StoreDefs = True
    OnNewRecord = mCombinacaoAuxNewRecord
    Left = 912
    Top = 2
    Data = {
      260100009619E0BD01000000180000000B000000000003000000260108497465
      6D5F4D617404000100000000000A49445F506F736963616F0400010000000000
      0649445F436F7204000100000000000B49445F4D6174657269616C0400010000
      000000084E6F6D655F436F720100490000000100055749445448020002003C00
      0B5174645F436F6E73756D6F08000400000000000B5174645F556E6964616465
      080004000000000007556E696461646501004900000001000557494454480200
      0200060009496D705F54616C616F010049000000010005574944544802000200
      01000A54696E67696D656E746F01004900000001000557494454480200020001
      000849445F5365746F72040001000000000001000D44454641554C545F4F5244
      45520200820000000000}
    object mCombinacaoAuxItem_Mat: TIntegerField
      FieldName = 'Item_Mat'
    end
    object mCombinacaoAuxID_Posicao: TIntegerField
      FieldName = 'ID_Posicao'
    end
    object mCombinacaoAuxID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mCombinacaoAuxID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mCombinacaoAuxNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 60
    end
    object mCombinacaoAuxQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
    end
    object mCombinacaoAuxQtd_Unidade: TFloatField
      FieldName = 'Qtd_Unidade'
    end
    object mCombinacaoAuxUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mCombinacaoAuxImp_Talao: TStringField
      FieldName = 'Imp_Talao'
      Size = 1
    end
    object mCombinacaoAuxTingimento: TStringField
      FieldName = 'Tingimento'
      Size = 1
    end
    object mCombinacaoAuxID_Setor: TIntegerField
      FieldName = 'ID_Setor'
    end
  end
  object sdsLinha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, CODIGO, NOME, UNIDADE, ID_NCM'#13#10'FROM LINHA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 489
  end
  object dspLinha: TDataSetProvider
    DataSet = sdsLinha
    Left = 240
    Top = 489
  end
  object cdsLinha: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspLinha'
    Left = 272
    Top = 489
    object cdsLinhaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLinhaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsLinhaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsLinhaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLinhaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsLinha: TDataSource
    DataSet = cdsLinha
    Left = 304
    Top = 489
  end
  object sdsProduto_Emb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_EMB'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 602
    object sdsProduto_EmbID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_EmbITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_EmbID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsProduto_EmbQTD_EMB: TFloatField
      FieldName = 'QTD_EMB'
    end
    object sdsProduto_EmbTIPO_EMB: TStringField
      FieldName = 'TIPO_EMB'
      Size = 1
    end
  end
  object dspProduto_Emb: TDataSetProvider
    DataSet = sdsProduto_Emb
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 760
    Top = 602
  end
  object cdsProduto_Emb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Emb'
    OnCalcFields = cdsProduto_EmbCalcFields
    Left = 792
    Top = 602
    object cdsProduto_EmbID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_EmbITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_EmbID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_EmbQTD_EMB: TFloatField
      FieldName = 'QTD_EMB'
    end
    object cdsProduto_EmbTIPO_EMB: TStringField
      FieldName = 'TIPO_EMB'
      Size = 1
    end
    object cdsProduto_EmbclNome_Material: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Material'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
  end
  object dsProduto_Emb: TDataSource
    DataSet = cdsProduto_Emb
    Left = 824
    Top = 602
  end
  object qSetor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ID, NOME, GERAR_TALAO, LIMITE_POR_TALAO, QTD_LIMITE_POR_T' +
        'ALAO'
      'FROM SETOR'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 986
    Top = 383
    object qSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSetorNOME: TStringField
      FieldName = 'NOME'
    end
    object qSetorGERAR_TALAO: TStringField
      FieldName = 'GERAR_TALAO'
      FixedChar = True
      Size = 1
    end
    object qSetorLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object qSetorQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 532
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 240
    Top = 532
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 272
    Top = 532
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsSetorDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
    object cdsSetorGERAR_TALAO: TStringField
      FieldName = 'GERAR_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsSetorLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsSetorQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 304
    Top = 532
  end
  object sdsProduto_Atelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_ATELIER'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 233
    object sdsProduto_AtelierID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_AtelierITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsProduto_AtelierID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsProduto_AtelierVLR_PAR: TFloatField
      FieldName = 'VLR_PAR'
    end
  end
  object dspProduto_Atelier: TDataSetProvider
    DataSet = sdsProduto_Atelier
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 233
  end
  object cdsProduto_Atelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Atelier'
    OnCalcFields = cdsProduto_AtelierCalcFields
    Left = 272
    Top = 233
    object cdsProduto_AtelierID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_AtelierITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsProduto_AtelierID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_AtelierVLR_PAR: TFloatField
      FieldName = 'VLR_PAR'
    end
    object cdsProduto_AtelierNOME_ATELIER: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_ATELIER'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsProduto_AtelierNOME_SETOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_SETOR'
      ProviderFlags = []
      Size = 40
      Calculated = True
    end
  end
  object dsProduto_Atelier: TDataSource
    DataSet = cdsProduto_Atelier
    Left = 304
    Top = 233
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'   AND TP' +
      '_ATELIER = '#39'S'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 574
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 240
    Top = 574
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 272
    Top = 574
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 304
    Top = 574
  end
  object mSetor: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    Left = 896
    Top = 51
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0002494404
      00010000000000044E6F6D650100490000000100055749445448020002002800
      0000}
    object mSetorID: TIntegerField
      FieldName = 'ID'
    end
    object mSetorNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsmSetor: TDataSource
    DataSet = mSetor
    Left = 928
    Top = 51
  end
  object sdsCBarra2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, F.NOME NOME_FILIAL, F.NOME_INTERNO'#13#10'FROM CBARRA C'#13#10'I' +
      'NNER JOIN FILIAL F'#13#10'ON C.FILIAL = F.ID'#13#10'WHERE C.ID_PRODUTO = :ID' +
      '_PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 404
    object sdsCBarra2ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCBarra2COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object sdsCBarra2ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCBarra2ID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCBarra2TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCBarra2COD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object sdsCBarra2COD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object sdsCBarra2FILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCBarra2NOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsCBarra2NOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspCBarra2: TDataSetProvider
    DataSet = sdsCBarra2
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 404
  end
  object cdsCBarra2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCBarra2'
    Left = 272
    Top = 404
    object cdsCBarra2ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCBarra2COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsCBarra2ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCBarra2ID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCBarra2TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCBarra2COD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object cdsCBarra2COD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object cdsCBarra2FILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCBarra2NOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsCBarra2NOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsCBarra2: TDataSource
    DataSet = cdsCBarra2
    Left = 304
    Top = 404
  end
  object mProduto_CBarra: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cod_Barra'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1118
    Top = 72
    Data = {
      F00000009619E0BD010000001800000008000000000003000000F0000A49445F
      50726F6475746F04000100000000000D49445F436F6D62696E6163616F040001
      00000000000754616D616E686F0100490000000100055749445448020002000A
      000A5265666572656E6369610100490000000100055749445448020002001400
      0C4E6F6D655F50726F6475746F0100490000000100055749445448020002003C
      000F4E6F6D655F436F6D62696E6163616F010049000000010005574944544802
      000200280009436F645F42617272610100490000000100055749445448020002
      000D000646696C69616C04000100000000000000}
    object mProduto_CBarraID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mProduto_CBarraID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mProduto_CBarraTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mProduto_CBarraReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProduto_CBarraNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mProduto_CBarraNome_Combinacao: TStringField
      FieldName = 'Nome_Combinacao'
      Size = 40
    end
    object mProduto_CBarraCod_Barra: TStringField
      FieldName = 'Cod_Barra'
      Size = 13
    end
    object mProduto_CBarraFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object dsProduto_CBarra: TDataSource
    DataSet = mProduto_CBarra
    Left = 1149
    Top = 72
  end
  object qProximoCbarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_PRINCIPAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(C.cod_sequencial) SEQUENCIAL'
      'FROM CBARRA C'
      'WHERE C.COD_PRINCIPAL = :COD_PRINCIPAL'
      '  AND C.FILIAL = :FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 946
    Top = 337
    object qProximoCbarraSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 507
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 608
    Top = 507
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 640
    Top = 507
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 672
    Top = 507
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.codcfop, T.nome, T.nome_interno'#13#10'FROM TAB_CFOP T'#13 +
      #10'WHERE T.USA_NFCE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 46
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 466
    Top = 46
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;NOME'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 496
    Top = 46
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
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 528
    Top = 46
  end
  object sdsCor_RZ: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 594
  end
  object dspCor_RZ: TDataSetProvider
    DataSet = sdsCor_RZ
    Left = 608
    Top = 594
  end
  object cdsCor_RZ: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCor_RZ'
    Left = 640
    Top = 594
  end
  object dsCor_RZ: TDataSource
    DataSet = cdsCor_RZ
    Left = 672
    Top = 594
  end
  object sdsProduto_Livro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_LIVRO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 362
    object sdsProduto_LivroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_LivroAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 70
    end
    object sdsProduto_LivroSELO: TStringField
      FieldName = 'SELO'
      Size = 40
    end
    object sdsProduto_LivroPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
    object sdsProduto_LivroDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object sdsProduto_LivroCICLO: TStringField
      FieldName = 'CICLO'
      Size = 30
    end
  end
  object dspProduto_Livro: TDataSetProvider
    DataSet = sdsProduto_Livro
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 362
  end
  object cdsProduto_Livro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Livro'
    Left = 272
    Top = 362
    object cdsProduto_LivroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_LivroAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 70
    end
    object cdsProduto_LivroSELO: TStringField
      FieldName = 'SELO'
      Size = 40
    end
    object cdsProduto_LivroPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
    object cdsProduto_LivroDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object cdsProduto_LivroCICLO: TStringField
      FieldName = 'CICLO'
      Size = 30
    end
  end
  object dsProduto_Livro: TDataSource
    DataSet = cdsProduto_Livro
    Left = 304
    Top = 362
  end
  object qConta_Orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTA_ORCAMENTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 986
    Top = 337
    object qConta_OrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConta_OrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qConta_OrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sdsProdutoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO_PROCESSO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 331
  end
  object dspProdutoProcesso: TDataSetProvider
    DataSet = sdsProdutoProcesso
    Left = 760
    Top = 331
  end
  object cdsProdutoProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProdutoProcesso'
    Left = 792
    Top = 331
    object cdsProdutoProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProdutoProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object cdsProdutoProcessoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProdutoProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProdutoProcessoUN: TStringField
      FieldName = 'UN'
      Size = 3
    end
    object cdsProdutoProcessoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object cdsProdutoProcessoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsProdutoProcessoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsProdutoProcessoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProdutoProcessolkProcesso: TStringField
      FieldKind = fkLookup
      FieldName = 'lkProcesso'
      LookupDataSet = cdsProcesso
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PROCESSO'
      Size = 30
      Lookup = True
    end
    object cdsProdutoProcessolkSetor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkSetor'
      LookupDataSet = cdsSetor
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_SETOR'
      Size = 30
      Lookup = True
    end
    object cdsProdutoProcessolkPosicao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPosicao'
      LookupDataSet = cdsPosicao
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_POSICAO'
      Size = 40
      Lookup = True
    end
  end
  object dsProdutoProcesso: TDataSource
    DataSet = cdsProdutoProcesso
    Left = 824
    Top = 331
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PROCESSO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 331
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 608
    Top = 331
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 640
    Top = 331
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 672
    Top = 331
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 907
    Top = 96
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 940
    Top = 96
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 975
    Top = 96
    object cdsLocal_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocal_EstoqueCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsLocal_EstoqueNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsLocal_EstoquePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsLocal_EstoqueINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLocal_Estoque: TDataSource
    DataSet = cdsLocal_Estoque
    Left = 1009
    Top = 97
  end
  object sdsProduto_Comissao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CLI.NOME'#13#10'FROM PRODUTO_COMISSAO C'#13#10'INNER JOIN PESSOA' +
      ' CLI'#13#10'ON C.ID_CLIENTE = CLI.CODIGO'#13#10'WHERE C.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 275
    object sdsProduto_ComissaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ComissaoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ComissaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProduto_ComissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsProduto_ComissaoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
  end
  object dspProduto_Comissao: TDataSetProvider
    DataSet = sdsProduto_Comissao
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 275
  end
  object cdsProduto_Comissao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comissao'
    Left = 272
    Top = 275
    object cdsProduto_ComissaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ComissaoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ComissaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProduto_ComissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsProduto_ComissaoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsProduto_Comissao: TDataSource
    DataSet = cdsProduto_Comissao
    Left = 304
    Top = 275
  end
  object qEnqIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_ENQIPI'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1078
    Top = 293
    object qEnqIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qEnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
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
    ReportOptions.CreateDate = 42975.625256284700000000
    ReportOptions.LastChange = 42975.729618946760000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    Left = 900
    Top = 552
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
    Left = 940
    Top = 552
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
    Left = 980
    Top = 552
  end
  object frxRichObject1: TfrxRichObject
    Left = 1012
    Top = 552
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxProduto'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'PESOLIQUIDO=PESOLIQUIDO'
      'PESOBRUTO=PESOBRUTO'
      'INATIVO=INATIVO'
      'ID_CSTIPI=ID_CSTIPI'
      'PERC_IPI=PERC_IPI'
      'PRECO_CUSTO=PRECO_CUSTO'
      'PRECO_VENDA=PRECO_VENDA'
      'TIPO_REG=TIPO_REG'
      'POSSE_MATERIAL=POSSE_MATERIAL'
      'ESTOQUE=ESTOQUE'
      'MATERIAL_OUTROS=MATERIAL_OUTROS'
      'USUARIO=USUARIO'
      'DTCAD=DTCAD'
      'HRCAD=HRCAD'
      'CA=CA'
      'COMPLEMENTO=COMPLEMENTO'
      'ID_NCM=ID_NCM'
      'ORIGEM_PROD=ORIGEM_PROD'
      'OBS=OBS'
      'CODSITCF=CODSITCF'
      'PERC_REDUCAOICMS=PERC_REDUCAOICMS'
      'TIPO_VENDA=TIPO_VENDA'
      'PERC_MARGEMLUCRO=PERC_MARGEMLUCRO'
      'UNIDADE=UNIDADE'
      'DT_ALTPRECO=DT_ALTPRECO'
      'sdsProduto_Forn=sdsProduto_Forn'
      'sdsProduto_Consumo=sdsProduto_Consumo'
      'LOCALIZACAO=LOCALIZACAO'
      'ID_GRUPO=ID_GRUPO'
      'ID_SUBGRUPO=ID_SUBGRUPO'
      'ID_MARCA=ID_MARCA'
      'ID_FORNECEDOR=ID_FORNECEDOR'
      'COD_BARRA=COD_BARRA'
      'PERC_IMPORTACAO=PERC_IMPORTACAO'
      'PERC_REDUCAOICMSSUBST=PERC_REDUCAOICMSSUBST'
      'USA_GRADE=USA_GRADE'
      'sdsProduto_Tam=sdsProduto_Tam'
      'ID_GRADE=ID_GRADE'
      'USA_PERC_IMP_INTERESTADUAL=USA_PERC_IMP_INTERESTADUAL'
      'IMPRIMIR_ETIQUETA_NAV=IMPRIMIR_ETIQUETA_NAV'
      'CARIMBO=CARIMBO'
      'PERC_QUEBRAMAT=PERC_QUEBRAMAT'
      'SPED_TIPO_ITEM=SPED_TIPO_ITEM'
      'QTD_ESTOQUE_MIN=QTD_ESTOQUE_MIN'
      'PERC_PIS=PERC_PIS'
      'PERC_COFINS=PERC_COFINS'
      'PERC_ICMS_IMP=PERC_ICMS_IMP'
      'PERC_IPI_IMP=PERC_IPI_IMP'
      'sdsProduto_UF=sdsProduto_UF'
      'REFERENCIA_PADRAO=REFERENCIA_PADRAO'
      'NUM_FCI=NUM_FCI'
      'PERC_USADO_FCI=PERC_USADO_FCI'
      'NCM_EX=NCM_EX'
      'ID_SITTRIB_CF=ID_SITTRIB_CF'
      'ID_CLIENTE=ID_CLIENTE'
      'sdsProduto_Uni=sdsProduto_Uni'
      'PRECO_REVENDA=PRECO_REVENDA'
      'PRECO_INDUSTRIALIZACAO=PRECO_INDUSTRIALIZACAO'
      'PRECO_CONSUMO=PRECO_CONSUMO'
      'FOTO=FOTO'
      'REFERENCIA_SEQ=REFERENCIA_SEQ'
      'ID_COR=ID_COR'
      'NCM=NCM'
      'CALCULAR_2_LADOS=CALCULAR_2_LADOS'
      'PERC_VIDRO=PERC_VIDRO'
      'ID_LINHA=ID_LINHA'
      'COD_ANT=COD_ANT'
      'ID_CFOP_NFCE=ID_CFOP_NFCE'
      'USA_PRECO_COR=USA_PRECO_COR'
      'USA_COR=USA_COR'
      'TRANSFER=TRANSFER'
      'PRECO_CUSTO_TOTAL=PRECO_CUSTO_TOTAL'
      'ID_CONTA_ORCAMENTO=ID_CONTA_ORCAMENTO'
      'ID_LOCAL_ESTOQUE_PROD=ID_LOCAL_ESTOQUE_PROD'
      'PERC_COMISSAO=PERC_COMISSAO'
      'ID_ENQIPI=ID_ENQIPI')
    DataSource = dsProduto
    BCDToCurrency = False
    Left = 908
    Top = 608
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxProduto_Consumo'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_MATERIAL=ID_MATERIAL'
      'QTD_CONSUMO=QTD_CONSUMO'
      'QTD_UNIDADE=QTD_UNIDADE'
      'UNIDADE=UNIDADE'
      'ID_POSICAO=ID_POSICAO'
      'TIPO_CONSUMO=TIPO_CONSUMO'
      'clVlr_Total=clVlr_Total'
      'sdsProduto_Consumo_Tam=sdsProduto_Consumo_Tam'
      'IMP_ROTULO=IMP_ROTULO'
      'IMP_TALAO=IMP_TALAO'
      'NOMEMATERIAL=NOMEMATERIAL'
      'REFERENCIA=REFERENCIA'
      'PRECO_CUSTO=PRECO_CUSTO'
      'NOME_POSICAO=NOME_POSICAO'
      'ID_SETOR=ID_SETOR'
      'NOME_SETOR=NOME_SETOR'
      'clPreco_Venda=clPreco_Venda'
      'clTIPO_REG=clTIPO_REG')
    DataSource = dsProduto_Consumo
    BCDToCurrency = False
    Left = 948
    Top = 608
  end
  object sdsProduto_Comissao_Vend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, V.NOME'#13#10'FROM PRODUTO_COMISSAO_VEND C'#13#10'INNER JOIN PES' +
      'SOA V'#13#10'ON C.ID_VENDEDOR = V.CODIGO'#13#10'WHERE C.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 317
    object sdsProduto_Comissao_VendID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comissao_VendITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Comissao_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsProduto_Comissao_VendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsProduto_Comissao_VendNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspProduto_Comissao_Vend: TDataSetProvider
    DataSet = sdsProduto_Comissao_Vend
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 317
  end
  object cdsProduto_Comissao_Vend: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comissao_Vend'
    Left = 272
    Top = 317
    object cdsProduto_Comissao_VendID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comissao_VendITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Comissao_VendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsProduto_Comissao_VendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsProduto_Comissao_VendNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsProduto_Comissao_Vend: TDataSource
    DataSet = cdsProduto_Comissao_Vend
    Left = 304
    Top = 317
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_VENDEDOR = '#39'S'#39#13#10'    A' +
      'ND INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 528
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 424
    Top = 528
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 456
    Top = 528
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 488
    Top = 528
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 1095
    Top = 132
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstGERAR_LOTE_AUT: TStringField
      FieldName = 'GERAR_LOTE_AUT'
      FixedChar = True
      Size = 1
    end
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
    Left = 1076
    Top = 336
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
  object sdsProduto_Carimbo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PC.*'#13#10'FROM PRODUTO_CARIMBO PC'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 386
    Top = 388
    object sdsProduto_CarimboID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CarimboITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_CarimboID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProduto_CarimboCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsProduto_CarimboCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
  end
  object dspProduto_Carimbo: TDataSetProvider
    DataSet = sdsProduto_Carimbo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 418
    Top = 388
  end
  object cdsProduto_Carimbo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Carimbo'
    OnCalcFields = cdsProduto_CarimboCalcFields
    Left = 450
    Top = 388
    object cdsProduto_CarimboID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CarimboITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_CarimboID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProduto_CarimboCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsProduto_CarimboNOME_CLIENTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_CLIENTE'
      Size = 70
      Calculated = True
    end
    object cdsProduto_CarimboCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
  end
  object dsProduto_Carimbo: TDataSource
    DataSet = cdsProduto_Carimbo
    Left = 482
    Top = 388
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, USA_OPCAO_IMP_COD_CLI, GRAVAR_TAB_TAMANHO'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 1139
    Top = 133
    object qParametros_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 1130
    Top = 356
    object qParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdSENHA_ALT_PROD_MOV: TStringField
      FieldName = 'SENHA_ALT_PROD_MOV'
      Size = 15
    end
    object qParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField
      FieldName = 'MOSTRAR_OBS_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField
      FieldName = 'MARCAR_BAIXAR_ESTOQUE_MAT'
      Size = 1
    end
    object qParametros_ProdUSA_MEDIDA: TStringField
      FieldName = 'USA_MEDIDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_QTD_EMBALAGEM: TStringField
      FieldName = 'USA_QTD_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_PRECO_CONSUMO: TStringField
      FieldName = 'OPCAO_PRECO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField
      FieldName = 'GRAVA_CONSUMO_PRVENDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_CONSUMO_COMB: TStringField
      FieldName = 'USA_CONSUMO_COMB'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_PICTOGRAMA: TStringField
      FieldName = 'USA_PICTOGRAMA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_ID_MATERIAL_CONS: TStringField
      FieldName = 'USA_ID_MATERIAL_CONS'
      Size = 1
    end
    object qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdCONT_TIPO_PROD: TStringField
      FieldName = 'CONT_TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGERAR_REF_GRUPO: TStringField
      FieldName = 'GERAR_REF_GRUPO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdQTD_DIGITOS_REF: TIntegerField
      FieldName = 'QTD_DIGITOS_REF'
    end
    object qParametros_ProdUSA_LARG: TStringField
      FieldName = 'USA_LARG'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdINF_CBARRA_MANUAL: TStringField
      FieldName = 'INF_CBARRA_MANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdEXCLUI_PROD_SEL: TStringField
      FieldName = 'EXCLUI_PROD_SEL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGRAVAR_PRECO_COMB: TStringField
      FieldName = 'GRAVAR_PRECO_COMB'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField
      FieldName = 'GRAVAR_PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdSENHA_PROD_CUSTO: TStringField
      FieldName = 'SENHA_PROD_CUSTO'
      Size = 10
    end
    object qParametros_ProdID_POSICAO_PADRAO: TIntegerField
      FieldName = 'ID_POSICAO_PADRAO'
    end
    object qParametros_ProdATUALIZAR_COMB: TStringField
      FieldName = 'ATUALIZAR_COMB'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMOSTRAR_TAM_CALC: TStringField
      FieldName = 'MOSTRAR_TAM_CALC'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_TAM_REFER_GRADE: TStringField
      FieldName = 'USA_TAM_REFER_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_MAQUINA: TStringField
      FieldName = 'USA_MAQUINA'
      Size = 1
    end
    object qParametros_ProdATUALIZA_PESO_ENG: TStringField
      FieldName = 'ATUALIZA_PESO_ENG'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMOSTRAR_FORMA: TStringField
      FieldName = 'MOSTRAR_FORMA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_CONSTRUCAO: TStringField
      FieldName = 'USA_CONSTRUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto_Cad_Ant: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_CAD_ANT'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 218
    Top = 2
    object sdsProduto_Cad_AntID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Cad_AntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Cad_AntDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsProduto_Cad_AntNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProduto_Cad_AntREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProduto_Cad_AntHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsProduto_Cad_AntUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dspProduto_Cad_Ant: TDataSetProvider
    DataSet = sdsProduto_Cad_Ant
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 250
    Top = 2
  end
  object cdsProduto_Cad_Ant: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Cad_Ant'
    Left = 282
    Top = 2
    object cdsProduto_Cad_AntID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Cad_AntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Cad_AntDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsProduto_Cad_AntNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_Cad_AntREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_Cad_AntHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsProduto_Cad_AntUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dsProduto_Cad_Ant: TDataSource
    DataSet = cdsProduto_Cad_Ant
    Left = 314
    Top = 2
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
      'SELECT NOME'
      'FROM COMBINACAO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 988
    Top = 428
    object qCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object sdsProduto_Conv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PC.*'#13#10'FROM PRODUTO_CONV PC'#13#10'WHERE PC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 386
    Top = 436
    object sdsProduto_ConvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_ConvTIPOPROD: TStringField
      FieldName = 'TIPOPROD'
      Size = 30
    end
    object sdsProduto_ConvMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsProduto_ConvNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object sdsProduto_ConvSUBCODIGO: TStringField
      FieldName = 'SUBCODIGO'
    end
    object sdsProduto_ConvCODIGOGERAL: TStringField
      FieldName = 'CODIGOGERAL'
    end
    object sdsProduto_ConvDESCRITIVO: TStringField
      FieldName = 'DESCRITIVO'
    end
    object sdsProduto_ConvMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object sdsProduto_ConvEMBALAGEM: TFloatField
      FieldName = 'EMBALAGEM'
    end
    object sdsProduto_ConvMARGEMREAL: TFloatField
      FieldName = 'MARGEMREAL'
    end
    object sdsProduto_ConvMVA: TFloatField
      FieldName = 'MVA'
    end
    object sdsProduto_ConvMARGEM_ORIGINAL: TFloatField
      FieldName = 'MARGEM_ORIGINAL'
    end
    object sdsProduto_ConvPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object sdsProduto_ConvMARGEM_MAP: TFloatField
      FieldName = 'MARGEM_MAP'
    end
    object sdsProduto_ConvVERCOMISSAO: TStringField
      FieldName = 'VERCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConvMUDAR_DESCRICAO: TStringField
      FieldName = 'MUDAR_DESCRICAO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_ConvMARGEM_MAV: TFloatField
      FieldName = 'MARGEM_MAV'
    end
    object sdsProduto_ConvNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 40
    end
    object sdsProduto_ConvLABORA: TStringField
      FieldName = 'LABORA'
    end
    object sdsProduto_ConvFF: TStringField
      FieldName = 'FF'
      Size = 1
    end
    object sdsProduto_ConvESPECIFICA: TIntegerField
      FieldName = 'ESPECIFICA'
    end
    object sdsProduto_ConvPREDIMAR: TStringField
      FieldName = 'PREDIMAR'
      Size = 8
    end
    object sdsProduto_ConvCODREF: TStringField
      FieldName = 'CODREF'
      Size = 30
    end
    object sdsProduto_ConvVLRFUT: TFloatField
      FieldName = 'VLRFUT'
    end
    object sdsProduto_ConvCRFUT: TStringField
      FieldName = 'CRFUT'
      Size = 5
    end
    object sdsProduto_ConvFLFUT: TStringField
      FieldName = 'FLFUT'
      Size = 1
    end
    object sdsProduto_ConvQTUNID: TFloatField
      FieldName = 'QTUNID'
    end
  end
  object dspProduto_Conv: TDataSetProvider
    DataSet = sdsProduto_Conv
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 418
    Top = 436
  end
  object cdsProduto_Conv: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Conv'
    OnCalcFields = cdsProduto_CarimboCalcFields
    Left = 450
    Top = 436
    object cdsProduto_ConvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_ConvTIPOPROD: TStringField
      FieldName = 'TIPOPROD'
      Size = 30
    end
    object cdsProduto_ConvMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsProduto_ConvNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsProduto_ConvSUBCODIGO: TStringField
      FieldName = 'SUBCODIGO'
    end
    object cdsProduto_ConvCODIGOGERAL: TStringField
      FieldName = 'CODIGOGERAL'
    end
    object cdsProduto_ConvDESCRITIVO: TStringField
      FieldName = 'DESCRITIVO'
    end
    object cdsProduto_ConvMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object cdsProduto_ConvEMBALAGEM: TFloatField
      FieldName = 'EMBALAGEM'
    end
    object cdsProduto_ConvMARGEMREAL: TFloatField
      FieldName = 'MARGEMREAL'
    end
    object cdsProduto_ConvMVA: TFloatField
      FieldName = 'MVA'
    end
    object cdsProduto_ConvMARGEM_ORIGINAL: TFloatField
      FieldName = 'MARGEM_ORIGINAL'
    end
    object cdsProduto_ConvPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object cdsProduto_ConvMARGEM_MAP: TFloatField
      FieldName = 'MARGEM_MAP'
    end
    object cdsProduto_ConvVERCOMISSAO: TStringField
      FieldName = 'VERCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConvMUDAR_DESCRICAO: TStringField
      FieldName = 'MUDAR_DESCRICAO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConvMARGEM_MAV: TFloatField
      FieldName = 'MARGEM_MAV'
    end
    object cdsProduto_ConvNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 40
    end
    object cdsProduto_ConvLABORA: TStringField
      FieldName = 'LABORA'
    end
    object cdsProduto_ConvFF: TStringField
      FieldName = 'FF'
      Size = 1
    end
    object cdsProduto_ConvESPECIFICA: TIntegerField
      FieldName = 'ESPECIFICA'
    end
    object cdsProduto_ConvPREDIMAR: TStringField
      FieldName = 'PREDIMAR'
      Size = 8
    end
    object cdsProduto_ConvCODREF: TStringField
      FieldName = 'CODREF'
      Size = 30
    end
    object cdsProduto_ConvVLRFUT: TFloatField
      FieldName = 'VLRFUT'
    end
    object cdsProduto_ConvCRFUT: TStringField
      FieldName = 'CRFUT'
      Size = 5
    end
    object cdsProduto_ConvFLFUT: TStringField
      FieldName = 'FLFUT'
      Size = 1
    end
    object cdsProduto_ConvQTUNID: TFloatField
      FieldName = 'QTUNID'
    end
  end
  object dsProduto_Conv: TDataSource
    DataSet = cdsProduto_Conv
    Left = 482
    Top = 436
  end
  object qCSTIcms: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT t.id,  t.cod_cst, t.cod_desoneracao'
      'FROM tab_csticms t'
      'where t.id = :id')
    SQLConnection = dmDatabase.scoDados
    Left = 1077
    Top = 247
    object qCSTIcmsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCSTIcmsCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object qCSTIcmsCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
  end
  object sdsCSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT t.id,  t.cod_cst, t.cod_desoneracao, t.percentual'#13#10'FROM t' +
      'ab_csticms t'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 255
  end
  object dspCSTICMS: TDataSetProvider
    DataSet = sdsCSTICMS
    Left = 448
    Top = 255
  end
  object cdsCSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspCSTICMS'
    Left = 480
    Top = 255
    object cdsCSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsCSTICMSCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object cdsCSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dsCSTICMS: TDataSource
    DataSet = cdsCSTICMS
    Left = 512
    Top = 255
  end
  object sdsProduto_Balanca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PB.*'#13#10'FROM PRODUTO_BALANCA PB'#13#10'WHERE PB.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 386
    Top = 484
    object sdsProduto_BalancaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_BalancaVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object sdsProduto_BalancaTIPO_VALIDADE: TStringField
      FieldName = 'TIPO_VALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_BalancaPORCAO: TStringField
      FieldName = 'PORCAO'
      Size = 41
    end
    object sdsProduto_BalancaCALORIAS: TStringField
      FieldName = 'CALORIAS'
      Size = 21
    end
    object sdsProduto_BalancaCARBOIDRATOS: TStringField
      FieldName = 'CARBOIDRATOS'
      Size = 21
    end
    object sdsProduto_BalancaPROTEINAS: TStringField
      FieldName = 'PROTEINAS'
      Size = 21
    end
    object sdsProduto_BalancaGORD_TOTAIS: TStringField
      FieldName = 'GORD_TOTAIS'
      Size = 21
    end
    object sdsProduto_BalancaGORD_SATURADAS: TStringField
      FieldName = 'GORD_SATURADAS'
      Size = 21
    end
    object sdsProduto_BalancaGORD_TRANS: TStringField
      FieldName = 'GORD_TRANS'
      Size = 21
    end
    object sdsProduto_BalancaFIBRA_ALIMENTAR: TStringField
      FieldName = 'FIBRA_ALIMENTAR'
      Size = 21
    end
    object sdsProduto_BalancaSODIO: TStringField
      FieldName = 'SODIO'
      Size = 21
    end
    object sdsProduto_BalancaRECEITA11: TStringField
      FieldName = 'RECEITA11'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA12: TStringField
      FieldName = 'RECEITA12'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA13: TStringField
      FieldName = 'RECEITA13'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA14: TStringField
      FieldName = 'RECEITA14'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA15: TStringField
      FieldName = 'RECEITA15'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA21: TStringField
      FieldName = 'RECEITA21'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA22: TStringField
      FieldName = 'RECEITA22'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA23: TStringField
      FieldName = 'RECEITA23'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA24: TStringField
      FieldName = 'RECEITA24'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA25: TStringField
      FieldName = 'RECEITA25'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA31: TStringField
      FieldName = 'RECEITA31'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA32: TStringField
      FieldName = 'RECEITA32'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA33: TStringField
      FieldName = 'RECEITA33'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA34: TStringField
      FieldName = 'RECEITA34'
      Size = 41
    end
    object sdsProduto_BalancaRECEITA35: TStringField
      FieldName = 'RECEITA35'
      Size = 41
    end
    object sdsProduto_BalancaTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto_Balanca: TDataSetProvider
    DataSet = sdsProduto_Balanca
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 418
    Top = 484
  end
  object cdsProduto_Balanca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Balanca'
    OnCalcFields = cdsProduto_CarimboCalcFields
    Left = 450
    Top = 484
    object cdsProduto_BalancaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_BalancaVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
    end
    object cdsProduto_BalancaTIPO_VALIDADE: TStringField
      FieldName = 'TIPO_VALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_BalancaPORCAO: TStringField
      FieldName = 'PORCAO'
      Size = 41
    end
    object cdsProduto_BalancaCALORIAS: TStringField
      FieldName = 'CALORIAS'
      Size = 21
    end
    object cdsProduto_BalancaCARBOIDRATOS: TStringField
      FieldName = 'CARBOIDRATOS'
      Size = 21
    end
    object cdsProduto_BalancaPROTEINAS: TStringField
      FieldName = 'PROTEINAS'
      Size = 21
    end
    object cdsProduto_BalancaGORD_TOTAIS: TStringField
      FieldName = 'GORD_TOTAIS'
      Size = 21
    end
    object cdsProduto_BalancaGORD_SATURADAS: TStringField
      FieldName = 'GORD_SATURADAS'
      Size = 21
    end
    object cdsProduto_BalancaGORD_TRANS: TStringField
      FieldName = 'GORD_TRANS'
      Size = 21
    end
    object cdsProduto_BalancaFIBRA_ALIMENTAR: TStringField
      FieldName = 'FIBRA_ALIMENTAR'
      Size = 21
    end
    object cdsProduto_BalancaSODIO: TStringField
      FieldName = 'SODIO'
      Size = 21
    end
    object cdsProduto_BalancaRECEITA11: TStringField
      FieldName = 'RECEITA11'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA12: TStringField
      FieldName = 'RECEITA12'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA13: TStringField
      FieldName = 'RECEITA13'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA14: TStringField
      FieldName = 'RECEITA14'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA15: TStringField
      FieldName = 'RECEITA15'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA21: TStringField
      FieldName = 'RECEITA21'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA22: TStringField
      FieldName = 'RECEITA22'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA23: TStringField
      FieldName = 'RECEITA23'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA24: TStringField
      FieldName = 'RECEITA24'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA25: TStringField
      FieldName = 'RECEITA25'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA31: TStringField
      FieldName = 'RECEITA31'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA32: TStringField
      FieldName = 'RECEITA32'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA33: TStringField
      FieldName = 'RECEITA33'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA34: TStringField
      FieldName = 'RECEITA34'
      Size = 41
    end
    object cdsProduto_BalancaRECEITA35: TStringField
      FieldName = 'RECEITA35'
      Size = 41
    end
    object cdsProduto_BalancaTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto_Balanca: TDataSource
    DataSet = cdsProduto_Balanca
    Left = 482
    Top = 484
  end
  object mTabPreco: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Tabela'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Venda'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Tabela'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Ant'
        DataType = ftFloat
      end
      item
        Name = 'DtInicial'
        DataType = ftDate
      end
      item
        Name = 'DtFinal'
        DataType = ftDate
      end
      item
        Name = 'Promocao'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Tabela'
    Params = <>
    StoreDefs = True
    Left = 408
    Top = 131
    Data = {
      D60000009619E0BD010000001800000008000000000003000000D6000949445F
      546162656C6104000100000000000A49445F50726F6475746F04000100000000
      0009566C725F56656E646108000400000000000B4E6F6D655F546162656C6101
      00490000000100055749445448020002003C0007566C725F416E740800040000
      000000094474496E696369616C040006000000000007447446696E616C040006
      00000000000850726F6D6F63616F010049000000010005574944544802000200
      010001000D44454641554C545F4F524445520200820000000000}
    object mTabPrecoID_Tabela: TIntegerField
      FieldName = 'ID_Tabela'
    end
    object mTabPrecoID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mTabPrecoVlr_Venda: TFloatField
      FieldName = 'Vlr_Venda'
      DisplayFormat = '0.00###'
    end
    object mTabPrecoNome_Tabela: TStringField
      FieldName = 'Nome_Tabela'
      Size = 60
    end
    object mTabPrecoVlr_Ant: TFloatField
      FieldName = 'Vlr_Ant'
      DisplayFormat = '0.00###'
    end
    object mTabPrecoDtInicial: TDateField
      FieldName = 'DtInicial'
    end
    object mTabPrecoDtFinal: TDateField
      FieldName = 'DtFinal'
    end
    object mTabPrecoPromocao: TStringField
      FieldName = 'Promocao'
      Size = 1
    end
  end
  object dsmTabPreco: TDataSource
    DataSet = mTabPreco
    Left = 440
    Top = 131
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 1150
    Top = 246
    object qParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralEMPRESA_CALCADOS: TStringField
      FieldName = 'EMPRESA_CALCADOS'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object qParametros_GeralUSA_TIPO_MATERIAL: TStringField
      FieldName = 'USA_TIPO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_CUSTO_PROC_ATE: TStringField
      FieldName = 'USA_CUSTO_PROC_ATE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTab_Preco_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * '#13#10'FROM TAB_PRECO_ITENS '#13#10'WHERE ID = :ID'#13#10'  AND ID_PRODU' +
      'TO = :ID_PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 298
    object sdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTab_Preco_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTab_Preco_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTab_Preco_ItensVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
  end
  object dspTab_Preco_Itens: TDataSetProvider
    DataSet = sdsTab_Preco_Itens
    Left = 464
    Top = 298
  end
  object cdsTab_Preco_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Preco_Itens'
    Left = 496
    Top = 298
    object cdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTab_Preco_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTab_Preco_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTab_Preco_ItensVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
  end
  object qProximoItem_TabPreco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(ITEM) ITEM'
      'FROM TAB_PRECO_ITENS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1076
    Top = 198
    object qProximoItem_TabPrecoITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1118
    Top = 299
    object qParametros_LoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_LoteTIPO_PROCESSO: TStringField
      FieldName = 'TIPO_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteID_COR_CRU: TIntegerField
      FieldName = 'ID_COR_CRU'
    end
    object qParametros_LoteUSA_COR_COMB: TStringField
      FieldName = 'USA_COR_COMB'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_PROCESSO: TStringField
      FieldName = 'LOTE_PROCESSO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConsumo_Det: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'WITH RECURSIVE'#13#10'    consumo as ('#13#10'        SELECT 1 grau,'#13#10'      ' +
      '         qtd_consumo total_consumo,'#13#10'               case'#13#10'      ' +
      '           when c.possui_material = '#39'S'#39' then 0'#13#10'                ' +
      ' else round(c.qtd_consumo * p.preco_custo_total, 2)'#13#10'           ' +
      '    end custo,'#13#10'               case'#13#10'                 when c.pos' +
      'sui_material = '#39'S'#39' then 0'#13#10'                 else c.qtd_consumo'#13#10 +
      '               end consumo,'#13#10'               c.*,'#13#10'              ' +
      ' p.referencia, p.nome, p.preco_custo_total'#13#10'        FROM (select' +
      ' c.*,'#13#10'                     coalesce((select first 1 '#39'S'#39' possui ' +
      'from produto_consumo c1 where c1.ID = c.ID_Material), '#39'N'#39') Possu' +
      'i_Material'#13#10'                from produto_consumo c) c'#13#10'        J' +
      'OIN produto p ON p.id = c.id_material'#13#10'        WHERE c.ID = :ID'#13 +
      #10#13#10'        UNION ALL'#13#10#13#10'        SELECT pai.grau + 1 grau,'#13#10'     ' +
      '          pai.total_consumo,'#13#10'               case'#13#10'             ' +
      '    when filho.possui_material = '#39'S'#39' then 0'#13#10'                 el' +
      'se round(pai.total_consumo * filho.qtd_consumo * p.preco_custo_t' +
      'otal, 2)'#13#10'               end custo,'#13#10'               case'#13#10'      ' +
      '           when filho.possui_material = '#39'S'#39' then 0'#13#10'            ' +
      '     else pai.total_consumo * filho.qtd_consumo'#13#10'               ' +
      'end consumo,'#13#10'               filho.*,'#13#10'               p.referenc' +
      'ia, p.nome, p.preco_custo_total'#13#10'        FROM (select c.*,'#13#10'    ' +
      '                 coalesce((select first 1 '#39'S'#39' possui from produt' +
      'o_consumo c1 where c1.ID = c.ID_Material), '#39'N'#39') Possui_Material'#13 +
      #10'                from produto_consumo c) filho'#13#10'          JOIN c' +
      'onsumo pai ON pai.ID_Material = filho.ID'#13#10'          JOIN produto' +
      ' p ON p.id = filho.id_material'#13#10'   ),'#13#10'   consumo1 as ('#13#10'       ' +
      ' SELECT c.possui_material,'#13#10'               c.id,'#13#10'              ' +
      ' c.id_material,'#13#10'               c.qtd_consumo,'#13#10'               c' +
      '.preco_custo_total,'#13#10'               c.consumo,'#13#10'               c' +
      '.custo,'#13#10'               c.referencia,'#13#10'               c.grau,'#13#10' ' +
      '              c.unidade,'#13#10'               c.nome'#13#10'          FROM ' +
      'consumo c'#13#10'         WHERE c.custo > 0'#13#10#13#10'         UNION ALL'#13#10#13#10' ' +
      '        SELECT pai.possui_material,'#13#10'                pai.id,'#13#10'  ' +
      '              pai.id_material,'#13#10'                pai.qtd_consumo,' +
      #13#10'                pai.preco_custo_total,'#13#10'                case'#13#10 +
      '                  when pai.consumo = 0 then filho.consumo'#13#10'     ' +
      '              else filho.consumo'#13#10'                end consumo,'#13#10 +
      '                case'#13#10'                  when pai.custo = 0 then ' +
      'filho.custo'#13#10'                   else filho.custo'#13#10'              ' +
      '  end custo,'#13#10'                pai.referencia,'#13#10'                p' +
      'ai.grau,'#13#10'                pai.unidade,'#13#10'                pai.nome' +
      #13#10'           FROM consumo pai'#13#10'           JOIN consumo1 filho ON' +
      ' filho.ID = pai.ID_Material'#13#10'   ),'#13#10'   consumo2 as('#13#10'         SE' +
      'LECT c.possui_material,'#13#10'                c.id,'#13#10'                ' +
      'c.id_material,'#13#10'                c.qtd_consumo,'#13#10'                ' +
      'c.preco_custo_total,'#13#10'                Sum(c.consumo) consumo,'#13#10' ' +
      '               Sum(c.custo) custo,'#13#10'                c.referencia' +
      ','#13#10'                c.grau,'#13#10'                c.unidade,'#13#10'        ' +
      '        c.nome'#13#10'           FROM consumo1 c'#13#10'          GROUP BY c' +
      '.grau,c.id,'#13#10'                   c.id_material,'#13#10'                ' +
      '   c.qtd_consumo,'#13#10'                   c.referencia,'#13#10'           ' +
      '        c.nome,'#13#10'                   c.preco_custo_total,'#13#10'      ' +
      '             c.possui_material,'#13#10'                   c.unidade'#13#10' ' +
      '  )'#13#10'SELECT c.possui_material,'#13#10'       c.id pertence,'#13#10'       c.' +
      'id_material,'#13#10'       c.qtd_consumo,'#13#10'       c.preco_custo_total,' +
      #13#10'       coalesce((Select consumo from consumo2 c2 where c2.id =' +
      ' c.id and c2.id_material = c.id_material), 0) consumo,'#13#10'       c' +
      'oalesce((Select custo from consumo2 c2 where c2.id = c.id and c2' +
      '.id_material = c.id_material), 0) custo,'#13#10'       c.referencia,'#13#10 +
      '       c.grau,'#13#10'       case'#13#10'         when c.possui_material = '#39 +
      'N'#39' then c.unidade'#13#10'         else '#39#39#13#10'       end unidade,'#13#10'      ' +
      ' lpad('#39#39', (c.grau - 1) * 5) || c.nome nome'#13#10'  FROM consumo c'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 211
  end
  object dspConsumo_Det: TDataSetProvider
    DataSet = sdsConsumo_Det
    Left = 448
    Top = 211
  end
  object cdsConsumo_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsumo_Det'
    Left = 480
    Top = 211
    object cdsConsumo_DetPOSSUI_MATERIAL: TStringField
      FieldName = 'POSSUI_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsConsumo_DetPERTENCE: TIntegerField
      FieldName = 'PERTENCE'
      Required = True
    end
    object cdsConsumo_DetID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumo_DetQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsumo_DetCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsConsumo_DetCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object cdsConsumo_DetREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsumo_DetGRAU: TIntegerField
      FieldName = 'GRAU'
      Required = True
    end
    object cdsConsumo_DetUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsConsumo_DetNOME: TStringField
      FieldName = 'NOME'
      Size = 32765
    end
    object cdsConsumo_DetPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dsConsumo_Det: TDataSource
    DataSet = cdsConsumo_Det
    Left = 512
    Top = 211
  end
  object frxConsumo_Det: TfrxDBDataset
    UserName = 'frxConsumo_Det'
    CloseDataSource = False
    FieldAliases.Strings = (
      'POSSUI_MATERIAL=POSSUI_MATERIAL'
      'PERTENCE=PERTENCE'
      'ID_MATERIAL=ID_MATERIAL'
      'QTD_CONSUMO=QTD_CONSUMO'
      'CONSUMO=CONSUMO'
      'CUSTO=CUSTO'
      'REFERENCIA=REFERENCIA'
      'GRAU=GRAU'
      'UNIDADE=UNIDADE'
      'NOME=NOME'
      'PRECO_CUSTO_TOTAL=PRECO_CUSTO_TOTAL')
    DataSource = dsConsumo_Det
    BCDToCurrency = False
    Left = 996
    Top = 608
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
    Left = 1029
    Top = 198
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
  object sdsProcesso_Grupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO_GRUPO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 171
  end
  object dspProcesso_Grupo: TDataSetProvider
    DataSet = sdsProcesso_Grupo
    Left = 448
    Top = 171
  end
  object cdsProcesso_Grupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso_Grupo'
    Left = 480
    Top = 171
    object cdsProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsProcesso_Grupo: TDataSource
    DataSet = cdsProcesso_Grupo
    Left = 512
    Top = 171
  end
  object qProcesso_Grupo_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PROCESSO_GRUPO_ITENS'
      'WHERE ID = :ID'
      'ORDER BY ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 1028
    Top = 242
    object qProcesso_Grupo_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProcesso_Grupo_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProcesso_Grupo_ItensID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
  end
  object qProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.ID, P.NOME, P.REFERENCIA, P.TIPO_REG'
      'FROM PRODUTO P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1034
    Top = 383
    object qProdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFichaTecnica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * FROM VFICHA_TECNICA'#13#10'WHERE ID = :ID AND ITEM = :ITEM'#13#10'O' +
      'RDER BY ID_SETOR'
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
    Left = 584
    Top = 204
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sdsFichaTecnica
    Left = 616
    Top = 204
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 648
    Top = 204
    object cdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsFichaTecnicaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsFichaTecnicaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsFichaTecnicaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsFichaTecnicaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsFichaTecnicaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsFichaTecnicaNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsFichaTecnicaMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsFichaTecnicaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsFichaTecnicaQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsFichaTecnicaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsFichaTecnicaID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsFichaTecnicaNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsFichaTecnicaNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
  end
  object dsFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 680
    Top = 204
  end
  object frxFichaTecnica: TfrxDBDataset
    UserName = 'frxFichaTecnica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME_PRODUTO=NOME_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'FOTO=FOTO'
      'NCM=NCM'
      'ITEM=ITEM'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'MATERIAL=MATERIAL'
      'NOME_COR=NOME_COR'
      'QTD_CONSUMO=QTD_CONSUMO'
      'UNIDADE=UNIDADE'
      'ID_SETOR=ID_SETOR'
      'NOME_SETOR=NOME_SETOR'
      'NOME_POSICAO=NOME_POSICAO')
    DataSource = dsFichaTecnica
    BCDToCurrency = False
    Left = 1036
    Top = 609
  end
  object frxGrade: TfrxDBDataset
    UserName = 'frxGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TAMANHO=TAMANHO'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'PESO_BRUTO=PESO_BRUTO'
      'clTamanho_USA=clTamanho_USA'
      'clTamanho_EUR=clTamanho_EUR'
      'TAM_MATRIZ=TAM_MATRIZ')
    DataSource = dsProduto_Tam
    BCDToCurrency = False
    Left = 1078
    Top = 609
  end
  object sdsProduto_GradeNum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_GRADENUM'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 210
    Top = 50
    object sdsProduto_GradeNumID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_GradeNumTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsProduto_GradeNumTAM_MATERIAL: TStringField
      FieldName = 'TAM_MATERIAL'
      Size = 10
    end
  end
  object dspProduto_GradeNum: TDataSetProvider
    DataSet = sdsProduto_GradeNum
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 242
    Top = 50
  end
  object cdsProduto_GradeNum: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;TAMANHO'
    Params = <>
    ProviderName = 'dspProduto_GradeNum'
    Left = 274
    Top = 50
    object cdsProduto_GradeNumID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_GradeNumTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsProduto_GradeNumTAM_MATERIAL: TStringField
      FieldName = 'TAM_MATERIAL'
      Size = 10
    end
  end
  object dsProduto_GradeNum: TDataSource
    DataSet = cdsProduto_GradeNum
    Left = 306
    Top = 50
  end
  object sdsTamanho: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAMANHO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 344
  end
  object dspTamanho: TDataSetProvider
    DataSet = sdsTamanho
    Left = 448
    Top = 344
  end
  object cdsTamanho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TAMANHO'
    Params = <>
    ProviderName = 'dspTamanho'
    Left = 480
    Top = 344
    object cdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsTamanho: TDataSource
    DataSet = cdsTamanho
    Left = 512
    Top = 346
  end
  object cdsCloneProdComb: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 88
    object cdsCloneProdCombID: TIntegerField
      FieldName = 'ID'
    end
    object cdsCloneProdCombITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsCloneProdCombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCloneProdCombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dsCloneProd_Comb: TDataSource
    DataSet = cdsCloneProdComb
    Left = 480
    Top = 88
  end
  object sdsProduto_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_LOTE'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 623
    object sdsProduto_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_LoteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProduto_LoteLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object dspProduto_Lote: TDataSetProvider
    DataSet = sdsProduto_Lote
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 623
  end
  object cdsProduto_Lote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Lote'
    OnCalcFields = cdsProduto_LoteCalcFields
    Left = 114
    Top = 623
    object cdsProduto_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_LoteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      EditFormat = '0.000###'
    end
    object cdsProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      EditFormat = '0.00'
    end
    object cdsProduto_LoteLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProduto_LoteclQtde: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtde'
      ProviderFlags = []
      EditFormat = '0.00'
      Calculated = True
    end
  end
  object dsProduto_Lote: TDataSource
    DataSet = cdsProduto_Lote
    Left = 146
    Top = 623
  end
  object qEstoqueLote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum(QTD) QTD'
      'from ESTOQUE_LOTE'
      'where ID_PRODUTO = :ID_PRODUTO and'
      '      NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE   ')
    SQLConnection = dmDatabase.scoDados
    Left = 1032
    Top = 291
    object qEstoqueLoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PEDIDO_LOJA , USA_CAIXINHA'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 1155
    Top = 294
    object qParametros_PedPEDIDO_LOJA: TStringField
      FieldName = 'PEDIDO_LOJA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_CAIXINHA: TStringField
      FieldName = 'USA_CAIXINHA'
      FixedChar = True
      Size = 1
    end
  end
  object qProdSemi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select COUNT(1) CONTADOR'
      'from produto_semi P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1033
    Top = 337
    object qProdSemiCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qCustoNV: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM CUSTONV C'
      'WHERE C.ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 1079
    Top = 380
    object qCustoNVCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_PROCESSO_OS'
      'FROM PARAMETROS_SER')
    SQLConnection = dmDatabase.scoDados
    Left = 947
    Top = 431
    object qParametros_SerUSA_PROCESSO_OS: TStringField
      FieldName = 'USA_PROCESSO_OS'
      FixedChar = True
      Size = 1
    end
  end
  object mAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomePosicao'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomePosicao'
    Params = <>
    StoreDefs = True
    Left = 1133
    Top = 179
    Data = {
      770000009619E0BD01000000180000000300000000000300000077000C4E6F6D
      654D6174657269616C0100490000000100055749445448020002003C00074E6F
      6D65436F7201004900000001000557494454480200020028000B4E6F6D65506F
      736963616F01004900000001000557494454480200020028000000}
    object mAuxNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object mAuxNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 40
    end
    object mAuxNomePosicao: TStringField
      FieldName = 'NomePosicao'
      Size = 40
    end
  end
  object qTalaoAux: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR, '#39'TALAO'#39' TIPO'
      'FROM TALAO_AUX T'
      'WHERE T.dtretorno IS NULL'
      '  AND T.ID_PRODUTO = :ID_PRODUTO'
      ''
      'UNION'
      ''
      'select count(1) CONTADOR, '#39'LOTE'#39' TIPO'
      'FROM LOTE L'
      'WHERE L.ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 902
    Top = 430
    object qTalaoAuxCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
    object qTalaoAuxTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object mGradeRefTam: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TamMaterial'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Tamanho'
    Params = <>
    StoreDefs = True
    Left = 1119
    Top = 19
    Data = {
      610000009619E0BD01000000180000000300000000000300000061000754616D
      616E686F0100490000000100055749445448020002000A000B54616D4D617465
      7269616C0100490000000100055749445448020002000A000249440400010000
      0000000000}
    object mGradeRefTamTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mGradeRefTamTamMaterial: TStringField
      FieldName = 'TamMaterial'
      Size = 10
    end
    object mGradeRefTamID: TIntegerField
      FieldName = 'ID'
    end
  end
  object dsmGradeRefTam: TDataSource
    DataSet = mGradeRefTam
    Left = 1150
    Top = 18
  end
  object qGradeItem: TSQLQuery
    NoMetaData = False
    GetMetadata = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM GRADE_ITENS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1036
    Top = 426
    object qGradeItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGradeItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qGradeItemTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object qGradeItemTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
  end
  object sdsProduto_MatTam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_MATTAM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 912
    Top = 144
    object sdsProduto_MatTamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MatTamID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MatTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsProduto_MatTamTAM_MATERIAL: TStringField
      FieldName = 'TAM_MATERIAL'
      Size = 10
    end
    object sdsProduto_MatTamID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
  end
  object dspProduto_MatTam: TDataSetProvider
    DataSet = sdsProduto_MatTam
    UpdateMode = upWhereKeyOnly
    Left = 941
    Top = 144
  end
  object cdsProduto_MatTam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ID_GRADE;TAMANHO'
    Params = <>
    ProviderName = 'dspProduto_MatTam'
    OnCalcFields = cdsProduto_MatTamCalcFields
    Left = 973
    Top = 143
    object cdsProduto_MatTamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MatTamID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MatTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsProduto_MatTamTAM_MATERIAL: TStringField
      FieldName = 'TAM_MATERIAL'
      Size = 10
    end
    object cdsProduto_MatTamID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
    object cdsProduto_MatTamNOME_GRADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_GRADE'
      Size = 40
      Calculated = True
    end
  end
  object dsProduto_MatTam: TDataSource
    DataSet = cdsProduto_MatTam
    Left = 1005
    Top = 144
  end
  object qGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOME'
      'FROM GRADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1151
    Top = 428
    object qGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object sdsProduto_Maq: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_MAQ'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 572
    object sdsProduto_MaqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MaqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_MaqID_MAQUINA: TIntegerField
      FieldName = 'ID_MAQUINA'
    end
  end
  object dspProduto_Maq: TDataSetProvider
    DataSet = sdsProduto_Maq
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 572
  end
  object cdsProduto_Maq: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Maq'
    Left = 464
    Top = 572
    object cdsProduto_MaqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MaqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_MaqID_MAQUINA: TIntegerField
      FieldName = 'ID_MAQUINA'
    end
    object cdsProduto_MaqlkNome_Maquina: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Maquina'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cdsProduto_MaqlkQtd_Boca: TIntegerField
      FieldKind = fkLookup
      FieldName = 'lkQtd_Boca'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'QTD_BOCA'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Lookup = True
    end
    object cdsProduto_MaqlkEspessura: TFloatField
      FieldKind = fkLookup
      FieldName = 'lkEspessura'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'ESPESSURA'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Lookup = True
    end
    object cdsProduto_MaqlkQtd_Fuso: TIntegerField
      FieldKind = fkLookup
      FieldName = 'lkQtd_Fuso'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'QTD_FUSO'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Lookup = True
    end
    object cdsProduto_MaqlkBorracha: TStringField
      FieldKind = fkLookup
      FieldName = 'lkBorracha'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'BORRACHA'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Size = 1
      Lookup = True
    end
    object cdsProduto_MaqlkFio_Auxiliar: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFio_Auxiliar'
      LookupDataSet = cdsMaquina
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO_AUXILIAR'
      KeyFields = 'ID_MAQUINA'
      ProviderFlags = []
      Size = 1
      Lookup = True
    end
  end
  object dsProduto_Maq: TDataSource
    DataSet = cdsProduto_Maq
    Left = 496
    Top = 572
  end
  object sdsMaquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, ESPESSURA, QTD_BOCA, QTD_FUSO,'#13#10'BORRACHA, FIO_A' +
      'UXILIAR'#13#10'FROM MAQUINA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 896
    Top = 480
  end
  object dspMaquina: TDataSetProvider
    DataSet = sdsMaquina
    UpdateMode = upWhereKeyOnly
    Left = 925
    Top = 480
  end
  object cdsMaquina: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaquina'
    Left = 957
    Top = 479
    object cdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMaquinaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsMaquinaQTD_BOCA: TIntegerField
      FieldName = 'QTD_BOCA'
    end
    object cdsMaquinaQTD_FUSO: TIntegerField
      FieldName = 'QTD_FUSO'
    end
    object cdsMaquinaBORRACHA: TStringField
      FieldName = 'BORRACHA'
      FixedChar = True
      Size = 1
    end
    object cdsMaquinaFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsMaquina: TDataSource
    DataSet = cdsMaquina
    Left = 989
    Top = 480
  end
  object sdsProduto_Textil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TEXTIL'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 394
    Top = 618
    object sdsProduto_TextilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_TextilLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsProduto_TextilPENTE: TFloatField
      FieldName = 'PENTE'
    end
    object sdsProduto_TextilPESO_METRO: TFloatField
      FieldName = 'PESO_METRO'
    end
    object sdsProduto_TextilTEMPO_METRO: TFloatField
      FieldName = 'TEMPO_METRO'
    end
    object sdsProduto_TextilMAQUINA_TECIDA: TStringField
      FieldName = 'MAQUINA_TECIDA'
      Size = 30
    end
    object sdsProduto_TextilNUM_BOCA: TIntegerField
      FieldName = 'NUM_BOCA'
    end
    object sdsProduto_TextilDESENHO: TStringField
      FieldName = 'DESENHO'
      Size = 15
    end
    object sdsProduto_TextilGOMA: TStringField
      FieldName = 'GOMA'
      Size = 1
    end
    object sdsProduto_TextilCOR_AMOSTRA: TStringField
      FieldName = 'COR_AMOSTRA'
      Size = 40
    end
    object sdsProduto_TextilNUM_FIO_URDUME: TStringField
      FieldName = 'NUM_FIO_URDUME'
      Size = 15
    end
    object sdsProduto_TextilNUM_FIO_ESCRITA: TStringField
      FieldName = 'NUM_FIO_ESCRITA'
      Size = 15
    end
    object sdsProduto_TextilNUM_FIO_TOTAL: TStringField
      FieldName = 'NUM_FIO_TOTAL'
      Size = 15
    end
    object sdsProduto_TextilAGULHA: TFloatField
      FieldName = 'AGULHA'
    end
    object sdsProduto_TextilPRODUCAO_8_HORAS: TStringField
      FieldName = 'PRODUCAO_8_HORAS'
      Size = 15
    end
    object sdsProduto_TextilPOLIESTER: TStringField
      FieldName = 'POLIESTER'
    end
    object sdsProduto_TextilPOLIPROPILENO: TStringField
      FieldName = 'POLIPROPILENO'
    end
    object sdsProduto_TextilBORRACHA: TStringField
      FieldName = 'BORRACHA'
      Size = 1
    end
    object sdsProduto_TextilDIFICULDADES: TMemoField
      FieldName = 'DIFICULDADES'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProduto_TextilTRAMA: TStringField
      FieldName = 'TRAMA'
      Size = 15
    end
    object sdsProduto_TextilFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      Size = 1
    end
    object sdsProduto_TextilFIO: TStringField
      FieldName = 'FIO'
    end
    object sdsProduto_TextilTITULO_FIO: TStringField
      FieldName = 'TITULO_FIO'
    end
    object sdsProduto_TextilTOTAL_BATIDAS: TFloatField
      FieldName = 'TOTAL_BATIDAS'
    end
    object sdsProduto_TextilENGRENAGEM_A: TFloatField
      FieldName = 'ENGRENAGEM_A'
    end
    object sdsProduto_TextilENGRENAGEM_B: TFloatField
      FieldName = 'ENGRENAGEM_B'
    end
    object sdsProduto_TextilENGRE_ALIM_TRAMA_A: TFloatField
      FieldName = 'ENGRE_ALIM_TRAMA_A'
    end
    object sdsProduto_TextilENGRE_ALIM_TRAMA_B: TFloatField
      FieldName = 'ENGRE_ALIM_TRAMA_B'
    end
    object sdsProduto_TextilENGRE_ALIM_BORRACHA_A: TFloatField
      FieldName = 'ENGRE_ALIM_BORRACHA_A'
    end
    object sdsProduto_TextilENGRE_ALIM_BORRACHA_B: TFloatField
      FieldName = 'ENGRE_ALIM_BORRACHA_B'
    end
    object sdsProduto_TextilQTD_BORRACHA: TFloatField
      FieldName = 'QTD_BORRACHA'
    end
    object sdsProduto_TextilQTD_BORRACHA_REVEST: TFloatField
      FieldName = 'QTD_BORRACHA_REVEST'
    end
    object sdsProduto_TextilTITULO_BORRACHA_REVEST: TStringField
      FieldName = 'TITULO_BORRACHA_REVEST'
    end
    object sdsProduto_TextilELASTICIDADE: TFloatField
      FieldName = 'ELASTICIDADE'
    end
    object sdsProduto_TextilLIGAMENTO: TStringField
      FieldName = 'LIGAMENTO'
    end
    object sdsProduto_TextilENCHIMENTO: TStringField
      FieldName = 'ENCHIMENTO'
    end
    object sdsProduto_TextilENGRENAGEM_AGULHA: TFloatField
      FieldName = 'ENGRENAGEM_AGULHA'
    end
    object sdsProduto_TextilPRODUCAO_22_DIAS: TStringField
      FieldName = 'PRODUCAO_22_DIAS'
      Size = 15
    end
    object sdsProduto_TextilALGODAO: TStringField
      FieldName = 'ALGODAO'
    end
    object sdsProduto_TextilHELANCA: TStringField
      FieldName = 'HELANCA'
    end
    object sdsProduto_TextilID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
    end
    object sdsProduto_TextilDT_FICHA: TDateField
      FieldName = 'DT_FICHA'
    end
    object sdsProduto_TextilSETUP_INICIO: TFloatField
      FieldName = 'SETUP_INICIO'
    end
    object sdsProduto_TextilSETUP_TROCA: TFloatField
      FieldName = 'SETUP_TROCA'
    end
    object sdsProduto_TextilQTD_POR_MIN: TFloatField
      FieldName = 'QTD_POR_MIN'
    end
    object sdsProduto_TextilFIO_POR_PUA: TStringField
      FieldName = 'FIO_POR_PUA'
      Size = 30
    end
  end
  object dspProduto_Textil: TDataSetProvider
    DataSet = sdsProduto_Textil
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 426
    Top = 618
  end
  object cdsProduto_Textil: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Textil'
    OnNewRecord = cdsProduto_TextilNewRecord
    Left = 458
    Top = 618
    object cdsProduto_TextilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_TextilLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsProduto_TextilPENTE: TFloatField
      FieldName = 'PENTE'
    end
    object cdsProduto_TextilPESO_METRO: TFloatField
      FieldName = 'PESO_METRO'
    end
    object cdsProduto_TextilTEMPO_METRO: TFloatField
      FieldName = 'TEMPO_METRO'
    end
    object cdsProduto_TextilMAQUINA_TECIDA: TStringField
      FieldName = 'MAQUINA_TECIDA'
      Size = 30
    end
    object cdsProduto_TextilNUM_BOCA: TIntegerField
      FieldName = 'NUM_BOCA'
    end
    object cdsProduto_TextilDESENHO: TStringField
      FieldName = 'DESENHO'
      Size = 15
    end
    object cdsProduto_TextilGOMA: TStringField
      FieldName = 'GOMA'
      Size = 1
    end
    object cdsProduto_TextilCOR_AMOSTRA: TStringField
      FieldName = 'COR_AMOSTRA'
      Size = 40
    end
    object cdsProduto_TextilNUM_FIO_URDUME: TStringField
      FieldName = 'NUM_FIO_URDUME'
      Size = 15
    end
    object cdsProduto_TextilNUM_FIO_ESCRITA: TStringField
      FieldName = 'NUM_FIO_ESCRITA'
      Size = 15
    end
    object cdsProduto_TextilNUM_FIO_TOTAL: TStringField
      FieldName = 'NUM_FIO_TOTAL'
      Size = 15
    end
    object cdsProduto_TextilAGULHA: TFloatField
      FieldName = 'AGULHA'
    end
    object cdsProduto_TextilPRODUCAO_8_HORAS: TStringField
      FieldName = 'PRODUCAO_8_HORAS'
      Size = 15
    end
    object cdsProduto_TextilPOLIESTER: TStringField
      FieldName = 'POLIESTER'
    end
    object cdsProduto_TextilPOLIPROPILENO: TStringField
      FieldName = 'POLIPROPILENO'
    end
    object cdsProduto_TextilBORRACHA: TStringField
      FieldName = 'BORRACHA'
      Size = 1
    end
    object cdsProduto_TextilDIFICULDADES: TMemoField
      FieldName = 'DIFICULDADES'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProduto_TextilTRAMA: TStringField
      FieldName = 'TRAMA'
      Size = 15
    end
    object cdsProduto_TextilFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      Size = 1
    end
    object cdsProduto_TextilFIO: TStringField
      FieldName = 'FIO'
    end
    object cdsProduto_TextilTITULO_FIO: TStringField
      FieldName = 'TITULO_FIO'
    end
    object cdsProduto_TextilTOTAL_BATIDAS: TFloatField
      FieldName = 'TOTAL_BATIDAS'
    end
    object cdsProduto_TextilENGRENAGEM_A: TFloatField
      FieldName = 'ENGRENAGEM_A'
    end
    object cdsProduto_TextilENGRENAGEM_B: TFloatField
      FieldName = 'ENGRENAGEM_B'
    end
    object cdsProduto_TextilENGRE_ALIM_TRAMA_A: TFloatField
      FieldName = 'ENGRE_ALIM_TRAMA_A'
    end
    object cdsProduto_TextilENGRE_ALIM_TRAMA_B: TFloatField
      FieldName = 'ENGRE_ALIM_TRAMA_B'
    end
    object cdsProduto_TextilENGRE_ALIM_BORRACHA_A: TFloatField
      FieldName = 'ENGRE_ALIM_BORRACHA_A'
    end
    object cdsProduto_TextilENGRE_ALIM_BORRACHA_B: TFloatField
      FieldName = 'ENGRE_ALIM_BORRACHA_B'
    end
    object cdsProduto_TextilQTD_BORRACHA: TFloatField
      FieldName = 'QTD_BORRACHA'
    end
    object cdsProduto_TextilQTD_BORRACHA_REVEST: TFloatField
      FieldName = 'QTD_BORRACHA_REVEST'
    end
    object cdsProduto_TextilTITULO_BORRACHA_REVEST: TStringField
      FieldName = 'TITULO_BORRACHA_REVEST'
    end
    object cdsProduto_TextilELASTICIDADE: TFloatField
      FieldName = 'ELASTICIDADE'
    end
    object cdsProduto_TextilLIGAMENTO: TStringField
      FieldName = 'LIGAMENTO'
    end
    object cdsProduto_TextilENCHIMENTO: TStringField
      FieldName = 'ENCHIMENTO'
    end
    object cdsProduto_TextilENGRENAGEM_AGULHA: TFloatField
      FieldName = 'ENGRENAGEM_AGULHA'
    end
    object cdsProduto_TextilPRODUCAO_22_DIAS: TStringField
      FieldName = 'PRODUCAO_22_DIAS'
      Size = 15
    end
    object cdsProduto_TextilALGODAO: TStringField
      FieldName = 'ALGODAO'
    end
    object cdsProduto_TextilHELANCA: TStringField
      FieldName = 'HELANCA'
    end
    object cdsProduto_TextilID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
    end
    object cdsProduto_TextilDT_FICHA: TDateField
      FieldName = 'DT_FICHA'
    end
    object cdsProduto_TextilSETUP_INICIO: TFloatField
      FieldName = 'SETUP_INICIO'
    end
    object cdsProduto_TextilSETUP_TROCA: TFloatField
      FieldName = 'SETUP_TROCA'
    end
    object cdsProduto_TextilQTD_POR_MIN: TFloatField
      FieldName = 'QTD_POR_MIN'
    end
    object cdsProduto_TextilFIO_POR_PUA: TStringField
      FieldName = 'FIO_POR_PUA'
      Size = 30
    end
  end
  object dsProduto_Textil: TDataSource
    DataSet = cdsProduto_Textil
    Left = 490
    Top = 618
  end
  object sdsProduto_Textil_DP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TEXTIL_DP'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 624
    object sdsProduto_Textil_DPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Textil_DPITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Textil_DPD1: TStringField
      FieldName = 'D1'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD2: TStringField
      FieldName = 'D2'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD3: TStringField
      FieldName = 'D3'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD4: TStringField
      FieldName = 'D4'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD5: TStringField
      FieldName = 'D5'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD6: TStringField
      FieldName = 'D6'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD7: TStringField
      FieldName = 'D7'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD8: TStringField
      FieldName = 'D8'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD9: TStringField
      FieldName = 'D9'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD10: TStringField
      FieldName = 'D10'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD11: TStringField
      FieldName = 'D11'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD12: TStringField
      FieldName = 'D12'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD13: TStringField
      FieldName = 'D13'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPD14: TStringField
      FieldName = 'D14'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP1: TStringField
      FieldName = 'P1'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP2: TStringField
      FieldName = 'P2'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP3: TStringField
      FieldName = 'P3'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP4: TStringField
      FieldName = 'P4'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP5: TStringField
      FieldName = 'P5'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP6: TStringField
      FieldName = 'P6'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP7: TStringField
      FieldName = 'P7'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP8: TStringField
      FieldName = 'P8'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP9: TStringField
      FieldName = 'P9'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP10: TStringField
      FieldName = 'P10'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP11: TStringField
      FieldName = 'P11'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP12: TStringField
      FieldName = 'P12'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP13: TStringField
      FieldName = 'P13'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPP14: TStringField
      FieldName = 'P14'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_Textil_DPOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspProduto_Textil_DP: TDataSetProvider
    DataSet = sdsProduto_Textil_DP
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 624
  end
  object cdsProduto_Textil_DP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Textil_DP'
    BeforeInsert = cdsProduto_Textil_DPBeforeInsert
    AfterInsert = cdsProduto_Textil_DPAfterInsert
    BeforePost = cdsProduto_Textil_DPBeforePost
    Left = 272
    Top = 624
    object cdsProduto_Textil_DPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Textil_DPITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Textil_DPD1: TStringField
      FieldName = 'D1'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD2: TStringField
      FieldName = 'D2'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD3: TStringField
      FieldName = 'D3'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD4: TStringField
      FieldName = 'D4'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD5: TStringField
      FieldName = 'D5'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD6: TStringField
      FieldName = 'D6'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD7: TStringField
      FieldName = 'D7'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD8: TStringField
      FieldName = 'D8'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD9: TStringField
      FieldName = 'D9'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD10: TStringField
      FieldName = 'D10'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD11: TStringField
      FieldName = 'D11'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD12: TStringField
      FieldName = 'D12'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD13: TStringField
      FieldName = 'D13'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPD14: TStringField
      FieldName = 'D14'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP1: TStringField
      FieldName = 'P1'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP2: TStringField
      FieldName = 'P2'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP3: TStringField
      FieldName = 'P3'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP4: TStringField
      FieldName = 'P4'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP5: TStringField
      FieldName = 'P5'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP6: TStringField
      FieldName = 'P6'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP7: TStringField
      FieldName = 'P7'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP8: TStringField
      FieldName = 'P8'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP9: TStringField
      FieldName = 'P9'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP10: TStringField
      FieldName = 'P10'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP11: TStringField
      FieldName = 'P11'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP12: TStringField
      FieldName = 'P12'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP13: TStringField
      FieldName = 'P13'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPP14: TStringField
      FieldName = 'P14'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_Textil_DPOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsProduto_Textil_DP: TDataSource
    DataSet = cdsProduto_Textil_DP
    Left = 312
    Top = 624
  end
  object sdsProduto_Tranc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TRANC'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 640
    object sdsProduto_TrancID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_TrancFUSO: TFloatField
      FieldName = 'FUSO'
    end
    object sdsProduto_TrancMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Size = 30
    end
    object sdsProduto_TrancENGRENAGEM: TStringField
      FieldName = 'ENGRENAGEM'
    end
    object sdsProduto_TrancENGRENAGEM_SUP: TFloatField
      FieldName = 'ENGRENAGEM_SUP'
    end
    object sdsProduto_TrancENGRENAGEM_INF: TFloatField
      FieldName = 'ENGRENAGEM_INF'
    end
    object sdsProduto_TrancCANALETA: TStringField
      FieldName = 'CANALETA'
      Size = 30
    end
    object sdsProduto_TrancESPULAS: TStringField
      FieldName = 'ESPULAS'
      Size = 30
    end
    object sdsProduto_TrancDIREITA: TStringField
      FieldName = 'DIREITA'
      Size = 50
    end
    object sdsProduto_TrancESQUERDA: TStringField
      FieldName = 'ESQUERDA'
      Size = 50
    end
    object sdsProduto_TrancALMA_BORRACHA: TStringField
      FieldName = 'ALMA_BORRACHA'
      Size = 30
    end
    object sdsProduto_TrancFIO: TStringField
      FieldName = 'FIO'
      Size = 30
    end
    object sdsProduto_TrancMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 30
    end
    object sdsProduto_TrancPESO_METRO: TFloatField
      FieldName = 'PESO_METRO'
    end
    object sdsProduto_TrancTEMPO_ESPULADEIRA: TFloatField
      FieldName = 'TEMPO_ESPULADEIRA'
    end
    object sdsProduto_TrancQTD_POR_MIN: TFloatField
      FieldName = 'QTD_POR_MIN'
    end
    object sdsProduto_TrancSETUP_INICIO: TFloatField
      FieldName = 'SETUP_INICIO'
    end
    object sdsProduto_TrancSETUP_TROCA: TFloatField
      FieldName = 'SETUP_TROCA'
    end
    object sdsProduto_TrancMETROS_CARGA: TFloatField
      FieldName = 'METROS_CARGA'
    end
    object sdsProduto_TrancAGULHA: TFloatField
      FieldName = 'AGULHA'
    end
    object sdsProduto_TrancOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProduto_TrancDT_FICHA: TDateField
      FieldName = 'DT_FICHA'
    end
  end
  object dspProduto_Tranc: TDataSetProvider
    DataSet = sdsProduto_Tranc
    Left = 608
    Top = 640
  end
  object cdsProduto_Tranc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto_Tranc'
    Left = 640
    Top = 640
    object cdsProduto_TrancID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_TrancFUSO: TFloatField
      FieldName = 'FUSO'
    end
    object cdsProduto_TrancMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Size = 30
    end
    object cdsProduto_TrancENGRENAGEM: TStringField
      FieldName = 'ENGRENAGEM'
    end
    object cdsProduto_TrancENGRENAGEM_SUP: TFloatField
      FieldName = 'ENGRENAGEM_SUP'
    end
    object cdsProduto_TrancENGRENAGEM_INF: TFloatField
      FieldName = 'ENGRENAGEM_INF'
    end
    object cdsProduto_TrancCANALETA: TStringField
      FieldName = 'CANALETA'
      Size = 30
    end
    object cdsProduto_TrancESPULAS: TStringField
      FieldName = 'ESPULAS'
      Size = 30
    end
    object cdsProduto_TrancDIREITA: TStringField
      FieldName = 'DIREITA'
      Size = 50
    end
    object cdsProduto_TrancESQUERDA: TStringField
      FieldName = 'ESQUERDA'
      Size = 50
    end
    object cdsProduto_TrancALMA_BORRACHA: TStringField
      FieldName = 'ALMA_BORRACHA'
      Size = 30
    end
    object cdsProduto_TrancFIO: TStringField
      FieldName = 'FIO'
      Size = 30
    end
    object cdsProduto_TrancMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 30
    end
    object cdsProduto_TrancPESO_METRO: TFloatField
      FieldName = 'PESO_METRO'
    end
    object cdsProduto_TrancTEMPO_ESPULADEIRA: TFloatField
      FieldName = 'TEMPO_ESPULADEIRA'
    end
    object cdsProduto_TrancQTD_POR_MIN: TFloatField
      FieldName = 'QTD_POR_MIN'
    end
    object cdsProduto_TrancSETUP_INICIO: TFloatField
      FieldName = 'SETUP_INICIO'
    end
    object cdsProduto_TrancSETUP_TROCA: TFloatField
      FieldName = 'SETUP_TROCA'
    end
    object cdsProduto_TrancMETROS_CARGA: TFloatField
      FieldName = 'METROS_CARGA'
    end
    object cdsProduto_TrancAGULHA: TFloatField
      FieldName = 'AGULHA'
    end
    object cdsProduto_TrancOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProduto_TrancDT_FICHA: TDateField
      FieldName = 'DT_FICHA'
    end
  end
  object dsProduto_Tranc: TDataSource
    DataSet = cdsProduto_Tranc
    Left = 672
    Top = 640
  end
  object dspProduto_Consumo_Prod: TDataSetProvider
    DataSet = sdsProduto_Consumo_Proc
    UpdateMode = upWhereKeyOnly
    Left = 1120
    Top = 496
  end
  object sdsProduto_Consumo_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_CONSUMO_PROC'#13#10'WHERE ID = :ID'#13#10'  AND ITEM ' +
      '= :ITEM'
    DataSource = dsProduto_Consumo_Mestre
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
    Left = 1080
    Top = 496
    object sdsProduto_Consumo_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Consumo_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Consumo_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_Consumo_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
  end
  object cdsProduto_Consumo_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProduto_ConsumosdsProduto_Consumo_Proc
    IndexFieldNames = 'ID;ITEM;ITEM_PROC'
    Params = <>
    Left = 1160
    Top = 496
    object cdsProduto_Consumo_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Consumo_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Consumo_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_Consumo_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsProduto_Consumo_ProclkProcesso: TStringField
      FieldKind = fkLookup
      FieldName = 'lkProcesso'
      LookupDataSet = cdsProcesso
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PROCESSO'
      Size = 30
      Lookup = True
    end
  end
  object dsProduto_Consumo_Proc: TDataSource
    DataSet = cdsProduto_Consumo_Proc
    Left = 1200
    Top = 496
  end
end
