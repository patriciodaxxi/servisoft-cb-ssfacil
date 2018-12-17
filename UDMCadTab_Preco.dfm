object DMCadTab_Preco: TDMCadTab_Preco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 148
  Top = 85
  Height = 582
  Width = 903
  object sdsTab_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PRECO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsTab_PrecoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_PrecoDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object sdsTab_PrecoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsTab_PrecoTABPROMOCIONAL: TStringField
      FieldName = 'TABPROMOCIONAL'
      FixedChar = True
      Size = 1
    end
    object sdsTab_PrecoNGR: TStringField
      FieldName = 'NGR'
      Size = 1
    end
  end
  object dspTab_Preco: TDataSetProvider
    DataSet = sdsTab_Preco
    OnUpdateError = dspTab_PrecoUpdateError
    Left = 160
    Top = 32
  end
  object cdsTab_Preco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Preco'
    BeforePost = cdsTab_PrecoBeforePost
    OnNewRecord = cdsTab_PrecoNewRecord
    Left = 224
    Top = 32
    object cdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PrecoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 70
    end
    object cdsTab_PrecoDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_PrecoDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsTab_PrecoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsTab_PrecoTABPROMOCIONAL: TStringField
      FieldName = 'TABPROMOCIONAL'
      FixedChar = True
      Size = 1
    end
    object cdsTab_PrecosdsTab_Preco_Itens: TDataSetField
      FieldName = 'sdsTab_Preco_Itens'
    end
    object cdsTab_PrecoNGR: TStringField
      FieldName = 'NGR'
      Size = 1
    end
  end
  object dsTab_Preco: TDataSource
    DataSet = cdsTab_Preco
    Left = 296
    Top = 32
  end
  object dsTab_Preco_Mestre: TDataSource
    DataSet = sdsTab_Preco
    Left = 56
    Top = 104
  end
  object sdsTab_Preco_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TAB.*, PRO.NOME NOMEPRODUTO, PRO.REFERENCIA, PRO.PRECO_CU' +
      'STO,'#13#10'PES.NOME NOME_FORNECEDOR, MR.NOME NOME_MARCA, PES.FANTASIA' +
      ', COMB.nome NOME_COR'#13#10'FROM TAB_PRECO_ITENS TAB'#13#10'INNER JOIN PRODU' +
      'TO PRO'#13#10'ON TAB.ID_PRODUTO = PRO.ID'#13#10'LEFT JOIN PESSOA PES ON (PRO' +
      '.id_fornecedor = PES.CODIGO)'#13#10'LEFT JOIN MARCA MR ON (PRO.id_marc' +
      'a = MR.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON (TAB.id_cor = COMB.id)'#13 +
      #10#13#10'WHERE TAB.ID = :ID'#13#10
    DataSource = dsTab_Preco_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 168
    object sdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_Preco_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTab_Preco_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTab_Preco_ItensVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
    object sdsTab_Preco_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsTab_Preco_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsTab_Preco_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
    end
    object sdsTab_Preco_ItensNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sdsTab_Preco_ItensNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      ProviderFlags = []
      Size = 40
    end
    object sdsTab_Preco_ItensFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object sdsTab_Preco_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsTab_Preco_ItensNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object cdsTab_Preco_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTab_PrecosdsTab_Preco_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsTab_Preco_ItensNewRecord
    Left = 184
    Top = 168
    object cdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_Preco_ItensITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTab_Preco_ItensID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsTab_Preco_ItensVLR_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'VLR_VENDA'
      DisplayFormat = '0.00####'
    end
    object cdsTab_Preco_ItensNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsTab_Preco_ItensREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsTab_Preco_ItensPRECO_CUSTO: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'PRECO_CUSTO'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object cdsTab_Preco_ItensNOME_FORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cdsTab_Preco_ItensNOME_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      ProviderFlags = []
      Size = 40
    end
    object cdsTab_Preco_ItensFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsTab_Preco_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsTab_Preco_ItensNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsTab_Preco_Itens: TDataSource
    DataSet = cdsTab_Preco_Itens
    Left = 312
    Top = 168
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.*, MR.NOME NOME_MARCA'#13#10'FROM PRODUTO PRO'#13#10'LEFT JOIN MA' +
      'RCA MR ON (PRO.ID_MARCA = MR.ID)'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 264
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 416
    Top = 264
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 456
    Top = 264
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
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 3
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
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
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      ProviderFlags = []
      Size = 40
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 496
    Top = 264
  end
  object sdsTab_Preco_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TAB.*, TI.ITEM, TI.ID_PRODUTO, TI.VLR_VENDA, PRO.NOME NOM' +
      'EPRODUTO, PRO.REFERENCIA, PRO.PRECO_CUSTO,'#13#10' MARCA.NOME NOMEMARC' +
      'A, GRUPO.NOME NOMEGRUPO, SUBGRUPO.NOME NOMESUBGRUPO,'#13#10' PES.NOME ' +
      'NOME_FORNECEDOR, PES.FANTASIA, CB.nome NOME_COR, PRO.nome ||'#39' '#39' ' +
      '|| CB.nome NOME_Produto_Cor'#13#10'FROM TAB_PRECO TAB'#13#10'INNER JOIN TAB_' +
      'PRECO_ITENS TI'#13#10'ON TAB.ID = TI.ID'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON TI' +
      '.ID_PRODUTO = PRO.ID'#13#10'LEFT JOIN MARCA'#13#10'ON PRO.ID_MARCA = MARCA.I' +
      'D'#13#10'LEFT JOIN GRUPO'#13#10'ON PRO.ID_GRUPO = GRUPO.ID'#13#10'LEFT JOIN SUBGRU' +
      'PO'#13#10'ON PRO.ID_SUBGRUPO = SUBGRUPO.ID'#13#10'LEFT JOIN PESSOA PES'#13#10'ON P' +
      'RO.ID_FORNECEDOR = PES.CODIGO'#13#10'LEFT JOIN combinacao CB'#13#10'ON TI.id' +
      '_cor = CB.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 368
  end
  object dspTab_Preco_Consulta: TDataSetProvider
    DataSet = sdsTab_Preco_Consulta
    OnUpdateError = dspTab_PrecoUpdateError
    Left = 296
    Top = 368
  end
  object cdsTab_Preco_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Preco_Consulta'
    Left = 360
    Top = 368
    object cdsTab_Preco_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_Preco_ConsultaNOME: TStringField
      DisplayLabel = 'Nome Tabela'
      FieldName = 'NOME'
      Size = 70
    end
    object cdsTab_Preco_ConsultaDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsTab_Preco_ConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_Preco_ConsultaITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTab_Preco_ConsultaID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsTab_Preco_ConsultaVLR_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'VLR_VENDA'
      DisplayFormat = '###,###,##0.000#'
    end
    object cdsTab_Preco_ConsultaNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsTab_Preco_ConsultaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsTab_Preco_ConsultaPRECO_CUSTO: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsTab_Preco_ConsultaNOMEMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMEMARCA'
      Size = 40
    end
    object cdsTab_Preco_ConsultaNOMEGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMEGRUPO'
      Size = 40
    end
    object cdsTab_Preco_ConsultaNOMESUBGRUPO: TStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'NOMESUBGRUPO'
      Size = 40
    end
    object cdsTab_Preco_ConsultaNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsTab_Preco_ConsultaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsTab_Preco_ConsultaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsTab_Preco_ConsultaNOME_PRODUTO_COR: TStringField
      FieldName = 'NOME_PRODUTO_COR'
      Size = 161
    end
  end
  object dsTab_Preco_Consulta: TDataSource
    DataSet = cdsTab_Preco_Consulta
    Left = 432
    Top = 368
  end
  object sdsTab_Preco_Pesquisa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM TAB_PRECO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 424
    object sdsTab_Preco_PesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_Preco_PesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspTab_Preco_Pesquisa: TDataSetProvider
    DataSet = sdsTab_Preco_Pesquisa
    OnUpdateError = dspTab_PrecoUpdateError
    Left = 296
    Top = 424
  end
  object cdsTab_Preco_Pesquisa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTab_Preco_Pesquisa'
    Left = 360
    Top = 424
    object cdsTab_Preco_PesquisaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_Preco_PesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsTab_Preco_Pesquisa: TDataSource
    DataSet = cdsTab_Preco_Pesquisa
    Left = 432
    Top = 424
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRUPO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 80
    object sdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 528
    Top = 80
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 592
    Top = 80
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 664
    Top = 80
  end
  object sdsSubGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SUBGRUPO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 128
    object sdsSubGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSubGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspSubGrupo: TDataSetProvider
    DataSet = sdsSubGrupo
    Left = 528
    Top = 128
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 592
    Top = 128
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
    Left = 664
    Top = 128
  end
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MARCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 184
    object sdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    Left = 528
    Top = 184
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMarca'
    Left = 592
    Top = 184
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
    Left = 664
    Top = 184
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 304
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 696
    Top = 304
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 736
    Top = 304
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
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42249.619220289400000000
    ReportOptions.LastChange = 42311.709713043980000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 608
    Top = 411
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Filial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      'NOME_INTERNO=NOME_INTERNO')
    DataSet = cdsFilial
    BCDToCurrency = False
    Left = 704
    Top = 411
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
    Left = 752
    Top = 411
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'TabPrecoCons'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      'DTCADASTRO=DTCADASTRO'
      'OBS=OBS'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'VLR_VENDA=VLR_VENDA'
      'NOMEPRODUTO=NOMEPRODUTO'
      'REFERENCIA=REFERENCIA'
      'PRECO_CUSTO=PRECO_CUSTO'
      'NOMEMARCA=NOMEMARCA'
      'NOMEGRUPO=NOMEGRUPO'
      'NOMESUBGRUPO=NOMESUBGRUPO'
      'NOME_FORNECEDOR=NOME_FORNECEDOR'
      'FANTASIA=FANTASIA')
    OpenDataSource = False
    DataSource = dsTab_Preco_Consulta
    BCDToCurrency = False
    Left = 656
    Top = 411
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_TABPRECO_PROM, USA_NGR, ARREDONDA_PRECO_TAB'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 120
    object qParametros_FinUSA_TABPRECO_PROM: TStringField
      FieldName = 'USA_TABPRECO_PROM'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_NGR: TStringField
      FieldName = 'USA_NGR'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinARREDONDA_PRECO_TAB: TStringField
      FieldName = 'ARREDONDA_PRECO_TAB'
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
    Left = 752
    Top = 176
    object qParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_REF2: TStringField
      FieldName = 'USA_REF2'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, P.PRECO_CUSTO, P.id_cor_combinac' +
      'ao, p.preco_venda'#13#10'FROM PRODUTO_COMB P'#13#10'WHERE P.ID = :ID'#13#10'  AND ' +
      'P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 486
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 536
    Top = 486
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 568
    Top = 486
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsCombinacaoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 608
    Top = 486
  end
  object qUltimo_Registro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(ID)'
      'from TAB_PRECO  ')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 256
    object qUltimo_RegistroMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
