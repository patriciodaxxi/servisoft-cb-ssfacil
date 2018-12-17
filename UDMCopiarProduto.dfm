object DMCopiarProduto: TDMCopiarProduto
  OldCreateOrder = False
  Left = 258
  Top = 5
  Height = 650
  Width = 825
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE ID = :ID'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 90
    Top = 24
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
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
      Size = 3
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
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    OnUpdateError = dspProdutoUpdateError
    Left = 154
    Top = 24
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 218
    Top = 24
    object cdsProdutoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
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
      Size = 3
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
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
    object cdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 290
    Top = 24
  end
  object dsProduto_Mestre: TDataSource
    DataSet = sdsProduto
    Left = 34
    Top = 72
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.*, MAT.NOME NOMEMATERIAL, MAT.REFERENCIA, MAT.PRECO_C' +
      'USTO, POS.NOME NOME_POSICAO'#13#10'FROM PRODUTO_CONSUMO PRO'#13#10'INNER JOI' +
      'N PRODUTO MAT'#13#10'ON PRO.ID_MATERIAL = MAT.ID'#13#10'LEFT JOIN POSICAO PO' +
      'S'#13#10'ON PRO.ID_POSICAO = POS.ID'#13#10'WHERE PRO.ID = :ID'
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
    Left = 98
    Top = 136
    object sdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
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
    object sdsProduto_ConsumoNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 65
    end
    object sdsProduto_ConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsProduto_ConsumoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
    end
    object sdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object sdsProduto_ConsumoNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
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
  end
  object cdsProduto_Consumo: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Consumo
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 202
    Top = 136
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
    object cdsProduto_ConsumoNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 65
    end
    object cdsProduto_ConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsProduto_ConsumoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
      DisplayFormat = '0.0000##'
    end
    object cdsProduto_ConsumoclVlr_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total'
      ProviderFlags = []
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_ConsumoNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsProduto_ConsumosdsProduto_Consumo_Tam: TDataSetField
      FieldName = 'sdsProduto_Consumo_Tam'
    end
    object cdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
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
    object cdsProduto_ConsumoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_ConsumoTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumosdsProduto_Consumo_Proc: TDataSetField
      FieldName = 'sdsProduto_Consumo_Proc'
    end
  end
  object dsProduto_Consumo: TDataSource
    DataSet = cdsProduto_Consumo
    Left = 298
    Top = 136
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
    Left = 106
    Top = 280
    object sdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
  end
  object cdsProduto_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProduto_Tam
    IndexFieldNames = 'ID;TAMANHO'
    Params = <>
    Left = 194
    Top = 280
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsProduto_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsProduto_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 282
    Top = 280
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
    Left = 136
    Top = 208
    object sdsProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object cdsProduto_Consumo_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProduto_ConsumosdsProduto_Consumo_Tam
    IndexFieldNames = 'ID;ITEM;TAMANHO'
    Params = <>
    Left = 216
    Top = 208
    object cdsProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsProduto_Consumo_Tam: TDataSource
    DataSet = cdsProduto_Consumo_Tam
    Left = 288
    Top = 208
  end
  object dsProduto_Consumo_Mestre: TDataSource
    DataSet = sdsProduto_Consumo
    Left = 56
    Top = 184
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
    Left = 114
    Top = 370
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
    Left = 146
    Top = 370
  end
  object cdsProduto_Cor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Cor'
    Left = 178
    Top = 370
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
    Left = 210
    Top = 370
  end
  object sdsProduto_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_COMB'#13#10'WHERE ID = :ID'#13#10'  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 430
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
  end
  object dspProduto_Comb: TDataSetProvider
    DataSet = sdsProduto_Comb
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 146
    Top = 438
  end
  object cdsProduto_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Comb'
    Left = 176
    Top = 438
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
  end
  object dsProduto_Comb: TDataSource
    DataSet = cdsProduto_Comb
    Left = 208
    Top = 438
  end
  object dsProduto_Comb_Mestre: TDataSource
    DataSet = sdsProduto_Comb
    Left = 88
    Top = 480
  end
  object sdsProduto_Comb_Mat: TSQLDataSet
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
    Left = 112
    Top = 520
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
  end
  object cdsProduto_Comb_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProduto_CombsdsProduto_Comb_Mat
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    Left = 176
    Top = 520
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
  end
  object dsProduto_Comb_Mat: TDataSource
    DataSet = cdsProduto_Comb_Mat
    Left = 208
    Top = 520
  end
  object sdsSel_Produto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, REFERENCIA, NOME'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10 +
      '  AND TIPO_REG = :TIPO_REG'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'TIPO_REG'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 144
  end
  object dspSel_Produto: TDataSetProvider
    DataSet = sdsSel_Produto
    Left = 632
    Top = 144
  end
  object cdsSel_Produto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSel_Produto'
    Left = 680
    Top = 143
    object cdsSel_ProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSel_ProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsSel_ProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsSel_Produto: TDataSource
    DataSet = cdsSel_Produto
    Left = 720
    Top = 144
  end
  object sdsCopia_Produto_Agrupado: TSQLDataSet
    CommandText = 
      'select *'#13#10'from PRODUTO PRO'#13#10'inner join PRODUTO_CONSUMO CON on PR' +
      'O.ID = CON.ID'#13#10'where PRO.TIPO_REG = '#39'P'#39' and'#13#10'      CON.ID_MATERI' +
      'AL = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 248
    object sdsCopia_Produto_AgrupadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCopia_Produto_AgrupadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsCopia_Produto_AgrupadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspCopia_Produto_Agrupado: TDataSetProvider
    DataSet = sdsCopia_Produto_Agrupado
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 248
  end
  object cdsCopia_Produto_Agrupado: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCopia_Produto_Agrupado'
    Left = 544
    Top = 248
    object cdsCopia_Produto_AgrupadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCopia_Produto_AgrupadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCopia_Produto_AgrupadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCopia_Produto_AgrupadosdsCopia_Comb_Agrupado: TDataSetField
      FieldName = 'sdsCopia_Comb_Agrupado'
    end
  end
  object dsCopia_Produto_Agrupado: TDataSource
    DataSet = cdsCopia_Produto_Agrupado
    Left = 600
    Top = 248
  end
  object sdsCopia_Produto_Comb: TSQLDataSet
    CommandText = 'select * FROM PRODUTO_COMB'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 360
    Top = 472
    object sdsCopia_Produto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCopia_Produto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCopia_Produto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCopia_Produto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCopia_Produto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCopia_Produto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsCopia_Produto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsCopia_Produto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsCopia_Produto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsCopia_Produto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object cdsCopia_Produto_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspCopia_Produto_Comb'
    Left = 488
    Top = 472
    object cdsCopia_Produto_CombID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCopia_Produto_CombITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCopia_Produto_CombID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCopia_Produto_CombNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCopia_Produto_CombINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCopia_Produto_CombTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsCopia_Produto_CombPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCopia_Produto_CombPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCopia_Produto_CombPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsCopia_Produto_CombID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dsCopia_Produto_Comb: TDataSource
    DataSet = cdsCopia_Produto_Comb
    Left = 544
    Top = 472
  end
  object dspCopia_Produto_Comb: TDataSetProvider
    DataSet = sdsCopia_Produto_Comb
    Left = 440
    Top = 472
  end
  object sdsCopia_Comb_Agrupado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select * from PRODUTO_COMB'#13#10'where ID = :ID   '
    DataSource = dsCopia_Agrupado_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 352
    object sdsCopia_Comb_AgrupadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCopia_Comb_AgrupadoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCopia_Comb_AgrupadoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCopia_Comb_AgrupadoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCopia_Comb_AgrupadoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCopia_Comb_AgrupadoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsCopia_Comb_AgrupadoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsCopia_Comb_AgrupadoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsCopia_Comb_AgrupadoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsCopia_Comb_AgrupadoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object cdsCopia_Comb_Agrupado: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsCopia_Produto_AgrupadosdsCopia_Comb_Agrupado
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 472
    Top = 352
    object cdsCopia_Comb_AgrupadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCopia_Comb_AgrupadoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCopia_Comb_AgrupadoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCopia_Comb_AgrupadoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCopia_Comb_AgrupadoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCopia_Comb_AgrupadoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsCopia_Comb_AgrupadoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCopia_Comb_AgrupadoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCopia_Comb_AgrupadoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsCopia_Comb_AgrupadoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object dsCopia_Comb_Agrupado: TDataSource
    DataSet = cdsCopia_Comb_Agrupado
    Left = 528
    Top = 352
  end
  object dsCopia_Agrupado_Mestre: TDataSource
    DataSet = sdsCopia_Produto_Agrupado
    Left = 432
    Top = 304
  end
  object qSemi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pc.id_material, pc.qtd_consumo'
      'from produto_consumo pc'
      'inner join produto mat'
      'on pc.id_material = mat.id'
      'where mat.tipo_reg = '#39'S'#39
      '  and pc.id = :id')
    SQLConnection = dmDatabase.scoDados
    Left = 680
    Top = 384
    object qSemiID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qSemiQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
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
    Left = 456
    Top = 40
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
  object dspProduto_Consumo_Proc: TDataSetProvider
    DataSet = sdsProduto_Consumo_Proc
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 40
  end
  object cdsProduto_Consumo_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProduto_ConsumosdsProduto_Consumo_Proc
    Params = <>
    Left = 552
    Top = 40
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
  end
  object dsProduto_Consumo_Proc: TDataSource
    DataSet = cdsProduto_Consumo_Proc
    Left = 600
    Top = 40
  end
end
