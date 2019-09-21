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
    object sdsCentroCustoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsCentroCustoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsCentroCustoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object sdsCentroCustoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object sdsCentroCustoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sdsCentroCustoVLR_CONTRATO: TFloatField
      FieldName = 'VLR_CONTRATO'
    end
    object sdsCentroCustoCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsCentroCustoEMAIL_COMRAS: TStringField
      FieldName = 'EMAIL_COMRAS'
      Size = 150
    end
    object sdsCentroCustoVLR_CONTRATO_SERV: TFloatField
      FieldName = 'VLR_CONTRATO_SERV'
    end
    object sdsCentroCustoCEI: TStringField
      FieldName = 'CEI'
      Size = 18
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
    Top = 22
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
    object cdsCentroCustoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsCentroCustoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsCentroCustoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsCentroCustoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsCentroCustoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsCentroCustoVLR_CONTRATO: TFloatField
      FieldName = 'VLR_CONTRATO'
    end
    object cdsCentroCustoCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsCentroCustoEMAIL_COMRAS: TStringField
      FieldName = 'EMAIL_COMRAS'
      Size = 150
    end
    object cdsCentroCustoVLR_CONTRATO_SERV: TFloatField
      FieldName = 'VLR_CONTRATO_SERV'
    end
    object cdsCentroCustoCEI: TStringField
      FieldName = 'CEI'
      Size = 18
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
    object cdsConsultaVLR_CONTRATO: TFloatField
      FieldName = 'VLR_CONTRATO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaVLR_CONTRATO_SERV: TFloatField
      FieldName = 'VLR_CONTRATO_SERV'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaCEI: TStringField
      FieldName = 'CEI'
      Size = 18
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
    ReportOptions.CreateDate = 42052.436473541700000000
    ReportOptions.LastChange = 43628.716694224500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '//  Memo38.Text := <frxPedidoImp_Itens."PERC_ICMS">;'
      '//  if (<frxPedidoImp_Itens."PERC_TRIBICMS"> > 0) and'
      '  //   (<frxPedidoImp_Itens."PERC_TRIBICMS"> <> 100) then'
      '  //begin'
      
        '//    Memo38.Text := FormatFloat('#39'0'#39',<frxPedidoImp_Itens."PERC_I' +
        'CMS">) + '#39' *'#39';'
      '  //  vBaseRed    := True;'
      '//  end;'
      ''
      ''
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
        DataSetName = 'frxPedidoImp'
      end
      item
        DataSetName = 'frxPedidoImp_Cli'
      end
      item
        DataSetName = 'frxPedidoImp_Itens'
      end
      item
        DataSetName = 'frxTriCCusto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 8.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 264.567100000000000000
        ParentFont = False
        Top = 767.244590000000000000
        Width = 733.228820000000000000
        object Shape12: TfrxShapeView
          Width = 733.228820000000000000
          Height = 120.944960000000000000
        end
        object Memo54: TfrxMemoView
          Left = 580.268090000000000000
          Top = 3.559060000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp."VLR_ITENS"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 580.268090000000000000
          Top = 34.133890000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp."VLR_IPI"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 580.488560000000000000
          Top = 50.252010000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 429.086890000000000000
          Top = 3.559060000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Sub. Total:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 429.086890000000000000
          Top = 34.133890000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'IPI 5%')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 425.307360000000000000
          Top = 50.252010000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Geral:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 733.228322050000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line5: TfrxLineView
          Top = 65.811070000000000000
          Width = 733.228322050000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo80: TfrxMemoView
          Left = 5.338590000000000000
          Top = 104.385900000000000000
          Width = 748.346940000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            
              'Obs: Constar na nota o endere'#195#167'o de entrega e anexar Autoriza'#195#167#195 +
              #163'o de dep'#195#179'sito e Termo de autoriza'#195#167#195#163'o  de Faturamento direto ' +
              'na NF.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 67.811070000000000000
          Width = 449.764070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cond. Pagto: [frxPedidoImp."NOME_CONDPGTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.929190000000000000
          Width = 449.764070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Prazo Entrega: [frxPedidoImp."DTENTREGA"]')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          Top = 125.283550000000000000
          Width = 733.228820000000000000
          Height = 40.440944880000000000
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Top = 148.740260000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'APROVA'#195#8225#195#8226'ES: ')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 106.606370000000000000
          Top = 148.740260000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '(Assinatura e carimbo do eng'#194#186' da obra)')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 505.102660000000000000
          Top = 128.063080000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape14: TfrxShapeView
          Top = 169.976500000000000000
          Width = 733.228820000000000000
          Height = 40.440944880000000000
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 193.433210000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'APROVA'#195#8225#195#8226'ES: ')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 106.606370000000000000
          Top = 193.433210000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '(Assinatura e carimbo do fornecedor principal)')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 505.102660000000000000
          Top = 171.756030000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape15: TfrxShapeView
          Top = 213.771800000000000000
          Width = 733.228820000000000000
          Height = 40.440944880000000000
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 237.228510000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'APROVA'#195#8225#195#8226'ES: ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 106.606370000000000000
          Top = 237.228510000000000000
          Width = 366.614410000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '(Assinatura e carimbo do fornecedor terceiro - faturamento diret' +
              'o)')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 505.102660000000000000
          Top = 215.551330000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo52: TfrxMemoView
          Left = 580.047620000000000000
          Top = 18.897650000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp."VLR_DESCONTO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 428.866420000000000000
          Top = 18.897650000000000000
          Width = 151.181151180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Desconto:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 642.520100000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSetName = 'frxPedidoImp'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 14.740157480000000000
        Top = 733.228820000000000000
        Width = 733.228820000000000000
        DataSetName = 'frxPedidoImp_Itens'
        RowCount = 0
        object Memo45: TfrxMemoView
          Width = 64.251985590000000000
          Height = 15.118120000000000000
          DataSetName = 'frxPedidoImp_Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxPedidoImp_Itens."QTD"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 64.252010000000000000
          Width = 45.354335590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxPedidoImp_Itens."UNIDADE"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 109.362204720000000000
          Width = 472.062967720000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[frxPedidoImp_Itens."NOMEPRODUTO"] - [frxPedidoImp_Itens."NOME_C' +
              'OR_COMBINACAO"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 581.842920000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp_Itens."VLR_UNITARIO"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 657.433520000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPedidoImp_Itens."VLR_TOTAL"] ')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 38.551181100000000000
        Top = 676.535870000000000000
        Width = 733.228820000000000000
        object Memo41: TfrxMemoView
          Top = 23.118120000000000000
          Width = 64.251985590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qtde.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 64.252010000000000000
          Top = 23.118120000000000000
          Width = 45.354335590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unid.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 109.362204720000000000
          Top = 23.118120000000000000
          Width = 472.062967720000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Material')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 581.842920000000000000
          Top = 23.118120000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unit. R$')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 657.433520000000000000
          Top = 23.118120000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total R$')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Top = 8.000000000000000000
          Width = 733.228331810000000000
          Height = 15.118110240000000000
        end
        object Memo27: TfrxMemoView
          Left = 253.228510000000000000
          Top = 9.133858270000000000
          Width = 185.196970000000000000
          Height = 13.984251970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LISTA DE MATERIAIS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 566.929500000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape3: TfrxShapeView
          Top = 8.000000000000000000
          Width = 733.228331810000000000
          Height = 56.692950000000000000
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 14.559060000000000000
          Width = 143.622140000000000000
          Height = 41.574830000000000000
          Picture.Data = {
            0A544A504547496D61676524100000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080028008D03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFA
            9A65B7899DD9511016666380A07524D7E757ED9FFF0005F7D0BE18F882F3C3BF
            09747B3F195FD9B98A7D72F6565D291C64110AA61EE307F8832271C161CD753F
            F05AFF00DA175FB7D17C11F02FC1576969E26F8C17AB6575319BC9F2EC9A4484
            465FAA2CD2B85661FC11C83BD79BFC02FF008373B4AD3C4173F137C7577A932F
            DFD33C3B0FD960FA1B89033B0FF7513EB5F2F9A6331F5AB3C265ABE1F8A5A697
            E9AF97AB3FA0FC3CE16E0FCAF2DA7C49C7551B55B9BD8D04A4DCE317CAE72E5E
            9CC9A8A6E31D2EDB4D23E62D47FE0B9BFB46DE6A7E72789FC3B668C4916D0E81
            6E63C7A7CFB9FF00F1EAF72FD993FE0E1DD774ED62DAC3E2DF85EC2FF4C90849
            358F0FC6D15C5BF3F7DED99996403BEC653E8A7A57D93A27EC19FB2E7C36F0E4
            9E0F7F07FC3AFF00898285923D4E78E7D46E08EFE6CAE6607FDD618AF10F8F1F
            F06F7FC34F1EC72DF7C3DF11EB5E09B994178EDA56FED4D389EC00722551F490
            FD2BCBFECECF687EF28D7E77D55EFF009E9F91FA04B8DFC23CD93C0E63953C25
            397C351535176EF7A4DCAFE569AEFD8FBABE1A7C4CD03E3178174DF13785F55B
            3D6F41D5E113DA5EDABEE8E653FA820E415201041040208ADDAFCB7FF826FDCF
            8C7FE09A7FB7849FB3CF8DF57D3B53D13C7B66353D324B299DADA0BC2B214911
            5C06432AC3223A639648CE4F53F5B7FC14D7C73F1C7C01F08742BCF813A6DC6A
            9E207D6162D46282C21BD75B430CA776C938C79823E473CFA57D261736F69849
            57A907CD0D2515ABBAEDF99F85F117873F54E23A394607150950C4A53A35A6F9
            212A72BD9C9DB469A717A6EB6573E92A2BF157E317FC151BF6C6FD9EB54B3B2F
            1CCF1F856EF5085AE2DA1D43C35688D3C6A76B32E01E01E2BD33E0F7ED51FB7A
            F8FF00C4BE13B97F0EEA3378675ABCB2964BC1E1AB28E192CA5910B4BBFF0085
            4C4C4E7B0AE18714E1E73F671A73BF6E5DBD753EB317F47BCEB0D8558DAD8FC1
            AA72BB8CBDB34A56DF95B85A5F267EAF515F8D9E36FF0082ADFED41E2DFDA9FC
            55E07F016A363AA4F1788752B0D234BB4F0FDB4D33C36F34A15416196DB14792
            49EC4D7A07C3DFDA3FFE0A017FF107408358F096B11E8F3EA96B1EA0EDE17B34
            096CD32094960723085B91D2AA1C4F879C9C614E6ECED751BAFCCC715E006738
            5A31AB8CC76129B9454D46759C6566BB387CBB5D5AE7EA9D15F8C917FC1723E3
            37C33FDA5F518F5CBED27C45E0BD1FC45776773A626950C134B651DCC91E2395
            006122A00549C8240C8E6BF45BF6CCFDAA67F0BFFC13BFC4DF167E1A6B3672CB
            FD916FA9E8DA8792B71115926897251B8276BB02A790720F22BAB099F617114E
            A4E9DFDC4DB4F7B2EDA9E0711F839C41926330384C672358C946109C5B705293
            49464DC534F54F67757B5ECEDF42D15F8E1A47FC15F7E3D5DFEC6FAFF8BDFC4F
            A49D7EC7C6D61A2C33FF00625B6C5B596C2EA67429B70497890EEEA318EF547C
            3FFF000532FDB4F53F868BE3DB3B19758F06466467D521F08C3359111B14937B
            44372AAB2904F18C1E6B8BFD6CC269684DDD5F44B6FBCFAAFF008970E245CFED
            71386872CFD9FBD5251BCACA4946F4F56D3D16FA3D0FD9DA2BE2EFF8262FFC15
            BEC3F6DDD4A4F08789F4DB4F0E78FEDED9AEA14B590B596B30AFDF787712C8EA
            082D192DC7CC188076F9D7FC1647FE0A7FE37FD963E2C7873C0DF0D356D3F4BD
            4934F3AA6B7732D94576E82462B042164055784772719C14E4739F42A679848E
            13EBA9DE1B69BDFB5BB9F1982F08F892BF12FF00AAB3A4A9E22CE5793F73952B
            F373454AF17B2693F79D9D9DEDFA2D457C27FF00045CFF008287F8B3F6C3B3F1
            AF87BE216A969A9F8A341921D42CA68ACE2B5F3ACA41B197646029F2E55EB8CF
            EF96BEECAECC0E369E2E82C452D99F2FC5FC298EE1BCDAAE4F98DBDA53B5DC6E
            E2D34A49A6D26D59F65D8FC6DFF82F678835DF02FF00C1407C25AE585E5C69F7
            7A7786ACAEF48BB84E1ED658AEEE5B7A1E9B95F07F2AF07FD9CBF681F1EFC7DF
            DAF7E18697E37F1B78B7C57A5EA9E2AD3ADAF2C752D5A79AD6EA27B84568DE2D
            DB0A90482318C57E90FF00C1737F628D47F68AF81DA6F8E3C316525F789BE1EF
            9B24F6B0A6E9AFB4E9306654039678D91640BDC79807240AFC9CFD91FC6BA5FC
            3FFDA9BE1AF88B58BC4B2D1746F1369F7F7B74CA596DE08E7467908009202827
            804F15F9AE754EAE1F357CEDA84E49F935A5FEE3FBBBC26C7E5F9D787D0787A7
            196230D4AA527EEA738C92938DB4E65CCAD256DDDFAA67EF6CBFF04FCF819713
            1924F843F0E24909C977F0F5AB31FC4A66BF2EBFE0B17A85DFECA3FB6869BA6F
            C30BED47E1E69DFF0008C5A5C9B4F0E5DC9A6C06569EE41731C4CABB885519C7
            4515FA31FF000F6DFD9C7FE8AC7873FEF99FFF008DD7E58FFC1663F682F06FED
            29FB5D597883C0DAF5AF88F4687C396B64F776CAE23132CD70CC9F300490AE87
            D39AF7B89ABE0FEA77C34A3CD75F0B57FC0FC7BC06CA789DF145B3EA35FD87B3
            9FF1A35392FA5BE35CB7EC717FB2BFC5BF1AFC77FF008282FC1CD57C49E21D57
            C4DAF41E24D32D62BCBF97CE996DE39F7942D8C950AD29E7D4D7F41D5F907FF0
            411FD8AF50F1BFC5A6F8C9AD5A3C3E1CF0C24B6BA0B4AB81A8DF3A98E49533D5
            2242EBBBBBBF1CA1AFD7CAEBE10A156184956ABF6DDF5EDDFE67CE7D26739CBF
            11C45472CCBD46D85A7C92E54925272727156D3DD56BA5B36D6E99F905FF0007
            23FF00C978F873FF0062D5E7FE942D7E9E7EC99FF26ADF0CFF00EC54D2FF00F4
            8E2AF85FFE0B8FFB127C54FDAA3E2F782751F87FE10BAF1259697A1DCDA5D4B1
            5DDBC22195A656552259149C819E322BEF6FD9CFC357DE0CFD9F3C09A3EA76ED
            69A9693E1DD3ECEEE0660C619A3B68D1D0904838604641238ADB2DA35239AE26
            A4A2D45DACEDA3D3A33CDE3CCD7035FC39C830742B425569BABCD0524E51BC9D
            B9A29DE37E9748FC1CD16EBE21D97FC143BC492FC284BA7F880BE2BD6FFB256D
            9217949F36E7CDC09BF767F75E667776CF7AFB2FE0778A7F6FD9FE3678393C55
            6BE251E177D72C975932D9690A82C8CE9E7EE283701E5EECEDE7D39AF1BF157F
            C13CBF6A6F85FF00B5B789FC73E04F06EA5697EBE21D4AFB4AD56CF50D3DF315
            C4B2E1956493F8A2908219723278CD7AA7C3DB4FF8285AFC42F0F9D65BC4FF00
            D8C354B53A8EF9346DBF66F393CECED3BB1E5EEE9CFA735F2B80A35A8C9AA91A
            CBDEBFB8AD1F9FF5B1FD0FC6199E5B99E1A94F055B2AAA9505172C44A32AC9D9
            E906AF64AF749EAA573E55FD9DBF670B0FDADBFE0A03E25F87F777525847AEDF
            F88CDADDC67FE3D6E22FB4CB04847F128745DCBDD722B7FC33FB4BF89BF66FFD
            987E377ECD1F1060B9B591E365D263605FFB37504B98A496053FF3C27406546E
            99E7FE5A71F477EC07FF0004FF00F8BFF07BFE0A7C3C73E21F045E695E105D4F
            5D986A2F796CE9E5CEB70213B5652FF36F4FE1E33CE2BD9BFE0B17FF0004C1D4
            FF006AFB6D3BC7BF0EF4FB6B8F1F6988B67A8591952DFF00B6ACC6769DEC42F9
            D113F2EE2372315CFCAA2AF0F93E2960E788A516AA2724D59FBD16974EBE5FE7
            639B39F137209F1461324CC6BD3A9829D2A1523514E2D51C453A93945B926D46
            E928CEFB2B5ED172BFE65681FF0028ECF157FD94BD2BFF004D77D5FAD3FF0004
            3450FF00F04E1F0A02010750D50107BFFA6CD5F07E8FFF0004C2F8F36DFB1478
            87C30FF0EAFD75EBCF1D69DAB4367F6FB3DCF6B1E9F7713CBBBCEDB80F220C13
            9F9BA62A4F01FEC79FB71F87FE15A7C39D134FF137877C20C6506CA2D6B4FB48
            80998B4A1A5493CDDAC59891BBB9E3B5194BC460ABC6B4A84E5EE5ACA2F7BDC7
            E244324E2CCA2BE594336C352FF6A5539A75616E454B95F2A4F5777A6CB47AA3
            88F8613697E18FF82CF593F81A482DFC3D65F11E736CF6AD8B78AC56593ED5B4
            8E3CA58BCFF6D83D2A1F875F157C25FB5F7FC152A5F1EFC4AD7349D13C0F77AD
            CDABCCFABCCA96F2595B0DB6768777077848415EE37D7D1FE10FF8238F8FBF66
            0FD973C5DACE93696FE32F8CBE2CB0FF00847B4FB4D36E6386D3C356573F25E4
            AB2CC53CC99A0DF1EE18DBBF0A0E4B55FF00D84BFE083DA7789FE196A57DF1D3
            4CD7B47F10BEA0D169FA769FABC6820B5545C3BB445D4B3B97C0CF0147AD4D3C
            AF3073851F67BC9D469DF95764DFE9D9A37C7F885C1B4B0D89CC9E3AEE146383
            8CE0E2EBC96AE752106D3B5DC6D37A73424D5D357F9A7F641F8B7A27EC5FFF00
            054FB69B41D7EC758F025CEBB3E82352B59FCCB6B9D32F1C085CB0E0F96CD016
            F431357EEFD7E4B7EDFBFF00042BBEF070F0DDC7C04D1F5BD762B8F3E1D62D6F
            B5784CB6CC36B43323CAC9C1F9D4804F214FAD7E95FECB77FE2DD47F678F07B7
            8F34C9347F1945A64306B16CF324C45CC6363BEF466521CAEF183FC75F47C374
            71385A957095E1657E64D5F975DD27F77E27E15E3AE6791E7F83CBB88F28C4AA
            937174AA464E2AAFB8DF2CE74D36D5DF3DDED671B6E8EFABE1EFDB47FE0871E0
            0FDA3FC4179E25F07DFB7C3CF13DF334D74B6F6C27D32FA53C977832A63727AB
            46C01EA549E68A2BE871981A18A87B3C447997F5B1F8A70C717671C3B8BFAEE4
            D5DD29ECEDAA6BB4A2EF192F269F73E45D4BFE0DE5F8D36BAA7936DE23F87777
            6A4FFC7C9BCBA8B03DD3C827F535EE3FB327FC1BC5A2785F5AB7D4FE2B78AFFE
            129581C3FF0062E8F13DAD94C460E25998F9AEBEAAA23CFAF6A28AF228F0AE5D
            4E7CFC97F5775FD7A9FA6E69F488E37C6E19E1BEB2A9A7A37084632FFC0B571F
            58D99FA37E18F0C69DE0AF0F59691A458DA699A5E9D0ADBDADA5AC42286DE351
            85545180001D855FA28AFA24925647E2339CA72739BBB7BB0A28A282428A28A0
            028A28A0028A28A0028A28A0028A28A00FFFD9}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo90: TfrxMemoView
          Left = 230.551330000000000000
          Top = 14.559060000000000000
          Width = 321.260050000000000000
          Height = 41.574830000000000000
          Memo.UTF8 = (
            'F.014-SUP - Modelo de Autoriza'#195#167#195#163'o de Faturamento'
            '                                  Direto')
        end
        object Shape1: TfrxShapeView
          Left = 580.913361420000000000
          Top = 8.314960629921260000
          Width = 151.937007870000000000
          Height = 30.236220470000000000
        end
        object Shape2: TfrxShapeView
          Left = 580.913361420000000000
          Top = 38.795300000000000000
          Width = 151.937007870000000000
          Height = 26.078740157480300000
        end
        object Memo91: TfrxMemoView
          Left = 597.945270000000000000
          Top = 8.779530000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Elabora'#195#167#195#163'o/Revis'#195#163'o:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 604.945270000000000000
          Top = 23.897650000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '30/03/2015 / 17/10/2018')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 592.386210000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Revis'#195#163'o: 02')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 68.252010000000000000
          Width = 733.228331810000000000
          Height = 18.897650000000000000
        end
        object Memo94: TfrxMemoView
          Left = 185.196970000000000000
          Top = 71.251968500000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LIBERA'#195#8225#195#402'O N'#194#186'  [frxTriCCusto."NUM_CONTRATO"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 501.457020000000000000
          Top = 71.252010000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA: [frxPedidoImp."DTEMISSAO"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 495.118430000000000000
          Top = 68.606299210000000000
          Height = 18.897637800000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape5: TfrxShapeView
          Top = 90.708720000000000000
          Width = 733.228331810000000000
          Height = 83.149660000000000000
        end
        object Line7: TfrxLineView
          Left = 0.559060000000000000
          Top = 109.047310000000000000
          Width = 732.850369290000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo96: TfrxMemoView
          Left = 200.874150000000000000
          Top = 93.708720000000000000
          Width = 389.291590000000000000
          Height = 13.984251970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'DADOS DO FORNECEDOR TERCEIRO (FATURAMENTO DIRETO)')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 4.338590000000000000
          Top = 111.606370000000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Raz'#195#163'o Social:')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 4.338590000000000000
          Top = 127.590551180000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 4.338590000000000000
          Top = 142.708661420000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C.N.P.J:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 4.338590000000000000
          Top = 159.204724410000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'I.E:')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 79.267780000000000000
          Top = 109.803149610000000000
          Height = 63.496060550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo101: TfrxMemoView
          Left = 79.929190000000000000
          Top = 111.401623620000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."NOME_CLIENTE"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 79.929190000000000000
          Top = 127.275639370000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxPedidoImp."END_CLIENTE"], [frxPedidoImp."NUM_END_CLIENTE"] [' +
              'frxPedidoImp."COMPL_END_CLIENTE"] - [frxPedidoImp."BAIRRO_CLIENT' +
              'E"] - [frxPedidoImp."CIDADE_CLIENTE"] -  [frxPedidoImp."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo103: TfrxMemoView
          Left = 79.929190000000000000
          Top = 142.771702360000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."CNPJ_CPF_CLIENTE"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 79.929190000000000000
          Top = 157.889812600000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."INSCR_EST_CLIENTE"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 581.385804800000000000
          Top = 110.803149610000000000
          Height = 63.496060550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo105: TfrxMemoView
          Left = 583.165740000000000000
          Top = 109.826840000000000000
          Width = 147.401670000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Telefone: ([frxPedidoImp."DDD_CLIENTE"]) [frxPedidoImp."FONE_CLI' +
              'ENTE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo106: TfrxMemoView
          Left = 583.165740000000000000
          Top = 126.811021180000000000
          Width = 147.401670000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 1.000000000000000000
          Memo.UTF8 = (
            'Contato: [frxPedidoImp."NOME_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          Left = 583.165740000000000000
          Top = 142.929131420000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."EMAIL_NFE_CLIENTE"]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Top = 178.417440000000000000
          Width = 733.228331810000000000
          Height = 83.149660000000000000
        end
        object Line10: TfrxLineView
          Left = 0.559060000000000000
          Top = 196.756030000000000000
          Width = 732.850369290000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 200.874150000000000000
          Top = 181.417440000000000000
          Width = 389.291590000000000000
          Height = 13.984251970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'DADOS DO FORNECEDOR PRINCIPAL')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 4.338590000000000000
          Top = 199.315090000000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Raz'#195#163'o Social:')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 4.338590000000000000
          Top = 215.299271180000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 4.338590000000000000
          Top = 230.417381420000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C.N.P.J:')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 4.338590000000000000
          Top = 245.913444410000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'I.E:')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 79.267780000000000000
          Top = 197.511869610000000000
          Height = 63.496060550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo111: TfrxMemoView
          Left = 79.929190000000000000
          Top = 198.708710240000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."NOME_FILIAL"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 79.929190000000000000
          Top = 216.472489760000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxPedidoImp."END_FILIAL"], [frxPedidoImp."NUM_END_FILIAL"] [fr' +
              'xPedidoImp."COMPL_END_FILIAL"] - [frxPedidoImp."BAIRRO_FILIAL"] ' +
              '- [frxPedidoImp."CIDADE_FILIAL"] - [frxPedidoImp."UF_FILIAL"]  C' +
              'ep: [frxPedidoImp."CEP_FILIAL"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo113: TfrxMemoView
          Left = 79.929190000000000000
          Top = 231.212647240000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."CNPJ_CPF_FILIAL"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 79.929190000000000000
          Top = 247.842568500000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxPedidoImp."INSCR_EST_FILIAL"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 581.291338580000000000
          Top = 197.511869610000000000
          Height = 63.496060550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo115: TfrxMemoView
          Left = 583.181102360000000000
          Top = 197.535560000000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Telefone: ([frxPedidoImp."DDD_FILIAL"]) [frxPedidoImp."FONE_FILI' +
              'AL"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo117: TfrxMemoView
          Left = 583.181102360000000000
          Top = 247.535501420000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."EMAIL_COMRAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Shape7: TfrxShapeView
          Top = 266.567100000000000000
          Width = 733.228331810000000000
          Height = 113.385900000000000000
        end
        object Line1: TfrxLineView
          Left = 0.559060000000000000
          Top = 284.905690000000000000
          Width = 732.850369290000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 200.874150000000000000
          Top = 269.567100000000000000
          Width = 389.291590000000000000
          Height = 13.984251970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'DADOS PARA FATURAMENTO (EMPRESA CONTRATANTE)')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 4.338590000000000000
          Top = 287.464750000000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Raz'#195#163'o Social:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 4.338590000000000000
          Top = 303.448931180000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 4.338590000000000000
          Top = 318.567041420000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C.N.P.J:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 4.338590000000000000
          Top = 334.063104410000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'I.E:')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 79.267780000000000000
          Top = 285.661529610000000000
          Height = 93.732300550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 79.929190000000000000
          Top = 286.771702360000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."NOME_TRIANGULAR"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.929190000000000000
          Top = 302.267765350000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxTriCCusto."END_TRI"], [frxTriCCusto."NUM_END_TRI"] [frxTriCC' +
              'usto."COMPL_TRI"] - Cep: [frxTriCCusto."CEP_TRI"] - [frxTriCCust' +
              'o."BAIRRO_TRI"] - [frxTriCCusto."CID_TRI"] - [frxTriCCusto."UF_T' +
              'RI"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo10: TfrxMemoView
          Left = 79.929190000000000000
          Top = 316.787511420000000000
          Width = 498.897960000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."CNPJ_TRI"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 79.929190000000000000
          Top = 332.283574410000000000
          Width = 495.118430000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."INSC_TRI"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 581.291338580000000000
          Top = 285.661529610000000000
          Height = 93.732300550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 584.386210000000000000
          Top = 285.685220000000000000
          Width = 147.401670000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone: ([frxTriCCusto."DDD_TRI"]) [frxTriCCusto."FONE_TRI"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Left = 584.386210000000000000
          Top = 320.126101420000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."EMAIL_CCUSTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Shape8: TfrxShapeView
          Top = 385.291590000000000000
          Width = 733.228331810000000000
          Height = 109.606370000000000000
        end
        object Line3: TfrxLineView
          Left = 0.559060000000000000
          Top = 403.630180000000000000
          Width = 732.850369290000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 200.874150000000000000
          Top = 388.291590000000000000
          Width = 389.291590000000000000
          Height = 13.984251970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'DADOS PARA ENTREGA DO MATERIAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 4.338590000000000000
          Top = 406.189240000000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Obra:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 4.338590000000000000
          Top = 429.732481180000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 563.709030000000000000
          Top = 407.834821420000000000
          Width = 45.354360000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C.N.P.J:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 4.338590000000000000
          Top = 479.244304410000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Email:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 79.267780000000000000
          Top = 404.315009450000000000
          Height = 89.952755910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 79.929190000000000000
          Top = 405.448867720000000000
          Width = 472.441250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."NOME_CCUSTO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 79.929190000000000000
          Top = 423.590600000000000000
          Width = 476.220780000000000000
          Height = 33.259854720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxTriCCusto."END_CCUSTO"], [frxTriCCusto."NUM_END_CCUSTO"] [fr' +
              'xTriCCusto."COMPL_CCUSTO"] [frxTriCCusto."BAIRRO_CCUSTO"] - [frx' +
              'TriCCusto."CID_CCUSTO"] - [frxTriCCusto."UF_CCUSTO"] - Cep: [frx' +
              'TriCCusto."CEP_CCUSTO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Left = 611.622450000000000000
          Top = 407.055291420000000000
          Width = 117.165430000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."CNPJ_CCUSTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 79.929190000000000000
          Top = 479.527607870000000000
          Width = 472.441250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."EMAIL_CCUSTO"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 558.708624800000000000
          Top = 404.386019610000000000
          Height = 89.952770550000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo23: TfrxMemoView
          Left = 565.488560000000000000
          Top = 459.874064570000000000
          Width = 147.401670000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Telefone: ([frxTriCCusto."DDD_CCUSTO"]) [frxTriCCusto."FONE_CCUS' +
              'TO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Shape9: TfrxShapeView
          Top = 499.559370000000000000
          Width = 733.228331810000000000
          Height = 30.236240000000000000
        end
        object Memo25: TfrxMemoView
          Left = 7.559060000000000000
          Top = 502.338900000000000000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'Este faturamento refere-se a compra de parte do material pertine' +
              'nte ao Termo de Contrata'#195#167#195#163'o N.'#194#176' [frxTriCCusto."NUM_CONTRATO"]' +
              '  , '
            
              'vinculado ao Contrato De Presta'#195#167#195#163'o de Servi'#195#167'os N'#194#186' Numero do ' +
              'Contrato [frxPedidoImp."NUM_DOC"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Shape10: TfrxShapeView
          Top = 533.575140000000000000
          Width = 733.228331810000000000
          Height = 30.236240000000000000
        end
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Top = 536.354670000000000000
          Width = 464.882190000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'Prezado fornecedor, venho atrav'#195#169's desta liberar o faturamento p' +
              'ara empresa supra citada do valor de R$ '
            
              'conforme total da tabela abaixo. N'#195#163'o faturar valor diferente de' +
              'ste sem a devida autoriza'#195#167#195#163'o.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Top = 352.937230000000000000
          Width = 71.811070000000000000
          Height = 25.700794720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o de'
            'Cobran'#195#167'a')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 79.370130000000000000
          Top = 350.378170000000000000
          Width = 498.897960000000000000
          Height = 25.700794720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxTriCCusto."END_TRI_COB"], [frxTriCCusto."NUM_END_COB"] [frxT' +
              'riCCusto."COMPL_TRI_COB"] - Cep: [frxTriCCusto."CEP_TRI_COB"] - ' +
              '[frxTriCCusto."BAIRRO_TRI_COB"] - [frxTriCCusto."CID_TRI_COB"] -' +
              ' [frxTriCCusto."UF_TRI_COB"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          Left = 5.559060000000000000
          Top = 458.764070000000000000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 81.149660000000000000
          Top = 459.874064570000000000
          Width = 472.441250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTriCCusto."CONTATO_CCUSTO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 564.149970000000000000
          Top = 436.086890000000000000
          Width = 30.236240000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 612.063390000000000000
          Top = 435.307360000000000000
          Width = 117.165430000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTriCCusto."CEP_CCUSTO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 218.315090000000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato: [frxTriCCusto."CONTATO_COMPRAS"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line18: TfrxLineView
          Top = 125.385900000000000000
          Width = 733.228346460000000000
          Color = clGray
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftTop]
        end
        object Line20: TfrxLineView
          Top = 143.283550000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line21: TfrxLineView
          Top = 156.622140000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line22: TfrxLineView
          Top = 215.094620000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line23: TfrxLineView
          Top = 231.212740000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line24: TfrxLineView
          Top = 246.330860000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line25: TfrxLineView
          Left = 3.779530000000000000
          Top = 303.023810000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line26: TfrxLineView
          Top = 318.141930000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line27: TfrxLineView
          Top = 333.260050000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line28: TfrxLineView
          Top = 350.157700000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          Top = 423.968770000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line30: TfrxLineView
          Top = 457.984540000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line31: TfrxLineView
          Top = 475.882190000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          Left = 582.047620000000000000
          Top = 159.401670000000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cep: [frxPedidoImp."CEP_CLIENTE"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 582.827150000000000000
          Top = 304.023810000000000000
          Width = 147.401670000000000000
          Height = 10.582674720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato: [frxTriCCusto."CONTATO_CCUSTO"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 471.000310000000000000
          Top = 536.220521260000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxPedidoImp."VLR_TOTAL"]')
          ParentFont = False
        end
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
      'NOME_AUX=NOME_AUX'
      'VLR_CONTRATO=VLR_CONTRATO'
      'VLR_CONTRATO_SERV=VLR_CONTRATO_SERV'
      'CEI=CEI')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 502
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
