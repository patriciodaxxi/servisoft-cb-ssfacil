object DMConsReal: TDMConsReal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 362
  Top = 220
  Height = 344
  Width = 730
  object sdsConsRP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sum(nvmat.consumo * i.qtd) consumo, sum((nvmat.consumo * ' +
      'i.qtd) * nvmat.vlr_unitario ) Vlr_Total,'#13#10'orc.id id_conta, orc.c' +
      'odigo, orc.descricao nome_orcamento, orc.nivel, ORC.SUPERIOR, OR' +
      'C.tipo TIPO_AS,  '#39'P'#39' TIPO'#13#10'from notafiscal n'#13#10'inner join notafis' +
      'cal_itens i'#13#10'on n.id = i.id'#13#10'INNER JOIN tab_cfop CFOP'#13#10'ON I.id_c' +
      'fop = CFOP.ID'#13#10'INNER JOIN custonv NV'#13#10'ON I.id_produto = NV.id_pr' +
      'oduto'#13#10'inner join custonv_mat nvmat'#13#10'on nv.id = nvmat.id'#13#10'inner ' +
      'join produto mat'#13#10'on nvmat.id_material = mat.id'#13#10'LEFT JOIN PESSO' +
      'A FORN'#13#10'ON MAT.id_fornecedor = FORN.CODIGO'#13#10'LEFT JOIN CONTA_ORCA' +
      'MENTO ORC'#13#10'ON FORN.fornecedor_conta_id = orc.id'#13#10'where n.tipo_re' +
      'g = '#39'NTS'#39#13#10'  AND N.tipo_nota = '#39'S'#39#13#10'  AND CFOP.faturamento = '#39'S'#39 +
      #13#10'  and N.dtemissao >= :DATA1'#13#10'  AND N.dtemissao <= :DATA2'#13#10'grou' +
      'p by orc.id, orc.codigo, orc.descricao, orc.nivel, ORC.SUPERIOR,' +
      ' ORC.tipo'#13#10#13#10'UNION ALL'#13#10#13#10'select 0 consumo, sum(nvind.valor_calc' +
      'ulado * i.qtd) Vlr_Total,'#13#10'orc.id id_conta, orc.codigo, orc.desc' +
      'ricao nome_orcamento, orc.nivel, ORC.SUPERIOR, ORC.tipo TIPO_AS,' +
      '  '#39'PC'#39' TIPO'#13#10'from notafiscal n'#13#10'inner join notafiscal_itens i'#13#10'o' +
      'n n.id = i.id'#13#10'INNER JOIN tab_cfop CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13 +
      #10'INNER JOIN custonv NV'#13#10'ON I.id_produto = NV.id_produto'#13#10'inner j' +
      'oin custonv_ind nvind'#13#10'on nv.id = nvind.id'#13#10'inner join indice in' +
      'd'#13#10'on nvind.id_indice = ind.id'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'O' +
      'N ind.id_conta_orcamento = orc.id'#13#10'where n.tipo_reg = '#39'NTS'#39#13#10'  A' +
      'ND N.tipo_nota = '#39'S'#39#13#10'  AND CFOP.faturamento = '#39'S'#39#13#10'  and N.dtem' +
      'issao >= :DATA1'#13#10'  AND N.dtemissao <= :DATA2'#13#10'  AND coalesce(NVI' +
      'ND.valor_calculado,0) > 0'#13#10'group by orc.id, orc.codigo, orc.desc' +
      'ricao, orc.nivel, ORC.SUPERIOR, ORC.tipo'#13#10#13#10'UNION ALL'#13#10#13#10'select ' +
      '0 consumo, IORC.valor Vlr_Total,'#13#10'orc.id id_conta, orc.codigo, o' +
      'rc.descricao nome_orcamento, orc.nivel, ORC.SUPERIOR, ORC.tipo T' +
      'IPO_AS,  '#39'PO'#39' TIPO'#13#10'FROM CONTA_ORCAMENTO_ITENS IORC'#13#10'INNER JOIN ' +
      'CONTA_ORCAMENTO ORC'#13#10'ON IORC.ID = ORC.ID'#13#10'AND IORC.ANO = :ANO1'#13#10 +
      #13#10'UNION ALL'#13#10#13#10'select sum(i.qtd) consumo,'#13#10'sum(Vlr_Total), orc.i' +
      'd id_conta, orc.codigo, orc.descricao nome_orcamento, orc.nivel,' +
      ' ORC.SUPERIOR, ORC.tipo TIPO_AS, '#39'R'#39' TIPO'#13#10'from notafiscal n'#13#10'in' +
      'ner join notafiscal_itens i'#13#10'on n.id = i.id'#13#10'INNER JOIN tab_cfop' +
      ' CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13#10'LEFT JOIN PESSOA FORN'#13#10'ON n.id_cl' +
      'iente = FORN.CODIGO'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'ON FORN.forn' +
      'ecedor_conta_id = orc.id'#13#10'where n.tipo_reg = '#39'NTE'#39#13#10'  AND CFOP.f' +
      'aturamento = '#39'S'#39#13#10'  and N.dtemissao >= :DATA1'#13#10'  AND N.dtemissao' +
      ' <= :DATA2'#13#10'group by  orc.id, orc.codigo, orc.descricao, orc.niv' +
      'el, ORC.SUPERIOR, ORC.tipo'#13#10#13#10'UNION ALL'#13#10#13#10'select 0 consumo, sum' +
      '(d.vlr_parcela) vlr_total , orc.id id_conta,'#13#10'orc.codigo, orc.de' +
      'scricao nome_orcamento, orc.nivel, ORC.SUPERIOR, ORC.tipo TIPO_A' +
      'S, '#39'RD'#39' TIPO'#13#10'from duplicata d'#13#10'inner JOIN PESSOA FORN'#13#10'ON d.id_' +
      'pessoa = FORN.CODIGO'#13#10'LEFT JOIN CONTA_ORCAMENTO ORC'#13#10'ON FORN.for' +
      'necedor_conta_id = orc.id'#13#10'where d.tipo_es = '#39'S'#39#13#10'  and ((d.tipo' +
      '_mov = '#39'N'#39') or (d.tipo_mov = '#39'D'#39'))'#13#10'  and ((d.id_nota <= 0) or (' +
      'd.id_nota is null))'#13#10' and (case'#13#10'   when d.mes_ref < 10  then d.' +
      'ano_ref || '#39'0'#39' || d.mes_ref'#13#10'   else d.ano_ref || d.mes_ref'#13#10'   ' +
      'end) >= :Ano_Mes1'#13#10' and'#13#10' (case'#13#10'   when d.mes_ref < 10  then d.' +
      'ano_ref || '#39'0'#39' || d.mes_ref'#13#10'   else d.ano_ref || d.mes_ref'#13#10'   ' +
      'end) <= :Ano_Mes2'#13#10'group by  orc.id, orc.codigo, orc.descricao, ' +
      'orc.nivel, ORC.SUPERIOR, ORC.tipo'#13#10#13#10#13#10'UNION ALL'#13#10#13#10'select 0 con' +
      'sumo, sum(FIN.vlr_movimento) Vlr_Total,'#13#10'orc.id id_conta, orc.co' +
      'digo, orc.descricao nome_orcamento, orc.nivel, ORC.SUPERIOR, ORC' +
      '.tipo TIPO_AS,  '#39'RF'#39' TIPO'#13#10'from financeiro FIN'#13#10'left join conta_' +
      'orcamento ORC'#13#10'on FIN.id_conta_orcamento = ORC.ID'#13#10'where ((FIN.i' +
      'd_nota <= 0) or (FIN.id_nota is null))'#13#10'  and ((FIN.id_movduplic' +
      'ata <= 0) or (FIN.id_movduplicata is null))'#13#10' and FIN.dtmoviment' +
      'o >= :DATA1'#13#10'  and FIN.dtmovimento <= :DATA2'#13#10'  and ((FIN.id_tra' +
      'nsferencia <= 0) or (FIN.id_transferencia is Null))'#13#10'  and ((FIN' +
      '.id_cheque <= 0) or (FIN.id_cheque is Null))'#13#10'group by  orc.id, ' +
      'orc.codigo, orc.descricao, orc.nivel, ORC.SUPERIOR, ORC.tipo'#13#10#13#10 +
      #13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ano_Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ano_Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
  end
  object dspConsRP: TDataSetProvider
    DataSet = sdsConsRP
    Left = 128
    Top = 32
  end
  object cdsConsRP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsRP'
    Left = 176
    Top = 32
    object cdsConsRPCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsConsRPVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsRPCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConsRPNOME_ORCAMENTO: TStringField
      FieldName = 'NOME_ORCAMENTO'
      Size = 50
    end
    object cdsConsRPTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConsRPID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsConsRPNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsRPSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsRPTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
  end
  object mConsAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Conta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Conta'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Realizado'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Projetado'
        DataType = ftFloat
      end
      item
        Name = 'ID_Conta'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_AS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Resultado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mConsAuxNewRecord
    Left = 448
    Top = 48
    Data = {
      CE0000009619E0BD010000001800000007000000000003000000CE0009436F64
      5F436F6E746101004900000001000557494454480200020014000A4E6F6D655F
      436F6E74610100490000000100055749445448020002003C000D566C725F5265
      616C697A61646F08000400000000000D566C725F50726F6A657461646F080004
      00000000000849445F436F6E74610400010000000000075469706F5F41530100
      49000000010005574944544802000200010009526573756C7461646F01004900
      000001000557494454480200020001000000}
    object mConsAuxCod_Conta: TStringField
      FieldName = 'Cod_Conta'
    end
    object mConsAuxNome_Conta: TStringField
      FieldName = 'Nome_Conta'
      Size = 60
    end
    object mConsAuxVlr_Realizado: TFloatField
      FieldName = 'Vlr_Realizado'
      DisplayFormat = '###,###,##0.00'
    end
    object mConsAuxVlr_Projetado: TFloatField
      FieldName = 'Vlr_Projetado'
      DisplayFormat = '###,###,##0.00'
    end
    object mConsAuxID_Conta: TIntegerField
      FieldName = 'ID_Conta'
    end
    object mConsAuxTipo_AS: TStringField
      FieldName = 'Tipo_AS'
      Size = 1
    end
    object mConsAuxResultado: TStringField
      FieldName = 'Resultado'
      Size = 1
    end
  end
  object dsmConsAux: TDataSource
    DataSet = mConsAux
    Left = 488
    Top = 48
  end
  object qParametros_Cta_Orc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_CTA_ORC'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 112
    object qParametros_Cta_OrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField
      FieldName = 'ID_CONTA_ORC_RECEITA'
    end
    object qParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA'
    end
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
    Left = 408
    Top = 176
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
    object qConta_OrcamentoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qConta_OrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object qConta_OrcamentoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qConta_OrcamentoDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object qConta_OrcamentoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qConta_OrcamentoTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qConta_OrcamentoTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConDetForn: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select sum(nvmat.consumo * i.qtd) consumo,'#13#10'sum((nvmat.consumo *' +
      ' i.qtd) * nvmat.vlr_unitario ) Vlr_Total,'#13#10'forn.codigo id_fornec' +
      'edor, forn.nome nome_fornecedor, '#39'Projetado'#39' TIPO'#13#10'from notafisc' +
      'al n'#13#10'inner join notafiscal_itens i'#13#10'on n.id = i.id'#13#10'INNER JOIN ' +
      'tab_cfop CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13#10'INNER JOIN custonv NV'#13#10'ON' +
      ' I.id_produto = NV.id_produto'#13#10'inner join custonv_mat nvmat'#13#10'on ' +
      'nv.id = nvmat.id'#13#10'inner join produto mat'#13#10'on nvmat.id_material =' +
      ' mat.id'#13#10'LEFT JOIN PESSOA FORN'#13#10'ON MAT.id_fornecedor = FORN.CODI' +
      'GO'#13#10'where n.tipo_reg = '#39'NTS'#39#13#10'  AND N.tipo_nota = '#39'S'#39#13#10'  AND CFO' +
      'P.faturamento = '#39'S'#39#13#10'  and N.dtemissao >= :DATA1'#13#10'  AND N.dtemis' +
      'sao <= :DATA2'#13#10'  and coalesce(forn.fornecedor_conta_id,0) = :FOR' +
      'NECEDOR_CONTA_ID'#13#10'group by forn.codigo, forn.nome'#13#10#13#10'UNION ALL'#13#10 +
      #13#10'select 0 Consumo, sum(nvind.valor_calculado * i.qtd) Vlr_Total' +
      ','#13#10'ind.id id_fornecedor, ind.nome nome_fornecedor, '#39'Indices'#39' TIP' +
      'O'#13#10'from notafiscal n'#13#10'inner join notafiscal_itens i'#13#10'on n.id = i' +
      '.id'#13#10'INNER JOIN tab_cfop CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13#10'INNER JOI' +
      'N custonv NV'#13#10'ON I.id_produto = NV.id_produto'#13#10'inner join custon' +
      'v_ind nvind'#13#10'on nv.id = nvind.id'#13#10'inner join indice ind'#13#10'on nvin' +
      'd.id_indice = ind.id'#13#10'where n.tipo_reg = '#39'NTS'#39#13#10'  AND N.tipo_not' +
      'a = '#39'S'#39#13#10'  AND CFOP.faturamento = '#39'S'#39#13#10'  and N.dtemissao >= :DAT' +
      'A1'#13#10'  AND N.dtemissao <= :DATA2'#13#10'  AND coalesce(NVIND.valor_calc' +
      'ulado,0) > 0'#13#10'  and coalesce(ind.id_conta_orcamento,0) = :FORNEC' +
      'EDOR_CONTA_ID'#13#10'group by ind.id, ind.nome'#13#10#13#10'UNION ALL'#13#10#13#10'select ' +
      'sum(i.qtd) consumo,'#13#10'sum(Vlr_Total), forn.codigo id_fornecedor, ' +
      'forn.nome nome_fornecedor, '#39'Realizado'#39' TIPO'#13#10'from notafiscal n'#13#10 +
      'inner join notafiscal_itens i'#13#10'on n.id = i.id'#13#10'INNER JOIN tab_cf' +
      'op CFOP'#13#10'ON I.id_cfop = CFOP.ID'#13#10'LEFT JOIN PESSOA FORN'#13#10'ON n.id_' +
      'cliente = FORN.CODIGO'#13#10'where n.tipo_reg = '#39'NTE'#39#13#10'  AND CFOP.fatu' +
      'ramento = '#39'S'#39#13#10'  and N.dtemissao >= :DATA1'#13#10'  AND N.dtemissao <=' +
      ' :DATA2'#13#10'  and coalesce(forn.fornecedor_conta_id,0) = :FORNECEDO' +
      'R_CONTA_ID'#13#10'group by forn.codigo, forn.nome'#13#10#13#10'UNION ALL'#13#10#13#10'sele' +
      'ct 0 consumo, sum(d.vlr_parcela) vlr_total, forn.codigo id_forne' +
      'cedor,'#13#10'forn.nome nome_fornecedor, '#39'Real. Duplicata'#39' TIPO'#13#10'from ' +
      'duplicata d'#13#10'inner JOIN PESSOA FORN'#13#10'ON d.id_pessoa = FORN.CODIG' +
      'O'#13#10'where d.tipo_es = '#39'S'#39#13#10'  and ((d.tipo_mov = '#39'N'#39') or (d.tipo_m' +
      'ov = '#39'D'#39'))'#13#10'  and ((d.id_nota <= 0) or (d.id_nota is null))'#13#10' an' +
      'd (case'#13#10'   when d.mes_ref < 10  then d.ano_ref || '#39'0'#39' || d.mes_' +
      'ref'#13#10'   else d.ano_ref || d.mes_ref'#13#10'   end) >= :Ano_Mes1'#13#10' and'#13 +
      #10' (case'#13#10'   when d.mes_ref < 10  then d.ano_ref || '#39'0'#39' || d.mes_' +
      'ref'#13#10'   else d.ano_ref || d.mes_ref'#13#10'   end) <= :Ano_Mes2'#13#10'  and' +
      ' coalesce(forn.fornecedor_conta_id,0) = :FORNECEDOR_CONTA_ID'#13#10'gr' +
      'oup by  forn.codigo, forn.nome'#13#10#13#10'UNION ALL'#13#10#13#10'select 0 consumo,' +
      ' sum(FIN.vlr_movimento) Vlr_Total,'#13#10'0 id_fornecedor, fin.histori' +
      'co_compl nome_fornecedor, '#39'Real.Financeiro'#39' TIPO'#13#10'from financeir' +
      'o FIN'#13#10'where ((FIN.id_nota <= 0) or (FIN.id_nota is null))'#13#10'  an' +
      'd ((FIN.id_movduplicata <= 0) or (FIN.id_movduplicata is null))'#13 +
      #10' and FIN.dtmovimento >= :DATA1'#13#10'  and FIN.dtmovimento <= :DATA2' +
      #13#10'  and ((FIN.id_transferencia <= 0) or (FIN.id_transferencia is' +
      ' Null))'#13#10'  and ((FIN.id_cheque <= 0) or (FIN.id_cheque is Null))' +
      #13#10'  and coalesce(fin.id_conta_orcamento,0) = :FORNECEDOR_CONTA_I' +
      'D'#13#10'group by  fin.historico_compl'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNECEDOR_CONTA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNECEDOR_CONTA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNECEDOR_CONTA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ano_Mes1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ano_Mes2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNECEDOR_CONTA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORNECEDOR_CONTA_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 136
  end
  object dspConDetForn: TDataSetProvider
    DataSet = sdsConDetForn
    Left = 144
    Top = 136
  end
  object cdsConDetForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConDetForn'
    Left = 192
    Top = 136
    object cdsConDetFornCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsConDetFornVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConDetFornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsConDetFornNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsConDetFornTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object dsConDetForn: TDataSource
    DataSet = cdsConDetForn
    Left = 240
    Top = 136
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.FORNECEDOR_CONTA_ID'#13#10'FROM PESSOA P'#13#10'W' +
      'HERE P.CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 248
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 248
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 256
    Top = 248
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 304
    Top = 248
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 560
    Top = 256
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 520
    Top = 256
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 480
    Top = 256
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, CASE NIVEL'#13#10'        ' +
      '   WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'           WHEN 4 THE' +
      'N '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39'      '#39' ||  ' +
      'DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRICAO'#13#10'        ' +
      '   WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13#10'           ' +
      'END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 256
  end
end
