object DMConsMetas: TDMConsMetas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 441
  Top = 206
  Height = 397
  Width = 670
  object sdsMetas_Pedidos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*,'#13#10#13#10'case'#13#10'  when ((COALESCE(AUX.VLR_META,0) - COALE' +
      'SCE(AUX.VLR_PEDIDOS,0)) < 0) then'#13#10'    COALESCE(AUX.VLR_META,0) ' +
      '- COALESCE(AUX.VLR_PEDIDOS,0) * -1'#13#10'  when ((COALESCE(AUX.VLR_ME' +
      'TA,0) - COALESCE(AUX.VLR_PEDIDOS,0)) >= 0) then'#13#10'    COALESCE(AU' +
      'X.VLR_META,0) - COALESCE(AUX.VLR_PEDIDOS,0)'#13#10'  end RESULTADO'#13#10#13#10 +
      'from ('#13#10'select ME.ano, ME.mes, ME.vlr_meta, ME.id_vendedor, VEND' +
      '.nome NOME_VENDEDOR,  ME.ANO_MES,'#13#10'(SELECT VALOR VLR_PEDIDOS FRO' +
      'M METAS_ACUM MA'#13#10'   WHERE MA.id_vendedor = ME.id_vendedor'#13#10'     ' +
      'AND MA.ANO = ME.ANO'#13#10'     AND MA.MES = ME.MES),'#13#10'case'#13#10'when ME.m' +
      'es = 01 THEN '#39'Janeiro'#39#13#10'when ME.mes = 02 THEN '#39'Fevereiro'#39#13#10'when ' +
      'ME.mes = 03 THEN '#39'Mar'#231'o'#39#13#10'when ME.mes = 04 THEN '#39'Abril'#39#13#10'when ME' +
      '.mes = 05 THEN '#39'Maio'#39#13#10'when ME.mes = 06 THEN '#39'Junho'#39#13#10'when ME.me' +
      's = 07 THEN '#39'Julho'#39#13#10'when ME.mes = 08 THEN '#39'Agosto'#39#13#10'when ME.mes' +
      ' = 09 THEN '#39'Setembro'#39#13#10'when ME.mes = 10 THEN '#39'Outubro'#39#13#10'when ME.' +
      'mes = 11 THEN '#39'Novembro'#39#13#10'when ME.mes = 12 THEN '#39'Dezembro'#39#13#10'ELSE' +
      ' '#39#39#13#10'END NOME_MES'#13#10#13#10'from METAS_VENDEDOR ME'#13#10'INNER JOIN PESSOA V' +
      'END'#13#10'ON ME.id_vendedor = VEND.codigo'#13#10#13#10'WHERE ME.ANO_MES >= :ANO' +
      '_MES_INI'#13#10'  AND ME.ANO_MES <= :ANO_MES_FIN) AUX'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ANO_MES_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO_MES_FIN'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
  end
  object dspMetas_Pedidos: TDataSetProvider
    DataSet = sdsMetas_Pedidos
    Left = 152
    Top = 32
  end
  object cdsMetas_Pedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMetas_Pedidos'
    Left = 192
    Top = 32
    object cdsMetas_PedidosANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsMetas_PedidosMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
    end
    object cdsMetas_PedidosVLR_META: TFloatField
      DisplayLabel = 'Vlr. Meta'
      FieldName = 'VLR_META'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsMetas_PedidosID_VENDEDOR: TIntegerField
      DisplayLabel = 'ID Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsMetas_PedidosNOME_VENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsMetas_PedidosVLR_PEDIDOS: TFloatField
      DisplayLabel = 'Vlr. Pedidos'
      FieldName = 'VLR_PEDIDOS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsMetas_PedidosNOME_MES: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'NOME_MES'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsMetas_PedidosRESULTADO: TFloatField
      DisplayLabel = 'Resultado'
      FieldName = 'RESULTADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsMetas_PedidosANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dsMetas_Pedidos: TDataSource
    DataSet = cdsMetas_Pedidos
    Left = 232
    Top = 32
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_VENDEDOR = '#39'S'#39#13#10'  AND' +
      ' INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 88
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 152
    Top = 88
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 192
    Top = 88
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 232
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42389.617272338000000000
    ReportOptions.LastChange = 42419.643379386570000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 160
    Top = 231
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
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 200
    Top = 231
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
    Left = 240
    Top = 231
  end
  object frxRichObject1: TfrxRichObject
    Left = 272
    Top = 231
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxMetasAux'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Vendedor=ID_Vendedor'
      'Nome_Vendedor=Nome_Vendedor'
      'Vlr_Meta=Vlr_Meta'
      'Vlr_Pedidos=Vlr_Pedidos'
      'Vlr_Resultado=Vlr_Resultado'
      'Ano=Ano'
      'Mes=Mes'
      'Ano_Mes=Ano_Mes'
      'Nome_Mes=Nome_Mes')
    DataSource = dsmMetasAux
    BCDToCurrency = False
    Left = 160
    Top = 279
  end
  object mMetasAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Vendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Meta'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Pedidos'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Resultado'
        DataType = ftFloat
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Ano_Mes'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_Mes'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 152
    Data = {
      E80000009619E0BD010000001800000009000000000003000000E8000B49445F
      56656E6465646F7204000100000000000D4E6F6D655F56656E6465646F720100
      490000000100055749445448020002003C0008566C725F4D6574610800040000
      0000000B566C725F50656469646F7308000400000000000D566C725F52657375
      6C7461646F080004000000000003416E6F0400010000000000034D6573010049
      0000000100055749445448020002000F0007416E6F5F4D657301004900000001
      00055749445448020002001E00084E6F6D655F4D657301004900000001000557
      494454480200020014000000}
    object mMetasAuxID_Vendedor: TIntegerField
      DisplayLabel = 'ID Vendedor'
      FieldName = 'ID_Vendedor'
    end
    object mMetasAuxNome_Vendedor: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'Nome_Vendedor'
      Size = 60
    end
    object mMetasAuxVlr_Meta: TFloatField
      DisplayLabel = 'Vlr. Meta'
      FieldName = 'Vlr_Meta'
      DisplayFormat = '0.00'
    end
    object mMetasAuxVlr_Pedidos: TFloatField
      DisplayLabel = 'Vlr. Pedido'
      FieldName = 'Vlr_Pedidos'
      DisplayFormat = '0.00'
    end
    object mMetasAuxVlr_Resultado: TFloatField
      DisplayLabel = 'Resultado'
      FieldName = 'Vlr_Resultado'
      DisplayFormat = '0.00'
    end
    object mMetasAuxAno: TIntegerField
      FieldName = 'Ano'
    end
    object mMetasAuxMes: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'Mes'
      Size = 15
    end
    object mMetasAuxAno_Mes: TStringField
      DisplayLabel = 'Ano/M'#234's'
      FieldName = 'Ano_Mes'
      Size = 30
    end
    object mMetasAuxNome_Mes: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'Nome_Mes'
    end
  end
  object dsmMetasAux: TDataSource
    DataSet = mMetasAux
    Left = 432
    Top = 152
  end
  object sdsVendedor_Metas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT VEND.codigo ID_VENDEDOR, VEND.NOME NOME_VENDEDOR' +
      #13#10'FROM PESSOA VEND'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 32
  end
  object dspVendedor_Metas: TDataSetProvider
    DataSet = sdsVendedor_Metas
    Left = 424
    Top = 32
  end
  object cdsVendedor_Metas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor_Metas'
    Left = 464
    Top = 32
    object cdsVendedor_MetasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object cdsVendedor_MetasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
  end
  object dsVendedor_Metas: TDataSource
    DataSet = cdsVendedor_Metas
    Left = 504
    Top = 32
  end
end
