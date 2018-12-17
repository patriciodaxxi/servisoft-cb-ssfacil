object DMCadNecessidade_Compras: TDMCadNecessidade_Compras
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 162
  Top = 17
  Height = 674
  Width = 1102
  object sdsNecessidade_Compras: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NECESSIDADE_COMPRAS'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsNecessidade_ComprasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNecessidade_ComprasDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsNecessidade_ComprasNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
  end
  object dspNecessidade_Compras: TDataSetProvider
    DataSet = sdsNecessidade_Compras
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspNecessidade_ComprasUpdateError
    Left = 160
    Top = 32
  end
  object cdsNecessidade_Compras: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNecessidade_Compras'
    Left = 224
    Top = 32
    object cdsNecessidade_ComprasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNecessidade_ComprasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsNecessidade_ComprasNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsNecessidade_ComprassdsNecessidade_Compras_Ord: TDataSetField
      FieldName = 'sdsNecessidade_Compras_Ord'
    end
  end
  object dsNecessidade_Compras: TDataSource
    DataSet = cdsNecessidade_Compras
    Left = 296
    Top = 32
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Mapa'
        DataType = ftInteger
      end
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd_Consumo'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Pares_Prod'
        DataType = ftFloat
      end
      item
        Name = 'ID_OC'
        DataType = ftInteger
      end
      item
        Name = 'Item_OC'
        DataType = ftInteger
      end
      item
        Name = 'Num_OC'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ID_Fornecedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Fornecedor'
        DataType = ftString
        Size = 60
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
        Name = 'Perc_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Gerar_OC'
        DataType = ftBoolean
      end
      item
        Name = 'Nome_Mapa'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Mapa'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Para_OC'
        DataType = ftFloat
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Transfer'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Carimbo_Aux'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Material_OK'
        DataType = ftBoolean
      end
      item
        Name = 'Qtd_Estoque'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Reserva'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_OC'
        DataType = ftFloat
      end
      item
        Name = 'Gerado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Qtd_OC_Original'
        DataType = ftFloat
      end
      item
        Name = 'ID_MovEstoque_Res'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_OC_Fat'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Sobra_OC'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_OC_Usada'
        DataType = ftFloat
      end
      item
        Name = 'Gerado_Sobra_OC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'OC_Cancelada'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Setor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Setor'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Num_Mapa;Nome_Material;Nome_Cor;Tamanho'
    Params = <>
    StoreDefs = True
    OnNewRecord = mMaterialNewRecord
    Left = 592
    Top = 112
    Data = {
      A80300009619E0BD010000001800000027000000000003000000A803084E756D
      5F4D61706104000100000000000B49445F4D6174657269616C04000100000000
      000649445F436F7204000100000000000754616D616E686F0100490000000100
      055749445448020002000A0007556E6964616465010049000000010005574944
      54480200020006000B5174645F436F6E73756D6F08000400000000000E517464
      5F50617265735F50726F6408000400000000000549445F4F4304000100000000
      00074974656D5F4F430400010000000000064E756D5F4F430400010000000000
      0D4E6F6D655F4D6174657269616C010049000000010005574944544802000200
      3C00084E6F6D655F436F720100490000000100055749445448020002002D000D
      49445F466F726E656365646F7204000100000000000F4E6F6D655F466F726E65
      6365646F720100490000000100055749445448020002003C000C566C725F556E
      69746172696F080004000000000009566C725F546F74616C0800040000000000
      08506572635F49504908000400000000000847657261725F4F43020003000000
      0000094E6F6D655F4D6170610100490000000100055749445448020002002800
      0749445F4D61706104000100000000000B5174645F506172615F4F4308000400
      0000000007436172696D626F0100490000000100055749445448020002001900
      085472616E7366657201004900000001000557494454480200020001000B4361
      72696D626F5F41757801004900000001000557494454480200020019000B4D61
      74657269616C5F4F4B02000300000000000B5174645F4573746F717565080004
      00000000000B5174645F526573657276610800040000000000065174645F4F43
      08000400000000000647657261646F0100490000000100055749445448020002
      0001000F5174645F4F435F4F726967696E616C08000400000000001149445F4D
      6F764573746F7175655F52657304000100000000000A5174645F4F435F466174
      08000400000000000C5174645F536F6272615F4F4308000400000000000C5174
      645F4F435F557361646108000400000000000F47657261646F5F536F6272615F
      4F430100490000000100055749445448020002000100044974656D0400010000
      0000000C4F435F43616E63656C61646101004900000001000557494454480200
      020001000849445F5365746F7204000100000000000A4E6F6D655F5365746F72
      010049000000010005574944544802000200280001000D44454641554C545F4F
      524445520200820000000000}
    object mMaterialNum_Mapa: TIntegerField
      FieldName = 'Num_Mapa'
    end
    object mMaterialID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMaterialID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mMaterialTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mMaterialQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
    end
    object mMaterialQtd_Pares_Prod: TFloatField
      FieldName = 'Qtd_Pares_Prod'
    end
    object mMaterialID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object mMaterialItem_OC: TIntegerField
      FieldName = 'Item_OC'
    end
    object mMaterialNum_OC: TIntegerField
      FieldName = 'Num_OC'
    end
    object mMaterialNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mMaterialNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 45
    end
    object mMaterialID_Fornecedor: TIntegerField
      FieldName = 'ID_Fornecedor'
    end
    object mMaterialNome_Fornecedor: TStringField
      FieldName = 'Nome_Fornecedor'
      Size = 60
    end
    object mMaterialVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
      DisplayFormat = '###,###,##0.000##'
    end
    object mMaterialVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '###,###,##0.00'
    end
    object mMaterialPerc_IPI: TFloatField
      FieldName = 'Perc_IPI'
    end
    object mMaterialGerar_OC: TBooleanField
      FieldName = 'Gerar_OC'
    end
    object mMaterialNome_Mapa: TStringField
      FieldName = 'Nome_Mapa'
      Size = 40
    end
    object mMaterialID_Mapa: TIntegerField
      FieldName = 'ID_Mapa'
    end
    object mMaterialQtd_Para_OC: TFloatField
      FieldName = 'Qtd_Para_OC'
    end
    object mMaterialCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 25
    end
    object mMaterialTransfer: TStringField
      FieldName = 'Transfer'
      Size = 1
    end
    object mMaterialCarimbo_Aux: TStringField
      FieldName = 'Carimbo_Aux'
      Size = 25
    end
    object mMaterialMaterial_OK: TBooleanField
      FieldName = 'Material_OK'
    end
    object mMaterialQtd_Estoque: TFloatField
      FieldName = 'Qtd_Estoque'
    end
    object mMaterialQtd_Reserva: TFloatField
      FieldName = 'Qtd_Reserva'
    end
    object mMaterialQtd_OC: TFloatField
      FieldName = 'Qtd_OC'
    end
    object mMaterialGerado: TStringField
      FieldName = 'Gerado'
      Size = 1
    end
    object mMaterialQtd_OC_Original: TFloatField
      FieldName = 'Qtd_OC_Original'
    end
    object mMaterialID_MovEstoque_Res: TIntegerField
      FieldName = 'ID_MovEstoque_Res'
    end
    object mMaterialQtd_OC_Fat: TFloatField
      FieldName = 'Qtd_OC_Fat'
    end
    object mMaterialQtd_Sobra_OC: TFloatField
      FieldName = 'Qtd_Sobra_OC'
    end
    object mMaterialQtd_OC_Usada: TFloatField
      FieldName = 'Qtd_OC_Usada'
    end
    object mMaterialGerado_Sobra_OC: TStringField
      FieldName = 'Gerado_Sobra_OC'
      Size = 1
    end
    object mMaterialItem: TIntegerField
      FieldName = 'Item'
    end
    object mMaterialOC_Cancelada: TStringField
      FieldName = 'OC_Cancelada'
      Size = 1
    end
    object mMaterialID_Setor: TIntegerField
      FieldName = 'ID_Setor'
    end
    object mMaterialNome_Setor: TStringField
      FieldName = 'Nome_Setor'
      Size = 40
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 728
    Top = 72
  end
  object mMaterial_Prod: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Mapa'
        DataType = ftInteger
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
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Num_Mapa;ID_Produto'
    Params = <>
    StoreDefs = True
    Left = 664
    Top = 184
    Data = {
      C40000009619E0BD010000001800000007000000000003000000C400084E756D
      5F4D61706104000100000000000A49445F50726F6475746F0400010000000000
      0A5265666572656E63696101004900000001000557494454480200020014000C
      4E6F6D655F50726F6475746F0100490000000100055749445448020002003C00
      0D49445F436F6D62696E6163616F04000100000000000F4E6F6D655F436F6D62
      696E6163616F0100490000000100055749445448020002002800035174640800
      0400000000000000}
    object mMaterial_ProdNum_Mapa: TIntegerField
      FieldName = 'Num_Mapa'
    end
    object mMaterial_ProdID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mMaterial_ProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mMaterial_ProdNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mMaterial_ProdID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mMaterial_ProdNome_Combinacao: TStringField
      FieldName = 'Nome_Combinacao'
      Size = 40
    end
    object mMaterial_ProdQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmMaterial_Prod: TDataSource
    DataSet = mMaterial_Prod
    Left = 728
    Top = 184
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 400
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
    object qParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
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
      
        'SELECT P.id, P.id_grade, P.NOME, P.ID_FORNECEDOR, FORN.NOME NOME' +
        '_FORNECEDOR, P.PRECO_CUSTO, P.PERC_IPI, P.REFERENCIA, P.ID_NCM,'
      'P.USA_PRECO_COR, P.TRANSFER, P.UNIDADE, P.USA_COR, P.USA_GRADE'
      'FROM PRODUTO P'
      'LEFT JOIN PESSOA FORN'
      'ON P.ID_FORNECEDOR = FORN.CODIGO'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 400
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qMaterialNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object qMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterialPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object qMaterialUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qMaterialTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object qMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qMaterialUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object qMaterialUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 448
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    OnUpdateError = dspNecessidade_ComprasUpdateError
    Left = 192
    Top = 448
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 256
    Top = 448
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
    Left = 328
    Top = 448
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA P'#13#10'WHERE P.INATIVO = ' +
      #39'N'#39#13#10'   AND TP_FORNECEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 528
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 176
    Top = 528
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 240
    Top = 528
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 288
    Top = 528
  end
  object mEmbalagem: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd_Consumo'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Produto'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Por_Embalagem'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 872
    Top = 144
    Data = {
      920000009619E0BD01000000180000000500000000000300000092000B49445F
      4D6174657269616C04000100000000000D4E6F6D655F4D6174657269616C0100
      490000000100055749445448020002003C000B5174645F436F6E73756D6F0400
      0100000000000B5174645F50726F6475746F0800040000000000115174645F50
      6F725F456D62616C6167656D04000100000000000000}
    object mEmbalagemID_Material: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Material'
    end
    object mEmbalagemNome_Material: TStringField
      DisplayWidth = 72
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mEmbalagemQtd_Consumo: TIntegerField
      DisplayWidth = 18
      FieldName = 'Qtd_Consumo'
    end
    object mEmbalagemQtd_Produto: TFloatField
      DisplayWidth = 21
      FieldName = 'Qtd_Produto'
    end
    object mEmbalagemQtd_Por_Embalagem: TIntegerField
      FieldName = 'Qtd_Por_Embalagem'
    end
  end
  object dsmEmbalagem: TDataSource
    DataSet = mEmbalagem
    Left = 920
    Top = 144
  end
  object sdsNecessidade_Compras_Ord: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NECESSIDADE_COMPRAS_ORD'#13#10'WHERE ID = :ID'#13#10#13#10
    DataSource = dsNecessidade_Compras_Mestre
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
    Top = 120
    object sdsNecessidade_Compras_OrdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNecessidade_Compras_OrdITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNecessidade_Compras_OrdNUM_ORDPRODUCAO: TIntegerField
      FieldName = 'NUM_ORDPRODUCAO'
    end
  end
  object cdsNecessidade_Compras_Ord: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNecessidade_ComprassdsNecessidade_Compras_Ord
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 224
    Top = 120
    object cdsNecessidade_Compras_OrdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNecessidade_Compras_OrdITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNecessidade_Compras_OrdNUM_ORDPRODUCAO: TIntegerField
      FieldName = 'NUM_ORDPRODUCAO'
    end
  end
  object dsNecessidade_Compras_Ord: TDataSource
    DataSet = cdsNecessidade_Compras_Ord
    Left = 296
    Top = 120
  end
  object dsNecessidade_Compras_Mestre: TDataSource
    DataSet = sdsNecessidade_Compras
    Left = 48
    Top = 80
  end
  object qProximoNumDoc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_DOC) NUM_DOC'
      'FROM NECESSIDADE_COMPRAS')
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 328
    object qProximoNumDocNUM_MAPA: TIntegerField
      FieldName = 'NUM_MAPA'
    end
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
    ReportOptions.CreateDate = 42032.577038136600000000
    ReportOptions.LastChange = 43098.447833935180000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 624
    Top = 320
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
    Left = 664
    Top = 320
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
    Left = 704
    Top = 320
  end
  object frxRichObject1: TfrxRichObject
    Left = 736
    Top = 320
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxmMaterial'
    CloseDataSource = True
    FieldAliases.Strings = (
      'Num_Mapa=Num_Mapa'
      'ID_Material=ID_Material'
      'ID_Cor=ID_Cor'
      'Tamanho=Tamanho'
      'Unidade=Unidade'
      'Qtd_Consumo=Qtd_Consumo'
      'Qtd_Pares_Prod=Qtd_Pares_Prod'
      'ID_OC=ID_OC'
      'Item_OC=Item_OC'
      'Num_OC=Num_OC'
      'Nome_Material=Nome_Material'
      'Nome_Cor=Nome_Cor'
      'ID_Fornecedor=ID_Fornecedor'
      'Nome_Fornecedor=Nome_Fornecedor'
      'Vlr_Unitario=Vlr_Unitario'
      'Vlr_Total=Vlr_Total'
      'Perc_IPI=Perc_IPI'
      'Gerar_OC=Gerar_OC'
      'Nome_Mapa=Nome_Mapa'
      'ID_Mapa=ID_Mapa'
      'Qtd_Para_OC=Qtd_Para_OC'
      'Carimbo=Carimbo'
      'Transfer=Transfer'
      'Carimbo_Aux=Carimbo_Aux'
      'Material_OK=Material_OK'
      'Qtd_Estoque=Qtd_Estoque'
      'Qtd_Reserva=Qtd_Reserva'
      'Qtd_OC=Qtd_OC'
      'Gerado=Gerado'
      'Qtd_OC_Original=Qtd_OC_Original'
      'ID_MovEstoque_Res=ID_MovEstoque_Res'
      'Qtd_OC_Fat=Qtd_OC_Fat'
      'Qtd_Sobra_OC=Qtd_Sobra_OC'
      'Qtd_OC_Usada=Qtd_OC_Usada'
      'Gerado_Sobra_OC=Gerado_Sobra_OC'
      'Item=Item'
      'OC_Cancelada=OC_Cancelada'
      'ID_Setor=ID_Setor'
      'Nome_Setor=Nome_Setor')
    DataSource = dsmMaterial
    BCDToCurrency = False
    Left = 624
    Top = 368
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxmMaterial_Prod'
    CloseDataSource = True
    FieldAliases.Strings = (
      'Num_Mapa=Num_Mapa'
      'ID_Produto=ID_Produto'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'ID_Combinacao=ID_Combinacao'
      'Nome_Combinacao=Nome_Combinacao'
      'Qtd=Qtd')
    DataSource = dsmMaterial_Prod
    BCDToCurrency = False
    Left = 664
    Top = 368
  end
  object mLote: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 264
    Data = {
      640000009619E0BD0100000018000000040000000000030000006400084E756D
      5F4D61706104000100000000000749445F4C6F74650400010000000000084E75
      6D5F4C6F746504000100000000000F4E756D5F4F726450726F647563616F0400
      0100000000000000}
    object mLoteNum_Mapa: TIntegerField
      FieldName = 'Num_Mapa'
    end
    object mLoteID_Lote: TIntegerField
      FieldName = 'ID_Lote'
    end
    object mLoteNum_Lote: TIntegerField
      FieldName = 'Num_Lote'
    end
    object mLoteNum_OrdProducao: TIntegerField
      FieldName = 'Num_OrdProducao'
    end
  end
  object dsmLote: TDataSource
    DataSet = mLote
    Left = 896
    Top = 264
  end
  object sdsLote_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.num_ordem, L.item, L.id_material, L.id_cor, L.carimbo, ' +
      'L.tamanho,'#13#10'L.qtd_consumo, L.qtd_produto, L.carimboaux, L.ID_OC,' +
      ' L.ITEM_OC, L.NUM_OC,'#13#10'MAT.nome NOME_MATERIAL, MAT.transfer, MAT' +
      '.UNIDADE,'#13#10'L.id_fornecedor, MAT.id_fornecedor ID_FORNECEDOR_MAT,' +
      ' MAT.preco_custo,'#13#10'MAT.PERC_IPI, COMB.nome NOME_COR, FORN.nome N' +
      'OME_FORNECEDOR_MAT,'#13#10'L.QTD_OC, L.QTD_RESERVA, L.GERADO, L.QTD_OC' +
      '_ORIGINAL,'#13#10'L.ID_MOVESTOQUE_RES, FORN2.nome NOME_FORNECEDOR,'#13#10'L.' +
      'QTD_OC_FAT, L.QTD_SOBRA_OC, L.QTD_USADA_OC, L.GERADO_SOBRA_OC, L' +
      '.TINGIMENTO,'#13#10'L.ID_SETOR, SS.NOME NOME_SETOR,'#13#10'coalesce(coalesce' +
      '((SELECT EA.qtd FROM ESTOQUE_ATUAL EA  WHERE EA.id_produto = L.i' +
      'd_material'#13#10'    AND EA.id_cor = L.id_cor'#13#10'    AND EA.tamanho = L' +
      '.tamanho'#13#10'    AND EA.id_local_estoque = 1'#13#10'    AND EA.FILIAL = :' +
      'FILIAL),0)  -'#13#10'    coalesce((SELECT ER.qtd FROM ESTOQUE_RES ER'#13#10 +
      '                WHERE ER.id_produto = L.id_material'#13#10'           ' +
      '       AND ER.id_cor = L.id_cor'#13#10'                  AND ER.tamanh' +
      'o = L.tamanho),0),0)  Qtd_Estoque,'#13#10'   coalesce((SELECT sum(EOC.' +
      'QTD_SALDO) qtd FROM vestoque_oc EOC'#13#10'     WHERE EOC.id_produto =' +
      ' L.id_material'#13#10'       AND EOC.id_cor = L.id_cor'#13#10'       AND EOC' +
      '.tamanho = L.tamanho'#13#10'       ),0)  Qtd_Estoque_OC'#13#10'FROM LOTE_MAT' +
      ' L'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON L.id_material = MAT.id'#13#10'LEFT JOIN' +
      ' COMBINACAO COMB'#13#10'ON L.id_cor = COMB.id'#13#10'LEFT JOIN PESSOA FORN'#13#10 +
      'ON MAT.id_fornecedor = FORN.codigo'#13#10'LEFT JOIN PESSOA FORN2'#13#10'ON l' +
      '.id_fornecedor = FORN2.codigo'#13#10'LEFT JOIN SETOR SS'#13#10'ON L.ID_SETOR' +
      ' = SS.ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 184
    object sdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object sdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object sdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object sdsLote_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object sdsLote_MatTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object sdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsLote_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object sdsLote_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object sdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object sdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsLote_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsLote_MatPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsLote_MatID_FORNECEDOR_MAT: TIntegerField
      FieldName = 'ID_FORNECEDOR_MAT'
    end
    object sdsLote_MatQTD_OC: TFloatField
      FieldName = 'QTD_OC'
    end
    object sdsLote_MatQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object sdsLote_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object sdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_MatQTD_OC_ORIGINAL: TFloatField
      FieldName = 'QTD_OC_ORIGINAL'
    end
    object sdsLote_MatID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object sdsLote_MatNOME_FORNECEDOR_MAT: TStringField
      FieldName = 'NOME_FORNECEDOR_MAT'
      Size = 60
    end
    object sdsLote_MatNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object sdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object sdsLote_MatQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object sdsLote_MatQTD_USADA_OC: TFloatField
      FieldName = 'QTD_USADA_OC'
    end
    object sdsLote_MatGERADO_SOBRA_OC: TStringField
      FieldName = 'GERADO_SOBRA_OC'
      Size = 1
    end
    object sdsLote_MatQTD_ESTOQUE_OC: TFloatField
      FieldName = 'QTD_ESTOQUE_OC'
    end
    object sdsLote_MatTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsLote_MatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
  end
  object dspLote_Mat: TDataSetProvider
    DataSet = sdsLote_Mat
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspNecessidade_ComprasUpdateError
    Left = 136
    Top = 184
  end
  object cdsLote_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_ORDEM'
    Params = <>
    ProviderName = 'dspLote_Mat'
    Left = 200
    Top = 192
    object cdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsLote_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsLote_MatCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object cdsLote_MatCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object cdsLote_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsLote_MatTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsLote_MatNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsLote_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLote_MatID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object cdsLote_MatITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object cdsLote_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsLote_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsLote_MatPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsLote_MatID_FORNECEDOR_MAT: TIntegerField
      FieldName = 'ID_FORNECEDOR_MAT'
    end
    object cdsLote_MatQTD_OC: TFloatField
      FieldName = 'QTD_OC'
    end
    object cdsLote_MatQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object cdsLote_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object cdsLote_MatGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatQTD_OC_ORIGINAL: TFloatField
      FieldName = 'QTD_OC_ORIGINAL'
    end
    object cdsLote_MatID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object cdsLote_MatNOME_FORNECEDOR_MAT: TStringField
      FieldName = 'NOME_FORNECEDOR_MAT'
      Size = 60
    end
    object cdsLote_MatNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsLote_MatQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object cdsLote_MatQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object cdsLote_MatQTD_USADA_OC: TFloatField
      FieldName = 'QTD_USADA_OC'
    end
    object cdsLote_MatGERADO_SOBRA_OC: TStringField
      FieldName = 'GERADO_SOBRA_OC'
      Size = 1
    end
    object cdsLote_MatQTD_ESTOQUE_OC: TFloatField
      FieldName = 'QTD_ESTOQUE_OC'
    end
    object cdsLote_MatTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsLote_MatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
  end
  object dsLote_Mat: TDataSource
    DataSet = cdsLote_Mat
    Left = 272
    Top = 184
  end
  object mMaterial_Ord: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Num_Mapa;Num_Ord'
    Params = <>
    Left = 664
    Top = 128
    Data = {
      580000009619E0BD0100000018000000030000000000030000005800084E756D
      5F4D6170610400010000000000074E756D5F4F72640400010000000000084E6F
      6D655F4F72640100490000000100055749445448020002001E000000}
    object mMaterial_OrdNum_Mapa: TIntegerField
      FieldName = 'Num_Mapa'
    end
    object mMaterial_OrdNum_Ord: TIntegerField
      FieldName = 'Num_Ord'
    end
    object mMaterial_OrdNome_Ord: TStringField
      FieldName = 'Nome_Ord'
      Size = 30
    end
  end
  object dsmMaterial_Ord: TDataSource
    DataSet = mMaterial_Ord
    Left = 736
    Top = 128
  end
  object sdsLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.ID, L.id_produto, L.id_combinacao, L.num_ordem, L.carim' +
      'bo, L.QTD,'#13#10'L.nome, P.nome NOME_PRODUTO, P.referencia, COMB.nome' +
      ' NOME_COMBINACAO'#13#10'FROM LOTE L'#13#10'INNER JOIN PRODUTO P'#13#10'ON L.id_pro' +
      'duto = P.id'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON L.id_combinacao = COM' +
      'B.id'#13#10#13#10'WHERE L.num_ordem = :NUM_ORDEM'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 240
    object sdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLoteNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsLoteNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object sdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspNecessidade_ComprasUpdateError
    Left = 136
    Top = 240
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLote'
    Left = 200
    Top = 240
    object cdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLoteNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsLoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLoteNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 272
    Top = 240
  end
  object qNecessidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT N.ID, NC.num_ordproducao'
      'FROM necessidade_compras N'
      'INNER JOIN necessidade_compras_ord NC'
      'ON N.id = NC.id'
      'WHERE NC.num_ordproducao = :NUM_ORDEM')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 496
    object qNecessidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNecessidadeNUM_ORDPRODUCAO: TIntegerField
      FieldName = 'NUM_ORDPRODUCAO'
    end
  end
  object qPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT P.NUM_PEDIDO'
      'FROM TALAO_PED T'
      'INNER JOIN LOTE L'
      'ON T.ID = L.ID'
      'INNER JOIN PEDIDO P'
      'ON T.ID_PEDIDO = P.ID')
    SQLConnection = dmDatabase.scoDados
    Left = 888
    Top = 408
    object qPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object sdsMProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT distinct LM.id_material, LM.num_ordem, L.id_produto, PROD' +
      '.referencia, l.id_combinacao,'#13#10'pcomb.nome Nome_Combinacao'#13#10'FROM ' +
      'LOTE_MAT LM'#13#10'INNER JOIN LOTE L'#13#10'ON LM.num_ordem = L.num_ordem'#13#10'I' +
      'NNER JOIN PRODUTO PROD'#13#10'ON L.id_produto = PROD.id'#13#10'INNER JOIN PR' +
      'ODUTO_CONSUMO PC'#13#10'ON PROD.id = PC.ID'#13#10'and LM.id_material = PC.id' +
      '_material'#13#10#13#10'left join produto_comb pcomb'#13#10'on l.id_combinacao = ' +
      'pcomb.id_cor_combinacao'#13#10'and l.id_produto = pcomb.id'#13#10#13#10'WHERE LM' +
      '.id_material = :ID_Material'#13#10'  AND LM.num_ordem = :Num_Ordem'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_Material'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_Ordem'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 496
  end
  object dspMProduto: TDataSetProvider
    DataSet = sdsMProduto
    Left = 680
    Top = 496
  end
  object cdsMProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspMProduto'
    Left = 744
    Top = 496
    object cdsMProdutoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsMProdutoNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsMProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsMProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMProdutoID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsMProdutoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
  end
  object dsMProduto: TDataSource
    DataSet = cdsMProduto
    Left = 792
    Top = 496
  end
  object qLote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT distinct L.num_ordem, L.nome'
      'FROM LOTE L'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 200
    object qLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object qLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qVerifica_Mat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_Material'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Num_Ordem'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT count(1) contador'
      'FROM LOTE_MAT LM'
      'INNER JOIN LOTE L'
      'ON LM.num_ordem = L.num_ordem'
      'INNER JOIN PRODUTO PROD'
      'ON L.id_produto = PROD.id'
      'INNER JOIN PRODUTO_CONSUMO PC'
      'ON PROD.id = PC.ID'
      'and LM.id_material = PC.id_material'
      'WHERE LM.id_material = :ID_Material'
      '  AND LM.num_ordem = :Num_Ordem')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 328
    object qVerifica_MatCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsLote_Mat_OC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM LOTE_MAT_OC'#13#10'WHERE NUM_ORDEM = :NUM_ORDEM'#13#10'  AND ' +
      'ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 296
    object sdsLote_Mat_OCNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object sdsLote_Mat_OCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsLote_Mat_OCID_OC: TIntegerField
      FieldName = 'ID_OC'
      Required = True
    end
    object sdsLote_Mat_OCITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
      Required = True
    end
    object sdsLote_Mat_OCQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object DSPLote_Mat_OC: TDataSetProvider
    DataSet = sdsLote_Mat_OC
    Left = 136
    Top = 296
  end
  object cdsLote_Mat_OC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLote_Mat_OC'
    Left = 192
    Top = 296
    object cdsLote_Mat_OCNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsLote_Mat_OCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsLote_Mat_OCID_OC: TIntegerField
      FieldName = 'ID_OC'
      Required = True
    end
    object cdsLote_Mat_OCITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
      Required = True
    end
    object cdsLote_Mat_OCQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsLote_Mat_OC: TDataSource
    DataSet = cdsLote_Mat_OC
    Left = 240
    Top = 296
  end
  object sdsPedido_Sobra_OC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT POC.id,  POC.item, POC.qtd_sobra, POC.qtd_usada, POC.qtd_' +
      'restante qtd_restante_Sobra, it.qtd_restante qtd_item,'#13#10'case'#13#10'  ' +
      'when it.qtd_restante < poc.qtd_restante then it.qtd_restante'#13#10'  ' +
      'else poc.qtd_restante'#13#10'  end qtd_restante'#13#10'FROM pedido_sobra_oc ' +
      'POC'#13#10'INNER JOIN PEDIDO_ITEM IT'#13#10'  ON POC.ID = IT.ID'#13#10' AND POC.it' +
      'em = IT.ITEM'#13#10'WHERE POC.qtd_restante > 0'#13#10'  AND IT.tipo_reg = '#39'C' +
      #39#13#10'  AND IT.id_produto = :ID_PRODUTO'#13#10'  AND IT.ID_COR = :ID_COR'#13 +
      #10'  AND IT.tamanho = :TAMANHO'#13#10'  and it.qtd_restante > 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 368
    object sdsPedido_Sobra_OCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_Sobra_OCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_Sobra_OCQTD_SOBRA: TFloatField
      FieldName = 'QTD_SOBRA'
    end
    object sdsPedido_Sobra_OCQTD_USADA: TFloatField
      FieldName = 'QTD_USADA'
    end
    object sdsPedido_Sobra_OCQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_Sobra_OCQTD_RESTANTE_SOBRA: TFloatField
      FieldName = 'QTD_RESTANTE_SOBRA'
    end
    object sdsPedido_Sobra_OCQTD_ITEM: TFloatField
      FieldName = 'QTD_ITEM'
    end
  end
  object dspPedido_Sobra_OC: TDataSetProvider
    DataSet = sdsPedido_Sobra_OC
    Left = 128
    Top = 368
  end
  object cdsPedido_Sobra_OC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Sobra_OC'
    Left = 184
    Top = 368
    object cdsPedido_Sobra_OCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_Sobra_OCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_Sobra_OCQTD_SOBRA: TFloatField
      FieldName = 'QTD_SOBRA'
    end
    object cdsPedido_Sobra_OCQTD_USADA: TFloatField
      FieldName = 'QTD_USADA'
    end
    object cdsPedido_Sobra_OCQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_Sobra_OCQTD_RESTANTE_SOBRA: TFloatField
      FieldName = 'QTD_RESTANTE_SOBRA'
    end
    object cdsPedido_Sobra_OCQTD_ITEM: TFloatField
      FieldName = 'QTD_ITEM'
    end
  end
  object dsPedido_Sobra_OC: TDataSource
    DataSet = cdsPedido_Sobra_OC
    Left = 232
    Top = 368
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT P.lote_textil, P.id_cor_cru, COMB.nome NOME_COR, USA_NECE' +
        'SSIDADE_IF'
      'FROM PARAMETROS_LOTE P'
      'LEFT JOIN COMBINACAO COMB'
      'ON P.id_cor_cru = COMB.id')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 344
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteID_COR_CRU: TIntegerField
      FieldName = 'ID_COR_CRU'
    end
    object qParametros_LoteNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object qParametros_LoteUSA_NECESSIDADE_IF: TStringField
      FieldName = 'USA_NECESSIDADE_IF'
      Size = 1
    end
  end
  object qVerifica_OC: TSQLQuery
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
    SQL.Strings = (
      'SELECT I.cancelado'
      'FROM PEDIDO_ITEM I'
      'WHERE I.ID = :ID'
      '  AND I.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 480
    object qVerifica_OCCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, p.id_cor_combinacao,'#13#10'P.PRECO_VE' +
      'NDA, P.PRECO_CUSTO'#13#10'FROM PRODUTO_COMB P'#13#10'WHERE P.ID = :ID'#13#10'  AND' +
      ' P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 617
    Top = 256
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 649
    Top = 256
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 712
    Top = 256
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 681
    Top = 256
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsCombinacaoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCombinacaoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 784
    Top = 24
    object sdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 848
    Top = 24
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 912
    Top = 24
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 968
    Top = 24
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
    Left = 464
    Top = 128
    object qParametros_UsuarioALT_MATERIAL_NEC: TStringField
      FieldName = 'ALT_MATERIAL_NEC'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioALT_CONSUMO_NEC: TStringField
      FieldName = 'ALT_CONSUMO_NEC'
      FixedChar = True
      Size = 1
    end
  end
  object sdsLote_Mat_Grava: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.*'#13#10'FROM LOTE_MAT L'#13#10'WHERE L.num_ordem = :NUM_ORDEM'#13#10'  A' +
      'ND L.item = :ITEM'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 584
    object sdsLote_Mat_GravaNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_Mat_GravaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLote_Mat_GravaID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsLote_Mat_GravaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsLote_Mat_GravaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLote_Mat_GravaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsLote_Mat_GravaQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsLote_Mat_GravaQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object sdsLote_Mat_GravaCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object sdsLote_Mat_GravaID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object sdsLote_Mat_GravaITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object sdsLote_Mat_GravaNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsLote_Mat_GravaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsLote_Mat_GravaQTD_OC: TFloatField
      FieldName = 'QTD_OC'
    end
    object sdsLote_Mat_GravaQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object sdsLote_Mat_GravaGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_Mat_GravaQTD_OC_ORIGINAL: TFloatField
      FieldName = 'QTD_OC_ORIGINAL'
    end
    object sdsLote_Mat_GravaID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object sdsLote_Mat_GravaQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object sdsLote_Mat_GravaQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object sdsLote_Mat_GravaQTD_USADA_OC: TFloatField
      FieldName = 'QTD_USADA_OC'
    end
    object sdsLote_Mat_GravaGERADO_SOBRA_OC: TStringField
      FieldName = 'GERADO_SOBRA_OC'
      Size = 1
    end
    object sdsLote_Mat_GravaTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_Mat_GravaTINGIMENTO_GERADO: TStringField
      FieldName = 'TINGIMENTO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_Mat_GravaQTD_EST_BAIXADO: TFloatField
      FieldName = 'QTD_EST_BAIXADO'
    end
    object sdsLote_Mat_GravaID_MATERIAL_ANT: TIntegerField
      FieldName = 'ID_MATERIAL_ANT'
    end
    object sdsLote_Mat_GravaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dspLote_Mat_Grava: TDataSetProvider
    DataSet = sdsLote_Mat_Grava
    Left = 168
    Top = 584
  end
  object cdsLote_Mat_Grava: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_ORDEM;ITEM'
    Params = <>
    ProviderName = 'dspLote_Mat_Grava'
    Left = 232
    Top = 584
    object cdsLote_Mat_GravaNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_Mat_GravaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLote_Mat_GravaID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsLote_Mat_GravaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsLote_Mat_GravaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLote_Mat_GravaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_Mat_GravaQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsLote_Mat_GravaQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object cdsLote_Mat_GravaCARIMBOAUX: TStringField
      FieldName = 'CARIMBOAUX'
      Size = 25
    end
    object cdsLote_Mat_GravaID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object cdsLote_Mat_GravaITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
    end
    object cdsLote_Mat_GravaNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsLote_Mat_GravaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsLote_Mat_GravaQTD_OC: TFloatField
      FieldName = 'QTD_OC'
    end
    object cdsLote_Mat_GravaQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object cdsLote_Mat_GravaGERADO: TStringField
      FieldName = 'GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_Mat_GravaQTD_OC_ORIGINAL: TFloatField
      FieldName = 'QTD_OC_ORIGINAL'
    end
    object cdsLote_Mat_GravaID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object cdsLote_Mat_GravaQTD_OC_FAT: TFloatField
      FieldName = 'QTD_OC_FAT'
    end
    object cdsLote_Mat_GravaQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object cdsLote_Mat_GravaQTD_USADA_OC: TFloatField
      FieldName = 'QTD_USADA_OC'
    end
    object cdsLote_Mat_GravaGERADO_SOBRA_OC: TStringField
      FieldName = 'GERADO_SOBRA_OC'
      Size = 1
    end
    object cdsLote_Mat_GravaTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_Mat_GravaTINGIMENTO_GERADO: TStringField
      FieldName = 'TINGIMENTO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_Mat_GravaQTD_EST_BAIXADO: TFloatField
      FieldName = 'QTD_EST_BAIXADO'
    end
    object cdsLote_Mat_GravaID_MATERIAL_ANT: TIntegerField
      FieldName = 'ID_MATERIAL_ANT'
    end
    object cdsLote_Mat_GravaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object qDuplicidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CARIMBOAUX'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT L.ITEM, L.NUM_OC, L.ID_MOVESTOQUE_RES, L.QTD_CONSUMO'
      'FROM LOTE_MAT L'
      'WHERE L.NUM_ORDEM = :NUM_ORDEM'
      '  AND L.ID_MATERIAL = :ID_MATERIAL'
      '  AND L.ID_COR = :ID_COR'
      '  AND L.TAMANHO = :TAMANHO'
      '  AND L.CARIMBOAUX = :CARIMBOAUX')
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 248
    object qDuplicidadeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qDuplicidadeNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object qDuplicidadeID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object qDuplicidadeQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ENDGRIDS FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 488
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
  end
  object qQtdOC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(I.qtd_restante) QTD_RESTANTE'
      'FROM PEDIDO_ITEM I'
      'WHERE I.ID_PRODUTO = :ID_PRODUTO'
      '  AND I.ID_COR = :ID_COR'
      '  AND I.TAMANHO = :TAMANHO'
      '  AND I.QTD_RESTANTE > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 544
    object qQtdOCQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 568
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 576
    Top = 568
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 640
    Top = 568
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 688
    Top = 568
  end
  object sdsConsLote_Mat_OC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.*, P.NUM_PEDIDO, P.DTEMISSAO'#13#10'FROM LOTE_MAT_OC L'#13#10'LEFT ' +
      'JOIN PEDIDO P'#13#10'ON L.ID_OC = P.ID'#13#10'WHERE L.NUM_ORDEM = :NUM_ORDEM' +
      #13#10'  AND L.ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 24
  end
  object dspConsLote_Mat_OC: TDataSetProvider
    DataSet = sdsConsLote_Mat_OC
    Left = 544
    Top = 24
  end
  object cdsConsLote_Mat_OC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsLote_Mat_OC'
    Left = 600
    Top = 24
    object cdsConsLote_Mat_OCNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsConsLote_Mat_OCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsLote_Mat_OCID_OC: TIntegerField
      FieldName = 'ID_OC'
      Required = True
    end
    object cdsConsLote_Mat_OCITEM_OC: TIntegerField
      FieldName = 'ITEM_OC'
      Required = True
    end
    object cdsConsLote_Mat_OCQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsLote_Mat_OCNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsLote_Mat_OCDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsConsLote_Mat_OC: TDataSource
    DataSet = cdsConsLote_Mat_OC
    Left = 648
    Top = 24
  end
end
