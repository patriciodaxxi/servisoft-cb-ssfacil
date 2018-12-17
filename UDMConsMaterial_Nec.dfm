object DMConsMaterial_Nec: TDMConsMaterial_Nec
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 346
  Top = 161
  Height = 423
  Width = 757
  object sdsMaterial_Nec: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*,'#13#10' ((COALESCE(AUX.QTD_ESTOQUE,0) + COALESCE(AUX.QTD' +
      '_OC,0)) - COALESCE(AUX.QTD_PED,0) - COALESCE(AUX.QTD_REM,0) - CO' +
      'ALESCE(AUX.QTD_ESTOQUE_MIN,0)) QTD_SALDO'#13#10'FROM ('#13#10'SELECT SUM(V.q' +
      'td_pedido_prod) QPED, SUM(V.qtd_remessa_prod) QREM,'#13#10'VF.ID_MATER' +
      'IAL, vf.id_cor_mat, sum(vf.qtd_consumo * V.qtd_pedido_prod) QTD_' +
      'PED,'#13#10'vf.material, vf.nome_cor, vf.unidade, VF.qtd_estoque_min,'#13 +
      #10'SUM(VF.QTD_CONSUMO * V.qtd_remessa_prod) QTD_REM,'#13#10'(SELECT SUM(' +
      'EST.QTD) FROM ESTOQUE_ATUAL EST'#13#10'  WHERE EST.ID_PRODUTO = VF.ID_' +
      'MATERIAL'#13#10'    AND EST.ID_COR = VF.ID_COR_MAT) QTD_ESTOQUE,'#13#10'(SEL' +
      'ECT SUM(OC.QTD_RESTANTE) FROM PEDIDO_ITEM OC'#13#10'  INNER JOIN PEDID' +
      'O POC'#13#10'  ON OC.ID = POC.ID'#13#10'  WHERE OC.TIPO_REG = '#39'C'#39#13#10'    AND O' +
      'C.ID_PRODUTO = VF.ID_MATERIAL'#13#10'    AND OC.ID_COR = VF.ID_COR_MAT' +
      #13#10'    AND OC.QTD_RESTANTE > 0 /*1*/ ) QTD_OC'#13#10'FROM vsaldoprod V'#13 +
      #10'INNER JOIN VFICHA_TECNICA_COMB VF'#13#10'  ON V.ID_PRODUTO = VF.ID'#13#10' ' +
      'AND V.ID_COR = VF.ID_COR_COMBINACAO'#13#10'WHERE ((V.DTPEDIDO >= :DTPE' +
      'DIDO1'#13#10'  AND V.DTPEDIDO <= :DTPEDIDO2)'#13#10'  OR  (V.DTREMESSA >= :D' +
      'TREMESSA1'#13#10'  AND V.DTREMESSA <= :DTREMESSA2)) /*2*/'#13#10'GROUP BY VF' +
      '.ID_MATERIAL, vf.id_cor_mat, vf.material, vf.nome_cor, vf.unidad' +
      'e, VF.qtd_estoque_min) AUX'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTPEDIDO1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTPEDIDO2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTREMESSA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTREMESSA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 40
  end
  object dspMaterial_Nec: TDataSetProvider
    DataSet = sdsMaterial_Nec
    Left = 120
    Top = 40
  end
  object cdsMaterial_Nec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial_Nec'
    Left = 168
    Top = 40
    object cdsMaterial_NecQPED: TFloatField
      FieldName = 'QPED'
    end
    object cdsMaterial_NecQREM: TFloatField
      FieldName = 'QREM'
    end
    object cdsMaterial_NecID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsMaterial_NecID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsMaterial_NecQTD_PED: TFloatField
      FieldName = 'QTD_PED'
      DisplayFormat = '###,###,##0.0000'
    end
    object cdsMaterial_NecMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsMaterial_NecNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsMaterial_NecUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsMaterial_NecQTD_REM: TFloatField
      FieldName = 'QTD_REM'
      DisplayFormat = '###,###,##0.0000'
    end
    object cdsMaterial_NecQTD_ESTOQUE: TFMTBCDField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 15
      Size = 6
    end
    object cdsMaterial_NecQTD_OC: TFloatField
      FieldName = 'QTD_OC'
      DisplayFormat = '###,###,##0.0000'
    end
    object cdsMaterial_NecQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
      DisplayFormat = '###,###,##0.0000'
    end
    object cdsMaterial_NecQTD_SALDO: TFloatField
      FieldName = 'QTD_SALDO'
      DisplayFormat = '###,###,##0.0000'
    end
  end
  object dsMaterial_Nec: TDataSource
    DataSet = cdsMaterial_Nec
    Left = 224
    Top = 40
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 72
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 512
    Top = 72
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_INTERNO'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 552
    Top = 72
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
    Left = 600
    Top = 72
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43137.634086770800000000
    ReportOptions.LastChange = 43137.725966817100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 416
    Top = 264
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 448
    Top = 264
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
    Left = 488
    Top = 263
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
    Left = 528
    Top = 263
  end
  object frxRichObject1: TfrxRichObject
    Left = 560
    Top = 263
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = False
    EmptyLines = False
    SuppressPageHeadersFooters = False
    Left = 616
    Top = 264
  end
  object frxMaterial_Nec: TfrxDBDataset
    UserName = 'frxMaterial_Nec'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QPED=QPED'
      'QREM=QREM'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR_MAT=ID_COR_MAT'
      'QTD_PED=QTD_PED'
      'MATERIAL=MATERIAL'
      'NOME_COR=NOME_COR'
      'UNIDADE=UNIDADE'
      'QTD_REM=QTD_REM'
      'QTD_ESTOQUE=QTD_ESTOQUE'
      'QTD_OC=QTD_OC'
      'QTD_ESTOQUE_MIN=QTD_ESTOQUE_MIN'
      'QTD_SALDO=QTD_SALDO')
    DataSource = dsMaterial_Nec
    BCDToCurrency = False
    Left = 416
    Top = 312
  end
  object qSaldoProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTPEDIDO1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTPEDIDO2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTREMESSA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTREMESSA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(V.qtd_pedido_prod) QTD_PEDIDO, SUM(V.qtd_remessa_prod' +
        ') QTD_REMESSA'
      'FROM vsaldoprod V'
      'WHERE (V.DTPEDIDO >= :DTPEDIDO1'
      '  AND V.DTPEDIDO <= :DTPEDIDO2)'
      '   OR (V.DTREMESSA >= :DTREMESSA1'
      '  AND V.DTREMESSA <= :DTREMESSA2)')
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 160
    object qSaldoProdQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object qSaldoProdQTD_REMESSA: TFloatField
      FieldName = 'QTD_REMESSA'
    end
  end
  object sdsMaterial_Nec_CombMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*,'#13#10' ((COALESCE(AUX.QTD_ESTOQUE,0) + COALESCE(AUX.QTD' +
      '_OC,0)) - COALESCE(AUX.QTD_PED,0) - COALESCE(AUX.QTD_REM,0) - CO' +
      'ALESCE(AUX.QTD_ESTOQUE_MIN,0)) QTD_SALDO'#13#10'FROM ('#13#10'SELECT SUM(V.q' +
      'td_pedido_prod) QPED, SUM(V.qtd_remessa_prod) QREM,'#13#10'VF.ID_MATER' +
      'IAL, vf.id_cor_mat, sum(vf.qtd_consumo * V.qtd_pedido_prod) QTD_' +
      'PED,'#13#10'vf.material, vf.nome_cor, vf.unidade, VF.qtd_estoque_min,'#13 +
      #10'SUM(VF.QTD_CONSUMO * V.qtd_remessa_prod) QTD_REM,'#13#10'(SELECT SUM(' +
      'EST.QTD) FROM ESTOQUE_ATUAL EST'#13#10'  WHERE EST.ID_PRODUTO = VF.ID_' +
      'MATERIAL'#13#10'    AND EST.ID_COR = VF.ID_COR_MAT) QTD_ESTOQUE,'#13#10'(SEL' +
      'ECT SUM(OC.QTD_RESTANTE) FROM PEDIDO_ITEM OC'#13#10'  INNER JOIN PEDID' +
      'O POC'#13#10'  ON OC.ID = POC.ID'#13#10'  WHERE OC.TIPO_REG = '#39'C'#39#13#10'    AND O' +
      'C.ID_PRODUTO = VF.ID_MATERIAL'#13#10'    AND OC.ID_COR = VF.ID_COR_MAT' +
      #13#10'    AND OC.QTD_RESTANTE > 0 /*1*/ ) QTD_OC'#13#10'FROM vsaldoprod V'#13 +
      #10'INNER JOIN VFICHA_TECNICA_COMB VF'#13#10'  ON V.ID_PRODUTO = VF.ID'#13#10' ' +
      'AND V.ID_COR = VF.ID_COR_COMBINACAO'#13#10'WHERE ((V.DTPEDIDO >= :DTPE' +
      'DIDO1'#13#10'  AND V.DTPEDIDO <= :DTPEDIDO2)'#13#10'  OR  (V.DTREMESSA >= :D' +
      'TREMESSA1'#13#10'  AND V.DTREMESSA <= :DTREMESSA2)) /*2*/'#13#10'GROUP BY VF' +
      '.ID_MATERIAL, vf.id_cor_mat, vf.material, vf.nome_cor, vf.unidad' +
      'e, VF.qtd_estoque_min) AUX'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DTPEDIDO1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTPEDIDO2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTREMESSA1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTREMESSA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 96
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_CONSUMO_COMB'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 160
    object qParametros_ProdUSA_CONSUMO_COMB: TStringField
      FieldName = 'USA_CONSUMO_COMB'
      FixedChar = True
      Size = 1
    end
  end
  object sdsMaterial_Rem: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.num_remessa, V.id_material, V.id_cor_mat, V.id_setor,'#13#10 +
      'V.material, V.nome_cor, V.nome_setor, SUM(L.qtd * V.qtd_consumo)' +
      ' QTD_NECESSIDADE'#13#10'FROM LOTE L'#13#10'INNER JOIN vficha_tecnica_comb V'#13 +
      #10'ON L.ID_PRODUTO = V.ID'#13#10'AND L.id_combinacao = V.id_cor_combinac' +
      'ao'#13#10'WHERE (L.NUM_REMESSA = :NUM_REMESSA) or (L.NUM_ORDEM = :NUM_' +
      'ORDEM)'#13#10'GROUP BY L.num_remessa, V.id_material, V.id_cor_mat, V.i' +
      'd_setor,'#13#10'V.material, V.nome_cor, V.nome_setor'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM_REMESSA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 184
  end
  object dspMaterial_Rem: TDataSetProvider
    DataSet = sdsMaterial_Rem
    Left = 120
    Top = 184
  end
  object cdsMaterial_Rem: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_SETOR;MATERIAL;NOME_COR'
    Params = <>
    ProviderName = 'dspMaterial_Rem'
    Left = 168
    Top = 184
    object cdsMaterial_RemNUM_REMESSA: TStringField
      FieldName = 'NUM_REMESSA'
      Size = 15
    end
    object cdsMaterial_RemID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsMaterial_RemID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsMaterial_RemID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsMaterial_RemMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsMaterial_RemNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsMaterial_RemNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsMaterial_RemQTD_NECESSIDADE: TFloatField
      FieldName = 'QTD_NECESSIDADE'
    end
  end
  object dsMaterial_Rem: TDataSource
    DataSet = cdsMaterial_Rem
    Left = 224
    Top = 184
  end
  object frxMaterial_Rem: TfrxDBDataset
    UserName = 'frxMaterial_Rem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUM_REMESSA=NUM_REMESSA'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR_MAT=ID_COR_MAT'
      'ID_SETOR=ID_SETOR'
      'MATERIAL=MATERIAL'
      'NOME_COR=NOME_COR'
      'NOME_SETOR=NOME_SETOR'
      'QTD_NECESSIDADE=QTD_NECESSIDADE')
    DataSource = dsMaterial_Rem
    BCDToCurrency = False
    Left = 488
    Top = 312
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_REMESSA'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 600
    Top = 144
    object qParametros_LoteUSA_REMESSA: TStringField
      FieldName = 'USA_REMESSA'
      FixedChar = True
      Size = 1
    end
  end
end
