object DMConsProduto: TDMConsProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 408
  Top = 171
  Height = 452
  Width = 570
  object sdsConsulta_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.ID_PRODUTO, M.ID_PESSOA, M.tipo_reg, M.tipo_mov, M.tipo' +
      '_es,'#13#10'M.tipo_condicao, M.id_cor, M.id_cfop, M.id_condpgto, M.qtd' +
      ', M.vlr_unitario,'#13#10'M.vlr_icms, M.vlr_ipi, M.vlr_icmssubst, M.vlr' +
      '_icms_uf_dest,'#13#10'M.REFERENCIA, M.nome_produto_serv, COMB.nome NOM' +
      'E_COR, PES.NOME NOME_PESSOA,'#13#10'M.unidade, CFOP.CODCFOP, CFOP.FATU' +
      'RAMENTO, CFOP.DEVOLUCAO, M.dtemissao,'#13#10'M.num_nota, COND.nome NOM' +
      'E_CONDPGTO,'#13#10'CASE'#13#10'  WHEN M.TIPO_CONDICAO = '#39'V'#39' THEN '#39'A Vista'#39#13#10 +
      '  WHEN M.TIPO_CONDICAO = '#39'P'#39' THEN '#39'A Prazo'#39#13#10'  ELSE '#39#39#13#10'  END DE' +
      'SC_TIPO_CONDICAO,'#13#10'CASE'#13#10'  WHEN M.TIPO_REG = '#39'NTS'#39' THEN '#39'NFe'#39#13#10' ' +
      ' WHEN M.TIPO_REG = '#39'NTE'#39' THEN '#39'Nota Entrada'#39#13#10'  else M.TIPO_REG'#13 +
      #10'  end DESC_TIPO_REG'#13#10'FROM MOVIMENTO M'#13#10'LEFT JOIN COMBINACAO COM' +
      'B'#13#10'ON M.id_cor = COMB.ID'#13#10'LEFT JOIN PESSOA PES'#13#10'ON M.id_pessoa =' +
      ' PES.codigo'#13#10'LEFT JOIN TAB_CFOP CFOP'#13#10'ON M.id_cfop = CFOP.id'#13#10'LE' +
      'FT JOIN CONDPGTO COND'#13#10'ON M.id_condpgto = COND.id'#13#10'WHERE M.ID_PR' +
      'ODUTO = :ID_PRODUTO'#13#10'  AND M.cancelado = '#39'N'#39#13#10'  AND M.denegada =' +
      ' '#39'N'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
  end
  object dspConsulta_Prod: TDataSetProvider
    DataSet = sdsConsulta_Prod
    Left = 112
    Top = 32
  end
  object cdsConsulta_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Prod'
    Left = 168
    Top = 32
    object cdsConsulta_ProdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_ProdID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsConsulta_ProdTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsConsulta_ProdTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsConsulta_ProdTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProdTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProdID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsConsulta_ProdID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsulta_ProdID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsConsulta_ProdQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_ProdVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsConsulta_ProdVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsConsulta_ProdVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsConsulta_ProdVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsConsulta_ProdVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsConsulta_ProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_ProdNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsConsulta_ProdNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsulta_ProdNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsConsulta_ProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsConsulta_ProdCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsConsulta_ProdFATURAMENTO: TStringField
      FieldName = 'FATURAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProdDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ProdDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_ProdNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsConsulta_ProdNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsConsulta_ProdDESC_TIPO_CONDICAO: TStringField
      FieldName = 'DESC_TIPO_CONDICAO'
      Required = True
      FixedChar = True
      Size = 7
    end
    object cdsConsulta_ProdDESC_TIPO_REG: TStringField
      FieldName = 'DESC_TIPO_REG'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object dsConsulta_Prod: TDataSource
    DataSet = cdsConsulta_Prod
    Left = 216
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT INFORMAR_COR_MATERIAL, INFORMAR_COR_PROD'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 144
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProduto_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, p.referencia, p.preco_custo, p.preco_custo_total, p' +
      '.preco_venda, p.nome,'#13#10' (SELECT sum(coalesce(MAT.preco_custo_tot' +
      'al,0) * coalesce(pc.qtd_consumo,0)) Preco_Custo_Calc'#13#10'    FROM P' +
      'RODUTO_CONSUMO PC'#13#10'    INNER JOIN PRODUTO MAT'#13#10'    ON PC.ID_MATE' +
      'RIAL = MAT.ID'#13#10'    where PC.ID = P.ID) PRECO_CUSTO_CALC,'#13#10#13#10' (SE' +
      'LECT count(1)  CONTADOR'#13#10'    FROM PRODUTO_CONSUMO PC'#13#10'    INNER ' +
      'JOIN PRODUTO MAT'#13#10'    ON PC.ID_MATERIAL = MAT.ID'#13#10'    where PC.I' +
      'D = P.ID'#13#10'      AND ((MAT.preco_custo_total IS NULL) or (MAT.pre' +
      'co_custo_total <= 0))'#13#10'       ) CONTADOR'#13#10#13#10'FROM PRODUTO P'#13#10'WHER' +
      'E P.TIPO_REG = '#39'P'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
  end
  object dspProduto_Custo: TDataSetProvider
    DataSet = sdsProduto_Custo
    Left = 112
    Top = 88
  end
  object cdsProduto_Custo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Custo'
    Left = 168
    Top = 88
    object cdsProduto_CustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_CustoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_CustoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000###'
    end
    object cdsProduto_CustoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000###'
    end
    object cdsProduto_CustoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.00####'
    end
    object cdsProduto_CustoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_CustoPRECO_CUSTO_CALC: TFloatField
      FieldName = 'PRECO_CUSTO_CALC'
    end
    object cdsProduto_CustoCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
  end
  object dsProduto_Custo: TDataSource
    DataSet = cdsProduto_Custo
    Left = 216
    Top = 88
  end
  object sdsProdNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PRO.ID, PRO.NOME, PRO.REFERENCIA, PRO.UNIDADE, PRO.ID_NCM' +
      ', PRO.ORIGEM_PROD,'#13#10'       NCM.NCM,'#13#10'       case'#13#10'         when ' +
      '(PRO.TIPO_REG = '#39'P'#39') then '#39'Produto'#39#13#10'         when (PRO.TIPO_REG' +
      ' = '#39'M'#39') then '#39'Material'#39#13#10'         when (PRO.TIPO_REG = '#39'N'#39') then' +
      ' '#39'Outros'#39#13#10'         when (PRO.TIPO_REG = '#39'C'#39') then '#39'Material Con' +
      'sumo'#39#13#10'         when (PRO.TIPO_REG = '#39'I'#39') then '#39'Imobilizado'#39#13#10'  ' +
      '       when (PRO.TIPO_REG = '#39'S'#39') then '#39'Semiacabado'#39#13#10'         el' +
      'se '#39#39#13#10'       end as TIPO_REG_DESCRICAO,'#13#10'CFOP.codcfop CFOP_PROD' +
      ', CFOP2.codcfop CFOP_NCM, ICMS.cod_cst,'#13#10'ICMSB.cod_cst CST_BRED_' +
      'PROD, ICMS2.cod_cst CST_NCM, PRO.perc_reducaoicms,'#13#10'PRO.perc_icm' +
      's_nfce, NCM.perc_base_icms PERC_BASE_ICMS_NCM, NCM.perc_icms,'#13#10'G' +
      '.NOME NOME_GRUPO, PRO.INATIVO'#13#10'from PRODUTO PRO'#13#10'inner join TAB_' +
      'NCM NCM on (PRO.ID_NCM = NCM.ID)'#13#10'left join tab_cfop cfop'#13#10'on pr' +
      'o.id_cfop_nfce = cfop.id'#13#10'left join tab_cfop cfop2'#13#10'on NCM.id_cf' +
      'op = cfop2.id'#13#10'LEFT JOIN tab_csticms ICMS'#13#10'ON PRO.id_csticms = I' +
      'CMS.ID'#13#10'LEFT JOIN tab_csticms ICMSB'#13#10'ON PRO.id_csticms_bred = IC' +
      'MSB.ID'#13#10'LEFT JOIN tab_csticms ICMS2'#13#10'ON NCM.id_cst_icms = ICMS2.' +
      'ID'#13#10'LEFT JOIN GRUPO G'#13#10'ON PRO.id_grupo = G.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 263
    Top = 276
  end
  object dspProdNCM: TDataSetProvider
    DataSet = sdsProdNCM
    Left = 320
    Top = 275
  end
  object cdsProdNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdNCM'
    Left = 376
    Top = 276
    object cdsProdNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdNCMREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdNCMUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdNCMID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdNCMORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProdNCMTIPO_REG_DESCRICAO: TStringField
      FieldName = 'TIPO_REG_DESCRICAO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsProdNCMCFOP_PROD: TStringField
      FieldName = 'CFOP_PROD'
      Size = 5
    end
    object cdsProdNCMCFOP_NCM: TStringField
      FieldName = 'CFOP_NCM'
      Size = 5
    end
    object cdsProdNCMCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsProdNCMCST_BRED_PROD: TStringField
      FieldName = 'CST_BRED_PROD'
      Size = 3
    end
    object cdsProdNCMCST_NCM: TStringField
      FieldName = 'CST_NCM'
      Size = 3
    end
    object cdsProdNCMPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdNCMPERC_ICMS_NFCE: TFloatField
      FieldName = 'PERC_ICMS_NFCE'
    end
    object cdsProdNCMPERC_BASE_ICMS_NCM: TFloatField
      FieldName = 'PERC_BASE_ICMS_NCM'
    end
    object cdsProdNCMPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsProdNCMNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsProdNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProdNCM: TDataSource
    DataSet = cdsProdNCM
    Left = 424
    Top = 276
  end
end
