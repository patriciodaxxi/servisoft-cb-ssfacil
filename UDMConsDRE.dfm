object DMConsDRE: TDMConsDRE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 343
  Top = 199
  Height = 416
  Width = 552
  object sdsDRE: TSQLDataSet
    CommandText = 
      'WITH RECURSIVE'#13#10'   datas (d) AS ('#13#10'     SELECT cast(:DataIni as ' +
      'date) from RDB$DATABASE'#13#10'      UNION ALL'#13#10'     SELECT d+1 FROM d' +
      'atas'#13#10'      WHERE d < cast(:DataFin as date)'#13#10'   ),'#13#10'   hierarch' +
      'y as ('#13#10'   SELECT F.ID,'#13#10'          F.Superior,'#13#10'          F.codi' +
      'go,'#13#10'          F.nome,'#13#10'          F.tipo_reg,'#13#10'          F.nivel' +
      ','#13#10'          case'#13#10'            when F.somar = '#39'-'#39' then'#13#10'        ' +
      '      SUM(coalesce(-1*DUP.valor,0))'#13#10'            else'#13#10'         ' +
      '     SUM(coalesce(DUP.valor,0))'#13#10'          end VALOR,'#13#10'         ' +
      ' F.somar,'#13#10'          case'#13#10'            when F.nivel = 1 then'#13#10'  ' +
      '             (SELECT FIRST 1 F1.ID FROM PLANO_DRE F1'#13#10'          ' +
      '       where F1.nivel = 1'#13#10'                   and F1.codigo > F.' +
      'codigo'#13#10'                   and F1.somar = '#39'='#39#13#10'                 ' +
      'order by F1.codigo)'#13#10'            else null'#13#10'          end somar_' +
      'em,'#13#10'          extract(year from datas.d) ano, extract(month fro' +
      'm datas.d) mes'#13#10'     FROM datas, plano_dre F'#13#10'     LEFT JOIN pla' +
      'no_dre_itens I ON F.ID = I.ID'#13#10'     LEFT JOIN (select vdre.* fro' +
      'm vdre where vdre.tipo in ('#39'BAI'#39','#39'FIN'#39')) DUP ON DUP.id_conta_orc' +
      'amento = I.id_conta_orcamento'#13#10'                                 ' +
      '           and datas.d = dup.dtemissao'#13#10'    WHERE ( (F.tipo_reg ' +
      '= '#39'A'#39')'#13#10'          OR (F.tipo_reg = '#39'S'#39' and somar <> '#39'='#39#13#10'       ' +
      '       and not exists(select 1 from plano_dre FF where ff.superi' +
      'or = F.id)) )'#13#10#13#10'    GROUP BY F.ID, F.Superior, F.codigo, F.nome' +
      ', F.tipo_reg, F.nivel, F.somar, datas.d'#13#10'),'#13#10'  h2 AS ('#13#10'   SELEC' +
      'T F.ID,'#13#10'          F.Superior,'#13#10'          F.codigo,'#13#10'          F' +
      '.nome,'#13#10'          F.tipo_reg,'#13#10'          F.nivel,'#13#10'          F.v' +
      'alor valor,'#13#10'          F.somar,'#13#10'          F.somar_em,'#13#10'        ' +
      '  F.ANO,'#13#10'          F.MES'#13#10'     FROM hierarchy F'#13#10#13#10'    UNION AL' +
      'L'#13#10#13#10'   SELECT P.ID,'#13#10'          P.Superior,'#13#10'          P.codigo,' +
      #13#10'          P.nome,'#13#10'          P.tipo_reg,'#13#10'          P.nivel,'#13#10 +
      '          F.valor valor,'#13#10'          P.somar,'#13#10'          case'#13#10'  ' +
      '          when P.nivel = 1 then'#13#10'               (SELECT FIRST 1 ' +
      'F1.ID FROM PLANO_DRE F1'#13#10'                 where F1.nivel = 1'#13#10'  ' +
      '                 and F1.codigo > P.codigo'#13#10'                   an' +
      'd F1.somar = '#39'='#39#13#10'                 order by F1.codigo)'#13#10'        ' +
      '    else null'#13#10'          end somar_em,'#13#10'          F.ANO,'#13#10'      ' +
      '    F.MES'#13#10'     FROM plano_dre P'#13#10'     JOIN h2 F ON F.Superior =' +
      ' P.ID'#13#10'),'#13#10'  h3 AS ('#13#10'   SELECT F.ID,'#13#10'          F.Superior,'#13#10'  ' +
      '        F.codigo,'#13#10'          F.nome,'#13#10'          F.tipo_reg,'#13#10'   ' +
      '       F.nivel,'#13#10'          F.valor valor,'#13#10'          F.somar,'#13#10' ' +
      '         F.somar_em,'#13#10'          F.ANO,'#13#10'          F.MES'#13#10'     FR' +
      'OM h2 F'#13#10#13#10'    UNION ALL'#13#10#13#10'   SELECT P.ID,'#13#10'          P.Superio' +
      'r,'#13#10'          P.codigo,'#13#10'          P.nome,'#13#10'          P.tipo_reg' +
      ','#13#10'          P.nivel,'#13#10'          F.valor valor,'#13#10'          P.som' +
      'ar,'#13#10'          case'#13#10'            when P.nivel = 1 then'#13#10'        ' +
      '       (SELECT FIRST 1 F1.ID FROM PLANO_DRE F1'#13#10'                ' +
      ' where F1.nivel = 1'#13#10'                   and F1.codigo > P.codigo' +
      #13#10'                   and F1.somar = '#39'='#39#13#10'                 order ' +
      'by F1.codigo)'#13#10'            else null'#13#10'          end somar_em,'#13#10' ' +
      '         F.ANO,'#13#10'          F.MES'#13#10'     FROM plano_dre P'#13#10'     JO' +
      'IN h3 F ON F.Somar_em = P.Id'#13#10#13#10')'#13#10#13#10'SELECT ano,'#13#10'       mes,'#13#10' ' +
      '      ID,'#13#10'       Superior,'#13#10'       codigo,'#13#10'       nome,'#13#10'     ' +
      '  tipo_reg,'#13#10'       nivel,'#13#10'       Sum(valor) valor,'#13#10'       som' +
      'ar'#13#10' FROM  h3'#13#10' group by ID, Superior, codigo, nome, tipo_reg, n' +
      'ivel, somar, ano, mes'#13#10'order by ano, mes, codigo'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DataIni'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DataFin'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 56
  end
  object dspDRE: TDataSetProvider
    DataSet = sdsDRE
    Left = 120
    Top = 56
  end
  object cdsDRE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDRE'
    Left = 160
    Top = 56
    object cdsDREANO: TSmallintField
      FieldName = 'ANO'
      Required = True
    end
    object cdsDREMES: TSmallintField
      FieldName = 'MES'
      Required = True
    end
    object cdsDREID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDRESUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsDRECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsDRENOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsDRETIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsDRENIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsDREVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsDRESOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsDRE: TDataSource
    DataSet = cdsDRE
    Left = 200
    Top = 56
  end
  object sdsFilial: TSQLDataSet
    CommandText = 'SELECT ID, NOME, NOME_INTERNO, CNPJ_CPF'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 240
    Top = 152
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 288
    Top = 152
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 328
    Top = 152
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
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 368
    Top = 152
  end
  object mDREAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_DRE'
        DataType = ftInteger
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Tipo_Reg'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Somar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Valor1'
        DataType = ftFloat
      end
      item
        Name = 'Valor2'
        DataType = ftFloat
      end
      item
        Name = 'Valor3'
        DataType = ftFloat
      end
      item
        Name = 'Valor4'
        DataType = ftFloat
      end
      item
        Name = 'Valor5'
        DataType = ftFloat
      end
      item
        Name = 'Valor6'
        DataType = ftFloat
      end
      item
        Name = 'Valor7'
        DataType = ftFloat
      end
      item
        Name = 'Valor8'
        DataType = ftFloat
      end
      item
        Name = 'Valor9'
        DataType = ftFloat
      end
      item
        Name = 'Valor10'
        DataType = ftFloat
      end
      item
        Name = 'Valor11'
        DataType = ftFloat
      end
      item
        Name = 'Valor12'
        DataType = ftFloat
      end
      item
        Name = 'Valor13'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV1'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV2'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV3'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV4'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV5'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV6'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV7'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV8'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV9'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV10'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV11'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV12'
        DataType = ftFloat
      end
      item
        Name = 'Perc_AV13'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Codigo'
    Params = <>
    StoreDefs = True
    Left = 248
    Top = 232
    Data = {
      3C0200009619E0BD01000000180000001F0000000000030000003C020649445F
      445245040001000000000006436F6469676F0100490000000100055749445448
      020002003C00044E6F6D65010049000000010005574944544802000200640008
      5469706F5F526567010049000000010005574944544802000200010005536F6D
      617201004900000001000557494454480200020001000656616C6F7231080004
      00000000000656616C6F723208000400000000000656616C6F72330800040000
      0000000656616C6F723408000400000000000656616C6F723508000400000000
      000656616C6F723608000400000000000656616C6F7237080004000000000006
      56616C6F723808000400000000000656616C6F72390800040000000000075661
      6C6F72313008000400000000000756616C6F7231310800040000000000075661
      6C6F72313208000400000000000756616C6F7231330800040000000000085065
      72635F415631080004000000000008506572635F415632080004000000000008
      506572635F415633080004000000000008506572635F41563408000400000000
      0008506572635F415635080004000000000008506572635F4156360800040000
      00000008506572635F415637080004000000000008506572635F415638080004
      000000000008506572635F415639080004000000000009506572635F41563130
      080004000000000009506572635F41563131080004000000000009506572635F
      41563132080004000000000009506572635F4156313308000400000000000000}
    object mDREAuxID_DRE: TIntegerField
      FieldName = 'ID_DRE'
    end
    object mDREAuxCodigo: TStringField
      FieldName = 'Codigo'
      Size = 60
    end
    object mDREAuxNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mDREAuxTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 1
    end
    object mDREAuxSomar: TStringField
      FieldName = 'Somar'
      Size = 1
    end
    object mDREAuxValor1: TFloatField
      FieldName = 'Valor1'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor2: TFloatField
      FieldName = 'Valor2'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor3: TFloatField
      FieldName = 'Valor3'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor4: TFloatField
      FieldName = 'Valor4'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor5: TFloatField
      FieldName = 'Valor5'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor6: TFloatField
      FieldName = 'Valor6'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor7: TFloatField
      FieldName = 'Valor7'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor8: TFloatField
      FieldName = 'Valor8'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor9: TFloatField
      FieldName = 'Valor9'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor10: TFloatField
      FieldName = 'Valor10'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor11: TFloatField
      FieldName = 'Valor11'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor12: TFloatField
      FieldName = 'Valor12'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxValor13: TFloatField
      FieldName = 'Valor13'
      DisplayFormat = '###,###,##0.00'
    end
    object mDREAuxPerc_AV1: TFloatField
      FieldName = 'Perc_AV1'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV2: TFloatField
      FieldName = 'Perc_AV2'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV3: TFloatField
      FieldName = 'Perc_AV3'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV4: TFloatField
      FieldName = 'Perc_AV4'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV5: TFloatField
      FieldName = 'Perc_AV5'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV6: TFloatField
      FieldName = 'Perc_AV6'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV7: TFloatField
      FieldName = 'Perc_AV7'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV8: TFloatField
      FieldName = 'Perc_AV8'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV9: TFloatField
      FieldName = 'Perc_AV9'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV10: TFloatField
      FieldName = 'Perc_AV10'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV11: TFloatField
      FieldName = 'Perc_AV11'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV12: TFloatField
      FieldName = 'Perc_AV12'
      DisplayFormat = '0.00%'
    end
    object mDREAuxPerc_AV13: TFloatField
      FieldName = 'Perc_AV13'
      DisplayFormat = '0.00%'
    end
  end
  object dsmDREAux: TDataSource
    DataSet = mDREAux
    Left = 288
    Top = 232
  end
  object mData: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Ano;Mes'
    Params = <>
    Left = 248
    Top = 304
    Data = {
      410000009619E0BD010000001800000003000000000003000000410003416E6F
      0400010000000000034D6573040001000000000006496E646963650400010000
      0000000000}
    object mDataAno: TIntegerField
      FieldName = 'Ano'
    end
    object mDataMes: TIntegerField
      FieldName = 'Mes'
    end
    object mDataIndice: TIntegerField
      FieldName = 'Indice'
    end
  end
  object dsmData: TDataSource
    DataSet = mData
    Left = 272
    Top = 304
  end
end
