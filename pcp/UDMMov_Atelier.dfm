object DMMov_Atelier: TDMMov_Atelier
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 147
  Top = 68
  Height = 614
  Width = 1186
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 128
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 104
    Top = 128
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 144
    Top = 128
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
    Top = 128
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, REFERENCIA, NOME'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10 +
      '  AND TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 232
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 144
    Top = 232
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 208
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
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 264
    Top = 232
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_ATELIER = '#39 +
      'S'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 184
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 104
    Top = 184
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 144
    Top = 184
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAtelierFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 184
    Top = 184
  end
  object sdsMov_Atelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOV_ATELIER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 32
    object sdsMov_AtelierID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMov_AtelierDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsMov_AtelierDT_REFERENCIA: TDateField
      FieldName = 'DT_REFERENCIA'
    end
    object sdsMov_AtelierTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsMov_AtelierVLR_MOV: TFloatField
      FieldName = 'VLR_MOV'
    end
    object sdsMov_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsMov_AtelierID_FINANCEIRO: TIntegerField
      FieldName = 'ID_FINANCEIRO'
    end
    object sdsMov_AtelierFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsMov_AtelierID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsMov_AtelierID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
  end
  object dspMov_Atelier: TDataSetProvider
    DataSet = sdsMov_Atelier
    Left = 112
    Top = 32
  end
  object cdsMov_Atelier: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov_Atelier'
    Left = 152
    Top = 32
    object cdsMov_AtelierID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_AtelierDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsMov_AtelierDT_REFERENCIA: TDateField
      FieldName = 'DT_REFERENCIA'
    end
    object cdsMov_AtelierTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMov_AtelierVLR_MOV: TFloatField
      FieldName = 'VLR_MOV'
    end
    object cdsMov_AtelierID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsMov_AtelierID_FINANCEIRO: TIntegerField
      FieldName = 'ID_FINANCEIRO'
    end
    object cdsMov_AtelierFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsMov_AtelierID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsMov_AtelierID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
  end
  object dsMov_Atelier: TDataSource
    DataSet = cdsMov_Atelier
    Left = 192
    Top = 32
  end
  object sdsConsulta_Talao_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*, AUX.QTD_TALAO * AUX.VLR_PAR VLR_TOTAL'#13#10'FROM ('#13#10'SEL' +
      'ECT T.ID ID_TALAO, T.ITEM, T.id_atelier, T.id_setor, T.id_produt' +
      'o,'#13#10'T.id_combinacao, T.qtd QTD_TALAO, T.dtsaida, T.hrsaida, T.dt' +
      'retorno,'#13#10'T.hrretorno, '#39'2'#39' || lpad(T.ID,7,0) || lpad(T.ITEM,4,0)' +
      ' TALAO_COD_BARRA, '#13#10'T.selecionado, T.dtpagamento,'#13#10'ATE.NOME NOME' +
      '_ATELIER, S.nome NOME_SETOR, PRO.REFERENCIA,'#13#10'PRO.nome NOME_PROD' +
      'UTO, COMB.nome NOME_COMBINACAO, LOTE.num_lote, LOTE.num_ordem,'#13#10 +
      'LOTE.filial, FIL.NOME NOME_FILIAL, LOTE.CARIMBO, FIL.endlogo, T.' +
      'dtsistema, T.HRSISTEMA,'#13#10'  (SELECT MAX(PA.VLR_PAR) VLR_PAR'#13#10'  FR' +
      'OM PRODUTO_ATELIER PA'#13#10'  WHERE PA.id = T.id_produto'#13#10'    and pa.' +
      'id_setor = t.id_setor)'#13#10#13#10'FROM TALAO_AUX T'#13#10'INNER JOIN PESSOA AT' +
      'E'#13#10'ON T.id_atelier = ATE.CODIGO'#13#10'INNER JOIN SETOR S'#13#10'ON T.id_set' +
      'or = S.ID'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON T.id_produto = PRO.id'#13#10'INN' +
      'ER JOIN lote '#13#10'ON T.id = LOTE.ID'#13#10'INNER JOIN FILIAL FIL'#13#10'ON LOTE' +
      '.FILIAL = FIL.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON T.id_combinacao ' +
      '= COMB.id)'#13#10'AUX'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 48
  end
  object dspConsulta_Talao_Aux: TDataSetProvider
    DataSet = sdsConsulta_Talao_Aux
    Left = 504
    Top = 48
  end
  object cdsConsulta_Talao_Aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Talao_Aux'
    Left = 560
    Top = 48
    object cdsConsulta_Talao_AuxID_TALAO: TIntegerField
      FieldName = 'ID_TALAO'
      Required = True
    end
    object cdsConsulta_Talao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_Talao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsulta_Talao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsConsulta_Talao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_Talao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsConsulta_Talao_AuxQTD_TALAO: TFloatField
      FieldName = 'QTD_TALAO'
    end
    object cdsConsulta_Talao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsConsulta_Talao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsConsulta_Talao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsConsulta_Talao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object cdsConsulta_Talao_AuxNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsConsulta_Talao_AuxNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsConsulta_Talao_AuxREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_Talao_AuxNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_Talao_AuxNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsConsulta_Talao_AuxNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsulta_Talao_AuxNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsConsulta_Talao_AuxFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsulta_Talao_AuxNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsulta_Talao_AuxCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsConsulta_Talao_AuxENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsConsulta_Talao_AuxVLR_PAR: TFloatField
      FieldName = 'VLR_PAR'
      DisplayFormat = '0.00##'
    end
    object cdsConsulta_Talao_AuxVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_Talao_AuxTALAO_COD_BARRA: TStringField
      FieldName = 'TALAO_COD_BARRA'
      Required = True
      Size = 12
    end
    object cdsConsulta_Talao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object cdsConsulta_Talao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
    object cdsConsulta_Talao_AuxSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsConsulta_Talao_AuxDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
  end
  object dsConsulta_Talao_Aux: TDataSource
    DataSet = cdsConsulta_Talao_Aux
    Left = 600
    Top = 48
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT S.ID, S.nome'#13#10'FROM SETOR S'#13#10'INNER JOIN produto_a' +
      'telier PS'#13#10'ON S.id = PS.id_setor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 296
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 128
    Top = 296
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 184
    Top = 296
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
    Left = 224
    Top = 296
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42202.340278460700000000
    ReportOptions.LastChange = 42380.977819143520000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    Left = 600
    Top = 384
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxTalao_Aux'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_TALAO=ID_TALAO'
      'ITEM=ITEM'
      'ID_ATELIER=ID_ATELIER'
      'ID_SETOR=ID_SETOR'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COMBINACAO=ID_COMBINACAO'
      'QTD_TALAO=QTD_TALAO'
      'DTSAIDA=DTSAIDA'
      'HRSAIDA=HRSAIDA'
      'DTRETORNO=DTRETORNO'
      'HRRETORNO=HRRETORNO'
      'NOME_ATELIER=NOME_ATELIER'
      'NOME_SETOR=NOME_SETOR'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'NUM_LOTE=NUM_LOTE'
      'NUM_ORDEM=NUM_ORDEM'
      'FILIAL=FILIAL'
      'NOME_FILIAL=NOME_FILIAL'
      'CARIMBO=CARIMBO'
      'ENDLOGO=ENDLOGO'
      'VLR_PAR=VLR_PAR'
      'VLR_TOTAL=VLR_TOTAL'
      'TALAO_COD_BARRA=TALAO_COD_BARRA'
      'DTSISTEMA=DTSISTEMA'
      'HRSISTEMA=HRSISTEMA')
    DataSource = dsConsulta_Talao_Aux
    BCDToCurrency = False
    Left = 688
    Top = 384
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 640
    Top = 384
  end
  object sdsConsAtelier_Ret: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id_atelier, v.nome_atelier, SUM(V.vlr_par * V.qtd_talao' +
      ') VLR_TOTAL,'#13#10' (SELECT SUM(PAG.vlr_mov) VLR_PAGAMENTO'#13#10'    FROM ' +
      'MOV_ATELIER PAG'#13#10'    WHERE PAG.filial = :FILIAL'#13#10'      AND PAG.d' +
      't_referencia >= :DTINICIAL'#13#10'      AND PAG.dt_referencia <= :DTFI' +
      'NAL'#13#10'      AND PAG.id_atelier = V.id_atelier)'#13#10'FROM vmov_atelier' +
      ' V'#13#10'  WHERE V.filial = :FILIAL'#13#10'  AND V.dtretorno >= :DTINICIAL'#13 +
      #10'  AND V.dtretorno <= :DTFINAL'#13#10'GROUP BY V.ID_ATELIER, V.nome_at' +
      'elier'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 96
  end
  object dspConsAtelier_Ret: TDataSetProvider
    DataSet = sdsConsAtelier_Ret
    Left = 504
    Top = 96
  end
  object cdsConsAtelier_Ret: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsAtelier_Ret'
    Left = 560
    Top = 96
    object cdsConsAtelier_RetID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsAtelier_RetNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsConsAtelier_RetVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsAtelier_RetVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
      DisplayFormat = '0.00'
    end
  end
  object dsConsAtelier_Ret: TDataSource
    DataSet = cdsConsAtelier_Ret
    Left = 600
    Top = 96
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 256
    object qParametrosGRAVAR_FINANCEIRO_ATELIER: TStringField
      FieldName = 'GRAVAR_FINANCEIRO_ATELIER'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_CONTA_ORC_ATELIER: TIntegerField
      FieldName = 'ID_CONTA_ORC_ATELIER'
    end
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, FILIAL'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 185
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 792
    Top = 185
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 832
    Top = 185
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 872
    Top = 185
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM TIPOCOBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 768
    Top = 248
    object sdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 800
    Top = 248
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 832
    Top = 248
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 864
    Top = 248
  end
  object sdsConsMov_Pagto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT pag.*, ATE.nome NOME_ATELIER'#13#10'FROM MOV_ATELIER PAG'#13#10'INNER' +
      ' JOIN PESSOA ATE'#13#10'ON PAG.id_atelier = ATE.codigo'#13#10'    WHERE PAG.' +
      'filial = :FILIAL'#13#10'      AND PAG.dt_referencia >= :DTINICIAL'#13#10'   ' +
      '   AND PAG.dt_referencia <= :DTFINAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 152
  end
  object dspConsMov_Pagto: TDataSetProvider
    DataSet = sdsConsMov_Pagto
    Left = 504
    Top = 152
  end
  object cdsConsMov_Pagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsMov_Pagto'
    Left = 560
    Top = 152
    object cdsConsMov_PagtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsMov_PagtoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsConsMov_PagtoDT_REFERENCIA: TDateField
      FieldName = 'DT_REFERENCIA'
    end
    object cdsConsMov_PagtoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsConsMov_PagtoVLR_MOV: TFloatField
      FieldName = 'VLR_MOV'
    end
    object cdsConsMov_PagtoID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsMov_PagtoID_FINANCEIRO: TIntegerField
      FieldName = 'ID_FINANCEIRO'
    end
    object cdsConsMov_PagtoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsMov_PagtoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsConsMov_PagtoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsConsMov_PagtoNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
  end
  object dsConsMov_Pagto: TDataSource
    DataSet = cdsConsMov_Pagto
    Left = 600
    Top = 152
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxConsAtelier_Ret'
    OnFirst = frxDBDataset2First
    OnNext = frxDBDataset2Next
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_ATELIER=ID_ATELIER'
      'NOME_ATELIER=NOME_ATELIER'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_PAGAMENTO=VLR_PAGAMENTO')
    DataSource = dsConsAtelier_Ret
    BCDToCurrency = False
    Left = 728
    Top = 384
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxConsMov_Pagto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT_CADASTRO=DT_CADASTRO'
      'DT_REFERENCIA=DT_REFERENCIA'
      'TIPO_REG=TIPO_REG'
      'VLR_MOV=VLR_MOV'
      'ID_ATELIER=ID_ATELIER'
      'ID_FINANCEIRO=ID_FINANCEIRO'
      'FILIAL=FILIAL'
      'ID_CONTA=ID_CONTA'
      'ID_FORMA_PAGAMENTO=ID_FORMA_PAGAMENTO'
      'NOME_ATELIER=NOME_ATELIER')
    DataSource = dsConsMov_Pagto
    BCDToCurrency = False
    Left = 768
    Top = 384
  end
  object sdsTalao_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*'#13#10'FROM TALAO_AUX T'#13#10'WHERE T.ID = :ID'#13#10'  AND T.ITEM = :' +
      'ITEM'#13#10
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
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 384
    object sdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object sdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object sdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object sdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object sdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
    object sdsTalao_AuxDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object sdsTalao_AuxSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dspTalao_Aux: TDataSetProvider
    DataSet = sdsTalao_Aux
    Left = 112
    Top = 384
  end
  object cdsTalao_Aux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao_Aux'
    Left = 168
    Top = 384
    object cdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object cdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object cdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object cdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
    object cdsTalao_AuxDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object cdsTalao_AuxSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dsTalao_Aux: TDataSource
    DataSet = cdsTalao_Aux
    Left = 208
    Top = 384
  end
  object mSelPagto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Num_Ordem'
        DataType = ftInteger
      end
      item
        Name = 'Num_Lote'
        DataType = ftInteger
      end
      item
        Name = 'ID_Talao'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Talao_CodBarra'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Par'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'DtRetorno'
        DataType = ftDate
      end
      item
        Name = 'Selecionado'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 384
    Data = {
      150100009619E0BD01000000180000000C0000000000030000001501094E756D
      5F4F7264656D0400010000000000084E756D5F4C6F7465040001000000000008
      49445F54616C616F0400010000000000044974656D04000100000000000E5461
      6C616F5F436F6442617272610100490000000100055749445448020002000F00
      0A5265666572656E63696101004900000001000557494454480200020014000F
      4E6F6D655F436F6D62696E6163616F0100490000000100055749445448020002
      00280003517464080004000000000007566C725F506172080004000000000009
      566C725F546F74616C08000400000000000944745265746F726E6F0400060000
      0000000B53656C6563696F6E61646F02000300000000000000}
    object mSelPagtoNum_Ordem: TIntegerField
      FieldName = 'Num_Ordem'
    end
    object mSelPagtoNum_Lote: TIntegerField
      FieldName = 'Num_Lote'
    end
    object mSelPagtoID_Talao: TIntegerField
      FieldName = 'ID_Talao'
    end
    object mSelPagtoItem: TIntegerField
      FieldName = 'Item'
    end
    object mSelPagtoTalao_CodBarra: TStringField
      FieldName = 'Talao_CodBarra'
      Size = 15
    end
    object mSelPagtoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mSelPagtoNome_Combinacao: TStringField
      FieldName = 'Nome_Combinacao'
      Size = 40
    end
    object mSelPagtoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mSelPagtoVlr_Par: TFloatField
      FieldName = 'Vlr_Par'
    end
    object mSelPagtoVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
    object mSelPagtoDtRetorno: TDateField
      FieldName = 'DtRetorno'
    end
    object mSelPagtoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
  end
  object dsmSelPagto: TDataSource
    DataSet = mSelPagto
    Left = 424
    Top = 384
  end
end
