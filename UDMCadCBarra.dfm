object DMCadCBarra: TDMCadCBarra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 369
  Top = 182
  Height = 481
  Width = 823
  object sdsCBarra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CBARRA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object sdsCBarraID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCBarraID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCBarraTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCBarraCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object sdsCBarraCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object sdsCBarraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspCBarra: TDataSetProvider
    DataSet = sdsCBarra
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCBarraUpdateError
    Left = 128
    Top = 32
  end
  object cdsCBarra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCBarra'
    Left = 192
    Top = 32
    object cdsCBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsCBarraID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCBarraID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCBarraTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCBarraCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object cdsCBarraCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object cdsCBarraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dscBarra: TDataSource
    DataSet = cdsCBarra
    Left = 264
    Top = 32
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 120
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 488
    Top = 120
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 520
    Top = 120
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
    Left = 552
    Top = 120
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID'#13#10', P.REFERENCIA'#13#10', P.NOME'#13#10', P.UNIDADE'#13#10'FROM PRODUTO' +
      ' P'#13#10'WHERE P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 232
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 496
    Top = 232
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 528
    Top = 232
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
      Size = 6
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 560
    Top = 232
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME,'#13#10'     case'#13#10'        when (P.id_c' +
      'or > 0) then'#13#10'            (SELECT C.ID FROM COMBINACAO C'#13#10'      ' +
      '        WHERE C.id_cor = P.id_cor)'#13#10'        when (P.item > 0) th' +
      'en'#13#10'            (SELECT C2.ID FROM COMBINACAO C2'#13#10'              ' +
      'WHERE C2.id_produto = P.id'#13#10'                 AND C2.item_combina' +
      'cao = P.item)'#13#10'      end as ID_COMBINACAO_COR'#13#10'FROM PRODUTO_COMB' +
      ' P'#13#10'WHERE P.ID = :ID'#13#10'  AND P.INATIVO = '#39'N'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 296
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 496
    Top = 296
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 528
    Top = 296
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoID_COMBINACAO_COR: TFMTBCDField
      FieldName = 'ID_COMBINACAO_COR'
      Precision = 15
      Size = 0
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 568
    Top = 296
  end
  object mCBarraAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_CBarra'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'CBarra'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cod_Principal'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Cod_Sequencial'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Nome_Combinacao;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 256
    Data = {
      660100009619E0BD01000000180000000C00000000000300000066010A49445F
      50726F6475746F04000100000000000949445F43426172726104000100000000
      000A5265666572656E6369610100490000000100055749445448020002001400
      044E6F6D6501004900000001000557494454480200020064000754616D616E68
      6F0100490000000100055749445448020002000A000F4E6F6D655F436F6D6269
      6E6163616F0100490000000100055749445448020002003C000D49445F436F6D
      62696E6163616F04000100000000000643426172726101004900000001000557
      49445448020002000E000646696C69616C04000100000000000B4E6F6D655F46
      696C69616C0100490000000100055749445448020002003C000D436F645F5072
      696E636970616C01004900000001000557494454480200020009000E436F645F
      53657175656E6369616C040001000000000001000D44454641554C545F4F5244
      45520200820000000000}
    object mCBarraAuxID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mCBarraAuxID_CBarra: TIntegerField
      FieldName = 'ID_CBarra'
    end
    object mCBarraAuxReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mCBarraAuxNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mCBarraAuxTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mCBarraAuxNome_Combinacao: TStringField
      FieldName = 'Nome_Combinacao'
      Size = 60
    end
    object mCBarraAuxID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mCBarraAuxCBarra: TStringField
      FieldName = 'CBarra'
      Size = 14
    end
    object mCBarraAuxFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mCBarraAuxNome_Filial: TStringField
      FieldName = 'Nome_Filial'
      Size = 60
    end
    object mCBarraAuxCod_Principal: TStringField
      FieldName = 'Cod_Principal'
      Size = 9
    end
    object mCBarraAuxCod_Sequencial: TIntegerField
      FieldName = 'Cod_Sequencial'
    end
  end
  object dsmCBarraAux: TDataSource
    DataSet = mCBarraAux
    Left = 216
    Top = 256
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, TAMANHO'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 384
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 496
    Top = 384
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TAMANHO'
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 528
    Top = 384
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
    Left = 568
    Top = 384
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.INFORMAR_COR_PROD, P.informar_cor_material, P.USA_GRADE'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 184
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
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFilial_CBarra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM FILIAL_CBARRA'#13#10'WHERE ID = :ID'#13#10'      AND ENCERRAD' +
      'O = '#39'N'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 169
    object sdsFilial_CBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_CBarraITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_CBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 9
    end
    object sdsFilial_CBarraULT_SEQUENCIA: TIntegerField
      FieldName = 'ULT_SEQUENCIA'
    end
    object sdsFilial_CBarraMAX_SEQUENCIA: TIntegerField
      FieldName = 'MAX_SEQUENCIA'
    end
    object sdsFilial_CBarraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFilial_CBarra: TDataSetProvider
    DataSet = sdsFilial_CBarra
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 169
  end
  object cdsFilial_CBarra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspFilial_CBarra'
    Left = 520
    Top = 169
    object cdsFilial_CBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_CBarraITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_CBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 9
    end
    object cdsFilial_CBarraULT_SEQUENCIA: TIntegerField
      FieldName = 'ULT_SEQUENCIA'
    end
    object cdsFilial_CBarraMAX_SEQUENCIA: TIntegerField
      FieldName = 'MAX_SEQUENCIA'
    end
    object cdsFilial_CBarraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial_CBarra: TDataSource
    DataSet = cdsFilial_CBarra
    Left = 552
    Top = 169
  end
  object sdsCBarra_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, PROD.referencia, PROD.nome NOME_PRODUTO, COMB.nome N' +
      'OME_COMBINACAO,'#13#10'FIL.NOME NOME_FILIAL'#13#10'FROM CBARRA C'#13#10'INNER JOIN' +
      ' FILIAL FIL'#13#10'ON C.FILIAL = FIL.ID'#13#10'LEFT JOIN PRODUTO PROD'#13#10'ON C.' +
      'id_produto = PROD.id'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON C.id_cor = C' +
      'OMB.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 32
  end
  object dspCBarra_Consulta: TDataSetProvider
    DataSet = sdsCBarra_Consulta
    OnUpdateError = dspCBarraUpdateError
    Left = 536
    Top = 32
  end
  object cdsCBarra_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCBarra_Consulta'
    Left = 600
    Top = 32
    object cdsCBarra_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCBarra_ConsultaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsCBarra_ConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCBarra_ConsultaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCBarra_ConsultaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCBarra_ConsultaCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object cdsCBarra_ConsultaCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object cdsCBarra_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCBarra_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCBarra_ConsultaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsCBarra_ConsultaNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsCBarra_ConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
  end
  object dsCBarra_Consulta: TDataSource
    DataSet = cdsCBarra_Consulta
    Left = 672
    Top = 32
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 152
    object qParametros_ProdINF_CBARRA_MANUAL: TStringField
      FieldName = 'INF_CBARRA_MANUAL'
      FixedChar = True
      Size = 1
    end
  end
end
