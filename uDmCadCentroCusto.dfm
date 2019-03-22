object dmCadCentroCusto: TdmCadCentroCusto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 190
  Height = 436
  Width = 807
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT B.*, case'#13#10'   WHEN NIVEL = 1 THEN B.DESCRICAO'#13#10'   WHEN NI' +
      'VEL = 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||B.DESCRICAO'#13#10'   WHEN NIVEL >' +
      ' 2 THEN LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||B.DESCRICAO'#13#10'   END A' +
      'S NOME_AUX'#13#10'FROM CENTROCUSTO B'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 24
    object sdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCentroCustoSUPERIOR2: TStringField
      FieldName = 'SUPERIOR'
    end
    object sdsCentroCustoCOD_PRINCIPAL2: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object sdsCentroCustoDT_CADASTRO2: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsCentroCustoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object sdsCentroCustoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsCentroCustoNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsCentroCustoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsCentroCustoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsCentroCustoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCentroCustoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 40
    end
    object sdsCentroCustoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsCentroCustoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 30
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 152
    Top = 24
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 216
    Top = 24
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsCentroCustoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsCentroCustoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsCentroCustoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object cdsCentroCustoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsCentroCustoNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsCentroCustoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCentroCustoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsCentroCustoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCentroCustoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 40
    end
    object cdsCentroCustoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsCentroCustoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 30
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 288
    Top = 24
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, DESCRICAO, NIVEL'#13#10'FROM CENTROCUSTO'#13#10'WHERE TIP' +
      'O = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 200
    object sdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsSuperiorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dspSuperior: TDataSetProvider
    DataSet = sdsSuperior
    Left = 128
    Top = 200
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 192
    Top = 200
    object cdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsSuperiorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dsSuperior: TDataSource
    DataSet = cdsSuperior
    Left = 264
    Top = 200
  end
  object sqProximo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(CODIGO)'
      'FROM CENTROCUSTO'
      'WHERE CODIGO LIKE '#39':C%'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 280
    object sqProximoMAX: TStringField
      FieldName = 'MAX'
    end
  end
  object sdsConsulta: TSQLDataSet
    CommandText = 
      'SELECT B.*, case'#13#10'   WHEN NIVEL = 1 THEN B.DESCRICAO'#13#10'   WHEN NI' +
      'VEL = 2 THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||B.DESCRICAO'#13#10'   WHEN NIVEL >' +
      ' 2 THEN LPAD('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||B.DESCRICAO'#13#10'   END A' +
      'S NOME_AUX'#13#10'FROM CENTROCUSTO B'
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
    Top = 48
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsultaAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsConsultaCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsConsultaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsConsultaNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 32765
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 624
    Top = 48
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
    ReportOptions.CreateDate = 42423.001568946800000000
    ReportOptions.LastChange = 43542.474464305550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      ' cTipoConta : String;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxCentroCusto."TIPO"> = '#39'S'#39' then'
      '  begin'
      '    cTipoConta := '#39'Sint'#233'tica'#39';  '
      
        '    Memo5.Font.Style := fsBold;                                 ' +
        '                                   '
      
        '    Memo6.Font.Style := fsBold;                                 ' +
        '                                   '
      
        '    Memo7.Font.Style := fsBold;                                 ' +
        '                                 '
      '  end          '
      '  else'
      '  begin'
      '    cTipoConta := '#39'Anal'#237'tica'#39';   '
      
        '    Memo5.Font.Style := 0;                                      ' +
        '                              '
      
        '    Memo6.Font.Style := 0;                                      ' +
        '                              '
      
        '    Memo7.Font.Style := 0;                                      ' +
        '                            '
      '  end;            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 504
    Top = 208
    Datasets = <
      item
        DataSet = frxCentroCusto
        DataSetName = 'frxCentroCusto'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'EMPRESA'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 1
        ColumnWidth = 37.795275590551200000
        ColumnGap = 321.259842519685000000
        DataSet = frxCentroCusto
        DataSetName = 'frxCentroCusto'
        RowCount = 0
        object Memo5: TfrxMemoView
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."CODIGO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 75.590600000000000000
          Top = 1.000000000000000000
          Width = 449.764070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCentroCusto."NOME_AUX"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 638.740570000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cTipoConta]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 253.228510000000000000
          Top = 10.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relat'#195#179'rio Centro Custo')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.795610000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 323.598640000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 283.464750000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
        object TotalPages1: TfrxMemoView
          Left = 360.850650000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 344.173470000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'de')
          ParentFont = False
        end
        object EMPRESA: TfrxMemoView
          Left = 616.063390000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[EMPRESA]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 638.740570000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tipo')
          ParentFont = False
        end
      end
      object EMPRESA1: TfrxMemoView
        Left = 3.779530000000000000
        Top = 16.338590000000000000
        Width = 226.771800000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[EMPRESA]')
        ParentFont = False
      end
    end
  end
  object frxCentroCusto: TfrxDBDataset
    UserName = 'frxCentroCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TIPO=TIPO'
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'NIVEL=NIVEL'
      'APROPRIACAO=APROPRIACAO'
      'SUPERIOR=SUPERIOR'
      'COD_PRINCIPAL=COD_PRINCIPAL'
      'DT_CADASTRO=DT_CADASTRO'
      'NOME_AUX=NOME_AUX')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 504
    Top = 272
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 594
    Top = 164
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 626
    Top = 164
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 666
    Top = 164
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 706
    Top = 164
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 704
    Top = 112
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 664
    Top = 112
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsUFQTD_DIGITOS_IE: TIntegerField
      FieldName = 'QTD_DIGITOS_IE'
    end
    object cdsUFACEITA_ISENTO: TStringField
      FieldName = 'ACEITA_ISENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 624
    Top = 112
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 112
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_END_CCUSTO'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 360
    Top = 128
    object qParametros_FinUSA_END_CCUSTO: TStringField
      FieldName = 'USA_END_CCUSTO'
      FixedChar = True
      Size = 1
    end
  end
end
