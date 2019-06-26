object DMCadPlanoMat: TDMCadPlanoMat
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 258
  Top = 167
  Height = 446
  Width = 1005
  object sdsPlanoMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANOMAT'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 65
    Top = 15
    object sdsPlanoMatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlanoMatNUM_PLANO: TIntegerField
      FieldName = 'NUM_PLANO'
    end
    object sdsPlanoMatDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dspPlanoMat: TDataSetProvider
    DataSet = sdsPlanoMat
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 15
  end
  object cdsPlanoMat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPlanoMat'
    Left = 163
    Top = 15
    object cdsPlanoMatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanoMatNUM_PLANO: TIntegerField
      FieldName = 'NUM_PLANO'
    end
    object cdsPlanoMatDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPlanoMatsdsPlanoMat_Itens: TDataSetField
      FieldName = 'sdsPlanoMat_Itens'
    end
    object cdsPlanoMatsdsPlanoMat_Lote: TDataSetField
      FieldName = 'sdsPlanoMat_Lote'
    end
  end
  object dsPlanoMat: TDataSource
    DataSet = cdsPlanoMat
    Left = 208
    Top = 15
  end
  object dsPlanoMat_Mestre: TDataSource
    DataSet = sdsPlanoMat
    Left = 24
    Top = 54
  end
  object sdsPlanoMat_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANOMAT_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsPlanoMat_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 62
    Top = 107
    object sdsPlanoMat_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlanoMat_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlanoMat_ItensID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsPlanoMat_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsPlanoMat_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPlanoMat_ItensQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsPlanoMat_ItensQTD_PAGO: TFloatField
      FieldName = 'QTD_PAGO'
    end
    object sdsPlanoMat_ItensTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsPlanoMat_ItensCRU: TStringField
      FieldName = 'CRU'
      FixedChar = True
      Size = 1
    end
    object sdsPlanoMat_ItensTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPlanoMat_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlanoMatsdsPlanoMat_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 158
    Top = 107
    object cdsPlanoMat_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanoMat_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanoMat_ItensID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsPlanoMat_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPlanoMat_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPlanoMat_ItensQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsPlanoMat_ItensQTD_PAGO: TFloatField
      FieldName = 'QTD_PAGO'
    end
    object cdsPlanoMat_ItensTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPlanoMat_ItensCRU: TStringField
      FieldName = 'CRU'
      FixedChar = True
      Size = 1
    end
    object cdsPlanoMat_ItensTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPlanoMat_Itens: TDataSource
    DataSet = cdsPlanoMat_Itens
    Left = 205
    Top = 107
  end
  object sdsPlanoMat_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANOMAT_LOTE'#13#10'WHERE ID = :ID'
    DataSource = dsPlanoMat_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 63
    Top = 163
    object sdsPlanoMat_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlanoMat_LoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsPlanoMat_Lote: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlanoMatsdsPlanoMat_Lote
    IndexFieldNames = 'ID;NUM_ORDEM'
    Params = <>
    Left = 157
    Top = 163
    object cdsPlanoMat_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlanoMat_LoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsPlanoMat_Lote: TDataSource
    DataSet = cdsPlanoMat_Lote
    Left = 205
    Top = 163
  end
  object sdsOrdemPend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT L.num_ordem, L.dtemissao'#13#10'FROM LOTE L'#13#10'WHERE l.i' +
      'd_planomat is null'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 409
    Top = 195
  end
  object dspOrdemPend: TDataSetProvider
    DataSet = sdsOrdemPend
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 195
  end
  object cdsOrdemPend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemPend'
    Left = 505
    Top = 195
    object cdsOrdemPendNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsOrdemPendDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsOrdemPend: TDataSource
    DataSet = cdsOrdemPend
    Left = 552
    Top = 195
  end
  object sdsOrdemPend_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.num_ordem, L.dtemissao, l.id_produto, l.referencia, l.q' +
      'td, l.id_combinacao,'#13#10'comb.nome nome_combinacao'#13#10'FROM LOTE L'#13#10'le' +
      'ft join combinacao comb'#13#10'on l.id_combinacao = comb.id'#13#10'where L.N' +
      'UM_ORDEM = :NUM_ORDEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 409
    Top = 251
  end
  object dspOrdemPend_Lote: TDataSetProvider
    DataSet = sdsOrdemPend_Lote
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 251
  end
  object cdsOrdemPend_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemPend_Lote'
    Left = 505
    Top = 251
    object cdsOrdemPend_LoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsOrdemPend_LoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrdemPend_LoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemPend_LoteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrdemPend_LoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemPend_LoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsOrdemPend_LoteNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
  end
  object dsOrdemPend_Lote: TDataSource
    DataSet = cdsOrdemPend_Lote
    Left = 552
    Top = 251
  end
  object sdsLote_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.num_ordem, L.id_material, L.id_cor, L.qtd_consumo, L.qt' +
      'd_produto, L.tamanho,'#13#10'L.tingimento, L.tipo_producao, '#39'N'#39' CRU , ' +
      #39'1'#39' ORDENAR'#13#10'FROM LOTE_MAT L'#13#10'WHERE L.NUM_ORDEM = :NUM_ORDEM'#13#10'  ' +
      'and l.id_material > 0'#13#10#13#10'UNION'#13#10#13#10'SELECT LT.num_ordem, LT.id_mat' +
      'erial, LT.id_cor, LT.qtd, 0 QTD_PRODUTO, '#39#39' TAMANHO,'#13#10#39'S'#39' TINGIM' +
      'ENTO, '#39'G'#39' TIPO_PRODUCAO, LT.cru, '#39'2'#39' ORDENAR'#13#10'FROM LOTE_TING LT'#13 +
      #10'WHERE LT.NUM_ORDEM = :NUM_ORDEM'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 405
    Top = 315
  end
  object dspLote_Mat: TDataSetProvider
    DataSet = sdsLote_Mat
    UpdateMode = upWhereKeyOnly
    Left = 452
    Top = 315
  end
  object cdsLote_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDENAR;TIPO_PRODUCAO'
    Params = <>
    ProviderName = 'dspLote_Mat'
    Left = 500
    Top = 315
    object cdsLote_MatNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
      Required = True
    end
    object cdsLote_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsLote_MatID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsLote_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsLote_MatQTD_PRODUTO: TFloatField
      FieldName = 'QTD_PRODUTO'
    end
    object cdsLote_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_MatTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatCRU: TStringField
      FieldName = 'CRU'
      FixedChar = True
      Size = 1
    end
    object cdsLote_MatORDENAR: TStringField
      FieldName = 'ORDENAR'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsLote_Mat: TDataSource
    DataSet = cdsLote_Mat
    Left = 548
    Top = 315
  end
  object mMatAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
        Name = 'Qtd_Consumo'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Produto'
        DataType = ftFloat
      end
      item
        Name = 'Tipo_Producao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Ordenar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Cru'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tingimento'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 756
    Top = 221
    Data = {
      F60000009619E0BD010000001800000009000000000003000000F6000B49445F
      4D6174657269616C04000100000000000649445F436F72040001000000000007
      54616D616E686F0100490000000100055749445448020002000A000B5174645F
      436F6E73756D6F08000400000000000B5174645F50726F6475746F0800040000
      0000000D5469706F5F50726F647563616F010049000000010005574944544802
      0002000100074F7264656E617201004900000001000557494454480200020001
      000343727501004900000001000557494454480200020001000A54696E67696D
      656E746F01004900000001000557494454480200020001000000}
    object mMatAuxID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMatAuxID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mMatAuxTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mMatAuxQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
    end
    object mMatAuxQtd_Produto: TFloatField
      FieldName = 'Qtd_Produto'
    end
    object mMatAuxTipo_Producao: TStringField
      FieldName = 'Tipo_Producao'
      Size = 1
    end
    object mMatAuxOrdenar: TStringField
      FieldName = 'Ordenar'
      Size = 1
    end
    object mMatAuxCru: TStringField
      FieldName = 'Cru'
      Size = 1
    end
    object mMatAuxTingimento: TStringField
      FieldName = 'Tingimento'
      Size = 1
    end
  end
  object sdsConsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.ID, I.ITEM, I.ID_MATERIAL, I.ID_COR, I.TAMANHO, I.qtd_c' +
      'onsumo, I.tipo_producao,'#13#10'I.tingimento, I.cru, MAT.NOME NOME_MAT' +
      'ERIAL, COMB.NOME NOME_COR, P.num_plano, P.data,'#13#10'CASE'#13#10'  WHEN I.' +
      'TIPO_PRODUCAO = '#39'T'#39' then '#39'TRAN'#199'ADEIRA'#39#13#10'  WHEN I.TIPO_PRODUCAO =' +
      ' '#39'E'#39' then '#39'TEAR'#39#13#10'  WHEN I.TIPO_PRODUCAO = '#39'G'#39' then '#39'TINGIMENTO'#39 +
      #13#10'  ELSE '#39#39#13#10'  END DESC_TIPO_PRODUCAO'#13#10'FROM PLANOMAT_ITENS I'#13#10'IN' +
      'NER JOIN PLANOMAT P'#13#10'ON I.ID = P.ID'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON ' +
      'I.ID_MATERIAL = MAT.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON I.ID_COR =' +
      ' COMB.ID'#13#10'WHERE I.tipo_producao <> '#39'G'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 415
    Top = 32
  end
  object dspConsMaterial: TDataSetProvider
    DataSet = sdsConsMaterial
    UpdateMode = upWhereKeyOnly
    Left = 462
    Top = 32
  end
  object cdsConsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsMaterial'
    Left = 510
    Top = 32
    object cdsConsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsMaterialITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsMaterialID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsMaterialID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsConsMaterialTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsConsMaterialQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsMaterialTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsMaterialTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsMaterialCRU: TStringField
      FieldName = 'CRU'
      FixedChar = True
      Size = 1
    end
    object cdsConsMaterialNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsConsMaterialNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsMaterialDESC_TIPO_PRODUCAO: TStringField
      FieldName = 'DESC_TIPO_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object cdsConsMaterialNUM_PLANO: TIntegerField
      FieldName = 'NUM_PLANO'
    end
    object cdsConsMaterialDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dsConsMaterial: TDataSource
    DataSet = cdsConsMaterial
    Left = 558
    Top = 32
  end
  object sdsConsTing: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.ID, I.ITEM, I.ID_MATERIAL, I.ID_COR, I.TAMANHO, I.qtd_c' +
      'onsumo, I.tipo_producao,'#13#10'I.tingimento, I.cru, MAT.NOME NOME_MAT' +
      'ERIAL, COMB.NOME NOME_COR, P.num_plano, P.data,'#13#10'CASE'#13#10'  WHEN I.' +
      'TIPO_PRODUCAO = '#39'T'#39' then '#39'TRAN'#199'ADEIRA'#39#13#10'  WHEN I.TIPO_PRODUCAO =' +
      ' '#39'E'#39' then '#39'TEAR'#39#13#10'  WHEN I.TIPO_PRODUCAO = '#39'G'#39' then '#39'TINGIMENTO'#39 +
      #13#10'  ELSE '#39#39#13#10'  END DESC_TIPO_PRODUCAO'#13#10'FROM PLANOMAT_ITENS I'#13#10'IN' +
      'NER JOIN PLANOMAT P'#13#10'ON I.ID = P.ID'#13#10'INNER JOIN PRODUTO MAT'#13#10'ON ' +
      'I.ID_MATERIAL = MAT.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON I.ID_COR =' +
      ' COMB.ID'#13#10'WHERE I.tipo_producao = '#39'G'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 80
  end
  object dspConsTing: TDataSetProvider
    DataSet = sdsConsTing
    UpdateMode = upWhereKeyOnly
    Left = 462
    Top = 80
  end
  object cdsConsTing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsTing'
    Left = 511
    Top = 80
    object cdsConsTingID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsTingITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsTingID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsTingID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsConsTingTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsConsTingQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsTingTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsTingTINGIMENTO: TStringField
      FieldName = 'TINGIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsTingCRU: TStringField
      FieldName = 'CRU'
      FixedChar = True
      Size = 1
    end
    object cdsConsTingNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsConsTingNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsTingNUM_PLANO: TIntegerField
      FieldName = 'NUM_PLANO'
    end
    object cdsConsTingDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsTingDESC_TIPO_PRODUCAO: TStringField
      FieldName = 'DESC_TIPO_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
  object dsConsTing: TDataSource
    DataSet = cdsConsTing
    Left = 558
    Top = 80
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
    ReportOptions.CreateDate = 42841.867818298600000000
    ReportOptions.LastChange = 43588.395312974540000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 742
    Top = 77
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
    Left = 815
    Top = 79
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
    Left = 784
    Top = 79
  end
  object frxRichObject1: TfrxRichObject
    Left = 848
    Top = 79
  end
  object frxConsMaterial: TfrxDBDataset
    UserName = 'frxConsMaterial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'QTD_CONSUMO=QTD_CONSUMO'
      'TIPO_PRODUCAO=TIPO_PRODUCAO'
      'TINGIMENTO=TINGIMENTO'
      'CRU=CRU'
      'NOME_MATERIAL=NOME_MATERIAL'
      'NOME_COR=NOME_COR'
      'DESC_TIPO_PRODUCAO=DESC_TIPO_PRODUCAO'
      'NUM_PLANO=NUM_PLANO'
      'DATA=DATA')
    DataSource = dsConsMaterial
    BCDToCurrency = False
    Left = 747
    Top = 133
  end
  object frxConsTing: TfrxDBDataset
    UserName = 'frxConsTing'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'QTD_CONSUMO=QTD_CONSUMO'
      'TIPO_PRODUCAO=TIPO_PRODUCAO'
      'TINGIMENTO=TINGIMENTO'
      'CRU=CRU'
      'NOME_MATERIAL=NOME_MATERIAL'
      'NOME_COR=NOME_COR'
      'DESC_TIPO_PRODUCAO=DESC_TIPO_PRODUCAO'
      'NUM_PLANO=NUM_PLANO'
      'DATA=DATA')
    DataSource = dsConsTing
    BCDToCurrency = False
    Left = 797
    Top = 130
  end
end
