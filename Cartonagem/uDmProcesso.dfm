object dmProcesso: TdmProcesso
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 383
  Top = 232
  Height = 560
  Width = 635
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PP.*'#13#10'FROM PRODUTOCARTO_PROCESSO PP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 56
    object sdsProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsProcessoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
  end
  object sdsProcessoItem: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_PROCESSO_IT '#13#10'WHERE ID = :ID'
    DataSource = dsmProcesso
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 152
    object sdsProcessoItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcessoItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcessoItemNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsProcessoItemQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsProcessoItemPOSICAO: TStringField
      FieldName = 'POSICAO'
      FixedChar = True
      Size = 2
    end
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProcessoUpdateError
    Left = 152
    Top = 56
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 208
    Top = 56
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsProcessoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object cdsProcessosdsProcessoItem: TDataSetField
      FieldName = 'sdsProcessoItem'
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 264
    Top = 56
  end
  object dsmProcesso: TDataSource
    DataSet = sdsProcesso
    Left = 88
    Top = 104
  end
  object cdsProcessoItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProcessosdsProcessoItem
    Params = <>
    Left = 208
    Top = 152
    object cdsProcessoItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoItemNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsProcessoItemQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsProcessoItemPOSICAO: TStringField
      FieldName = 'POSICAO'
      FixedChar = True
      Size = 2
    end
  end
  object dsProcessoItem: TDataSource
    DataSet = cdsProcessoItem
    Left = 264
    Top = 152
  end
  object sdsFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA'#13#10'FROM PRODUTO P'#13#10'INNER JOIN PRODUTOCAR' +
      'TO PC ON (P.ID = PC.ID)'#13#10'WHERE PC.FACA = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 264
    object sdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dspFaca: TDataSetProvider
    DataSet = sdsFaca
    Left = 152
    Top = 264
  end
  object cdsFaca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaca'
    Left = 208
    Top = 264
    object cdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsFacasdsProdutoCartoFD: TDataSetField
      FieldName = 'sdsProdutoCartoFD'
    end
    object cdsFacasdsProdutoCartoTP: TDataSetField
      FieldName = 'sdsProdutoCartoTP'
    end
    object cdsFacasdsProdutoCartoSP: TDataSetField
      FieldName = 'sdsProdutoCartoSP'
    end
  end
  object dsFaca: TDataSource
    DataSet = cdsFaca
    Left = 264
    Top = 264
  end
  object sdsFichaTecnica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA'#13#10'FROM PRODUTO P'#13#10'INNER JOIN PR' +
      'ODUTOCARTO PC ON (P.ID = PC.ID)'#13#10'WHERE PC.FACA = '#39'0'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 376
    object sdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sdsFichaTecnica
    Left = 160
    Top = 376
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 216
    Top = 376
    object cdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 272
    Top = 376
  end
  object sdsProdutoCartoFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_FD'#13#10'WHERE ID = :ID'
    DataSource = dsmFaca
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 368
    Top = 224
    object sdsProdutoCartoFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoFDFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsProdutoCartoFDFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
  end
  object cdsProdutoCartoFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFacasdsProdutoCartoFD
    Params = <>
    Left = 400
    Top = 224
    object cdsProdutoCartoFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoFDFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsProdutoCartoFDFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
  end
  object dsProdutoCartoFD: TDataSource
    DataSet = cdsProdutoCartoFD
    Left = 432
    Top = 224
  end
  object sdsProdutoCartoTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_TP'#13#10'WHERE ID = :ID'
    DataSource = dsmFaca
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 368
    Top = 272
    object sdsProdutoCartoTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
  end
  object cdsProdutoCartoTP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFacasdsProdutoCartoTP
    Params = <>
    Left = 400
    Top = 272
    object cdsProdutoCartoTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
  end
  object dsProdutoCartoTP: TDataSource
    DataSet = cdsProdutoCartoTP
    Left = 432
    Top = 272
  end
  object sdsProdutoCartoSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_SP'#13#10'WHERE ID =  :ID'
    DataSource = dsmFaca
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 368
    Top = 328
    object sdsProdutoCartoSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
  end
  object cdsProdutoCartoSP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFacasdsProdutoCartoSP
    Params = <>
    Left = 400
    Top = 328
    object cdsProdutoCartoSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
  end
  object dsProdutoCartoSP: TDataSource
    DataSet = cdsProdutoCartoSP
    Left = 432
    Top = 328
  end
  object dsmFaca: TDataSource
    DataSet = sdsFaca
    Left = 96
    Top = 312
  end
  object sdsProcessoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PP.*, F.REFERENCIA FACA, FT.NOME FICHA_TEC'#13#10'FROM PRODUTOC' +
      'ARTO_PROCESSO PP'#13#10'INNER JOIN PRODUTO F ON (PP.FACA_ID = F.ID)'#13#10'I' +
      'NNER JOIN PRODUTO FT ON (PP.FICHA_TEC_ID = FT.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 368
    Top = 56
    object sdsProcessoConsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcessoConsFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsProcessoConsFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object sdsProcessoConsFACA: TStringField
      FieldName = 'FACA'
      ProviderFlags = []
    end
    object sdsProcessoConsFICHA_TEC: TStringField
      FieldName = 'FICHA_TEC'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspProcessoCons: TDataSetProvider
    DataSet = sdsProcessoCons
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProcessoUpdateError
    Left = 432
    Top = 56
  end
  object cdsProcessoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcessoCons'
    Left = 488
    Top = 56
    object cdsProcessoConsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoConsFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsProcessoConsFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object cdsProcessoConsFACA: TStringField
      FieldName = 'FACA'
      ProviderFlags = []
    end
    object cdsProcessoConsFICHA_TEC: TStringField
      FieldName = 'FICHA_TEC'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsProcessoCons: TDataSource
    DataSet = cdsProcessoCons
    Left = 544
    Top = 56
  end
end
