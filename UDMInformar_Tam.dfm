object DMInformar_Tam: TDMInformar_Tam
  OldCreateOrder = False
  Left = 421
  Top = 126
  Height = 434
  Width = 883
  object mTamanho: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Gravar'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    IndexFieldNames = 'Tamanho'
    Params = <>
    StoreDefs = True
    OnNewRecord = mTamanhoNewRecord
    Left = 112
    Top = 40
    Data = {
      510000009619E0BD01000000180000000300000000000300000051000754616D
      616E686F0100490000000100055749445448020002000A000351746408000400
      000000000647726176617202000300000000000000}
    object mTamanhoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mTamanhoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mTamanhoGravar: TBooleanField
      FieldName = 'Gravar'
    end
  end
  object dsmTamanho: TDataSource
    DataSet = mTamanho
    Left = 152
    Top = 40
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
    Left = 72
    Top = 120
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
    Left = 136
    Top = 120
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 200
    Top = 120
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
    Left = 256
    Top = 120
  end
  object mItens: TClientDataSet
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
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'ID_CSTICMS'
        DataType = ftInteger
      end
      item
        Name = 'ID_CSTIPI'
        DataType = ftInteger
      end
      item
        Name = 'ID_PIS'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cofins'
        DataType = ftInteger
      end
      item
        Name = 'Perc_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Perc_IPI'
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
        Name = 'Perc_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Base_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Pis'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Cofins'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pis'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Cofins'
        DataType = ftFloat
      end
      item
        Name = 'Tipo_Pis'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Cofins'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Origem_Prod'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Base_IcmsSimples'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_IcmsSimples'
        DataType = ftFloat
      end
      item
        Name = 'CalcularIcmsSobreIPI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID_MovEstoque'
        DataType = ftInteger
      end
      item
        Name = 'Gerar_Duplicata'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Gerar_Estoque'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Numero_OC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Numero_OS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Item_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Perc_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Somar_Transf_Icms'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs_Complementar'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Somar_VlrTotalProduto'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Vlr_Frete'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_OutrasDespesas'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Seguro'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_IcmsFrete'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSOUTRASDESPESAS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMSSUBST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSSUBST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_IMPORTACAO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ADUANEIRA'
        DataType = ftFloat
      end
      item
        Name = 'VLR_DESCONTORATEIO'
        DataType = ftFloat
      end
      item
        Name = 'ID_OPERACAO_NOTA'
        DataType = ftInteger
      end
      item
        Name = 'FINALIDADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_VARIACAO'
        DataType = ftInteger
      end
      item
        Name = 'PERC_TRIBICMS'
        DataType = ftFloat
      end
      item
        Name = 'IMP_OC_NOTA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'VLR_DUPLICATA'
        DataType = ftFloat
      end
      item
        Name = 'PERC_IMPORTACAO'
        DataType = ftFloat
      end
      item
        Name = 'PERC_REDUCAO_ICMSSUBST'
        DataType = ftFloat
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'ID_Atelier'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Unitario_Atelier'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TOTAL_ATELIER'
        DataType = ftFloat
      end
      item
        Name = 'DT_ENVIO_ATELIER'
        DataType = ftDate
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd_Cancelado'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Restante'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Faturado'
        DataType = ftFloat
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Cancelado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Faturado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtFaturado'
        DataType = ftDate
      end
      item
        Name = 'Cod_Produto_Cliente'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BASE_ICMSTRANSF'
        DataType = ftFloat
      end
      item
        Name = 'PERC_TRANSF'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TRANSF'
        DataType = ftFloat
      end
      item
        Name = 'ID_CONFIG_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'QTD_AFATURAR'
        DataType = ftFloat
      end
      item
        Name = 'DT_RETORNO_ATELIER'
        DataType = ftDate
      end
      item
        Name = 'VLR_PAGTO_ATELIER'
        DataType = ftFloat
      end
      item
        Name = 'DT_PAGTO_ATELIER'
        DataType = ftDate
      end
      item
        Name = 'Aprovado_Orc'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'MOTIVO_NAO_APROV'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'DTAPROVADO_NAO'
        DataType = ftDate
      end
      item
        Name = 'ID_ORCAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_ORCAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'QTD_LIBERADA'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PRODUZIDA'
        DataType = ftFloat
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'TAMANHO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PERC_ICMSSIMPLES'
        DataType = ftFloat
      end
      item
        Name = 'COD_CST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODCFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Nome_Produto_Original'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONTA_ORCAMENTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'CENTRO_CUSTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'QTDRESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'QTDDEVOLVIDA'
        DataType = ftFloat
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CODCOFINS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CODPIS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QTD_ADEVOLVER'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PACOTE'
        DataType = ftFloat
      end
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'PERC_TABCSTICMS'
        DataType = ftFloat
      end
      item
        Name = 'MAOOBRA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_PRODUTO_FORN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_BARRA'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID_NTE'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_NTE'
        DataType = ftInteger
      end
      item
        Name = 'QTD_NOTAATUAL'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_NOTA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ITEM_DEVOL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_REG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PERC_MVA'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TRIBUTOS'
        DataType = ftFloat
      end
      item
        Name = 'ID_MOVIMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PERC_TRIBUTO'
        DataType = ftFloat
      end
      item
        Name = 'GERAR_LOTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'POSSUI_VALE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'DTPRODUCAO'
        DataType = ftDate
      end
      item
        Name = 'TIPO_ORCAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'End_Foto'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Item_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'NUM_FCI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PERC_USADO_FCI'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PECA'
        DataType = ftInteger
      end
      item
        Name = 'ID_OBS_LEI_NCM'
        DataType = ftInteger
      end
      item
        Name = 'ID_VALE'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_VALE'
        DataType = ftInteger
      end
      item
        Name = 'NUM_VALE'
        DataType = ftInteger
      end
      item
        Name = 'PERC_ICMSSUBST_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSSUBST_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'PERC_ICMSSUBST_PROPRIO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSSUBST_PROPRIO'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMSSUBST_PROPRIO'
        DataType = ftFloat
      end
      item
        Name = 'GRAVACAO_COM_ERRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VLR_ICMSDESONERADO'
        DataType = ftFloat
      end
      item
        Name = 'COD_DESONERACAO'
        DataType = ftInteger
      end
      item
        Name = 'VLR_ICMSOPERACAO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_FUT'
        DataType = ftFloat
      end
      item
        Name = 'ID_PEDIDO_FUT'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_PEDIDO_FUT'
        DataType = ftInteger
      end
      item
        Name = 'ID_OS'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_OS'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_OS_MAT'
        DataType = ftInteger
      end
      item
        Name = 'NUM_OSERVICO'
        DataType = ftInteger
      end
      item
        Name = 'VERSAO_TRIBUTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FONTE_TRIBUTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PERC_TRIBUTO_ESTADUAL'
        DataType = ftFloat
      end
      item
        Name = 'PERC_TRIBUTO_MUNICIPAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TRIBUTOS_ESTADUAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TRIBUTOS_MUNICIPAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TRIBUTOS_FEDERAL'
        DataType = ftFloat
      end
      item
        Name = 'PERC_TRIBUTO_FEDERAL'
        DataType = ftFloat
      end
      item
        Name = 'Item_original'
        DataType = ftInteger
      end
      item
        Name = 'Perc_Diferimento'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMSDIFERIDO'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_TaxaCiscomex'
        DataType = ftFloat
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CALCULAR_ST'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPLEMENTO_PROD'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DIFERENCA_ICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Num_Lote_Controle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_EnqIPI'
        DataType = ftInteger
      end
      item
        Name = 'Perc_ICMS_Inter'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Outros'
        DataType = ftFloat
      end
      item
        Name = 'PERC_PIS_COFINS_SUFRAMA'
        DataType = ftFloat
      end
      item
        Name = 'IBPT_CHAVE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO_CUSTO'
        DataType = ftFloat
      end
      item
        Name = 'PERC_MARGEM'
        DataType = ftFloat
      end
      item
        Name = 'PERC_MARGEM2'
        DataType = ftFloat
      end
      item
        Name = 'NUM_TALAO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'QTD_SOBRA_OC'
        DataType = ftFloat
      end
      item
        Name = 'QTD_TRIB'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNITARIO_TRIB'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE_TRIB'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ENCERADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONV_UNIDADE'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE_PROD'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'OBS_ETIQUETA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OBSMATERIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO_ESCALA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BASE_ICMS_FCP'
        DataType = ftFloat
      end
      item
        Name = 'BASE_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'PERC_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMS_FCP_DEST'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMS_FCP_DEST'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_OS'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PERC_ICMS_SUFRAMA'
        DataType = ftFloat
      end
      item
        Name = 'PERC_IPI_SUFRAMA'
        DataType = ftFloat
      end
      item
        Name = 'REC_COPIADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Caixinha'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VLR_IPI_DEVOL'
        DataType = ftFloat
      end
      item
        Name = 'PERC_DEVOL'
        DataType = ftFloat
      end
      item
        Name = 'BASE_IPI'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mItensNewRecord
    Left = 88
    Top = 200
    Data = {
      0F1400009619E0BD0100000018000000CB0000000000030000000F140A49445F
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      010005574944544802000200140007556E696461646501004900000001000557
      494454480200020006000351746408000400000000000749445F43464F500400
      0100000000000A49445F43535449434D5304000100000000000949445F435354
      49504904000100000000000649445F50495304000100000000000949445F436F
      66696E73040001000000000009506572635F49434D5308000400000000000850
      6572635F49504908000400000000000C566C725F556E69746172696F08000400
      0000000009566C725F546F74616C08000400000000000D506572635F44657363
      6F6E746F08000400000000000C566C725F446573636F6E746F08000400000000
      0009426173655F49434D53080004000000000008566C725F49434D5308000400
      0000000007566C725F495049080004000000000008506572635F506973080004
      00000000000B506572635F436F66696E73080004000000000007566C725F5069
      7308000400000000000A566C725F436F66696E73080004000000000008546970
      6F5F50697301004900000001000557494454480200020001000B5469706F5F43
      6F66696E7301004900000001000557494454480200020001000B4F726967656D
      5F50726F64010049000000010005574944544802000200010010426173655F49
      636D7353696D706C657308000400000000000F566C725F49636D7353696D706C
      657308000400000000001443616C63756C617249636D73536F62726549504901
      004900000001000557494454480200020001000C4E6F6D655F50726F6475746F
      01004900000001000557494454480200020064000D49445F4D6F764573746F71
      756504000100000000000F47657261725F4475706C6963617461010049000000
      01000557494454480200020001000D47657261725F4573746F71756501004900
      00000100055749445448020002000100094E756D65726F5F4F43010049000000
      0100055749445448020002001400094E756D65726F5F4F530100490000000100
      055749445448020002001E000B4974656D5F50656469646F0400010000000000
      0D506572635F436F6D697373616F080004000000000011536F6D61725F547261
      6E73665F49636D730100490000000100055749445448020002000100104F6273
      5F436F6D706C656D656E746172010049000000010005574944544802000200FA
      0015536F6D61725F566C72546F74616C50726F6475746F010049000000010005
      574944544802000200010009566C725F4672657465080004000000000012566C
      725F4F7574726173446573706573617308000400000000000A566C725F536567
      75726F08000400000000000D566C725F49636D73467265746508000400000000
      0016564C525F49434D534F555452415344455350455341530800040000000000
      0E424153455F49434D53535542535408000400000000000D564C525F49434D53
      535542535408000400000000000E564C525F494D504F52544143414F08000400
      000000000D564C525F414455414E45495241080004000000000012564C525F44
      4553434F4E544F52415445494F08000400000000001049445F4F504552414341
      4F5F4E4F544104000100000000000A46494E414C494441444501004900000001
      000557494454480200020001000B49445F564152494143414F04000100000000
      000D504552435F5452494249434D5308000400000000000B494D505F4F435F4E
      4F544101004900000001000557494454480200020001000A4E756D5F50656469
      646F04000100000000000D564C525F4455504C49434154410800040000000000
      0F504552435F494D504F52544143414F080004000000000016504552435F5245
      445543414F5F49434D5353554253540800040000000000034F627304004B0000
      0002000753554254595045020049000500546578740005574944544802000200
      0A000A49445F4174656C696572040001000000000014566C725F556E69746172
      696F5F4174656C696572080004000000000011564C525F544F54414C5F415445
      4C49455208000400000000001044545F454E56494F5F4154454C494552040006
      00000000000B4E6F6D6550726F6475746F010049000000010005574944544802
      0002003C000D5174645F43616E63656C61646F08000400000000000C5174645F
      52657374616E746508000400000000000C5174645F466174757261646F080004
      00000000000649445F436F7204000100000000000943616E63656C61646F0100
      490000000100055749445448020002000100094474456E747265676104000600
      0000000008466174757261646F01004900000001000557494454480200020001
      000A4474466174757261646F040006000000000013436F645F50726F6475746F
      5F436C69656E74650100490000000100055749445448020002000F0004546970
      6F0100490000000100055749445448020002000100054E756D4F530100490000
      000100055749445448020002001E000F424153455F49434D535452414E534608
      000400000000000B504552435F5452414E534608000400000000000A564C525F
      5452414E534608000400000000000E49445F434F4E4649475F43464F50040001
      00000000000C5154445F414641545552415208000400000000001244545F5245
      544F524E4F5F4154454C494552040006000000000011564C525F504147544F5F
      4154454C49455208000400000000001044545F504147544F5F4154454C494552
      04000600000000000C4170726F7661646F5F4F72630100490000000100055749
      4454480200020001000649445F4E434D0400010000000000104D4F5449564F5F
      4E414F5F4150524F5604004B0000000200075355425459504502004900050054
      65787400055749445448020002000A000E44544150524F5641444F5F4E414F04
      000600000000000C49445F4F5243414D454E544F04000100000000000E495445
      4D5F4F5243414D454E544F04000100000000000C5154445F4C49424552414441
      08000400000000000D5154445F50524F44555A49444108000400000000000249
      440400010000000000044974656D04000100000000000754414D414E484F0100
      490000000100055749445448020002000A0010504552435F49434D5353494D50
      4C4553080004000000000007434F445F43535401004900000001000557494454
      4802000200030007434F445F4950490100490000000100055749445448020002
      00030007434F4443464F50010049000000010005574944544802000200050015
      4E6F6D655F50726F6475746F5F4F726967696E616C0100490000000100055749
      44544802000200640012434F4E54415F4F5243414D454E544F5F494404000100
      000000000F43454E54524F5F435553544F5F494404000100000000000B515444
      52455354414E544508000400000000000C5154444445564F4C56494441080004
      0000000000034E434D0100490000000100055749445448020002000A0009434F
      44434F46494E53010049000000010005574944544802000200020006434F4450
      495301004900000001000557494454480200020002000D5154445F414445564F
      4C56455208000400000000000A5154445F5041434F5445080004000000000009
      49445F50454449444F04000100000000000F504552435F54414243535449434D
      530800040000000000074D414F4F425241010049000000010005574944544802
      000200010010434F445F50524F4455544F5F464F524E01004900000001000557
      4944544802000200140009434F445F4241525241010049000000010005574944
      5448020002000E000649445F4E54450400010000000000084954454D5F4E5445
      04000100000000000D5154445F4E4F5441415455414C08000400000000000954
      49504F5F4E4F544101004900000001000557494454480200020001000A495445
      4D5F4445564F4C0100490000000100055749445448020002000100085449504F
      5F524547010049000000010005574944544802000200030008504552435F4D56
      4108000400000000000C564C525F5452494255544F5308000400000000000C49
      445F4D4F56494D454E544F04000100000000000C504552435F5452494255544F
      08000400000000000A47455241525F4C4F544501004900000001000557494454
      480200020001000B504F535355495F56414C4501004900000001000557494454
      4802000200010007436172696D626F0100490000000100055749445448020002
      0019000A445450524F445543414F04000600000000000E5449504F5F4F524341
      4D454E544F010049000000010005574944544802000200010008456E645F466F
      746F010049000000010005574944544802000200C8000C4974656D5F436C6965
      6E74650400010000000000074E554D5F46434901004900000001000557494454
      480200020028000E504552435F555341444F5F46434908000400000000000851
      54445F5045434104000100000000000E49445F4F42535F4C45495F4E434D0400
      0100000000000749445F56414C450400010000000000094954454D5F56414C45
      0400010000000000084E554D5F56414C45040001000000000016504552435F49
      434D5353554253545F494E5445524E4F080004000000000015564C525F49434D
      5353554253545F494E5445524E4F080004000000000016504552435F49434D53
      53554253545F50524F5052494F080004000000000015564C525F49434D535355
      4253545F50524F5052494F080004000000000016424153455F49434D53535542
      53545F50524F5052494F080004000000000011475241564143414F5F434F4D5F
      4552524F010049000000010005574944544802000200030012564C525F49434D
      534445534F4E455241444F08000400000000000F434F445F4445534F4E455241
      43414F040001000000000010564C525F49434D534F5045524143414F08000400
      00000000075154445F46555408000400000000000D49445F50454449444F5F46
      555404000100000000000F4954454D5F50454449444F5F465554040001000000
      00000549445F4F530400010000000000074954454D5F4F530400010000000000
      0B4954454D5F4F535F4D415404000100000000000C4E554D5F4F534552564943
      4F04000100000000000E56455253414F5F5452494255544F0100490000000100
      055749445448020002000F000D464F4E54455F5452494255544F010049000000
      0100055749445448020002001E0015504552435F5452494255544F5F45535441
      4455414C080004000000000016504552435F5452494255544F5F4D554E494349
      50414C080004000000000015564C525F5452494255544F535F45535441445541
      4C080004000000000016564C525F5452494255544F535F4D554E49434950414C
      080004000000000014564C525F5452494255544F535F4645444552414C080004
      000000000014504552435F5452494255544F5F4645444552414C080004000000
      00000D4974656D5F6F726967696E616C040001000000000010506572635F4469
      666572696D656E746F080004000000000010564C525F49434D53444946455249
      444F080004000000000010566C725F54617861436973636F6D65780800040000
      000000134E4F4D455F434F525F434F4D42494E4143414F010049000000010005
      5749445448020002003C000B43414C43554C41525F5354010049000000010005
      574944544802000200010010434F4D504C454D454E544F5F50524F4401004900
      000001000557494454480200020050000E4449464552454E43415F49434D5301
      00490000000100055749445448020002000100114E756D5F4C6F74655F436F6E
      74726F6C6501004900000001000557494454480200020014000949445F456E71
      49504904000100000000000F506572635F49434D535F496E7465720800040000
      0000000A566C725F4F7574726F73080004000000000017504552435F5049535F
      434F46494E535F53554652414D4108000400000000000A494250545F43484156
      4501004900000001000557494454480200020014000B505245434F5F43555354
      4F08000400000000000B504552435F4D415247454D08000400000000000C5045
      52435F4D415247454D320800040000000000094E554D5F54414C414F01004900
      00000100055749445448020002000F000C5154445F534F4252415F4F43080004
      0000000000085154445F54524942080004000000000011564C525F554E495441
      52494F5F5452494208000400000000000C554E49444144455F54524942010049
      000000010005574944544802000200060008454E43455241444F010049000000
      01000557494454480200020001000C434F4E565F554E49444144450800040000
      0000000C554E49444144455F50524F4401004900000001000557494454480200
      020006000C4F42535F4554495155455441010049000000010005574944544802
      0002001E000B4F42534D4154455249414C010049000000010005574944544802
      00020064000B5449504F5F455343414C41010049000000010005574944544802
      00020001000D424153455F49434D535F46435008000400000000000B42415345
      5F4643505F535408000400000000000A564C525F4643505F5354080004000000
      00000B504552435F4643505F5354080004000000000011564C525F49434D535F
      4643505F44455354080004000000000012424153455F49434D535F4643505F44
      4553540800040000000000075449504F5F4F5301004900000001000557494454
      4802000200020011504552435F49434D535F53554652414D4108000400000000
      0010504552435F4950495F53554652414D4108000400000000000B5245435F43
      4F504941444F0100490000000100055749445448020002000100084361697869
      6E68610100490000000100055749445448020002001E000D564C525F4950495F
      4445564F4C08000400000000000A504552435F4445564F4C0800040000000000
      08424153455F49504908000400000000000000}
    object mItensID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object mItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object mItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object mItensID_Cofins: TIntegerField
      FieldName = 'ID_Cofins'
    end
    object mItensPerc_ICMS: TFloatField
      FieldName = 'Perc_ICMS'
    end
    object mItensPerc_IPI: TFloatField
      FieldName = 'Perc_IPI'
    end
    object mItensVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
    object mItensVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
    object mItensPerc_Desconto: TFloatField
      FieldName = 'Perc_Desconto'
    end
    object mItensVlr_Desconto: TFloatField
      FieldName = 'Vlr_Desconto'
    end
    object mItensBase_ICMS: TFloatField
      FieldName = 'Base_ICMS'
    end
    object mItensVlr_ICMS: TFloatField
      FieldName = 'Vlr_ICMS'
    end
    object mItensVlr_IPI: TFloatField
      FieldName = 'Vlr_IPI'
    end
    object mItensPerc_Pis: TFloatField
      FieldName = 'Perc_Pis'
    end
    object mItensPerc_Cofins: TFloatField
      FieldName = 'Perc_Cofins'
    end
    object mItensVlr_Pis: TFloatField
      FieldName = 'Vlr_Pis'
    end
    object mItensVlr_Cofins: TFloatField
      FieldName = 'Vlr_Cofins'
    end
    object mItensTipo_Pis: TStringField
      FieldName = 'Tipo_Pis'
      Size = 1
    end
    object mItensTipo_Cofins: TStringField
      FieldName = 'Tipo_Cofins'
      Size = 1
    end
    object mItensOrigem_Prod: TStringField
      FieldName = 'Origem_Prod'
      Size = 1
    end
    object mItensBase_IcmsSimples: TFloatField
      FieldName = 'Base_IcmsSimples'
    end
    object mItensVlr_IcmsSimples: TFloatField
      FieldName = 'Vlr_IcmsSimples'
    end
    object mItensCalcularIcmsSobreIPI: TStringField
      FieldName = 'CalcularIcmsSobreIPI'
      Size = 1
    end
    object mItensNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mItensID_MovEstoque: TIntegerField
      FieldName = 'ID_MovEstoque'
    end
    object mItensGerar_Duplicata: TStringField
      FieldName = 'Gerar_Duplicata'
      Size = 1
    end
    object mItensGerar_Estoque: TStringField
      FieldName = 'Gerar_Estoque'
      Size = 1
    end
    object mItensNumero_OC: TStringField
      FieldName = 'Numero_OC'
    end
    object mItensNumero_OS: TStringField
      FieldName = 'Numero_OS'
      Size = 30
    end
    object mItensItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mItensPerc_Comissao: TFloatField
      FieldName = 'Perc_Comissao'
    end
    object mItensSomar_Transf_Icms: TStringField
      FieldName = 'Somar_Transf_Icms'
      Size = 1
    end
    object mItensObs_Complementar: TStringField
      FieldName = 'Obs_Complementar'
      Size = 250
    end
    object mItensSomar_VlrTotalProduto: TStringField
      FieldName = 'Somar_VlrTotalProduto'
      Size = 1
    end
    object mItensVlr_Frete: TFloatField
      FieldName = 'Vlr_Frete'
    end
    object mItensVlr_OutrasDespesas: TFloatField
      FieldName = 'Vlr_OutrasDespesas'
    end
    object mItensVlr_Seguro: TFloatField
      FieldName = 'Vlr_Seguro'
    end
    object mItensVlr_IcmsFrete: TFloatField
      FieldName = 'Vlr_IcmsFrete'
    end
    object mItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object mItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object mItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object mItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object mItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object mItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object mItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object mItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Size = 1
    end
    object mItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object mItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object mItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      Size = 1
    end
    object mItensNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object mItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object mItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object mItensObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 10
    end
    object mItensID_Atelier: TIntegerField
      FieldName = 'ID_Atelier'
    end
    object mItensVlr_Unitario_Atelier: TFloatField
      FieldName = 'Vlr_Unitario_Atelier'
    end
    object mItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object mItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object mItensNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mItensQtd_Cancelado: TFloatField
      FieldName = 'Qtd_Cancelado'
    end
    object mItensQtd_Restante: TFloatField
      FieldName = 'Qtd_Restante'
    end
    object mItensQtd_Faturado: TFloatField
      FieldName = 'Qtd_Faturado'
    end
    object mItensID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mItensCancelado: TStringField
      FieldName = 'Cancelado'
      Size = 1
    end
    object mItensDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mItensFaturado: TStringField
      FieldName = 'Faturado'
      Size = 1
    end
    object mItensDtFaturado: TDateField
      FieldName = 'DtFaturado'
    end
    object mItensCod_Produto_Cliente: TStringField
      FieldName = 'Cod_Produto_Cliente'
      Size = 15
    end
    object mItensTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mItensNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object mItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object mItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object mItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object mItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object mItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object mItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object mItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object mItensAprovado_Orc: TStringField
      FieldName = 'Aprovado_Orc'
      Size = 1
    end
    object mItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 10
    end
    object mItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object mItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object mItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object mItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object mItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object mItensID: TIntegerField
      FieldName = 'ID'
    end
    object mItensItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object mItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object mItensCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object mItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 3
    end
    object mItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object mItensNome_Produto_Original: TStringField
      FieldName = 'Nome_Produto_Original'
      Size = 100
    end
    object mItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object mItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object mItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object mItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object mItensNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object mItensCODCOFINS: TStringField
      FieldName = 'CODCOFINS'
      Size = 2
    end
    object mItensCODPIS: TStringField
      FieldName = 'CODPIS'
      Size = 2
    end
    object mItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object mItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object mItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object mItensPERC_TABCSTICMS: TFloatField
      FieldName = 'PERC_TABCSTICMS'
    end
    object mItensMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      Size = 1
    end
    object mItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object mItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object mItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object mItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object mItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object mItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object mItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      Size = 1
    end
    object mItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object mItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object mItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object mItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object mItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object mItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      Size = 1
    end
    object mItensPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      Size = 1
    end
    object mItensCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 25
    end
    object mItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object mItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      Size = 1
    end
    object mItensEnd_Foto: TStringField
      FieldName = 'End_Foto'
      Size = 200
    end
    object mItensItem_Cliente: TIntegerField
      FieldName = 'Item_Cliente'
    end
    object mItensNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object mItensPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object mItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object mItensID_OBS_LEI_NCM: TIntegerField
      FieldName = 'ID_OBS_LEI_NCM'
    end
    object mItensID_VALE: TIntegerField
      FieldName = 'ID_VALE'
    end
    object mItensITEM_VALE: TIntegerField
      FieldName = 'ITEM_VALE'
    end
    object mItensNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object mItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
    end
    object mItensVLR_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'VLR_ICMSSUBST_INTERNO'
    end
    object mItensPERC_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'PERC_ICMSSUBST_PROPRIO'
    end
    object mItensVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object mItensBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object mItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object mItensVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object mItensCOD_DESONERACAO: TIntegerField
      FieldName = 'COD_DESONERACAO'
    end
    object mItensVLR_ICMSOPERACAO: TFloatField
      FieldName = 'VLR_ICMSOPERACAO'
    end
    object mItensQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object mItensID_PEDIDO_FUT: TIntegerField
      FieldName = 'ID_PEDIDO_FUT'
    end
    object mItensITEM_PEDIDO_FUT: TIntegerField
      FieldName = 'ITEM_PEDIDO_FUT'
    end
    object mItensID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object mItensITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object mItensITEM_OS_MAT: TIntegerField
      FieldName = 'ITEM_OS_MAT'
    end
    object mItensNUM_OSERVICO: TIntegerField
      FieldName = 'NUM_OSERVICO'
    end
    object mItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object mItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object mItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object mItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object mItensVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object mItensVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object mItensVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object mItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object mItensItem_original: TIntegerField
      FieldName = 'Item_original'
    end
    object mItensPerc_Diferimento: TFloatField
      FieldName = 'Perc_Diferimento'
    end
    object mItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object mItensVlr_TaxaCiscomex: TFloatField
      FieldName = 'Vlr_TaxaCiscomex'
    end
    object mItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object mItensCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      Size = 1
    end
    object mItensCOMPLEMENTO_PROD: TStringField
      FieldName = 'COMPLEMENTO_PROD'
      Size = 80
    end
    object mItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      Size = 1
    end
    object mItensNum_Lote_Controle: TStringField
      FieldName = 'Num_Lote_Controle'
    end
    object mItensID_EnqIPI: TIntegerField
      FieldName = 'ID_EnqIPI'
    end
    object mItensPerc_ICMS_Inter: TFloatField
      FieldName = 'Perc_ICMS_Inter'
    end
    object mItensVlr_Outros: TFloatField
      FieldName = 'Vlr_Outros'
    end
    object mItensPERC_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'PERC_PIS_COFINS_SUFRAMA'
    end
    object mItensIBPT_CHAVE: TStringField
      DisplayWidth = 20
      FieldName = 'IBPT_CHAVE'
    end
    object mItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object mItensPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object mItensPERC_MARGEM2: TFloatField
      FieldName = 'PERC_MARGEM2'
    end
    object mItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object mItensQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object mItensQTD_TRIB: TFloatField
      FieldName = 'QTD_TRIB'
    end
    object mItensVLR_UNITARIO_TRIB: TFloatField
      FieldName = 'VLR_UNITARIO_TRIB'
    end
    object mItensUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object mItensENCERADO: TStringField
      FieldName = 'ENCERADO'
      Size = 1
    end
    object mItensCONV_UNIDADE: TFloatField
      FieldName = 'CONV_UNIDADE'
    end
    object mItensUNIDADE_PROD: TStringField
      FieldName = 'UNIDADE_PROD'
      Size = 6
    end
    object mItensOBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object mItensOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
    object mItensTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      Size = 1
    end
    object mItensBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object mItensBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object mItensVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object mItensPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object mItensVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object mItensBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object mItensTIPO_OS: TStringField
      FieldName = 'TIPO_OS'
      Size = 2
    end
    object mItensPERC_ICMS_SUFRAMA: TFloatField
      FieldName = 'PERC_ICMS_SUFRAMA'
    end
    object mItensPERC_IPI_SUFRAMA: TFloatField
      FieldName = 'PERC_IPI_SUFRAMA'
    end
    object mItensREC_COPIADO: TStringField
      FieldName = 'REC_COPIADO'
      Size = 1
    end
    object mItensCaixinha: TStringField
      FieldName = 'Caixinha'
      Size = 30
    end
    object mItensVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object mItensPERC_DEVOL: TFloatField
      FieldName = 'PERC_DEVOL'
    end
    object mItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
  end
  object mPedido_Cli: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_CentroCusto'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CENTROCUSTO'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 208
    Data = {
      7A0000009619E0BD0100000018000000050000000000030000007A000E49445F
      43656E74726F437573746F040001000000000003517464080004000000000002
      49440400010000000000044974656D0400010000000000104E4F4D455F43454E
      54524F435553544F01004900000001000557494454480200020028000000}
    object mPedido_CliID_CentroCusto: TIntegerField
      FieldName = 'ID_CentroCusto'
    end
    object mPedido_CliQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mPedido_CliID: TIntegerField
      FieldName = 'ID'
    end
    object mPedido_CliItem: TIntegerField
      FieldName = 'Item'
    end
    object mPedido_CliNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      Size = 40
    end
  end
  object mNotaFiscal_Imp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item_Imp'
        DataType = ftInteger
      end
      item
        Name = 'NumDI'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DtRegistro'
        DataType = ftDate
      end
      item
        Name = 'DtDesembaraco'
        DataType = ftDate
      end
      item
        Name = 'CodExportador'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Local_Desembaraco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NumFatura'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_VIA_TRANSORTE'
        DataType = ftInteger
      end
      item
        Name = 'VLR_AFRMM'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_INTERMEDIO'
        DataType = ftInteger
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'UF_TERCEIRO'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 256
    Top = 192
    Data = {
      810100009619E0BD01000000180000000F000000000003000000810108497465
      6D5F496D700400010000000000054E756D444901004900000001000557494454
      48020002000C000A4474526567697374726F04000600000000000D4474446573
      656D62617261636F04000600000000000D436F644578706F727461646F720100
      490000000100055749445448020002003C00114C6F63616C5F446573656D6261
      7261636F0100490000000100055749445448020002003C000255460100490000
      000100055749445448020002000200094E756D46617475726101004900000001
      00055749445448020002000F000249440400010000000000044974656D040001
      0000000000125449504F5F5649415F5452414E534F5254450400010000000000
      09564C525F4146524D4D08000400000000000F5449504F5F494E5445524D4544
      494F040001000000000004434E504A0100490000000100055749445448020002
      0012000B55465F544552434549524F0100490000000100055749445448020002
      0002000000}
    object mNotaFiscal_ImpItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mNotaFiscal_ImpNumDI: TStringField
      FieldName = 'NumDI'
      Size = 12
    end
    object mNotaFiscal_ImpDtRegistro: TDateField
      FieldName = 'DtRegistro'
    end
    object mNotaFiscal_ImpDtDesembaraco: TDateField
      FieldName = 'DtDesembaraco'
    end
    object mNotaFiscal_ImpCodExportador: TStringField
      FieldName = 'CodExportador'
      Size = 60
    end
    object mNotaFiscal_ImpLocal_Desembaraco: TStringField
      FieldName = 'Local_Desembaraco'
      Size = 60
    end
    object mNotaFiscal_ImpUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mNotaFiscal_ImpNumFatura: TStringField
      FieldName = 'NumFatura'
      Size = 15
    end
    object mNotaFiscal_ImpID: TIntegerField
      FieldName = 'ID'
    end
    object mNotaFiscal_ImpItem: TIntegerField
      FieldName = 'Item'
    end
    object mNotaFiscal_ImpTIPO_VIA_TRANSORTE: TIntegerField
      FieldName = 'TIPO_VIA_TRANSORTE'
    end
    object mNotaFiscal_ImpVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object mNotaFiscal_ImpTIPO_INTERMEDIO: TIntegerField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object mNotaFiscal_ImpCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object mNotaFiscal_ImpUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
  end
  object mNotaFiscal_Imp_AD: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item_Imp'
        DataType = ftInteger
      end
      item
        Name = 'Item_AD'
        DataType = ftInteger
      end
      item
        Name = 'NumAdicao'
        DataType = ftInteger
      end
      item
        Name = 'CodFabricante'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Desconto_DI'
        DataType = ftFloat
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Num_Seq'
        DataType = ftInteger
      end
      item
        Name = 'Num_Drawback'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 328
    Top = 240
    Data = {
      D00000009619E0BD010000001800000009000000000003000000D00008497465
      6D5F496D700400010000000000074974656D5F41440400010000000000094E75
      6D41646963616F04000100000000000D436F64466162726963616E7465010049
      0000000100055749445448020002003C000F566C725F446573636F6E746F5F44
      4908000400000000000249440400010000000000044974656D04000100000000
      00074E756D5F53657104000100000000000C4E756D5F447261776261636B0100
      490000000100055749445448020002000B000000}
    object mNotaFiscal_Imp_ADItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mNotaFiscal_Imp_ADItem_AD: TIntegerField
      FieldName = 'Item_AD'
    end
    object mNotaFiscal_Imp_ADNumAdicao: TIntegerField
      FieldName = 'NumAdicao'
    end
    object mNotaFiscal_Imp_ADCodFabricante: TStringField
      FieldName = 'CodFabricante'
      Size = 60
    end
    object mNotaFiscal_Imp_ADVlr_Desconto_DI: TFloatField
      FieldName = 'Vlr_Desconto_DI'
    end
    object mNotaFiscal_Imp_ADID: TIntegerField
      FieldName = 'ID'
    end
    object mNotaFiscal_Imp_ADItem: TIntegerField
      FieldName = 'Item'
    end
    object mNotaFiscal_Imp_ADNum_Seq: TIntegerField
      FieldName = 'Num_Seq'
    end
    object mNotaFiscal_Imp_ADNum_Drawback: TStringField
      FieldName = 'Num_Drawback'
      Size = 11
    end
  end
  object mItens_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'QTD_CONSUMO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'NOME_PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ITEM_MAT'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'ITEM_MAT'
    Params = <>
    StoreDefs = True
    Left = 88
    Top = 256
    Data = {
      B60000009619E0BD010000001800000007000000000003000000B6000A49445F
      50524F4455544F04000100000000000B5154445F434F4E53554D4F0800040000
      0000000C564C525F554E49544152494F080004000000000007554E4944414445
      010049000000010005574944544802000200060009564C525F544F54414C0800
      0400000000000C4E4F4D455F50524F4455544F01004900000001000557494454
      48020002006400084954454D5F4D415404000100000000000000}
    object mItens_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mItens_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object mItens_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object mItens_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object mItens_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object mItens_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object mItens_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
    end
  end
  object mItensDoc: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'PERC_IPI'
        DataType = ftFloat
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_CENTROCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'NOME_PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOME_CENTROCUSTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COD_CENTROCUSTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto_Original'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_MOVESTOQUE'
        DataType = ftInteger
      end
      item
        Name = 'TAMANHO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID_COR'
        DataType = ftInteger
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NUM_LOTE_CONTROLE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GERAR_CUSTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRECO_CUSTO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'LOCALIZACAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 192
    Top = 296
    Data = {
      730200009619E0BD01000000180000001700000000000300000073020A49445F
      50524F4455544F04000100000000000351544408000400000000000C564C525F
      554E49544152494F080004000000000009564C525F544F54414C080004000000
      000008504552435F4950490800040000000000064D4F5449564F010049000000
      010005574944544802000200640007554E494441444501004900000001000557
      494454480200020006000E49445F43454E54524F435553544F04000100000000
      000C4E4F4D455F50524F4455544F010049000000010005574944544802000200
      6400104E4F4D455F43454E54524F435553544F01004900000001000557494454
      480200020032000F434F445F43454E54524F435553544F010049000000010005
      5749445448020002001400154E6F6D655F50726F6475746F5F4F726967696E61
      6C01004900000001000557494454480200020064000249440400010000000000
      044974656D04000100000000000A5245464552454E4349410100490000000100
      0557494454480200020014000D49445F4D4F564553544F515545040001000000
      00000754414D414E484F0100490000000100055749445448020002000A000649
      445F434F520400010000000000134E4F4D455F434F525F434F4D42494E414341
      4F0100490000000100055749445448020002003C00114E554D5F4C4F54455F43
      4F4E54524F4C4501004900000001000557494454480200020014000B47455241
      525F435553544F01004900000001000557494454480200020001001150524543
      4F5F435553544F5F544F54414C08000400000000000B4C4F43414C495A414341
      4F0100490000000100055749445448020002001E000000}
    object mItensDocID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object mItensDocQTD: TFloatField
      FieldName = 'QTD'
    end
    object mItensDocVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object mItensDocVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object mItensDocPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object mItensDocMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object mItensDocUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object mItensDocID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object mItensDocNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object mItensDocNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      Size = 50
    end
    object mItensDocCOD_CENTROCUSTO: TStringField
      FieldName = 'COD_CENTROCUSTO'
    end
    object mItensDocNome_Produto_Original: TStringField
      FieldName = 'Nome_Produto_Original'
      Size = 100
    end
    object mItensDocID: TIntegerField
      FieldName = 'ID'
    end
    object mItensDocItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensDocREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object mItensDocID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object mItensDocTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object mItensDocID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object mItensDocNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object mItensDocNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object mItensDocGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      Size = 1
    end
    object mItensDocPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object mItensDocLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
  end
  object sdsQtdGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM QTDGRADE'#13#10'WHERE ID_GRADE = :ID_GRADE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_GRADE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 64
  end
  object dspQtdGrade: TDataSetProvider
    DataSet = sdsQtdGrade
    Left = 576
    Top = 64
  end
  object cdsQtdGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQtdGrade'
    Left = 616
    Top = 64
    object cdsQtdGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsQtdGradeQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsQtdGradeID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
  end
  object dsQtdGrade: TDataSource
    DataSet = cdsQtdGrade
    Left = 648
    Top = 64
  end
  object qQtdGrade_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM QTDGRADE_ITENS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 152
    object qQtdGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qQtdGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qQtdGrade_ItensQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, ID_GRADE'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 208
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
  end
end
