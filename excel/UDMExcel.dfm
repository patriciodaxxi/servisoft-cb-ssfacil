object DMExcel: TDMExcel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 419
  Top = 170
  Height = 479
  Width = 787
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Embalagem'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Despacho_Minimo'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Existe_Produto'
        DataType = ftBoolean
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'Calc_ST'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Origem_Prod'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 24
    Data = {
      3C0100009619E0BD01000000180000000D0000000000030000003C0106436F64
      69676F0100490000000100055749445448020002001400044E6F6D6501004900
      00000100055749445448020002003C0009456D62616C6167656D080004000000
      00000351746408000400000000000C566C725F556E69746172696F0800040000
      00000009566C725F546F74616C08000400000000000F446573706163686F5F4D
      696E696D6F08000400000000000A5265666572656E6369610100490000000100
      0557494454480200020014000E4578697374655F50726F6475746F0200030000
      0000000649445F4E434D04000100000000000749445F43464F50040001000000
      00000743616C635F535401004900000001000557494454480200020001000B4F
      726967656D5F50726F6401004900000001000557494454480200020001000000}
    object mAuxiliarCodigo: TStringField
      DisplayWidth = 20
      FieldName = 'Codigo'
    end
    object mAuxiliarNome: TStringField
      DisplayWidth = 44
      FieldName = 'Nome'
      Size = 60
    end
    object mAuxiliarEmbalagem: TFloatField
      DisplayWidth = 15
      FieldName = 'Embalagem'
    end
    object mAuxiliarQtd: TFloatField
      DisplayWidth = 15
      FieldName = 'Qtd'
    end
    object mAuxiliarVlr_Unitario: TFloatField
      DisplayWidth = 15
      FieldName = 'Vlr_Unitario'
    end
    object mAuxiliarVlr_Total: TFloatField
      DisplayWidth = 15
      FieldName = 'Vlr_Total'
    end
    object mAuxiliarDespacho_Minimo: TFloatField
      DisplayWidth = 22
      FieldName = 'Despacho_Minimo'
    end
    object mAuxiliarReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mAuxiliarExiste_Produto: TBooleanField
      FieldName = 'Existe_Produto'
    end
    object mAuxiliarID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mAuxiliarID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mAuxiliarCalc_ST: TStringField
      FieldName = 'Calc_ST'
      Size = 1
    end
    object mAuxiliarlkCFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = cdsCFOP
      LookupKeyFields = 'ID'
      LookupResultField = 'CODCFOP'
      KeyFields = 'ID_CFOP'
      Size = 4
      Lookup = True
    end
    object mAuxiliarlkNCM: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNCM'
      LookupDataSet = cdsNCM
      LookupKeyFields = 'ID'
      LookupResultField = 'NCM'
      KeyFields = 'ID_NCM'
      Size = 10
      Lookup = True
    end
    object mAuxiliarOrigem_Prod: TStringField
      FieldName = 'Origem_Prod'
      Size = 1
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 344
    Top = 24
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 328
    Top = 80
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_GRUPO;NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 360
    Top = 80
    object cdsProdutoREFERENCIA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoEMBALAGEM: TIntegerField
      DisplayLabel = 'Embalagem'
      FieldName = 'EMBALAGEM'
      Required = True
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '###,###,##0.000##'
    end
    object cdsProdutoQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object cdsProdutoVLR_TOTAL: TIntegerField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
    end
    object cdsProdutoDESPACHO_MIN: TIntegerField
      DisplayLabel = 'Despacho M'#237'nimo'
      FieldName = 'DESPACHO_MIN'
    end
    object cdsProdutoCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsProdutoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 392
    Top = 80
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.REFERENCIA, P.ID, P.NOME, Cast(1 As integer) embalagem,' +
      ' P.PRECO_VENDA,'#13#10'  Cast(NULL As integer) QUANTIDADE, Cast(NULL A' +
      's integer) VLR_TOTAL,'#13#10'  Cast(NULL As integer) DESPACHO_MIN, G.C' +
      'ODIGO COD_GRUPO, G.NOME NOME_GRUPO'#13#10'FROM PRODUTO P'#13#10'LEFT JOIN GR' +
      'UPO G'#13#10'ON P.ID_GRUPO = G.ID'#13#10'WHERE P.INATIVO = '#39'N'#39#13#10'  AND P.TIPO' +
      '_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 80
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoEMBALAGEM: TIntegerField
      FieldName = 'EMBALAGEM'
      Required = True
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object sdsProdutoVLR_TOTAL: TIntegerField
      FieldName = 'VLR_TOTAL'
    end
    object sdsProdutoDESPACHO_MIN: TIntegerField
      FieldName = 'DESPACHO_MIN'
    end
    object sdsProdutoCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object sdsProdutoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA'
      'WHERE CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 168
    Top = 40
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 40
    object qParametrosOBS_EXPORTACAO_EXCEL: TMemoField
      FieldName = 'OBS_EXPORTACAO_EXCEL'
      BlobType = ftMemo
      Size = 1
    end
    object qParametrosEND_SALVAR_EXCEL_EXP: TStringField
      FieldName = 'END_SALVAR_EXCEL_EXP'
      Size = 250
    end
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE ENTRADASAIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 152
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
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
    object sdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 272
    Top = 152
  end
  object cdsCFOP: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 312
    Top = 152
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
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
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
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
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
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
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
    object cdsCFOPsdsCFOP_Variacao: TDataSetField
      FieldName = 'sdsCFOP_Variacao'
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 344
    Top = 152
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
    Left = 248
    Top = 248
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
  end
  object cdsCFOP_Variacao: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsCFOPsdsCFOP_Variacao
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 312
    Top = 248
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
  end
  object dsCFOP_Variacao: TDataSource
    DataSet = cdsCFOP_Variacao
    Left = 368
    Top = 248
  end
  object dsCFOP_Mestre: TDataSource
    DataSet = sdsCFOP
    Left = 232
    Top = 200
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, PERC_COMISSAO_VEND'#13#10'FROM PES' +
      'SOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 304
    object sdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsVendedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 264
    Top = 304
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 304
    Top = 304
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
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 344
    Top = 304
  end
  object qTab_Preco: TSQLQuery
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
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_PRECO_ITENS'
      'WHERE ID = :ID'
      'AND ID_PRODUTO = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 136
    object qTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTab_PrecoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qTab_PrecoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qTab_PrecoVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.ID, P.REFERENCIA, P.ID_NCM, NCM.ncm, ncm.gerar_st'
      'FROM PRODUTO P'
      'LEFT JOIN TAB_NCM NCM'
      'ON P.id_ncm = NCM.ID'
      'WHERE P.REFERENCIA = :REFERENCIA')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 152
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object qProdutoGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 489
    Top = 229
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 521
    Top = 229
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    Left = 561
    Top = 229
    object cdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsOperacao_NotaPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsOperacao_NotaNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object cdsOperacao_NotaSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField
      FieldName = 'MOSTRAR_CLI_TRIANG2'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 601
    Top = 229
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NCM, GERAR_ST'#13#10'FROM TAB_NCM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 489
    Top = 293
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 521
    Top = 293
  end
  object cdsNCM: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NCM'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 561
    Top = 293
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 601
    Top = 293
  end
end
