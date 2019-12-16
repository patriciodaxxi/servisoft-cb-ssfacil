object DmCadMovProdST: TDmCadMovProdST
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 161
  Top = 175
  Height = 436
  Width = 807
  object sdsMovProdST: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOVPRODST'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 24
    object sdsMovProdSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMovProdSTDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsMovProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object sdsMovProdSTVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object sdsMovProdSTPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object sdsMovProdSTQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object sdsMovProdSTQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsMovProdSTUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object sdsMovProdSTTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object sdsMovProdSTBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
    end
    object sdsMovProdSTVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
    end
    object sdsMovProdSTID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsMovProdSTVLR_ICMS_SUBST: TFloatField
      FieldName = 'VLR_ICMS_SUBST'
    end
    object sdsMovProdSTVLR_ICMS_SUBST_ORIG: TFloatField
      FieldName = 'VLR_ICMS_SUBST_ORIG'
    end
  end
  object dspMovProdST: TDataSetProvider
    DataSet = sdsMovProdST
    OnUpdateError = dspMovProdSTUpdateError
    Left = 152
    Top = 24
  end
  object cdsMovProdST: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMovProdST'
    Left = 217
    Top = 24
    object cdsMovProdSTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMovProdSTDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsMovProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
      DisplayFormat = '0.00'
    end
    object cdsMovProdSTVLR_ST: TFloatField
      FieldName = 'VLR_ST'
      DisplayFormat = '0.00'
    end
    object cdsMovProdSTPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object cdsMovProdSTQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object cdsMovProdSTQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsMovProdSTUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object cdsMovProdSTTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsMovProdSTBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
      DisplayFormat = '0.00'
    end
    object cdsMovProdSTVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
      DisplayFormat = '0.00'
    end
    object cdsMovProdSTID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsMovProdSTVLR_ICMS_SUBST: TFloatField
      FieldName = 'VLR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object cdsMovProdSTVLR_ICMS_SUBST_ORIG: TFloatField
      FieldName = 'VLR_ICMS_SUBST_ORIG'
      DisplayFormat = '0.00'
    end
  end
  object dsMovProdST: TDataSource
    DataSet = cdsMovProdST
    Left = 288
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, P.NOME NOME_PRODUTO'#13#10'FROM MOVPRODST M'#13#10'INNER JOIN PR' +
      'ODUTO P'#13#10'ON M.ID_PRODUTO = P.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 48
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 544
    Top = 48
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 584
    Top = 49
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsultaBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object cdsConsultaVLR_ST: TFloatField
      FieldName = 'VLR_ST'
    end
    object cdsConsultaPERC_ST: TFloatField
      FieldName = 'PERC_ST'
    end
    object cdsConsultaQTD_ORIGINAL: TFloatField
      FieldName = 'QTD_ORIGINAL'
    end
    object cdsConsultaQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object cdsConsultaUNIDADE_ORIGINAL: TStringField
      FieldName = 'UNIDADE_ORIGINAL'
      Size = 6
    end
    object cdsConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsConsultaBASE_ST_ORIGINAL: TFloatField
      FieldName = 'BASE_ST_ORIGINAL'
    end
    object cdsConsultaVLR_ST_ORIGINAL: TFloatField
      FieldName = 'VLR_ST_ORIGINAL'
    end
    object cdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsultaVLR_ICMS_SUBST: TFloatField
      FieldName = 'VLR_ICMS_SUBST'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_ICMS_SUBST_ORIG: TFloatField
      FieldName = 'VLR_ICMS_SUBST_ORIG'
      DisplayFormat = '0.00'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 624
    Top = 48
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, REFERENCIA, NOME'#13#10'FROM PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 136
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 536
    Top = 136
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 576
    Top = 136
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
    Left = 616
    Top = 136
  end
  object sdsConsProdST: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*'#13#10'FROM ('#13#10'SELECT P.ID, P.NOME, P.REFERENCIA, NCM.ncm' +
      ', NCM.gerar_st,'#13#10'(select first 1 V.dtemissao FROM vmovprodst V W' +
      'HERE V.id_produto = P.ID order by v.dtemissao desc ),'#13#10'(select f' +
      'irst 1 V.base_st FROM vmovprodst V WHERE V.id_produto = P.ID ord' +
      'er by v.dtemissao desc ),'#13#10'(select first 1 V.base_st_ret FROM vm' +
      'ovprodst V WHERE V.id_produto = P.ID order by v.dtemissao desc )' +
      #13#10'FROM PRODUTO P'#13#10'INNER JOIN TAB_NCM NCM'#13#10'ON P.id_ncm = NCM.id'#13#10 +
      'WHERE P.INATIVO = '#39'N'#39') AUX'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 387
    Top = 271
  end
  object dspConsProdST: TDataSetProvider
    DataSet = sdsConsProdST
    Left = 436
    Top = 271
  end
  object cdsConsProdST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsProdST'
    Left = 475
    Top = 271
    object cdsConsProdSTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsProdSTNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsProdSTREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsProdSTNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsConsProdSTGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsConsProdSTDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsProdSTBASE_ST: TFloatField
      FieldName = 'BASE_ST'
    end
    object cdsConsProdSTBASE_ST_RET: TFloatField
      FieldName = 'BASE_ST_RET'
    end
  end
  object dsConsProdST: TDataSource
    DataSet = cdsConsProdST
    Left = 515
    Top = 271
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
    ReportOptions.CreateDate = 43500.689950381900000000
    ReportOptions.LastChange = 43556.695563287040000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 213
    Top = 155
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
    Left = 254
    Top = 155
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
    Left = 294
    Top = 155
  end
  object frxRichObject1: TfrxRichObject
    Left = 326
    Top = 155
  end
  object frxConsProdST: TfrxDBDataset
    UserName = 'frxConsProdST'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      'REFERENCIA=REFERENCIA'
      'NCM=NCM'
      'GERAR_ST=GERAR_ST'
      'DTEMISSAO=DTEMISSAO'
      'BASE_ST=BASE_ST'
      'BASE_ST_RET=BASE_ST_RET')
    DataSource = dsConsProdST
    BCDToCurrency = False
    Left = 214
    Top = 200
  end
end
