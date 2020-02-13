object DMConsEstoque: TDMConsEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 50
  Top = 6
  Height = 699
  Width = 1224
  object sdsEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT AUX.*, (AUX.QTD - AUX.QTD_RESERVA) QTD_SUB_SALDO' +
      ', (AUX.QTD - AUX.QTD_RESERVA + AUX.QTD_SALDO_OC) QTD_SALDO_FINAL' +
      #13#10'FROM('#13#10'SELECT PRO.ID, PRO.NOME NOMEPRODUTO, PRO.REFERENCIA, PR' +
      'O.PRECO_CUSTO,'#13#10'PRO.PRECO_VENDA, PRO.ID_MARCA, PRO.ID_GRUPO, PRO' +
      '.INATIVO, MARCA.NOME NOMEMARCA,PRO.UNIDADE,PRO.QTD_EMBALAGEM, PR' +
      'O.QTD_PECA_EMB,'#13#10'COMB.NOME NOME_COR, pc.tipo_reg tipo_reg_comb, ' +
      'pc.id_cor, pc.id_cor_combinacao, PRO.qtd_estoque_min,'#13#10'GRUPO.NOM' +
      'E NOMEGRUPO, EA.id_local_estoque, LEST.nome NOME_LOCAL, LEST.cod' +
      '_local, EA.num_lote_controle,'#13#10'case'#13#10'  WHEN (SELECT COUNT(1) FRO' +
      'M PRODUTO_LOTE PLOTE WHERE PLOTE.ID = PRO.ID AND PLOTE.NUM_LOTE_' +
      'CONTROLE = EA.NUM_LOTE_CONTROLE) > 0 THEN (SELECT LOCALIZACAO FR' +
      'OM PRODUTO_LOTE PLOTE WHERE PLOTE.ID = PRO.ID AND PLOTE.NUM_LOTE' +
      '_CONTROLE = EA.NUM_LOTE_CONTROLE)'#13#10'  ELSE PRO.LOCALIZACAO'#13#10'  END' +
      ' LOCALIZACAO,'#13#10'     case'#13#10'        WHEN (SELECT USA_TAM_INDIVIDUA' +
      'L FROM PARAMETROS_PROD) = '#39'S'#39' THEN coalesce(PRO.tamanho,'#39#39')'#13#10'   ' +
      '     when (PT.TAMANHO is null) then '#39#39#13#10'        WHEN (PT.TAMANHO' +
      ' = '#39#39') THEN '#39'1'#39#13#10'        WHEN (PT.TAMANHO <> '#39#39') THEN PT.TAMANHO' +
      #13#10'      end as TAMPRODUTO,'#13#10'  coalesce((SELECT COALESCE(EST.QTD,' +
      '0) FROM ESTOQUE_ATUAL EST'#13#10'      WHERE EST.FILIAL = :FILIAL'#13#10'   ' +
      '     AND EST.ID_PRODUTO = PRO.ID'#13#10'        AND EST.ID_COR = case'#13 +
      #10'                          when (COMB.ID is null) then '#39'0'#39#13#10'    ' +
      '                      ELSE COMB.ID'#13#10'                         end' +
      #13#10'        AND EST.TAMANHO ='#13#10'           case'#13#10'             when ' +
      '(PT.TAMANHO is null) then '#39#39#13#10'             WHEN (PT.TAMANHO = '#39#39 +
      ') THEN '#39'1'#39#13#10'             WHEN (PT.TAMANHO <> '#39#39') THEN PT.TAMANHO' +
      #13#10'           end'#13#10'       AND EST.ID_LOCAL_ESTOQUE = EA.id_local_' +
      'estoque'#13#10'       AND EST.num_lote_controle = EA.num_lote_controle' +
      #13#10'           ) ,0) QTD,'#13#10#13#10'  coalesce((SELECT SUM(COALESCE(E2.QT' +
      'D,0)) QTDGERAL FROM ESTOQUE_ATUAL E2'#13#10'      WHERE E2.ID_PRODUTO ' +
      '= PRO.ID'#13#10'        AND E2.ID_COR = case'#13#10'                        ' +
      ' when (COMB.ID is null) then '#39'0'#39#13#10'                         ELSE ' +
      'COMB.ID'#13#10'                        end'#13#10'        AND E2.TAMANHO ='#13#10 +
      '          case'#13#10'             when (PT.TAMANHO is null) then '#39#39#13#10 +
      '             WHEN (PT.TAMANHO = '#39#39') THEN '#39'1'#39#13#10'             WHEN ' +
      '(PT.TAMANHO <> '#39#39') THEN PT.TAMANHO'#13#10'           end'#13#10'        ),0)' +
      ' QTDGERAL,'#13#10'  coalesce((SELECT COALESCE(ER.QTD,0) FROM ESTOQUE_R' +
      'ES ER'#13#10'      WHERE ((ER.FILIAL = :FILIAL) or ( (select USAR_FILI' +
      'AL_GERAR_RES from parametros_est where id = 1) = '#39'S'#39'))'#13#10'        ' +
      'AND ER.ID_PRODUTO = PRO.ID'#13#10'        AND ER.ID_COR = case'#13#10'      ' +
      '                    when (COMB.ID is null) then '#39'0'#39#13#10'           ' +
      '               ELSE COMB.ID'#13#10'                         end'#13#10'     ' +
      '   AND ER.TAMANHO ='#13#10'           case'#13#10'             when (PT.TAMA' +
      'NHO is null) then '#39#39#13#10'             WHEN (PT.TAMANHO = '#39#39') THEN '#39 +
      '1'#39#13#10'             WHEN (PT.TAMANHO <> '#39#39') THEN PT.TAMANHO'#13#10'      ' +
      '     end'#13#10'           ),0) QTD_RESERVA,'#13#10'   coalesce((select sum(' +
      'COALESCE(v.qtd_saldo,0)) QTD_SALDO_OC'#13#10'       from vestoque_oc v' +
      #13#10'       where v.id_produto = PRO.ID'#13#10'        and v.id_cor = cas' +
      'e'#13#10'                         when (COMB.ID is null) then '#39'0'#39#13#10'   ' +
      '                      ELSE COMB.ID'#13#10'                        end'#13 +
      #10'       AND V.tamanho = case'#13#10'             when (PT.TAMANHO is n' +
      'ull) then '#39#39#13#10'             WHEN (PT.TAMANHO = '#39#39') THEN '#39'1'#39#13#10'    ' +
      '         WHEN (PT.TAMANHO <> '#39#39') THEN PT.TAMANHO'#13#10'           end' +
      '),0) QTD_SALDO_OC'#13#10#13#10'FROM PRODUTO '#13#10'PRO LEFT JOIN PRODUTO_TAM PT' +
      ' ON PRO.ID = PT.ID'#13#10'LEFT JOIN MARCA ON PRO.ID_MARCA = MARCA.ID'#13#10 +
      'LEFT JOIN GRUPO ON PRO.ID_GRUPO = GRUPO.ID'#13#10'LEFT JOIN PRODUTO_CO' +
      'MB PC ON PRO.ID = PC.ID'#13#10'LEFT JOIN COMBINACAO COMB ON (PC.ID_COR' +
      '_COMBINACAO = COMB.id)'#13#10#13#10'LEFT JOIN ESTOQUE_ATUAL EA  ON EA.FILI' +
      'AL = :FILIAL'#13#10' AND EA.ID_PRODUTO = PRO.ID'#13#10' AND EA.ID_COR = case' +
      #13#10'     when (EA.id_cor is null) then '#39'0'#39#13#10'      ELSE EA.id_cor'#13#10 +
      '     end'#13#10'  AND EA.TAMANHO ='#13#10'     case'#13#10'      when (PT.TAMANHO ' +
      'is null) then '#39#39#13#10'      WHEN (PT.TAMANHO = '#39#39') THEN '#39'1'#39#13#10'      W' +
      'HEN (PT.TAMANHO <> '#39#39') THEN PT.TAMANHO'#13#10'     end'#13#10'LEFT JOIN LOCA' +
      'L_ESTOQUE LEST ON EA.id_local_estoque = LEST.id'#13#10'WHERE PRO.ESTOQ' +
      'UE = '#39'S'#39#13#10'  AND PRO.TIPO_REG = :TIPO_REG'#13#10'  AND PRO.INATIVO = '#39'N' +
      #39#13#10') AUX'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 90
    Top = 7
  end
  object dspEstoque: TDataSetProvider
    DataSet = sdsEstoque
    OnUpdateError = dspEstoqueUpdateError
    Left = 120
    Top = 7
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    OnCalcFields = cdsEstoqueCalcFields
    Left = 152
    Top = 7
    object cdsEstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoqueNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoqueREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoquePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000##'
    end
    object cdsEstoquePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000##'
    end
    object cdsEstoqueQTD: TFMTBCDField
      FieldName = 'QTD'
      DisplayFormat = '0.00##'
      Precision = 15
      Size = 6
    end
    object cdsEstoqueQTDGERAL: TFMTBCDField
      FieldName = 'QTDGERAL'
      DisplayFormat = '0.00###'
      Precision = 15
      Size = 6
    end
    object cdsEstoqueID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsEstoqueID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsEstoqueNOMEMARCA: TStringField
      FieldName = 'NOMEMARCA'
      Size = 40
    end
    object cdsEstoqueNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 40
    end
    object cdsEstoqueclTotal_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTotal_Custo'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsEstoqueclTotal_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTotal_Venda'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsEstoqueINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      Size = 10
    end
    object cdsEstoqueNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsEstoqueLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsEstoqueID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoqueNOME_LOCAL: TStringField
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
    object cdsEstoqueCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsEstoqueQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
      DisplayFormat = '0.00##'
    end
    object cdsEstoqueQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object cdsEstoqueQTD_SALDO_OC: TFloatField
      FieldName = 'QTD_SALDO_OC'
      DisplayFormat = '0.00##'
    end
    object cdsEstoqueNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoqueQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsEstoqueQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object cdsEstoqueQTD_SUB_SALDO: TFloatField
      FieldName = 'QTD_SUB_SALDO'
      DisplayFormat = '0.00##'
    end
    object cdsEstoqueQTD_SALDO_FINAL: TFloatField
      FieldName = 'QTD_SALDO_FINAL'
      DisplayFormat = '0.00##'
    end
  end
  object dsEstoque: TDataSource
    DataSet = cdsEstoque
    Left = 184
    Top = 7
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 89
    Top = 103
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 120
    Top = 103
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 152
    Top = 103
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
    Left = 184
    Top = 103
  end
  object sdsEstoque_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select EM.id,'#13#10'em.filial, em.id_produto, em.id_cor, em.dtmovimen' +
      'to, em.tipo_es, em.tipo_mov,'#13#10'em.numnota, em.id_pessoa, em.vlr_u' +
      'nitario, em.qtd, em.perc_icms, em.perc_ipi,'#13#10'em.vlr_desconto, em' +
      '.unidade, em.qtd2, em.tamanho, em.perc_tributacao,'#13#10'em.vlr_frete' +
      ', em.id_cfop, em.id_nota, em.serie, em.unidade_orig, em.vlr_unit' +
      'arioorig,'#13#10'em.qtd_orig, em.vlr_descontoorig, em.mercado, em.id_c' +
      'entrocusto,'#13#10'em.qtd_ent, em.qtd_sai, em.teste, em.id_cupom, em.i' +
      'd_local_estoque, em.num_lote_controle,'#13#10'em.gerar_custo, em.preco' +
      '_custo_total, em.vlr_ajuste_custo, em.id_operacao, em.ref_prod_f' +
      'ornecedor,'#13#10'PES.NOME NOMEPESSOA, PRO.NOME NOMEPRODUTO, PRO.REFER' +
      'ENCIA, PES.CNPJ_CPF, CFOP.CODCFOP, GR.NOME NOME_GRUPO,'#13#10'        ' +
      ' COMB.NOME NOME_COR, LEST.NOME NOME_LOCAL, LEST.COD_LOCAL, PRO.P' +
      'RECO_CUSTO,'#13#10'       CC.DESCRICAO NOME_CENTROCUSTO,   GR.CODIGO C' +
      'ODIGO_GRUPO, DI.MOTIVO, CC.CODIGO CODIGO_CCUSTO,'#13#10'       CC1.COD' +
      'IGO CODIGO_SUPERIOR, CC1.DESCRICAO DESC_SUPERIOR,  (EM.VLR_UNITA' +
      'RIO * EM.QTD2) VLR_TOTAL  '#13#10'from ESTOQUE_MOV EM  '#13#10'inner join PR' +
      'ODUTO PRO on (EM.ID_PRODUTO = PRO.ID)'#13#10'left join PESSOA PES on (' +
      'EM.ID_PESSOA = PES.CODIGO)  '#13#10'left join TAB_CFOP CFOP on (EM.ID_' +
      'CFOP = CFOP.ID)  '#13#10'left join GRUPO GR on (PRO.ID_GRUPO = GR.ID) ' +
      ' '#13#10'left join COMBINACAO COMB on (EM.ID_COR = COMB.ID)  '#13#10'left jo' +
      'in LOCAL_ESTOQUE LEST on (EM.ID_LOCAL_ESTOQUE = LEST.ID)  '#13#10'left' +
      ' join CENTROCUSTO CC on EM.ID_CENTROCUSTO = CC.ID  '#13#10'left join D' +
      'OCESTOQUE_ITENS DI on DI.ID_MOVESTOQUE = EM.ID  '#13#10'left join CENT' +
      'ROCUSTO CC1 on CC1.ID = CC.SUPERIOR  '#13#10'where PRO.INATIVO = '#39'N'#39' a' +
      'nd'#13#10'        PRO.ESTOQUE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 151
  end
  object dspEstoque_Mov: TDataSetProvider
    DataSet = sdsEstoque_Mov
    Left = 120
    Top = 151
  end
  object dsEstoque_Mov: TDataSource
    DataSet = cdsEstoque_Mov
    Left = 184
    Top = 151
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 392
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 120
    Top = 392
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 152
    Top = 392
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
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 184
    Top = 392
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO, G.NIVEL, G.SUPERIOR, G.CO' +
      'D_PRINCIPAL, CASE NIVEL'#13#10'           WHEN 5 THEN '#39'          '#39' || ' +
      ' NOME'#13#10'           WHEN 4 THEN '#39'        '#39' ||  NOME'#13#10'           WH' +
      'EN 3 THEN '#39'      '#39' ||  NOME'#13#10'           WHEN 2 THEN '#39'    '#39' ||  N' +
      'OME'#13#10'           WHEN 1 THEN NOME'#13#10'           ELSE G.NOME'#13#10'      ' +
      '     END AS NOME_AUX'#13#10'FROM GRUPO G'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 8
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 328
    Top = 8
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 360
    Top = 8
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
    object cdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsGrupoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsGrupoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsGrupoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 50
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 392
    Top = 8
  end
  object sdsSubGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SUBGRUPO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 56
  end
  object dspSubGrupo: TDataSetProvider
    DataSet = sdsSubGrupo
    Left = 328
    Top = 56
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 360
    Top = 56
    object cdsSubGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSubGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsSubGrupo: TDataSource
    DataSet = cdsSubGrupo
    Left = 392
    Top = 56
  end
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MARCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 104
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    Left = 328
    Top = 104
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca'
    Left = 360
    Top = 104
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
    Left = 392
    Top = 104
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  AND ((TP_CLIENTE =' +
      ' '#39'S'#39') OR'#13#10'           (TP_FORNECEDOR = '#39'S'#39'))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 437
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 120
    Top = 437
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 152
    Top = 437
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 184
    Top = 437
  end
  object sdsEstoque_Acum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, PRO.nome NOMEPRODUTO, PRO.REFERENCIA, SUM(' +
      'EM.qtd_ent) QTD_ENT,'#13#10'SUM(EM.qtd_sai) QTD_SAI, SUM(QTD2) SALDO, ' +
      #13#10'SUM(EM.QTD_ENT * EM.vlr_unitario) VLR_ENTRADA,'#13#10'SUM(EM.QTD_SAI' +
      ' * EM.vlr_unitario) VLR_SAIDA,'#13#10'pro.unidade'#13#10'FROM ESTOQUE_MOV EM' +
      #13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM.ID_PRODUTO = PRO.ID'#13#10'WHERE PRO.E' +
      'STOQUE = '#39'S'#39#13#10'  AND PRO.INATIVO = '#39'N'#39#13#10'GROUP BY EM.id_produto, P' +
      'RO.nome, PRO.REFERENCIA, pro.unidade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 199
  end
  object dspEstoque_Acum: TDataSetProvider
    DataSet = sdsEstoque_Acum
    Left = 120
    Top = 199
  end
  object cdsEstoque_Acum: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOMEPRODUTO'
    Params = <>
    ProviderName = 'dspEstoque_Acum'
    Left = 152
    Top = 199
    object cdsEstoque_AcumID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_AcumNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_AcumREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_AcumQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_AcumQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_AcumSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_AcumVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoque_AcumVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoque_AcumUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsEstoque_Acum: TDataSource
    DataSet = cdsEstoque_Acum
    Left = 184
    Top = 199
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 912
    Top = 24
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosATUALIZAR_PRECO_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECO_DOC'
      FixedChar = True
      Size = 1
    end
    object qParametrosBAIXAR_REQ_AUTOMATICO: TStringField
      FieldName = 'BAIXAR_REQ_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEstoque_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, PRO.nome NOMEPRODUTO, PRO.REFERENCIA, SUM(' +
      'EM.qtd_ent) QTD_ENT, SUM(EM.qtd_sai) QTD_SAI, SUM(QTD2) SALDO, '#13 +
      #10'SUM(EM.QTD_ENT * EM.vlr_unitario) VLR_ENTRADA, SUM(EM.QTD_SAI *' +
      ' EM.vlr_unitario) VLR_SAIDA, EM.ID_PESSOA, PES.NOME NOME_PESSOA'#13 +
      #10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM.ID_PRODUTO =' +
      ' PRO.ID'#13#10'INNER JOIN PESSOA PES'#13#10'ON EM.ID_PESSOA = PES.CODIGO'#13#10'GR' +
      'OUP BY EM.id_produto, PRO.nome, PRO.REFERENCIA, EM.ID_PESSOA, PE' +
      'S.NOME'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 152
  end
  object dspEstoque_Cli: TDataSetProvider
    DataSet = sdsEstoque_Cli
    Left = 328
    Top = 152
  end
  object cdsEstoque_Cli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOMEPRODUTO'
    Params = <>
    ProviderName = 'dspEstoque_Cli'
    OnCalcFields = cdsEstoque_CliCalcFields
    Left = 360
    Top = 152
    object cdsEstoque_CliID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_CliNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_CliREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_CliQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_CliQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_CliSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '0.000##'
    end
    object cdsEstoque_CliVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsEstoque_CliVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsEstoque_CliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_CliNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsEstoque_CliclVlr_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Saldo'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object cdsEstoque_CliclQtd_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Saldo'
      Calculated = True
    end
  end
  object dsEstoque_Cli: TDataSource
    DataSet = cdsEstoque_Cli
    Left = 392
    Top = 152
  end
  object sdsBalanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.ID_PRODUTO, EM.TAMANHO, SUM(EM.QTD2) QTD_ESTOQUE, PRO.' +
      'REFERENCIA, PRO.NOME NOME_PRODUTO, PRO.UNIDADE,  EM.id_cor, '#13#10' C' +
      'OMB.NOME NOME_COMBINACAO, PRO.sped_tipo_item, PRO.TIPO_REG, CAST' +
      ' (PRO.REFERENCIA || '#39' '#39' || PRO.NOME || '#39' '#39' || COMB.NOME AS VARCH' +
      'AR(200)) REF_NOME_COR,'#13#10'case'#13#10'  WHEN PRO.sped_tipo_item = '#39'00'#39' T' +
      'HEN '#39'00 - Mercadoria para Revenda'#39#13#10'  WHEN PRO.sped_tipo_item = ' +
      #39'01'#39' THEN '#39'01- Mat'#233'ria-Prima'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'02'#39' ' +
      'THEN '#39'02- Embalagem'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'03'#39' THEN '#39'03 ' +
      '- Produto em Processo'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'04'#39' THEN '#39'0' +
      '4 - Produto Acabado'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'05'#39' THEN '#39'05 ' +
      '- SubProduto'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'06'#39' THEN '#39'06 - Produ' +
      'to Intermedi'#225'rio'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'07'#39' THEN '#39'07 - M' +
      'aterial de Uso e Consumo'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'08'#39' THEN' +
      ' '#39'08 - Ativo Imobilizado'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'10'#39' THEN' +
      ' '#39'10 - Outros Insumos'#39#13#10'  WHEN PRO.sped_tipo_item = '#39'99'#39' THEN '#39'9' +
      '9 - Outras'#39#13#10'  ELSE '#39#39#13#10'  END TIPO_SPED,  '#13#10'CASE'#13#10'  WHEN PRO.tip' +
      'o_reg = '#39'C'#39' THEN '#39'C - Material Consumo '#39#13#10'  WHEN PRO.tipo_reg = ' +
      #39'M'#39' THEN '#39'M - Materia Prima '#39#13#10'  WHEN PRO.tipo_reg = '#39'P'#39' THEN '#39'P' +
      ' - Produto Acabado '#39#13#10'  WHEN PRO.tipo_reg = '#39'S'#39' THEN '#39'S - Semi A' +
      'cabado '#39#13#10'  WHEN PRO.tipo_reg = '#39'I'#39' THEN '#39'I - Imobilizado '#39#13#10'  E' +
      'LSE '#39#39#13#10'  END DESC_TIPO_REG,'#13#10#13#10'    (select SUM(ENT.QTD * ENT.VL' +
      'R_UNITARIO) VLR_ENTRADA'#13#10'      FROM estoque_mov ENT'#13#10'      WHERE' +
      ' ENT.tipo_es = '#39'E'#39#13#10'        AND ENT.gerar_custo = '#39'S'#39#13#10'        A' +
      'ND ENT.ID_PRODUTO = EM.ID_PRODUTO'#13#10'        AND ENT.tamanho = EM.' +
      'TAMANHO'#13#10'        AND ENT.FILIAL = :FILIAL'#13#10'        AND ENT.DTMOV' +
      'IMENTO <= :DTMOVIMENTO) VLR_ENTRADA,'#13#10'    (select SUM(ENT.QTD) Q' +
      'TD_ENTRADA'#13#10'      FROM estoque_mov ENT'#13#10'      WHERE ENT.tipo_es ' +
      '= '#39'E'#39#13#10'        AND ENT.gerar_custo = '#39'S'#39#13#10'        AND ENT.ID_PRO' +
      'DUTO = EM.ID_PRODUTO'#13#10'        AND ENT.tamanho = EM.TAMANHO'#13#10'    ' +
      '    AND ENT.FILIAL = :FILIAL'#13#10'        AND ENT.DTMOVIMENTO <= :DT' +
      'MOVIMENTO) QTD_ENTRADA,'#13#10'       (select first (1) ENT.PERC_ICMS'#13 +
      #10'        from ESTOQUE_MOV ENT'#13#10'        where ENT.TIPO_ES = '#39'E'#39' a' +
      'nd'#13#10'              ENT.GERAR_CUSTO = '#39'S'#39' and'#13#10'              ENT.I' +
      'D_PRODUTO = EM.ID_PRODUTO and'#13#10'              ENT.TAMANHO = EM.TA' +
      'MANHO and'#13#10'              ENT.FILIAL = :FILIAL and'#13#10'             ' +
      ' ENT.DTMOVIMENTO <= :DTMOVIMENTO and'#13#10'              ENT.TIPO_ES ' +
      '= '#39'E'#39' and'#13#10'              ENT.PERC_ICMS > 0'#13#10'        order by ENT' +
      '.ID desc) PERC_ICMS, PRO.PERC_IPI'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JO' +
      'IN PRODUTO PRO ON EM.ID_PRODUTO = PRO.ID'#13#10'LEFT JOIN COMBINACAO C' +
      'OMB ON EM.ID_COR = COMB.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 209
  end
  object dspBalanco: TDataSetProvider
    DataSet = sdsBalanco
    Left = 328
    Top = 208
  end
  object cdsBalanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_PRODUTO'
    Params = <>
    ProviderName = 'dspBalanco'
    OnCalcFields = cdsBalancoCalcFields
    Left = 364
    Top = 208
    object cdsBalancoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsBalancoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsBalancoQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsBalancoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsBalancoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsBalancoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoQTD_ENTRADA: TFloatField
      FieldName = 'QTD_ENTRADA'
      DisplayFormat = '0.000##'
    end
    object cdsBalancoclPreco_Medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPreco_Medio'
      DisplayFormat = '0.000##'
      Calculated = True
    end
    object cdsBalancoclVlr_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsBalancoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsBalancoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsBalancoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsBalancoTIPO_SPED: TStringField
      FieldName = 'TIPO_SPED'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsBalancoPERC_ICMS: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'PERC_ICMS'
    end
    object cdsBalancoPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsBalancoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsBalancoREF_NOME_COR: TStringField
      FieldName = 'REF_NOME_COR'
      Size = 200
    end
    object cdsBalancoDESC_TIPO_REG: TStringField
      FieldName = 'DESC_TIPO_REG'
      Required = True
      FixedChar = True
      Size = 21
    end
  end
  object dsBalanco: TDataSource
    DataSet = cdsBalanco
    Left = 392
    Top = 208
  end
  object qSaldo_Ant: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(EM.qtd2) QTD'
      'FROM ESTOQUE_MOV EM')
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 24
    object qSaldo_AntQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 328
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 328
    Top = 328
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 360
    Top = 328
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
    object cdsLocal_EstoqueENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsLocal_EstoqueNUM_ENDERECO: TStringField
      FieldName = 'NUM_ENDERECO'
      Size = 15
    end
    object cdsLocal_EstoqueID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsLocal_EstoqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsLocal_EstoqueBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsLocal_EstoqueCEP: TStringField
      FieldName = 'CEP'
      Size = 9
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
    Left = 392
    Top = 328
  end
  object sdsEstoque_Local: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, EM.id_local_estoque, PRO.nome NOMEPRODUTO,' +
      ' PRO.REFERENCIA,'#13#10'LEST.cod_local, LEST.nome NOME_LOCAL,'#13#10'SUM(EM.' +
      'qtd_ent) QTD_ENT, SUM(EM.qtd_sai) QTD_SAI, SUM(QTD2) SALDO, '#13#10'SU' +
      'M(EM.QTD_ENT * EM.vlr_unitario) VLR_ENTRADA,'#13#10'SUM(EM.QTD_SAI * E' +
      'M.vlr_unitario) VLR_SAIDA'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODU' +
      'TO PRO'#13#10'ON EM.ID_PRODUTO = PRO.ID'#13#10'LEFT JOIN LOCAL_ESTOQUE LEST'#13 +
      #10'ON EM.id_local_estoque = LEST.id'#13#10'WHERE PRO.INATIVO = '#39'N'#39#13#10'  AN' +
      'D PRO.ESTOQUE = '#39'S'#39#13#10'GROUP BY EM.id_produto, PRO.nome, PRO.REFER' +
      'ENCIA, EM.id_local_estoque,'#13#10'LEST.cod_local, LEST.nome'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 247
  end
  object dspEstoque_Local: TDataSetProvider
    DataSet = sdsEstoque_Local
    Left = 120
    Top = 247
  end
  object cdsEstoque_Local: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOMEPRODUTO'
    Params = <>
    ProviderName = 'dspEstoque_Local'
    Left = 152
    Top = 247
    object cdsEstoque_LocalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_LocalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_LocalNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_LocalREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_LocalCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsEstoque_LocalNOME_LOCAL: TStringField
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
    object cdsEstoque_LocalQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_LocalQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_LocalSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '0.0000##'
    end
    object cdsEstoque_LocalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoque_LocalVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsEstoque_Local: TDataSource
    DataSet = cdsEstoque_Local
    Left = 184
    Top = 247
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
    ReportOptions.CreateDate = 43284.725669537000000000
    ReportOptions.LastChange = 43873.653898877320000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 847
    Top = 362
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
    Left = 888
    Top = 359
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
    Left = 928
    Top = 359
  end
  object frxRichObject1: TfrxRichObject
    Left = 960
    Top = 359
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxEstoque_Local'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'ID_LOCAL_ESTOQUE=ID_LOCAL_ESTOQUE'
      'NOMEPRODUTO=NOMEPRODUTO'
      'REFERENCIA=REFERENCIA'
      'COD_LOCAL=COD_LOCAL'
      'NOME_LOCAL=NOME_LOCAL'
      'QTD_ENT=QTD_ENT'
      'QTD_SAI=QTD_SAI'
      'SALDO=SALDO'
      'VLR_ENTRADA=VLR_ENTRADA'
      'VLR_SAIDA=VLR_SAIDA')
    DataSource = dsEstoque_Local
    BCDToCurrency = False
    Left = 848
    Top = 407
  end
  object sdsEstoque_Producao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX2.*'#13#10'FROM ('#13#10'SELECT AUX.*,'#13#10'(COALESCE(AUX.QTD_EMBALAGE' +
      'M,0) + COALESCE(AUX.QTD_PRODUCAO,0) + (COALESCE(AUX.QTD_ESTOQUE,' +
      '0) - COALESCE(AUX.QTD_PEDIDO,0) - COALESCE(AUX.QTD_ESTOQUE_MIN,0' +
      '))) RESULTADO,'#13#10'case'#13#10'  when COALESCE(AUX.QTD_EMBALAGEM,0) + (CO' +
      'ALESCE(AUX.QTD_PRODUCAO,0) + (COALESCE(AUX.QTD_ESTOQUE,0) - COAL' +
      'ESCE(AUX.QTD_PEDIDO,0) - COALESCE(AUX.QTD_ESTOQUE_MIN,0))) < 0 t' +
      'hen (COALESCE(AUX.QTD_EMBALAGEM,0) + COALESCE(AUX.QTD_PRODUCAO,0' +
      ') + (COALESCE(AUX.QTD_ESTOQUE,0) - COALESCE(AUX.QTD_PEDIDO,0) - ' +
      'COALESCE(AUX.QTD_ESTOQUE_MIN,0))) * -1'#13#10'  end QTD_APRODUZIR,'#13#10'ca' +
      'se'#13#10'  when COALESCE(AUX.QTD_EMBALAGEM,0) + (COALESCE(AUX.QTD_PRO' +
      'DUCAO,0) + (COALESCE(AUX.QTD_ESTOQUE,0) - COALESCE(AUX.QTD_PEDID' +
      'O,0) - COALESCE(AUX.QTD_ESTOQUE_MIN,0))) >= 0 then (COALESCE(AUX' +
      '.QTD_EMBALAGEM,0) + COALESCE(AUX.QTD_PRODUCAO,0) + (COALESCE(AUX' +
      '.QTD_ESTOQUE,0) - COALESCE(AUX.QTD_PEDIDO,0) - COALESCE(AUX.QTD_' +
      'ESTOQUE_MIN,0)))'#13#10'  end QTD_SALDO'#13#10'FROM ('#13#10'SELECT PRO.ID ID_PROD' +
      'UTO, PRO.NOME NOME_PRODUTO, PRO.qtd_estoque_min, PRO.referencia,' +
      ' PRO.id_marca, M.nome NOME_MARCA,'#13#10'(SELECT SUM(EA.QTD) FROM ESTO' +
      'QUE_ATUAL EA'#13#10'    WHERE EA.id_produto = PRO.ID'#13#10'      AND EA.id_' +
      'local_estoque <> (SELECT PR.id_local_estoque_prod FROM PARAMETRO' +
      'S PR WHERE ID = 1)'#13#10'      ) QTD_ESTOQUE,'#13#10#13#10'(SELECT SUM(IT.QTD_R' +
      'ESTANTE) FROM PEDIDO_ITEM IT'#13#10'  INNER JOIN PEDIDO PED'#13#10'  ON IT.i' +
      'd = PED.id'#13#10'  WHERE IT.id_produto = PRO.id'#13#10'    AND IT.qtd_resta' +
      'nte > 0'#13#10'    AND PED.dtemissao <= :DATA'#13#10'    AND PED.aprovado_pe' +
      'd = '#39'A'#39#13#10'    AND PED.TIPO_REG = '#39'P'#39') QTD_PEDIDO,'#13#10#13#10'(SELECT SUM(' +
      'ITN.QTD_RESTANTE) FROM vpedido_item ITN'#13#10'  WHERE ITN.id_produto ' +
      '= PRO.id'#13#10'    AND ITN.qtd_restante > 0'#13#10'    AND ITN.dtemissao <=' +
      ' :DATA'#13#10'    AND ITN.aprovado_ped = '#39'P'#39#13#10'    AND ITN.tipo_reg = '#39 +
      'P'#39') QTD_PEND_APROVACAO,'#13#10#13#10#13#10'(SELECT SUM(IOP.QTD_APRODUZIR - IOP' +
      '.QTD_PRODUZIDO) FROM OP_ITENS IOP'#13#10'  INNER JOIN OP'#13#10'  ON IOP.id ' +
      '= OP.id'#13#10'  WHERE IOP.id_produto = PRO.id'#13#10'    AND IOP.DTBAIXA IS' +
      ' NULL'#13#10'    AND OP.dtemissao <= :DATA) QTD_PRODUCAO,'#13#10#13#10'(SELECT  ' +
      'EAP.qtd FROM estoque_atual EAP'#13#10'  WHERE EAP.id_produto = PRO.id'#13 +
      #10'    AND EAP.id_local_estoque ='#13#10'       (SELECT PA.id_local_esto' +
      'que_prod FROM PARAMETROS PA WHERE PA.ID = 1)) QTD_EMBALAGEM'#13#10#13#10'F' +
      'ROM PRODUTO PRO'#13#10'LEFT JOIN MARCA M'#13#10'ON PRO.ID_MARCA = M.ID'#13#10'WHER' +
      'E ((PRO.tipo_reg = '#39'P'#39') or (PRO.tipo_reg = '#39'S'#39'))'#13#10'  AND PRO.inat' +
      'ivo = '#39'N'#39') AUX'#13#10') AUX2'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 8
  end
  object dspEstoque_Producao: TDataSetProvider
    DataSet = sdsEstoque_Producao
    Left = 504
    Top = 8
  end
  object cdsEstoque_Producao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Producao'
    Left = 536
    Top = 8
    object cdsEstoque_ProducaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_ProducaoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_ProducaoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_ProducaoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsEstoque_ProducaoNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object cdsEstoque_ProducaoQTD_ESTOQUE: TFMTBCDField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '###,###,##0.####'
      Precision = 15
      Size = 6
    end
    object cdsEstoque_ProducaoQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoRESULTADO: TFloatField
      FieldName = 'RESULTADO'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoQTD_APRODUZIR: TFloatField
      FieldName = 'QTD_APRODUZIR'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoQTD_SALDO: TFloatField
      FieldName = 'QTD_SALDO'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoQTD_PRODUCAO: TFloatField
      FieldName = 'QTD_PRODUCAO'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoQTD_PEND_APROVACAO: TFloatField
      FieldName = 'QTD_PEND_APROVACAO'
      DisplayFormat = '###,###,##0.####'
    end
    object cdsEstoque_ProducaoQTD_EMBALAGEM: TFMTBCDField
      FieldName = 'QTD_EMBALAGEM'
      DisplayFormat = '###,###,##0.####'
      Precision = 15
      Size = 6
    end
  end
  object dsEstoque_Producao: TDataSource
    DataSet = cdsEstoque_Producao
    Left = 568
    Top = 8
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxEstoque_Producao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD_ESTOQUE_MIN=QTD_ESTOQUE_MIN'
      'REFERENCIA=REFERENCIA'
      'ID_MARCA=ID_MARCA'
      'NOME_MARCA=NOME_MARCA'
      'QTD_ESTOQUE=QTD_ESTOQUE'
      'QTD_PEDIDO=QTD_PEDIDO'
      'RESULTADO=RESULTADO'
      'QTD_APRODUZIR=QTD_APRODUZIR'
      'QTD_SALDO=QTD_SALDO'
      'QTD_PRODUCAO=QTD_PRODUCAO'
      'QTD_PEND_APROVACAO=QTD_PEND_APROVACAO'
      'QTD_EMBALAGEM=QTD_EMBALAGEM')
    DataSource = dsEstoque_Producao
    BCDToCurrency = False
    Left = 896
    Top = 407
  end
  object sdsEstoque_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select e.filial, e.id_produto, e.id_local_estoque, e.num_lote_co' +
      'ntrole, e.qtd,'#13#10'pro.referencia, pro.nome nome_produto, l.cod_loc' +
      'al, l.nome nome_local'#13#10'from estoque_lote e'#13#10'inner join produto p' +
      'ro'#13#10'on e.id_produto = pro.id'#13#10'inner join local_estoque l'#13#10'on e.i' +
      'd_local_estoque = l.id'#13#10'where e.qtd <> 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 56
  end
  object dspEstoque_Lote: TDataSetProvider
    DataSet = sdsEstoque_Lote
    Left = 504
    Top = 56
  end
  object cdsEstoque_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Lote'
    Left = 536
    Top = 56
    object cdsEstoque_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsEstoque_LoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
      Required = True
    end
    object cdsEstoque_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      DisplayFormat = '0.####'
      Precision = 15
      Size = 8
    end
    object cdsEstoque_LoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_LoteNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_LoteCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsEstoque_LoteNOME_LOCAL: TStringField
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
  end
  object dsEstoque_Lote: TDataSource
    DataSet = cdsEstoque_Lote
    Left = 568
    Top = 56
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 80
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstUSA_RESERVA: TStringField
      FieldName = 'USA_RESERVA'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstMOSTRAR_PCUSTO_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_MOV'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstUSA_QTD_INI: TStringField
      FieldName = 'USA_QTD_INI'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstMOSTRAR_PCUSTO_TOTAL_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_TOTAL_MOV'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstUSA_RESERVA_PROD: TStringField
      FieldName = 'USA_RESERVA_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstGRAVAR_ESTMOV_BAL: TStringField
      FieldName = 'GRAVAR_ESTMOV_BAL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEstoque_Mov_Res: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id, EM.id_produto, EM.id_cor,'#13#10'EM.tamanho, EM.num_orde' +
      'm, EM.qtd, EM.data,'#13#10'EM.tipo_es, EM.tipo_mov, EM.filial, EM.qtd2' +
      ','#13#10'PRO.nome NOME_PRODUTO, PRO.REFERENCIA, COMB.nome NOME_COR'#13#10'FR' +
      'OM estoque_mov_res EM'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM.id_produto ' +
      '= PRO.id'#13#10'LEFT JOIN combinacao COMB'#13#10'ON EM.id_cor = COMB.id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 104
  end
  object dspEstoque_Mov_Res: TDataSetProvider
    DataSet = sdsEstoque_Mov_Res
    Left = 504
    Top = 104
  end
  object cdsEstoque_Mov_Res: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Mov_Res'
    Left = 536
    Top = 104
    object cdsEstoque_Mov_ResID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_Mov_ResID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Mov_ResID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_Mov_ResTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Mov_ResNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsEstoque_Mov_ResQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00##'
    end
    object cdsEstoque_Mov_ResDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsEstoque_Mov_ResTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_Mov_ResTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsEstoque_Mov_ResFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_Mov_ResQTD2: TFloatField
      FieldName = 'QTD2'
      DisplayFormat = '0.00##'
    end
    object cdsEstoque_Mov_ResNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_Mov_ResNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsEstoque_Mov_ResREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dsEstoque_Mov_Res: TDataSource
    DataSet = cdsEstoque_Mov_Res
    Left = 568
    Top = 104
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
    Left = 1008
    Top = 24
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioALT_ESTOQUE_MOV: TStringField
      FieldName = 'ALT_ESTOQUE_MOV'
      FixedChar = True
      Size = 1
    end
  end
  object sdsVeiculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.*'#13#10'FROM PRODUTO_VEICULO V'#13#10'INNER JOIN PRODUTO P'#13#10'  ON V' +
      '.id = P.id'#13#10'WHERE P.tipo_reg = '#39'P'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 378
  end
  object dspVeiculo: TDataSetProvider
    DataSet = sdsVeiculo
    Left = 328
    Top = 378
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PLACA'
    Params = <>
    ProviderName = 'dspVeiculo'
    Left = 360
    Top = 378
    object cdsVeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsVeiculoNUM_CHASSI: TStringField
      FieldName = 'NUM_CHASSI'
    end
    object cdsVeiculoNUM_RENAVAM: TStringField
      FieldName = 'NUM_RENAVAM'
      Size = 15
    end
    object cdsVeiculoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
    end
    object cdsVeiculoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsVeiculoANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
    end
    object cdsVeiculoANO_MOD: TIntegerField
      FieldName = 'ANO_MOD'
    end
    object cdsVeiculoMOTORIZACAO: TStringField
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object cdsVeiculoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object cdsVeiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object cdsVeiculoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object cdsVeiculoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object cdsVeiculoDT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
    end
    object cdsVeiculoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
  end
  object dsVeiculo: TDataSource
    DataSet = cdsVeiculo
    Left = 392
    Top = 378
  end
  object sdsEstoque_Mov_Vei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.*, PES.NOME NOMEPESSOA, PRO.NOME NOMEPRODUTO, PRO.REFE' +
      'RENCIA, PES.CNPJ_CPF,'#13#10'CFOP.CODCFOP, PV.placa, PV.num_chassi, PV' +
      '.num_renavam, PV.nome_cor, PV.ano_fab,'#13#10'PV.ano_mod, PV.motorizac' +
      'ao, PV.marca, PV.modelo, PV.combustivel, PV.especie,'#13#10'pv.marca |' +
      '| '#39' '#39' || pv.modelo ||'#39', Placa: '#39' || pv.placa ||'#39', Cor: '#39' || pv.n' +
      'ome_cor'#13#10' ||'#39', No.Renavam: '#39' || pv.num_renavam ||'#39', No.Chassi: '#39 +
      ' || pv.num_chassi Dados_Veiculo,'#13#10'case em.tipo_es'#13#10'  when '#39'E'#39' th' +
      'en '#39'Entrada'#39#13#10'  when '#39'S'#39' then '#39'Saida'#39#13#10'  end Tipo_ES_Desc,'#13#10'case' +
      ' pes.pessoa'#13#10'  when '#39'F'#39' then PES.nome || '#39', CPF: '#39' || PES.cnpj_c' +
      'pf'#13#10'  when '#39'J'#39' then PES.nome || '#39', CNPJ: '#39' || PES.cnpj_cpf'#13#10'  en' +
      'd DADOS_PESSOA'#13#10'FROM ESTOQUE_MOV EM'#13#10'LEFT JOIN PESSOA PES'#13#10'ON EM' +
      '.ID_PESSOA = PES.CODIGO'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM.ID_PRODUT' +
      'O = PRO.ID'#13#10'INNER JOIN PRODUTO_VEICULO PV'#13#10'ON EM.id_produto = PV' +
      '.id'#13#10'LEFT JOIN TAB_CFOP CFOP'#13#10'ON EM.ID_CFOP = CFOP.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 422
  end
  object dspEstoque_Mov_Vei: TDataSetProvider
    DataSet = sdsEstoque_Mov_Vei
    Left = 328
    Top = 422
  end
  object cdsEstoque_Mov_Vei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PLACA;DTMOVIMENTO;TIPO_ES'
    Params = <>
    ProviderName = 'dspEstoque_Mov_Vei'
    Left = 360
    Top = 422
    object cdsEstoque_Mov_VeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_Mov_VeiFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_Mov_VeiID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Mov_VeiID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_Mov_VeiDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_Mov_VeiTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_Mov_VeiTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_Mov_VeiNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_Mov_VeiID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_Mov_VeiVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_Mov_VeiQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_Mov_VeiPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_Mov_VeiPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_Mov_VeiVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_Mov_VeiUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsEstoque_Mov_VeiQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_Mov_VeiTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Mov_VeiPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_Mov_VeiVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_Mov_VeiID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_Mov_VeiID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_Mov_VeiSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_Mov_VeiUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_Mov_VeiVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_Mov_VeiQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_Mov_VeiVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_Mov_VeiMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_Mov_VeiID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_Mov_VeiQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_Mov_VeiQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_Mov_VeiTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsEstoque_Mov_VeiID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_Mov_VeiID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_Mov_VeiNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_Mov_VeiGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_Mov_VeiNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      Size = 60
    end
    object cdsEstoque_Mov_VeiNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_Mov_VeiREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_Mov_VeiCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsEstoque_Mov_VeiCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsEstoque_Mov_VeiPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsEstoque_Mov_VeiNUM_CHASSI: TStringField
      FieldName = 'NUM_CHASSI'
    end
    object cdsEstoque_Mov_VeiNUM_RENAVAM: TStringField
      FieldName = 'NUM_RENAVAM'
      Size = 15
    end
    object cdsEstoque_Mov_VeiNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsEstoque_Mov_VeiANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
    end
    object cdsEstoque_Mov_VeiANO_MOD: TIntegerField
      FieldName = 'ANO_MOD'
    end
    object cdsEstoque_Mov_VeiMOTORIZACAO: TStringField
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object cdsEstoque_Mov_VeiMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object cdsEstoque_Mov_VeiMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object cdsEstoque_Mov_VeiCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object cdsEstoque_Mov_VeiESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object cdsEstoque_Mov_VeiTIPO_ES_DESC: TStringField
      FieldName = 'TIPO_ES_DESC'
      FixedChar = True
      Size = 7
    end
    object cdsEstoque_Mov_VeiDADOS_VEICULO: TStringField
      FieldName = 'DADOS_VEICULO'
      Size = 167
    end
    object cdsEstoque_Mov_VeiDADOS_PESSOA: TStringField
      FieldName = 'DADOS_PESSOA'
      Size = 88
    end
  end
  object dsEstoque_Mov_Vei: TDataSource
    DataSet = cdsEstoque_Mov_Vei
    Left = 392
    Top = 422
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxEstoque_Mov_Vei'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FILIAL=FILIAL'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'DTMOVIMENTO=DTMOVIMENTO'
      'TIPO_ES=TIPO_ES'
      'TIPO_MOV=TIPO_MOV'
      'NUMNOTA=NUMNOTA'
      'ID_PESSOA=ID_PESSOA'
      'VLR_UNITARIO=VLR_UNITARIO'
      'QTD=QTD'
      'PERC_ICMS=PERC_ICMS'
      'PERC_IPI=PERC_IPI'
      'VLR_DESCONTO=VLR_DESCONTO'
      'UNIDADE=UNIDADE'
      'QTD2=QTD2'
      'TAMANHO=TAMANHO'
      'PERC_TRIBUTACAO=PERC_TRIBUTACAO'
      'VLR_FRETE=VLR_FRETE'
      'ID_CFOP=ID_CFOP'
      'ID_NOTA=ID_NOTA'
      'SERIE=SERIE'
      'UNIDADE_ORIG=UNIDADE_ORIG'
      'VLR_UNITARIOORIG=VLR_UNITARIOORIG'
      'QTD_ORIG=QTD_ORIG'
      'VLR_DESCONTOORIG=VLR_DESCONTOORIG'
      'MERCADO=MERCADO'
      'ID_CENTROCUSTO=ID_CENTROCUSTO'
      'QTD_ENT=QTD_ENT'
      'QTD_SAI=QTD_SAI'
      'TESTE=TESTE'
      'ID_CUPOM=ID_CUPOM'
      'ID_LOCAL_ESTOQUE=ID_LOCAL_ESTOQUE'
      'NUM_LOTE_CONTROLE=NUM_LOTE_CONTROLE'
      'GERAR_CUSTO=GERAR_CUSTO'
      'NOMEPESSOA=NOMEPESSOA'
      'NOMEPRODUTO=NOMEPRODUTO'
      'REFERENCIA=REFERENCIA'
      'CNPJ_CPF=CNPJ_CPF'
      'CODCFOP=CODCFOP'
      'PLACA=PLACA'
      'NUM_CHASSI=NUM_CHASSI'
      'NUM_RENAVAM=NUM_RENAVAM'
      'NOME_COR=NOME_COR'
      'ANO_FAB=ANO_FAB'
      'ANO_MOD=ANO_MOD'
      'MOTORIZACAO=MOTORIZACAO'
      'MARCA=MARCA'
      'MODELO=MODELO'
      'COMBUSTIVEL=COMBUSTIVEL'
      'ESPECIE=ESPECIE'
      'TIPO_ES_DESC=TIPO_ES_DESC'
      'DADOS_VEICULO=DADOS_VEICULO'
      'DADOS_PESSOA=DADOS_PESSOA')
    DataSource = dsEstoque_Mov_Vei
    BCDToCurrency = False
    Left = 944
    Top = 407
  end
  object sdsMaterial_Sem_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.id id_produto, PRO.referencia, PRO.nome, MAX(v.dtmovi' +
      'mento) DTEMISSAO'#13#10' FROM PRODUTO PRO'#13#10' left join estoque_mov v'#13#10' ' +
      '  on v.id_produto = pro.id'#13#10'WHERE PRO.TIPO_REG = :TIPO_REG'#13#10'  AN' +
      'D pro.inativo = '#39'N'#39' '#13#10'  AND not exists (select 1 from estoque_mo' +
      'v vp'#13#10'                    where vp.dtmovimento >= :data'#13#10'       ' +
      '               and vp.id_produto = pro.id)'#13#10'GROUP BY PRO.id, PRO' +
      '.referencia, PRO.nome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 154
  end
  object dspMaterial_Sem_Mov: TDataSetProvider
    DataSet = sdsMaterial_Sem_Mov
    Left = 504
    Top = 154
  end
  object cdsMaterial_Sem_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspMaterial_Sem_Mov'
    Left = 536
    Top = 154
    object cdsMaterial_Sem_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsMaterial_Sem_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterial_Sem_MovNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMaterial_Sem_MovDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsMaterial_Sem_Mov: TDataSource
    DataSet = cdsMaterial_Sem_Mov
    Left = 568
    Top = 154
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxMaterial_Sem_Mov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'DTEMISSAO=DTEMISSAO')
    DataSource = dsMaterial_Sem_Mov
    BCDToCurrency = False
    Left = 984
    Top = 407
  end
  object sdsBalanco_Vei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*, P.CODIGO, P.nome, P.cnpj_cpf,'#13#10'pv.marca || '#39' '#39' || ' +
      'pv.modelo ||'#39', Placa: '#39' || pv.placa ||'#39', Cor: '#39' || pv.nome_cor'#13#10 +
      ' ||'#39', No.Renavam: '#39' || pv.num_renavam ||'#39', No.Chassi: '#39' || pv.nu' +
      'm_chassi Dados_Veiculo'#13#10#13#10'from ('#13#10'SELECT EM.ID_PRODUTO, SUM(EM.Q' +
      'TD2) QTD_ESTOQUE, PRO.REFERENCIA, PRO.NOME NOME_PRODUTO, PRO.UNI' +
      'DADE,'#13#10'    (select SUM(ENT.QTD * ENT.VLR_UNITARIO) VLR_ENTRADA'#13#10 +
      '      FROM estoque_mov ENT'#13#10'      WHERE ENT.tipo_es = '#39'E'#39#13#10'     ' +
      '   AND ENT.ID_PRODUTO = EM.ID_PRODUTO'#13#10'        AND ENT.FILIAL = ' +
      ':FILIAL'#13#10'        AND ENT.DTMOVIMENTO <= :DTMOVIMENTO) VLR_ENTRAD' +
      'A,'#13#10'    (select SUM(ENT.QTD) QTD_ENTRADA'#13#10'      FROM estoque_mov' +
      ' ENT'#13#10'      WHERE ENT.tipo_es = '#39'E'#39#13#10'        AND ENT.ID_PRODUTO ' +
      '= EM.ID_PRODUTO'#13#10'        AND ENT.FILIAL = :FILIAL'#13#10'        AND E' +
      'NT.DTMOVIMENTO <= :DTMOVIMENTO) QTD_ENTRADA'#13#10'FROM ESTOQUE_MOV EM' +
      #13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM.ID_PRODUTO = PRO.ID'#13#10'WHERE EM.FI' +
      'LIAL = :FILIAL'#13#10'  AND EM.DTMOVIMENTO <= :DTMOVIMENTO'#13#10'  AND PRO.' +
      'TIPO_REG = :TIPO_REG'#13#10'  AND PRO.INATIVO = '#39'N'#39#13#10'  AND PRO.ESTOQUE' +
      ' = '#39'S'#39#13#10'GROUP BY EM.ID_PRODUTO, PRO.REFERENCIA, PRO.NOME, PRO.UN' +
      'IDADE) aux'#13#10'INNER JOIN PRODUTO_VEICULO PV'#13#10'ON AUX.id_produto = P' +
      'V.id'#13#10'LEFT JOIN PESSOA P'#13#10'ON P.codigo = (select max(ENT2.id_pess' +
      'oa)'#13#10'      FROM estoque_mov ENT2'#13#10'      WHERE ENT2.tipo_es = '#39'E'#39 +
      #13#10'        AND ENT2.ID_PRODUTO = AUX.ID_PRODUTO'#13#10'        AND ENT2' +
      '.FILIAL = :FILIAL'#13#10'        AND ENT2.DTMOVIMENTO <= :DTMOVIMENTO)' +
      #13#10'WHERE AUX.QTD_ESTOQUE > 0'#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 466
  end
  object dspBalanco_Vei: TDataSetProvider
    DataSet = sdsBalanco_Vei
    Left = 328
    Top = 466
  end
  object cdsBalanco_Vei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspBalanco_Vei'
    OnCalcFields = cdsBalanco_VeiCalcFields
    Left = 360
    Top = 466
    object cdsBalanco_VeiID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsBalanco_VeiQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object cdsBalanco_VeiREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsBalanco_VeiNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsBalanco_VeiUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsBalanco_VeiVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsBalanco_VeiQTD_ENTRADA: TFloatField
      FieldName = 'QTD_ENTRADA'
    end
    object cdsBalanco_VeiCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsBalanco_VeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsBalanco_VeiCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsBalanco_VeiDADOS_VEICULO: TStringField
      FieldName = 'DADOS_VEICULO'
      Size = 167
    end
    object cdsBalanco_VeiclPreco_Medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPreco_Medio'
      Calculated = True
    end
    object cdsBalanco_VeiclVlr_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total'
      Calculated = True
    end
  end
  object dsBalanco_Vei: TDataSource
    DataSet = cdsBalanco_Vei
    Left = 392
    Top = 466
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxBalanco_Vei'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'QTD_ESTOQUE=QTD_ESTOQUE'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'UNIDADE=UNIDADE'
      'VLR_ENTRADA=VLR_ENTRADA'
      'QTD_ENTRADA=QTD_ENTRADA'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CNPJ_CPF=CNPJ_CPF'
      'DADOS_VEICULO=DADOS_VEICULO'
      'clPreco_Medio=clPreco_Medio'
      'clVlr_Total=clVlr_Total')
    DataSource = dsBalanco_Vei
    BCDToCurrency = False
    Left = 1032
    Top = 407
  end
  object mAuxEst_Acum: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd_Ant'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Ent'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Sai'
        DataType = ftFloat
      end
      item
        Name = 'Saldo'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Saida'
        DataType = ftFloat
      end
      item
        Name = 'Saldo_Periodo'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 160
    Data = {
      020100009619E0BD01000000180000000B00000000000300000002010A49445F
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      0100055749445448020002006400075174645F416E7408000400000000000751
      74645F456E740800040000000000075174645F53616908000400000000000553
      616C646F08000400000000000B566C725F456E74726164610800040000000000
      09566C725F536169646108000400000000000D53616C646F5F506572696F646F
      080004000000000007556E696461646501004900000001000557494454480200
      020006000000}
    object mAuxEst_AcumID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mAuxEst_AcumReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mAuxEst_AcumNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 100
    end
    object mAuxEst_AcumQtd_Ant: TFloatField
      FieldName = 'Qtd_Ant'
      DisplayFormat = '###,###,##0.0000##'
    end
    object mAuxEst_AcumQtd_Ent: TFloatField
      FieldName = 'Qtd_Ent'
      DisplayFormat = '###,###,##0.0000##'
    end
    object mAuxEst_AcumQtd_Sai: TFloatField
      FieldName = 'Qtd_Sai'
      DisplayFormat = '###,###,##0.0000##'
    end
    object mAuxEst_AcumSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.0000##'
    end
    object mAuxEst_AcumVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxEst_AcumVlr_Saida: TFloatField
      FieldName = 'Vlr_Saida'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxEst_AcumSaldo_Periodo: TFloatField
      FieldName = 'Saldo_Periodo'
      DisplayFormat = '###,###,##0.0000##'
    end
    object mAuxEst_AcumUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
  end
  object dsmAuxEst_Acum: TDataSource
    DataSet = mAuxEst_Acum
    Left = 752
    Top = 160
  end
  object sdsEstoque_Ant: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, PRO.nome NOMEPRODUTO, PRO.REFERENCIA,'#13#10'SUM' +
      '(QTD2) SALDO'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON EM' +
      '.ID_PRODUTO = PRO.ID'#13#10'GROUP BY EM.id_produto, PRO.nome, PRO.REFE' +
      'RENCIA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 202
  end
  object dspEstoque_Ant: TDataSetProvider
    DataSet = sdsEstoque_Ant
    Left = 504
    Top = 202
  end
  object cdsEstoque_Ant: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Ant'
    Left = 536
    Top = 202
    object cdsEstoque_AntID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_AntNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_AntREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_AntSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object dsEstoque_Ant: TDataSource
    DataSet = cdsEstoque_Ant
    Left = 568
    Top = 202
  end
  object sdsEstoque_Med: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(EM.qtd2) QTD, prod.tipo_reg, EM.num_lote_controle,'#13#10'e' +
      'm.id_local_estoque, LE.nome NOME_LOCAL_ESTOQUE, le.principal, pr' +
      'od.id id_produto,'#13#10'prod.referencia, prod.nome nome_produto'#13#10'FROM' +
      ' ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON EM.id_produto = PRO' +
      'D.id'#13#10'INNER JOIN local_estoque LE'#13#10'ON EM.id_local_estoque = LE.i' +
      'd'#13#10'WHERE ((EM.id_local_estoque = (SELECT ID FROM LOCAL_ESTOQUE W' +
      'HERE PRINCIPAL = '#39'S'#39' AND INATIVO = '#39'N'#39'))'#13#10' or (EM.id_local_estoq' +
      'ue = (SELECT PAR.id_local_estoque_prod FROM PARAMETROS PAR WHERE' +
      ' PAR.ID = 1 )))'#13#10' AND EM.num_lote_controle <> '#39#39#13#10' AND EM.tipo_e' +
      's = '#39'E'#39#13#10' AND PROD.tipo_reg = '#39'P'#39#13#10'GROUP BY EM.num_lote_controle' +
      ', em.id_local_estoque, LE.nome, le.principal,'#13#10'prod.id, prod.ref' +
      'erencia, prod.nome, prod.tipo_reg'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 264
  end
  object dspEstoque_Med: TDataSetProvider
    DataSet = sdsEstoque_Med
    Left = 328
    Top = 264
  end
  object cdsEstoque_Med: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Med'
    OnCalcFields = cdsBalancoCalcFields
    Left = 360
    Top = 264
    object cdsEstoque_MedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MedNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_MedID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MedNOME_LOCAL_ESTOQUE: TStringField
      FieldName = 'NOME_LOCAL_ESTOQUE'
      Size = 60
    end
    object cdsEstoque_MedPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MedTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MedID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_MedREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_MedNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object dsEstoque_Med: TDataSource
    DataSet = cdsEstoque_Med
    Left = 392
    Top = 264
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxmEstoque_Med_Prod'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Num_Lote_Controle=Num_Lote_Controle'
      'Tipo_Prod=Tipo_Prod'
      'Nome_Produto=Nome_Produto'
      'Qtd_Estoque=Qtd_Estoque'
      'Qtd_Producao=Qtd_Producao'
      'Qtd_Total=Qtd_Total'
      'Tipo=Tipo'
      'ID_Produto=ID_Produto'
      'Referencia=Referencia'
      'Qtd_Material=Qtd_Material')
    DataSource = dsmEstoque_Med_Prod
    BCDToCurrency = False
    Left = 848
    Top = 455
  end
  object mEstoque_Med: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Lote_Controle'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Medida'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qtd_Estoque'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Producao'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Total'
        DataType = ftFloat
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Desc_Num_Lote_Controle'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 112
    Data = {
      DA0000009619E0BD010000001800000007000000000003000000DA00114E756D
      5F4C6F74655F436F6E74726F6C65010049000000010005574944544802000200
      1E00064D656469646101004900000001000557494454480200020014000B5174
      645F4573746F71756508000400000000000C5174645F50726F647563616F0800
      040000000000095174645F546F74616C0800040000000000045469706F010049
      000000010005574944544802000200010016446573635F4E756D5F4C6F74655F
      436F6E74726F6C650100490000000100055749445448020002001E000000}
    object mEstoque_MedNum_Lote_Controle: TStringField
      DisplayLabel = 'N'#186' Lote Controle'
      FieldName = 'Num_Lote_Controle'
      Size = 30
    end
    object mEstoque_MedMedida: TStringField
      FieldName = 'Medida'
    end
    object mEstoque_MedQtd_Estoque: TFloatField
      DisplayLabel = 'Qtd. Estoque'
      FieldName = 'Qtd_Estoque'
    end
    object mEstoque_MedQtd_Producao: TFloatField
      DisplayLabel = 'Qtd. Aguardando Finalizar'
      FieldName = 'Qtd_Producao'
    end
    object mEstoque_MedQtd_Total: TFloatField
      DisplayLabel = 'Qtd. Total'
      FieldName = 'Qtd_Total'
    end
    object mEstoque_MedTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mEstoque_MedDesc_Num_Lote_Controle: TStringField
      DisplayLabel = 'N'#186' Lote Controle'
      FieldName = 'Desc_Num_Lote_Controle'
      Size = 30
    end
  end
  object dsmEstoque_Med: TDataSource
    DataSet = mEstoque_Med
    Left = 752
    Top = 112
  end
  object mEstoque_Med_Prod: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Lote_Controle'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Tipo_Prod'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd_Estoque'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Producao'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Total'
        DataType = ftFloat
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qtd_Material'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 64
    Data = {
      1A0100009619E0BD01000000180000000A0000000000030000001A01114E756D
      5F4C6F74655F436F6E74726F6C65010049000000010005574944544802000200
      1E00095469706F5F50726F640100490000000100055749445448020002000100
      0C4E6F6D655F50726F6475746F01004900000001000557494454480200020064
      000B5174645F4573746F71756508000400000000000C5174645F50726F647563
      616F0800040000000000095174645F546F74616C080004000000000004546970
      6F01004900000001000557494454480200020001000A49445F50726F6475746F
      04000100000000000A5265666572656E63696101004900000001000557494454
      480200020014000C5174645F4D6174657269616C08000400000000000000}
    object mEstoque_Med_ProdNum_Lote_Controle: TStringField
      FieldName = 'Num_Lote_Controle'
      Size = 30
    end
    object mEstoque_Med_ProdTipo_Prod: TStringField
      FieldName = 'Tipo_Prod'
      Size = 1
    end
    object mEstoque_Med_ProdNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mEstoque_Med_ProdQtd_Estoque: TFloatField
      FieldName = 'Qtd_Estoque'
    end
    object mEstoque_Med_ProdQtd_Producao: TFloatField
      FieldName = 'Qtd_Producao'
    end
    object mEstoque_Med_ProdQtd_Total: TFloatField
      FieldName = 'Qtd_Total'
    end
    object mEstoque_Med_ProdTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mEstoque_Med_ProdID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mEstoque_Med_ProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEstoque_Med_ProdQtd_Material: TFloatField
      FieldName = 'Qtd_Material'
    end
  end
  object dsmEstoque_Med_Prod: TDataSource
    DataSet = mEstoque_Med_Prod
    Left = 752
    Top = 64
  end
  object sdsEstoque_Med_Semi: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(EM.qtd2) QTD, EM.num_lote_controle, em.id_local_estoq' +
      'ue,'#13#10'PROD.REFERENCIA, PROD.id ID_PRODUTO, PROD.nome NOME_PRODUTO' +
      #13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON EM.id_produto' +
      ' = PROD.ID'#13#10'WHERE (EM.id_local_estoque = (SELECT PAR.id_local_es' +
      'toque_semi FROM parametros_est PAR WHERE PAR.ID = 1 ))'#13#10' AND EM.' +
      'num_lote_controle = :NUM_LOTE_CONTROLE'#13#10' AND EM.tipo_es = '#39'E'#39#13#10' ' +
      'AND PROD.tipo_reg <> '#39'P'#39#13#10'GROUP BY EM.num_lote_controle, em.id_l' +
      'ocal_estoque, PROD.REFERENCIA, PROD.id,'#13#10'PROD.NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 264
  end
  object dspEstoque_Med_Semi: TDataSetProvider
    DataSet = sdsEstoque_Med_Semi
    Left = 504
    Top = 264
  end
  object cdsEstoque_Med_Semi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Med_Semi'
    Left = 536
    Top = 264
    object cdsEstoque_Med_SemiQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_Med_SemiNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_Med_SemiID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_Med_SemiREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_Med_SemiID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_Med_SemiNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME, FANTASIA, CNPJ_CPF'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 24
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, REFERENCIA'
      'FROM PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 24
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object mBalanco_Ver: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Preco_Menor'
        DataType = ftFloat
      end
      item
        Name = 'Preco_Maior'
        DataType = ftFloat
      end
      item
        Name = 'DtPreco_Menor'
        DataType = ftDate
      end
      item
        Name = 'DtPreco_Maior'
        DataType = ftDate
      end
      item
        Name = 'Perc_Diferenca'
        DataType = ftFloat
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
        Name = 'Possui_Unid_dif'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 208
    Data = {
      180100009619E0BD01000000180000000A00000000000300000018010A49445F
      50726F6475746F04000100000000000B507265636F5F4D656E6F720800040000
      0000000B507265636F5F4D61696F7208000400000000000D4474507265636F5F
      4D656E6F7204000600000000000D4474507265636F5F4D61696F720400060000
      0000000E506572635F4469666572656E636108000400000000000A5265666572
      656E63696101004900000001000557494454480200020014000C4E6F6D655F50
      726F6475746F0100490000000100055749445448020002003C000F506F737375
      695F556E69645F64696601004900000001000557494454480200020001000755
      6E696461646501004900000001000557494454480200020006000000}
    object mBalanco_VerID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mBalanco_VerPreco_Menor: TFloatField
      FieldName = 'Preco_Menor'
    end
    object mBalanco_VerPreco_Maior: TFloatField
      FieldName = 'Preco_Maior'
    end
    object mBalanco_VerDtPreco_Menor: TDateField
      FieldName = 'DtPreco_Menor'
    end
    object mBalanco_VerDtPreco_Maior: TDateField
      FieldName = 'DtPreco_Maior'
    end
    object mBalanco_VerPerc_Diferenca: TFloatField
      FieldName = 'Perc_Diferenca'
      DisplayFormat = '0.0000'
    end
    object mBalanco_VerReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mBalanco_VerNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mBalanco_VerPossui_Unid_dif: TStringField
      FieldName = 'Possui_Unid_dif'
      Size = 1
    end
    object mBalanco_VerUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
  end
  object dsmBalanco_Ver: TDataSource
    DataSet = mBalanco_Ver
    Left = 752
    Top = 208
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 80
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 79
    object qParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
  end
  object mProduto_Marca: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID_Marca'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Marca'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtde_Embalagem'
        DataType = ftFloat
      end
      item
        Name = 'Qtde_Peca_Embalagem'
        DataType = ftFloat
      end
      item
        Name = 'Qtde_Estoque'
        DataType = ftFloat
      end
      item
        Name = 'ID_Grupo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Grupo'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 16
    Data = {
      290100009619E0BD01000000180000000B000000000003000000290102494404
      000100000000000C4E6F6D655F50726F6475746F010049000000010005574944
      54480200020064000849445F4D6172636104000100000000000A4E6F6D655F4D
      6172636101004900000001000557494454480200020064000A5265666572656E
      636961010049000000010005574944544802000200320007556E696461646501
      00490000000100055749445448020002000A000E517464655F456D62616C6167
      656D080004000000000013517464655F506563615F456D62616C6167656D0800
      0400000000000C517464655F4573746F71756508000400000000000849445F47
      7275706F04000100000000000A4E6F6D655F477275706F010049000000010005
      5749445448020002003C000000}
    object mProduto_MarcaID: TIntegerField
      FieldName = 'ID'
    end
    object mProduto_MarcaNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mProduto_MarcaID_Marca: TIntegerField
      FieldName = 'ID_Marca'
    end
    object mProduto_MarcaNome_Marca: TStringField
      FieldName = 'Nome_Marca'
      Size = 100
    end
    object mProduto_MarcaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object mProduto_MarcaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object mProduto_MarcaQtde_Embalagem: TFloatField
      FieldName = 'Qtde_Embalagem'
    end
    object mProduto_MarcaQtde_Peca_Embalagem: TFloatField
      FieldName = 'Qtde_Peca_Embalagem'
    end
    object mProduto_MarcaQtde_Estoque: TFloatField
      FieldName = 'Qtde_Estoque'
    end
    object mProduto_MarcaID_Grupo: TIntegerField
      FieldName = 'ID_Grupo'
    end
    object mProduto_MarcaNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 60
    end
  end
  object dsmProduto_Marca: TDataSource
    DataSet = mProduto_Marca
    Left = 752
    Top = 16
  end
  object frxProdutoMarca: TfrxDBDataset
    UserName = 'frxProdutoMarca'
    OnFirst = frxProdutoMarcaFirst
    OnNext = frxProdutoMarcaNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Nome_Produto=Nome_Produto'
      'ID_Marca=ID_Marca'
      'Nome_Marca=Nome_Marca'
      'Referencia=Referencia'
      'Unidade=Unidade'
      'Qtde_Embalagem=Qtde_Embalagem'
      'Qtde_Peca_Embalagem=Qtde_Peca_Embalagem'
      'Qtde_Estoque=Qtde_Estoque'
      'ID_Grupo=ID_Grupo'
      'Nome_Grupo=Nome_Grupo')
    DataSource = dsmProduto_Marca
    BCDToCurrency = False
    Left = 896
    Top = 456
  end
  object qConsulta_Produto_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from ESTOQUE_LOTE'
      'where ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 912
    Top = 80
    object qConsulta_Produto_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qConsulta_Produto_LoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qConsulta_Produto_LoteID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object qConsulta_Produto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
      Required = True
    end
    object qConsulta_Produto_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object frxProduto_Lote: TfrxDBDataset
    UserName = 'frxProduto_Lote'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FILIAL=FILIAL'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_LOCAL_ESTOQUE=ID_LOCAL_ESTOQUE'
      'NUM_LOTE_CONTROLE=NUM_LOTE_CONTROLE'
      'QTD=QTD')
    DataSet = qConsulta_Produto_Lote
    BCDToCurrency = False
    Left = 992
    Top = 456
  end
  object sdsEstoque_Res: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.ID_PRODUTO, E.ID_COR, E.TAMANHO, E.QTD,'#13#10'P.NOME NOME_PR' +
      'ODUTO, P.REFERENCIA, P.UNIDADE, C.NOME NOME_COMBINACAO'#13#10'FROM EST' +
      'OQUE_RES E'#13#10'INNER JOIN PRODUTO P'#13#10'ON E.ID_PRODUTO = P.ID'#13#10'LEFT J' +
      'OIN COMBINACAO C'#13#10'ON E.ID_COR = C.ID'#13#10'where P.INATIVO = '#39'N'#39#13#10'   ' +
      'AND P.ESTOQUE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 295
  end
  object dspEstoque_Res: TDataSetProvider
    DataSet = sdsEstoque_Res
    OnUpdateError = dspEstoqueUpdateError
    Left = 120
    Top = 295
  end
  object cdsEstoque_Res: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Res'
    OnCalcFields = cdsEstoqueCalcFields
    Left = 152
    Top = 295
    object cdsEstoque_ResID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_ResID_COR: TIntegerField
      FieldName = 'ID_COR'
      Required = True
    end
    object cdsEstoque_ResTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsEstoque_ResQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_ResNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_ResREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_ResUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_ResNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
  end
  object dsEstoque_Res: TDataSource
    DataSet = cdsEstoque_Res
    Left = 184
    Top = 295
  end
  object frxEstoque_Res: TfrxDBDataset
    UserName = 'frxEstoque_Res'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'QTD=QTD'
      'NOME_PRODUTO=NOME_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'UNIDADE=UNIDADE'
      'NOME_COMBINACAO=NOME_COMBINACAO')
    DataSource = dsEstoque_Res
    BCDToCurrency = False
    Left = 944
    Top = 456
  end
  object sdsEstoque_Res_Ord: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, EM.id_cor,'#13#10'EM.tamanho, EM.num_ordem,'#13#10'EM.' +
      'filial, SUM(EM.qtd2) Qtd_Reserva,'#13#10'PRO.nome NOME_PRODUTO, PRO.RE' +
      'FERENCIA, COMB.nome NOME_COMBINACAO'#13#10'FROM estoque_mov_res EM'#13#10'IN' +
      'NER JOIN PRODUTO PRO'#13#10'ON EM.id_produto = PRO.id'#13#10'LEFT JOIN combi' +
      'nacao COMB'#13#10'ON EM.id_cor = COMB.id'#13#10'WHERE PRO.INATIVO = '#39'N'#39#13#10'  A' +
      'ND PRO.ESTOQUE = '#39'S'#39#13#10'GROUP BY EM.id_produto, EM.id_cor, EM.tama' +
      'nho, EM.num_ordem,'#13#10'EM.filial, PRO.nome,'#13#10'PRO.REFERENCIA, COMB.n' +
      'ome'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 343
  end
  object dspEstoque_Res_Ord: TDataSetProvider
    DataSet = sdsEstoque_Res_Ord
    OnUpdateError = dspEstoqueUpdateError
    Left = 120
    Top = 343
  end
  object cdsEstoque_Res_Ord: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Res_Ord'
    OnCalcFields = cdsEstoqueCalcFields
    Left = 152
    Top = 343
    object cdsEstoque_Res_OrdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Res_OrdID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_Res_OrdTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Res_OrdNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsEstoque_Res_OrdFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_Res_OrdQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object cdsEstoque_Res_OrdNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_Res_OrdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_Res_OrdNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
  end
  object dsEstoque_Res_Ord: TDataSource
    DataSet = cdsEstoque_Res_Ord
    Left = 184
    Top = 343
  end
  object frxEstoque_Res_Ord: TfrxDBDataset
    UserName = 'frxEstoque_Res_Ord'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'NUM_ORDEM=NUM_ORDEM'
      'FILIAL=FILIAL'
      'QTD_RESERVA=QTD_RESERVA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_COMBINACAO=NOME_COMBINACAO')
    DataSource = dsEstoque_Res_Ord
    BCDToCurrency = False
    Left = 1032
    Top = 456
  end
  object frxmBalanco_Ver: TfrxDBDataset
    UserName = 'frxmBalanco_Ver'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Produto=ID_Produto'
      'Preco_Menor=Preco_Menor'
      'Preco_Maior=Preco_Maior'
      'DtPreco_Menor=DtPreco_Menor'
      'DtPreco_Maior=DtPreco_Maior'
      'Perc_Diferenca=Perc_Diferenca'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'Possui_Unid_dif=Possui_Unid_dif'
      'Unidade=Unidade')
    DataSource = dsmBalanco_Ver
    BCDToCurrency = False
    Left = 848
    Top = 504
  end
  object sdsEstoque_Atual: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*,'#13#10'PRO.NOME NOME_PRODUTO, PRO.REFERENCIA,'#13#10'COMB.NOME' +
      ' NOME_COMBINACAO, PRO.localizacao,'#13#10'PRO.qtd_estoque_min, PRO.UNI' +
      'DADE, PRO.ID_NCM, NCM.NCM, NCM.NOME NOME_NCM,'#13#10'(AUX.QTD - AUX.QT' +
      'D_RESERVA) QTD_SUB_SALDO, (AUX.QTD - AUX.QTD_RESERVA + AUX.QTD_S' +
      'ALDO_OC) QTD_SALDO_FINAL'#13#10#13#10'from ('#13#10'select ea.id_produto, cast(s' +
      'um(ea.qtd) as double precision) qtd, ea.id_cor, ea.tamanho,'#13#10'ea.' +
      'id_local_estoque, cast(sum(ea.qtd_reserva) as double precision) ' +
      'qtd_reserva,'#13#10'coalesce((select sum(v.qtd_saldo)'#13#10'          from ' +
      'vestoque_oc v'#13#10'          where v.id_produto = ea.ID_produto'#13#10'   ' +
      '       and v.id_cor = ea.ID_COR'#13#10'          AND V.TAMANHO = ea.TA' +
      'MANHO),0) QTD_SALDO_OC'#13#10#13#10'from vestoque_atual ea'#13#10'group by ea.id' +
      '_produto, ea.filial, ea.id_cor, ea.tamanho,'#13#10'ea.id_local_estoque' +
      #13#10') aux'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON AUX.id_produto = PRO.ID'#13#10'LEF' +
      'T JOIN COMBINACAO COMB'#13#10'ON AUX.ID_COR = COMB.ID'#13#10'LEFT JOIN TAB_N' +
      'CM NCM'#13#10'ON PRO.ID_NCM = NCM.ID'#13#10'WHERE PRO.ESTOQUE = '#39'S'#39#13#10'   AND ' +
      'PRO.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 90
    Top = 56
  end
  object dspEstoque_Atual: TDataSetProvider
    DataSet = sdsEstoque_Atual
    OnUpdateError = dspEstoqueUpdateError
    Left = 120
    Top = 55
  end
  object cdsEstoque_Atual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Atual'
    OnCalcFields = cdsEstoqueCalcFields
    Left = 152
    Top = 55
    object cdsEstoque_AtualID_COR: TIntegerField
      FieldName = 'ID_COR'
      Required = True
    end
    object cdsEstoque_AtualTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object cdsEstoque_AtualNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_AtualREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_AtualNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_AtualLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsEstoque_AtualUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_AtualID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsEstoque_AtualNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsEstoque_AtualNOME_NCM: TStringField
      FieldName = 'NOME_NCM'
      Size = 250
    end
    object cdsEstoque_AtualID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_AtualQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00##'
    end
    object cdsEstoque_AtualQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
      DisplayFormat = '0.00##'
    end
    object cdsEstoque_AtualQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
      DisplayFormat = '0.00##'
    end
    object cdsEstoque_AtualQTD_SALDO_OC: TFloatField
      FieldName = 'QTD_SALDO_OC'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_AtualQTD_SUB_SALDO: TFloatField
      FieldName = 'QTD_SUB_SALDO'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_AtualQTD_SALDO_FINAL: TFloatField
      FieldName = 'QTD_SALDO_FINAL'
      DisplayFormat = '0.000#'
    end
  end
  object dsEstoque_Atual: TDataSource
    DataSet = cdsEstoque_Atual
    Left = 184
    Top = 55
  end
  object sdsEstoque_De_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*, ROUND(ROUND(AUX.VLR_TOTAL / AUX.QTD,5) * AUX.QTDRE' +
      'STANTE,2) VLR_TOTAL_RESTANTE'#13#10'from ('#13#10'select v.ID_PRODUTO, v.NOM' +
      'E_PRODUTO , v.REFERENCIA,'#13#10'sum(v.QTDRESTANTE) QTDRESTANTE_ATUAL,' +
      #13#10'SUM('#13#10'V.qtd - coalesce((select sum(NDEV.QTD)'#13#10'                ' +
      '    from vndevolvida ndev'#13#10'                      where ndev.id_n' +
      'te = V.ID and ndev.item_nte = V.item'#13#10'                       and' +
      ' NDEV.data <= :DATA),0)'#13#10'- coalesce((select sum(BDEV.qtd) from b' +
      'aixa_nfdevolvida BDEV'#13#10'             where Bdev.id_nota = V.id an' +
      'd BDEV.item_nota = V.item'#13#10'               and Bdev.dt_baixa <= :' +
      'DATA ),0))'#13#10'QTDRESTANTE, SUM(V.qtd) QTD,'#13#10'sum(v.vlr_total) VLR_T' +
      'OTAL, v.UNIDADE,'#13#10'v.NOME_COMBINACAO, v.TAMANHO, v.DESC_TIPO_SPED' +
      #13#10#13#10'from vestoque_de_terc v'#13#10'where v.DATA <= :DATA'#13#10'      AND V.' +
      'FILIAL = :FILIAL'#13#10'group by V.ID_PRODUTO, V.NOME_PRODUTO, V.REFER' +
      'ENCIA, V.UNIDADE, V.nome_combinacao,'#13#10'v.DESC_TIPO_SPED, V.TAMANH' +
      'O) aux'#13#10'WHERE ROUND(AUX.QTDRESTANTE,4) > 0'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 381
  end
  object dspEstoque_De_Terc: TDataSetProvider
    DataSet = sdsEstoque_De_Terc
    Left = 504
    Top = 381
  end
  object cdsEstoque_De_Terc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_PRODUTO;NOME_COMBINACAO;TAMANHO'
    Params = <>
    ProviderName = 'dspEstoque_De_Terc'
    OnCalcFields = cdsBalanco_VeiCalcFields
    Left = 536
    Top = 381
    object cdsEstoque_De_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_De_TercREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_De_TercQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_TercVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsEstoque_De_TercUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_De_TercNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_De_TercDESC_TIPO_SPED: TStringField
      FieldName = 'DESC_TIPO_SPED'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsEstoque_De_TercTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_De_TercNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_De_TercQTDRESTANTE_ATUAL: TFloatField
      FieldName = 'QTDRESTANTE_ATUAL'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_TercQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_TercVLR_TOTAL_RESTANTE: TFloatField
      FieldName = 'VLR_TOTAL_RESTANTE'
    end
  end
  object dsEstoque_De_Terc: TDataSource
    DataSet = cdsEstoque_De_Terc
    Left = 568
    Top = 381
  end
  object sdsEstoque_Em_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*, ROUND(ROUND(AUX.VLR_TOTAL / AUX.QTD,5) * AUX.QTDRE' +
      'STANTE,2) VLR_TOTAL_RESTANTE'#13#10'FROM('#13#10'select V.ID_PRODUTO, V.nome' +
      '_produto, V.REFERENCIA,'#13#10'sum(V.QTDRESTANTE) QTDRESTANTE_ATUAL, S' +
      'UM(V.qtd) QTD,'#13#10'SUM(V.QTD - coalesce((select sum(NDEV.QTD)'#13#10'    ' +
      '                from notafiscal_ndevolvida ndev'#13#10'               ' +
      '     inner join notafiscal nf2 on ndev.id = nf2.id'#13#10'            ' +
      '         where ndev.id_nte = V.id and ndev.item_nte = V.item'#13#10'  ' +
      '                     and nf2.dtemissao <= :DATA),0)'#13#10'- coalesce(' +
      '(select sum(BDEV.qtd) from baixa_nfdevolvida BDEV'#13#10'             ' +
      'where Bdev.id_nota = V.id and BDEV.item_nota = V.item'#13#10'         ' +
      '      and Bdev.dt_baixa <= :DATA ),0))'#13#10'QTDRESTANTE, sum(V.vlr_t' +
      'otal) VLR_TOTAL, V.UNIDADE,'#13#10'V.NOME_COMBINACAO, V.TAMANHO, V.DES' +
      'C_TIPO_SPED'#13#10'from vestoque_em_terc V'#13#10'where V.data <= :DATA AND'#13 +
      #10'      V.FILIAL = :FILIAL'#13#10'group by V.ID_PRODUTO, V.nome_produto' +
      ', V.REFERENCIA, V.UNIDADE,'#13#10'V.NOME_COMBINACAO, V.TAMANHO, V.DESC' +
      '_TIPO_SPED) AUX'#13#10'WHERE AUX.QTDRESTANTE > 0'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 489
  end
  object dspEstoque_Em_Terc: TDataSetProvider
    DataSet = sdsEstoque_Em_Terc
    Left = 120
    Top = 489
  end
  object cdsEstoque_Em_Terc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO;NOME_COMBINACAO;TAMANHO'
    Params = <>
    ProviderName = 'dspEstoque_Em_Terc'
    OnCalcFields = cdsBalanco_VeiCalcFields
    Left = 154
    Top = 488
    object cdsEstoque_Em_TercID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Em_TercREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_Em_TercQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_TercVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsEstoque_Em_TercUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_Em_TercNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_Em_TercTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Em_TercDESC_TIPO_SPED: TStringField
      FieldName = 'DESC_TIPO_SPED'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsEstoque_Em_TercNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_Em_TercQTDRESTANTE_ATUAL: TFloatField
      FieldName = 'QTDRESTANTE_ATUAL'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_TercQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_TercVLR_TOTAL_RESTANTE: TFloatField
      FieldName = 'VLR_TOTAL_RESTANTE'
    end
  end
  object dsEstoque_Em_Terc: TDataSource
    DataSet = cdsEstoque_Em_Terc
    Left = 184
    Top = 489
  end
  object frxEstoque_Mov: TfrxDBDataset
    UserName = 'frxEstoque_Mov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FILIAL=FILIAL'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'DTMOVIMENTO=DTMOVIMENTO'
      'TIPO_ES=TIPO_ES'
      'TIPO_MOV=TIPO_MOV'
      'NUMNOTA=NUMNOTA'
      'ID_PESSOA=ID_PESSOA'
      'VLR_UNITARIO=VLR_UNITARIO'
      'QTD=QTD'
      'PERC_ICMS=PERC_ICMS'
      'PERC_IPI=PERC_IPI'
      'VLR_DESCONTO=VLR_DESCONTO'
      'UNIDADE=UNIDADE'
      'QTD2=QTD2'
      'TAMANHO=TAMANHO'
      'PERC_TRIBUTACAO=PERC_TRIBUTACAO'
      'VLR_FRETE=VLR_FRETE'
      'ID_CFOP=ID_CFOP'
      'ID_NOTA=ID_NOTA'
      'SERIE=SERIE'
      'UNIDADE_ORIG=UNIDADE_ORIG'
      'VLR_UNITARIOORIG=VLR_UNITARIOORIG'
      'QTD_ORIG=QTD_ORIG'
      'VLR_DESCONTOORIG=VLR_DESCONTOORIG'
      'MERCADO=MERCADO'
      'NOMEPESSOA=NOMEPESSOA'
      'NOMEPRODUTO=NOMEPRODUTO'
      'REFERENCIA=REFERENCIA'
      'QTD_ENT=QTD_ENT'
      'QTD_SAI=QTD_SAI'
      'CNPJ_CPF=CNPJ_CPF'
      'CODCFOP=CODCFOP'
      'NOME_GRUPO=NOME_GRUPO'
      'NOME_COR=NOME_COR'
      'ID_LOCAL_ESTOQUE=ID_LOCAL_ESTOQUE'
      'NOME_LOCAL=NOME_LOCAL'
      'COD_LOCAL=COD_LOCAL'
      'NUM_LOTE_CONTROLE=NUM_LOTE_CONTROLE'
      'GERAR_CUSTO=GERAR_CUSTO'
      'PRECO_CUSTO=PRECO_CUSTO'
      'PRECO_CUSTO_TOTAL=PRECO_CUSTO_TOTAL'
      'ID_CENTROCUSTO=ID_CENTROCUSTO'
      'NOME_CENTROCUSTO=NOME_CENTROCUSTO'
      'VLR_TOTAL=VLR_TOTAL'
      'CODIGO_GRUPO=CODIGO_GRUPO'
      'MOTIVO=MOTIVO'
      'CODIGO_CCUSTO=CODIGO_CCUSTO'
      'CODIGO_SUPERIOR=CODIGO_SUPERIOR'
      'DESC_SUPERIOR=DESC_SUPERIOR')
    DataSource = dsEstoque_Mov
    BCDToCurrency = False
    Left = 896
    Top = 504
  end
  object frxEstoque_Atual: TfrxDBDataset
    UserName = 'frxEstoque_Atual'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'ID_LOCAL_ESTOQUE=ID_LOCAL_ESTOQUE'
      'NOME_PRODUTO=NOME_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'ID=ID'
      'LOCALIZACAO=LOCALIZACAO'
      'QTD_RESERVA=QTD_RESERVA'
      'QTD_ESTOQUE_MIN=QTD_ESTOQUE_MIN'
      'UNIDADE=UNIDADE')
    DataSource = dsEstoque_Atual
    BCDToCurrency = False
    Left = 944
    Top = 504
  end
  object mNCM: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 328
    Data = {
      660000009619E0BD01000000180000000400000000000300000066000649445F
      4E434D0400010000000000034E434D0100490000000100055749445448020002
      000800044E6F6D650100490000000100055749445448020002003C0003517464
      08000400000000000000}
    object mNCMID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mNCMNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mNCMQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmNCM: TDataSource
    DataSet = mNCM
    Left = 504
    Top = 328
  end
  object frxmNCM: TfrxDBDataset
    UserName = 'frxmNCM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_NCM=ID_NCM'
      'NCM=NCM'
      'Nome=Nome'
      'Qtd=Qtd')
    DataSource = dsmNCM
    BCDToCurrency = False
    Left = 992
    Top = 504
  end
  object mUnidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 328
    Data = {
      360000009619E0BD010000001800000001000000000003000000360007556E69
      6461646501004900000001000557494454480200020006000000}
    object mUnidadeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
  end
  object dsmUnidade: TDataSource
    DataSet = mUnidade
    Left = 568
    Top = 328
  end
  object frxBalanco: TfrxDBDataset
    UserName = 'frxBalanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'TAMANHO=TAMANHO'
      'QTD_ESTOQUE=QTD_ESTOQUE'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'UNIDADE=UNIDADE'
      'VLR_ENTRADA=VLR_ENTRADA'
      'QTD_ENTRADA=QTD_ENTRADA'
      'clPreco_Medio=clPreco_Medio'
      'clVlr_Total=clVlr_Total'
      'ID_COR=ID_COR'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'SPED_TIPO_ITEM=SPED_TIPO_ITEM'
      'TIPO_SPED=TIPO_SPED'
      'PERC_ICMS=PERC_ICMS'
      'PERC_IPI=PERC_IPI'
      'TIPO_REG=TIPO_REG'
      'REF_NOME_COR=REF_NOME_COR'
      'DESC_TIPO_REG=DESC_TIPO_REG')
    DataSource = dsBalanco
    BCDToCurrency = False
    Left = 1032
    Top = 503
  end
  object sdsEstoque_De_Terc_Pes: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*, ROUND(ROUND(AUX.VLR_TOTAL / AUX.QTD,5) * AUX.QTDRE' +
      'STANTE,2) VLR_TOTAL_RESTANTE'#13#10'from ('#13#10'select v.ID_PRODUTO, v.NOM' +
      'E_PRODUTO , v.REFERENCIA,'#13#10'sum(v.QTDRESTANTE) QTDRESTANTE_ATUAL,' +
      #13#10'SUM('#13#10'V.qtd - coalesce((select sum(NDEV.QTD)'#13#10'                ' +
      '    from vndevolvida ndev'#13#10'                      where ndev.id_n' +
      'te = V.ID and ndev.item_nte = V.item'#13#10'                       and' +
      ' NDEV.data <= :DATA),0)'#13#10'- coalesce((select sum(BDEV.qtd) from b' +
      'aixa_nfdevolvida BDEV'#13#10'             where Bdev.id_nota = V.id an' +
      'd BDEV.item_nota = V.item'#13#10'               and Bdev.dt_baixa <= :' +
      'DATA ),0))'#13#10'QTDRESTANTE, SUM(V.qtd) QTD,'#13#10'sum(v.vlr_total) VLR_T' +
      'OTAL, v.UNIDADE,'#13#10'v.NOME_COMBINACAO, v.TAMANHO, v.DESC_TIPO_SPED' +
      ', v.id_terceiro, v.nome_terceiro'#13#10#13#10'from vestoque_de_terc v'#13#10'whe' +
      're v.DATA <= :DATA'#13#10'      AND V.FILIAL = :FILIAL'#13#10'group by V.ID_' +
      'PRODUTO, V.NOME_PRODUTO, V.REFERENCIA, V.UNIDADE, V.nome_combina' +
      'cao,'#13#10'v.DESC_TIPO_SPED, V.TAMANHO, v.id_terceiro, v.nome_terceir' +
      'o) aux'#13#10'WHERE ROUND(AUX.QTDRESTANTE,4) > 0'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 424
  end
  object dspEstoque_De_Terc_Pes: TDataSetProvider
    DataSet = sdsEstoque_De_Terc_Pes
    Left = 504
    Top = 424
  end
  object cdsEstoque_De_Terc_Pes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_TERCEIRO;NOME_PRODUTO;NOME_COMBINACAO;TAMANHO'
    Params = <>
    ProviderName = 'dspEstoque_De_Terc_Pes'
    OnCalcFields = cdsBalanco_VeiCalcFields
    Left = 536
    Top = 424
    object cdsEstoque_De_Terc_PesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_De_Terc_PesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_De_Terc_PesQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_Terc_PesVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsEstoque_De_Terc_PesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_De_Terc_PesNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_De_Terc_PesDESC_TIPO_SPED: TStringField
      FieldName = 'DESC_TIPO_SPED'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsEstoque_De_Terc_PesID_TERCEIRO: TIntegerField
      FieldName = 'ID_TERCEIRO'
    end
    object cdsEstoque_De_Terc_PesNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
    object cdsEstoque_De_Terc_PesNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_De_Terc_PesTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_De_Terc_PesQTDRESTANTE_ATUAL: TFloatField
      FieldName = 'QTDRESTANTE_ATUAL'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_Terc_PesQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_De_Terc_PesVLR_TOTAL_RESTANTE: TFloatField
      FieldName = 'VLR_TOTAL_RESTANTE'
    end
  end
  object dsEstoque_De_Terc_Pes: TDataSource
    DataSet = cdsEstoque_De_Terc_Pes
    Left = 568
    Top = 424
  end
  object sdsEstoque_Em_Terc_Pes: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*, ROUND(ROUND(AUX.VLR_TOTAL / AUX.QTD,5) * AUX.QTDRE' +
      'STANTE,2) VLR_TOTAL_RESTANTE'#13#10'FROM('#13#10'select V.ID_PRODUTO, V.nome' +
      '_produto, V.REFERENCIA,'#13#10'sum(V.QTDRESTANTE) QTDRESTANTE_ATUAL, S' +
      'UM(V.qtd) QTD,'#13#10'SUM(V.QTD - coalesce((select sum(NDEV.QTD)'#13#10'    ' +
      '                from notafiscal_ndevolvida ndev'#13#10'               ' +
      '     inner join notafiscal nf2 on ndev.id = nf2.id'#13#10'            ' +
      '         where ndev.id_nte = V.id and ndev.item_nte = V.item'#13#10'  ' +
      '                     and nf2.dtemissao <= :DATA),0)'#13#10'- coalesce(' +
      '(select sum(BDEV.qtd) from baixa_nfdevolvida BDEV'#13#10'             ' +
      'where Bdev.id_nota = V.id and BDEV.item_nota = V.item'#13#10'         ' +
      '      and Bdev.dt_baixa <= :DATA ),0))'#13#10'QTDRESTANTE, sum(V.vlr_t' +
      'otal) VLR_TOTAL, V.UNIDADE,'#13#10'V.NOME_COMBINACAO, V.TAMANHO, V.DES' +
      'C_TIPO_SPED, V.ID_TERCEIRO, V.nome_terceiro'#13#10'from vestoque_em_te' +
      'rc V'#13#10'where V.data <= :DATA AND'#13#10'      V.FILIAL = :FILIAL'#13#10'group' +
      ' by V.ID_PRODUTO, V.nome_produto, V.REFERENCIA, V.UNIDADE,'#13#10'V.NO' +
      'ME_COMBINACAO, V.TAMANHO, V.DESC_TIPO_SPED, V.ID_TERCEIRO, V.nom' +
      'e_terceiro) AUX'#13#10'WHERE AUX.QTDRESTANTE > 0'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 542
  end
  object dspEstoque_Em_Terc_Pes: TDataSetProvider
    DataSet = sdsEstoque_Em_Terc_Pes
    Left = 120
    Top = 542
  end
  object cdsEstoque_Em_Terc_Pes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_TERCEIRO;ID_PRODUTO;NOME_COMBINACAO;TAMANHO'
    Params = <>
    ProviderName = 'dspEstoque_Em_Terc_Pes'
    OnCalcFields = cdsBalanco_VeiCalcFields
    Left = 152
    Top = 542
    object cdsEstoque_Em_Terc_PesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Em_Terc_PesNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_Em_Terc_PesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_Em_Terc_PesQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_Terc_PesVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsEstoque_Em_Terc_PesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_Em_Terc_PesNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_Em_Terc_PesID_TERCEIRO: TIntegerField
      FieldName = 'ID_TERCEIRO'
    end
    object cdsEstoque_Em_Terc_PesNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
    object cdsEstoque_Em_Terc_PesTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Em_Terc_PesDESC_TIPO_SPED: TStringField
      FieldName = 'DESC_TIPO_SPED'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsEstoque_Em_Terc_PesQTDRESTANTE_ATUAL: TFloatField
      FieldName = 'QTDRESTANTE_ATUAL'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_Terc_PesQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000#'
    end
    object cdsEstoque_Em_Terc_PesVLR_TOTAL_RESTANTE: TFloatField
      FieldName = 'VLR_TOTAL_RESTANTE'
    end
  end
  object dsEstoque_Em_Terc_Pes: TDataSource
    DataSet = cdsEstoque_Em_Terc_Pes
    Left = 184
    Top = 542
  end
  object mEstoque_CentroCusto: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 264
    object mEstoque_CentroCustoId_Produto: TIntegerField
      FieldName = 'Id_Produto'
    end
    object mEstoque_CentroCustoNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 70
    end
    object mEstoque_CentroCustoCodigo_Grupo: TStringField
      FieldName = 'Codigo_Grupo'
    end
    object mEstoque_CentroCustoNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 70
    end
    object mEstoque_CentroCustoQSai: TFloatField
      FieldName = 'QSai'
    end
    object mEstoque_CentroCustoObs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
    object mEstoque_CentroCustoQEnt: TFloatField
      FieldName = 'QEnt'
    end
    object mEstoque_CentroCustoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mEstoque_CentroCustoCodigo_CentroCusto: TStringField
      FieldName = 'Codigo_CentroCusto'
    end
    object mEstoque_CentroCustoNome_CentroCusto: TStringField
      FieldName = 'Nome_CentroCusto'
      Size = 70
    end
    object mEstoque_CentroCustoCodigo_Superior: TStringField
      FieldName = 'Codigo_Superior'
    end
    object mEstoque_CentroCustoNome_Superior: TStringField
      FieldName = 'Nome_Superior'
      Size = 70
    end
    object mEstoque_CentroCustoVlrEntrada: TFloatField
      FieldName = 'VlrEntrada'
    end
    object mEstoque_CentroCustoQSaldo: TFloatField
      FieldName = 'QSaldo'
    end
    object mEstoque_CentroCustoVlrSaldo: TFloatField
      FieldName = 'VlrSaldo'
    end
  end
  object dsmEstoque_CentroCusto: TDataSource
    DataSet = mEstoque_CentroCusto
    Left = 752
    Top = 264
  end
  object frxGrupoCentroCusto: TfrxDBDataset
    UserName = 'frxGrupoCentroCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id_Produto=Id_Produto'
      'Nome_Produto=Nome_Produto'
      'Codigo_Grupo=Codigo_Grupo'
      'Nome_Grupo=Nome_Grupo'
      'QSai=QSai'
      'Obs=Obs'
      'QEnt=QEnt'
      'VlrTotal=VlrTotal'
      'Codigo_CentroCusto=Codigo_CentroCusto'
      'Nome_CentroCusto=Nome_CentroCusto'
      'Codigo_Superior=Codigo_Superior'
      'Nome_Superior=Nome_Superior'
      'VlrEntrada=VlrEntrada'
      'QSaldo=QSaldo'
      'VlrSaldo=VlrSaldo')
    DataSource = dsmEstoque_CentroCusto
    BCDToCurrency = False
    Left = 848
    Top = 552
  end
  object qAltPreco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(DT_ALT_PRECOCUSTO) ALT_CUSTO'
      'FROM PRODUTO'
      'WHERE ID = :IDP')
    SQLConnection = dmDatabase.scoDados
    Left = 1008
    Top = 80
    object qAltPrecoALT_CUSTO: TDateField
      FieldName = 'ALT_CUSTO'
    end
  end
  object sdsCompras: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.DTMOVIMENTO, EM.NUMNOTA, P.NOME FORNECEDOR, PF.COD_MAT' +
      'ERIAL_FORN, PF.NOME_MATERIAL_FORN, C.NOME NOME_COR, EM.QTD, EM.V' +
      'LR_DESCONTO,'#13#10' EM.VLR_UNITARIO, EM.VLR_FRETE, EM.ID'#13#10'FROM ESTOQU' +
      'E_MOV EM'#13#10'LEFT JOIN PESSOA P ON (EM.ID_PESSOA = P.CODIGO)'#13#10'LEFT ' +
      'JOIN COR C ON (EM.ID_COR = C.ID)'#13#10'LEFT JOIN PRODUTO_FORN PF ON (' +
      'EM.ID_PRODUTO = PF.ID AND EM.ID_PESSOA = PF.ID_FORNECEDOR)'#13#10'WHER' +
      'E ID_PRODUTO = :IDP'#13#10'AND TIPO_ES = '#39'E'#39#13#10'AND TIPO_MOV = '#39'NTE'#39#13#10'OR' +
      'DER BY EM.DTMOVIMENTO DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDP'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 514
  end
  object dspCompras: TDataSetProvider
    DataSet = sdsCompras
    Left = 328
    Top = 514
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompras'
    Left = 360
    Top = 514
    object cdsComprasDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsComprasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsComprasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 60
    end
    object cdsComprasNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 45
    end
    object cdsComprasQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsComprasVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsComprasVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsComprasVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsComprasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsComprasCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
      Size = 60
    end
    object cdsComprasNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
  end
  object dsCompras: TDataSource
    DataSet = cdsCompras
    Left = 392
    Top = 514
  end
  object cdsEstoque_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Mov'
    Left = 149
    Top = 151
    object cdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsEstoque_MovVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
    end
    object cdsEstoque_MovID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsEstoque_MovREF_PROD_FORNECEDOR: TStringField
      FieldName = 'REF_PROD_FORNECEDOR'
    end
    object cdsEstoque_MovNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      Size = 60
    end
    object cdsEstoque_MovNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_MovCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsEstoque_MovCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsEstoque_MovNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsEstoque_MovNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsEstoque_MovNOME_LOCAL: TStringField
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
    object cdsEstoque_MovCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsEstoque_MovPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsEstoque_MovNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      Size = 50
    end
    object cdsEstoque_MovCODIGO_GRUPO: TStringField
      FieldName = 'CODIGO_GRUPO'
    end
    object cdsEstoque_MovMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsEstoque_MovCODIGO_CCUSTO: TStringField
      FieldName = 'CODIGO_CCUSTO'
    end
    object cdsEstoque_MovCODIGO_SUPERIOR: TStringField
      FieldName = 'CODIGO_SUPERIOR'
    end
    object cdsEstoque_MovDESC_SUPERIOR: TStringField
      FieldName = 'DESC_SUPERIOR'
      Size = 50
    end
    object cdsEstoque_MovVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object sdsEstoque2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'with ESTOQUE'#13#10'as (select PRO.ID, PRO.NOME NOMEPRODUTO, PRO.REFER' +
      'ENCIA, PRO.PRECO_CUSTO, PRO.PRECO_VENDA, PRO.ID_MARCA, PRO.ID_GR' +
      'UPO,'#13#10'           PRO.INATIVO, MAR.NOME NOMEMARCA, PRO.UNIDADE, P' +
      'RO.QTD_EMBALAGEM, PRO.QTD_ESTOQUE_MIN, GRU.NOME NOMEGRUPO,'#13#10'    ' +
      '       EM.ID_LOCAL_ESTOQUE, LEST.NOME NOME_LOCAL, LEST.COD_LOCAL' +
      ', EM.ESPESSURA, EM.QTD, EM.QTD_ENT, EM.QTD_SAI,'#13#10'           EM.F' +
      'ILIAL, EM.DTMOVIMENTO, EM.TIPO_ES, EM.TIPO_MOV, EM.NUMNOTA, PRO.' +
      'ID ID_PRODUTO, PRO.TIPO_REG'#13#10'    from ESTOQUE_MOV EM'#13#10'    left j' +
      'oin PRODUTO PRO on PRO.ID = EM.ID_PRODUTO'#13#10'    left join MARCA M' +
      'AR on MAR.ID = PRO.ID_MARCA'#13#10'    left join GRUPO GRU on GRU.ID =' +
      ' PRO.ID_GRUPO'#13#10'    left join LOCAL_ESTOQUE LEST on LEST.ID = EM.' +
      'ID_LOCAL_ESTOQUE'#13#10'    where EM.FILIAL = :FILIAL)'#13#10'select sum(QTD' +
      '_ENT) ENTRADA, sum(QTD_SAI) SAIDA, sum(QTD_ENT - QTD_SAI) SALDO,' +
      ' ESPESSURA, FILIAL, NOMEPRODUTO, ID,'#13#10'       REFERENCIA, NOME_LO' +
      'CAL, TIPO_REG'#13#10'from ESTOQUE'#13#10'where ESPESSURA > 0 and'#13#10'      (FIL' +
      'IAL = :FILIAL or :FILIAL = 0) and'#13#10'      (ID_LOCAL_ESTOQUE = :ID' +
      '_LOCAL_ESTOQUE or :ID_LOCAL_ESTOQUE = 0) and'#13#10'      (ID_PRODUTO ' +
      '= :ID_PRODUTO or :ID_PRODUTO = 0) and'#13#10'      (REFERENCIA like :R' +
      'EFERENCIA) and'#13#10'      (TIPO_REG = :TIPO_REG)'#13#10'group by ESPESSURA' +
      ', FILIAL, NOMEPRODUTO, ID, REFERENCIA, NOME_LOCAL, TIPO_REG   '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOCAL_ESTOQUE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOCAL_ESTOQUE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 567
  end
  object dspEstoque2: TDataSetProvider
    DataSet = sdsEstoque2
    OnUpdateError = dspEstoqueUpdateError
    Left = 336
    Top = 567
  end
  object cdsEstoque2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque2'
    OnCalcFields = cdsEstoqueCalcFields
    Left = 368
    Top = 567
    object cdsEstoque2ENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsEstoque2SAIDA: TFloatField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'SAIDA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsEstoque2SALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsEstoque2ESPESSURA: TFloatField
      DisplayLabel = 'Espessura'
      FieldName = 'ESPESSURA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsEstoque2FILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsEstoque2NOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsEstoque2ID: TIntegerField
      FieldName = 'ID'
    end
    object cdsEstoque2REFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque2NOME_LOCAL: TStringField
      DisplayLabel = 'Local Estoque'
      FieldName = 'NOME_LOCAL'
      Size = 60
    end
    object cdsEstoque2TIPO_REG: TStringField
      DisplayLabel = 'Tipo Registro'
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsEstoque2: TDataSource
    DataSet = cdsEstoque2
    Left = 400
    Top = 567
  end
  object frxEstoque2: TfrxDBDataset
    UserName = 'frxEstoque2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENTRADA=ENTRADA'
      'SAIDA=SAIDA'
      'SALDO=SALDO'
      'ESPESSURA=ESPESSURA'
      'FILIAL=FILIAL'
      'NOMEPRODUTO=NOMEPRODUTO'
      'ID=ID'
      'REFERENCIA=REFERENCIA'
      'NOME_LOCAL=NOME_LOCAL'
      'TIPO_REG=TIPO_REG')
    DataSource = dsEstoque2
    BCDToCurrency = False
    Left = 896
    Top = 552
  end
  object qParametros_NTE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_CENTRO_CUSTO'
      'FROM PARAMETROS_NTE'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 903
    Top = 187
    object qParametros_NTEUSA_CENTRO_CUSTO: TStringField
      FieldName = 'USA_CENTRO_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
end
