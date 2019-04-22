object DMConsFat: TDMConsFat
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 324
  Top = 132
  Height = 445
  Width = 817
  object sdsFatAcum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.*,  (V.VLR_TOTAL + V.VLR_IPI) VLR_TOTAL_BRU,'#13#10'(V.VLR_TO' +
      'TAL + V.VLR_IPI) VLR_TOTAL_LIQ'#13#10'FROM VFAT_ACUM V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 48
  end
  object dspFatAcum: TDataSetProvider
    DataSet = sdsFatAcum
    Left = 128
    Top = 48
  end
  object cdsFatAcum: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_NOTA;CODCFOP'
    Params = <>
    ProviderName = 'dspFatAcum'
    Left = 160
    Top = 48
    object cdsFatAcumTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsFatAcumVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsFatAcumNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsFatAcumNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsFatAcumDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsFatAcumDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsFatAcumTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsFatAcumFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFatAcumUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsFatAcumID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsFatAcumVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsFatAcumVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsFatAcumVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsFatAcumVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsFatAcumVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
      DisplayFormat = '0.00'
    end
  end
  object dsFatAcum: TDataSource
    DataSet = cdsFatAcum
    Left = 200
    Top = 48
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.ID, F.NOME, F.NOME_INTERNO, F.CNPJ_CPF, F.PERC_IR, F.PE' +
      'RC_CSLL'#13#10'FROM FILIAL F'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 136
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 336
    Top = 136
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 375
    Top = 135
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
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 416
    Top = 136
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
    ReportOptions.CreateDate = 42992.427233402800000000
    ReportOptions.LastChange = 43549.478932754630000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 88
    Top = 177
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TIPO_MOV=TIPO_MOV'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'ID_PESSOA=ID_PESSOA'
      'NOME_CLIFORN=NOME_CLIFORN'
      'NUM_NOTA=NUM_NOTA'
      'DTEMISSAO=DTEMISSAO'
      'DTENTRADASAIDA=DTENTRADASAIDA'
      'TIPO_REG=TIPO_REG'
      'FILIAL=FILIAL'
      'UF_CLI=UF_CLI'
      'ID_CFOP=ID_CFOP'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ'
      'CODCFOP=CODCFOP'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_FRETE=VLR_FRETE'
      'DEVOLUCAO=DEVOLUCAO'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_CUSTO=VLR_CUSTO'
      'VLR_IR_VENDA=VLR_IR_VENDA'
      'VLR_CSLL_VENDA=VLR_CSLL_VENDA'
      'BASE_FCP_ST=BASE_FCP_ST'
      'BASE_ICMS_FCP=BASE_ICMS_FCP'
      'BASE_ICMS_FCP_DEST=BASE_ICMS_FCP_DEST'
      'VLR_ICMS_FCP_DEST=VLR_ICMS_FCP_DEST'
      'VLR_ICMS_FCP=VLR_ICMS_FCP'
      'VLR_FCP_ST=VLR_FCP_ST')
    DataSet = cdsFatAcum
    BCDToCurrency = False
    Left = 90
    Top = 233
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
    Left = 128
    Top = 177
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
    Left = 168
    Top = 177
  end
  object frxRichObject1: TfrxRichObject
    Left = 200
    Top = 177
  end
  object sdsCupomTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 48
  end
  object dspCupomTerminal: TDataSetProvider
    DataSet = sdsCupomTerminal
    Left = 336
    Top = 48
  end
  object cdsCupomTerminal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCupomTerminal'
    Left = 376
    Top = 48
    object cdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsCupomTerminar: TDataSource
    DataSet = cdsCupomTerminal
    Left = 416
    Top = 48
  end
  object sdsComprasServicos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select coalesce(PC.CODIGO, '#39#39') CONTA, coalesce(PC.NOME, '#39#39') NOME' +
      '_CONTA, NF.DTEMISSAO, P.CODIGO, P.FANTASIA NOME_CLI,'#13#10'       NF.' +
      'SERIE, NF.NUMNOTA, TC.CODCFOP, NF.ESPECIE, NF.VLR_NOTA - NF.VLR_' +
      'DESCONTO as VALOR_LIQUIDO, NF.VLR_ICMS,'#13#10'       NF.VLR_IPI, NF.V' +
      'LR_PIS, NF.VLR_COFINS, NF.VLR_NOTA, ID_CONTA_ORCAMENTO, '#39'NTE'#39' TI' +
      'PO_REGISTRO, NF.ID,'#13#10'       case'#13#10'         when CP.TIPO_CONDICAO' +
      ' = '#39'V'#39' then (select sum(coalesce(CD.QTDDIAS, 1))'#13#10'              ' +
      '                             from CONDPGTO_DIA CD'#13#10'             ' +
      '                              where NF.ID_CONDPGTO = CD.ID) / (s' +
      'elect count(coalesce(CD1.QTDDIAS, 1))'#13#10'                         ' +
      '                                                   from CONDPGTO' +
      '_DIA CD1'#13#10'                                                      ' +
      '                      where NF.ID_CONDPGTO = CD1.ID)'#13#10'         w' +
      'hen CP.TIPO_CONDICAO = '#39'F'#39' then (select first (1) datediff(day, ' +
      'NFS.DTEMISSAO,'#13#10'                                                ' +
      '            (select first (1) NFSP1.DTVENCIMENTO'#13#10'              ' +
      '                                               from NOTASERVICO_' +
      'PARC NFSP1'#13#10'                                                    ' +
      '         where NFSP1.ID = NFS.ID'#13#10'                              ' +
      '                               order by NFSP1.DTVENCIMENTO desc)' +
      ') as DIFERENCA'#13#10'                                           from ' +
      'NOTASERVICO NFS'#13#10'                                           left' +
      ' join NOTASERVICO_PARC NFSP on NFSP.ID = NFS.ID) / CP.QTD_PARCEL' +
      'A'#13#10'         else 0'#13#10'       end MEDIA_DIAS'#13#10'from NOTAFISCAL NF'#13#10'l' +
      'eft join CONTA_ORCAMENTO CO on CO.ID = NF.ID_CONTA_ORCAMENTO'#13#10'le' +
      'ft join PLANO_CONTABIL PC on PC.ID = CO.COD_CONTABIL'#13#10'left join ' +
      'PESSOA P on P.CODIGO = NF.ID_CLIENTE'#13#10'left join TAB_CFOP TC on T' +
      'C.ID = NF.ID_CFOP'#13#10'left join FILIAL FL on FL.ID = NF.FILIAL'#13#10'lef' +
      't join CONDPGTO CP on CP.ID = NF.ID_CONDPGTO'#13#10'where NF.TIPO_REG ' +
      '= '#39'NTE'#39' and'#13#10'      NF.DTEMISSAO between cast(:DATA_INICIAL as da' +
      'te) and cast(:DATA_FINAL as date) and'#13#10'      NF.FILIAL = :FILIAL' +
      ' and'#13#10'      NF.CANCELADA <> '#39'S'#39#13#10#13#10'union all'#13#10'select coalesce(PC' +
      '1.CODIGO, '#39#39') CONTA, coalesce(PC1.NOME, '#39#39') NOME_CONTA, cast(NFS' +
      '.DTEMISSAO as date), P1.CODIGO,'#13#10'       P1.FANTASIA NOME_CLI, NF' +
      'S.SERIE, NFS.NUMNOTA, '#39'9999'#39' CODCFOP, '#39'ESP'#39' ESPECIE,'#13#10'       NFS' +
      '.VLR_SERVICOS - NFS.VLR_DESCONTO_INC as VALOR_LIQUIDO1, NFS.VLR_' +
      'ICMS, cast('#39'0.00'#39' as numeric(15,2)) VALOR_IPI,'#13#10'       NFS.VLR_P' +
      'IS_CALC, NFS.VLR_COFINS_CALC, NFS.VLR_SERVICOS, ID_CONTA_ORCAMEN' +
      'TO, '#39'NS'#39' TIPO_REGISTRO,NFS.ID,'#13#10'       case'#13#10'         when CP1.T' +
      'IPO_CONDICAO = '#39'V'#39' then (select sum(coalesce(CD.QTDDIAS, 1))'#13#10'  ' +
      '                                          from CONDPGTO_DIA CD'#13#10 +
      '                                            where NFS.ID_CONDPGT' +
      'O = CD.ID) / (select count(coalesce(CD1.QTDDIAS, 1))'#13#10'          ' +
      '                                                                ' +
      '    from CONDPGTO_DIA CD1'#13#10'                                     ' +
      '                                         where NFS.ID_CONDPGTO =' +
      ' CD1.ID)'#13#10'         when CP1.TIPO_CONDICAO = '#39'F'#39' then (select fir' +
      'st (1) datediff(day, NFS.DTEMISSAO,'#13#10'                           ' +
      '                                  (select first (1) NFSP1.DTVENC' +
      'IMENTO'#13#10'                                                        ' +
      '      from NOTASERVICO_PARC NFSP1'#13#10'                             ' +
      '                                 where NFSP1.ID = NFS.ID'#13#10'      ' +
      '                                                        order by' +
      ' NFSP1.DTVENCIMENTO desc)) as DIFERENCA'#13#10'                       ' +
      '                     from NOTASERVICO NFS'#13#10'                     ' +
      '                       left join NOTASERVICO_PARC NFSP on NFSP.I' +
      'D = NFS.ID) / CP1.QTD_PARCELA'#13#10'         else 0'#13#10'       end MEDIA' +
      '_DIAS'#13#10'from NOTASERVICO NFS'#13#10'left join CONTA_ORCAMENTO CO1 on CO' +
      '1.ID = NFS.ID_CONTA_ORCAMENTO'#13#10'left join PLANO_CONTABIL PC1 on P' +
      'C1.ID = CO1.COD_CONTABIL'#13#10'left join PESSOA P1 on P1.CODIGO = NFS' +
      '.ID_CLIENTE'#13#10'left join FILIAL FL1 on FL1.ID = NFS.FILIAL'#13#10'left j' +
      'oin CONDPGTO CP1 on CP1.ID = NFS.ID_CONDPGTO'#13#10'where NFS.DTEMISSA' +
      'O between cast(:DATA_INICIAL as date) and cast(:DATA_FINAL as da' +
      'te) and'#13#10'      NFS.FILIAL = :FILIAL AND'#13#10'      NFS.STATUS_RPS <>' +
      ' '#39'2'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 301
    Top = 190
  end
  object dspComprasServicos: TDataSetProvider
    DataSet = sdsComprasServicos
    Left = 333
    Top = 190
  end
  object cdsComprasServicos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CONTA'
    Params = <>
    ProviderName = 'dspComprasServicos'
    OnCalcFields = cdsComprasServicosCalcFields
    Left = 372
    Top = 190
    object cdsComprasServicosCONTA: TStringField
      FieldName = 'CONTA'
      Size = 60
    end
    object cdsComprasServicosNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object cdsComprasServicosDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsComprasServicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsComprasServicosNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 30
    end
    object cdsComprasServicosSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsComprasServicosNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsComprasServicosCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsComprasServicosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsComprasServicosVALOR_LIQUIDO: TFloatField
      FieldName = 'VALOR_LIQUIDO'
    end
    object cdsComprasServicosVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsComprasServicosVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsComprasServicosVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsComprasServicosVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsComprasServicosVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsComprasServicosID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsComprasServicosMEDIA_DIAS: TFMTBCDField
      FieldName = 'MEDIA_DIAS'
      Precision = 15
      Size = 0
    end
    object cdsComprasServicosCTA_CONTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'CTA_CONTA'
      Size = 100
      Calculated = True
    end
    object cdsComprasServicosTIPO_REGISTRO: TStringField
      FieldName = 'TIPO_REGISTRO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsComprasServicosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsComprasServico: TDataSource
    DataSet = cdsComprasServicos
    Left = 418
    Top = 190
  end
  object sdsConsComprasServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.ID, A.CODIGO ||'#39' - '#39'|| A.DESCRICAO CONTA_ORCAMENTO'#13#10'FRO' +
      'M CONTA_ORCAMENTO A'#13#10'WHERE TIPO = '#39'A'#39'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 94
    Top = 109
  end
  object dspConsComprasServico: TDataSetProvider
    DataSet = sdsConsComprasServico
    Left = 132
    Top = 106
  end
  object cdsConsComprasServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsComprasServico'
    Left = 166
    Top = 106
    object cdsConsComprasServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsComprasServicoCONTA_ORCAMENTO: TStringField
      FieldName = 'CONTA_ORCAMENTO'
      Size = 73
    end
  end
  object dsConsComprasServico: TDataSource
    DataSet = cdsConsComprasServico
    Left = 197
    Top = 106
  end
  object frxComprasServicos: TfrxDBDataset
    UserName = 'frxComprasServicos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONTA=CONTA'
      'NOME_CONTA=NOME_CONTA'
      'DTEMISSAO=DTEMISSAO'
      'CODIGO=CODIGO'
      'NOME_CLI=NOME_CLI'
      'SERIE=SERIE'
      'NUMNOTA=NUMNOTA'
      'CODCFOP=CODCFOP'
      'ESPECIE=ESPECIE'
      'VALOR_LIQUIDO=VALOR_LIQUIDO'
      'VLR_ICMS=VLR_ICMS'
      'VLR_IPI=VLR_IPI'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_NOTA=VLR_NOTA'
      'MEDIA_DIAS=MEDIA_DIAS'
      'CTA_CONTA=CTA_CONTA')
    DataSource = dsComprasServico
    BCDToCurrency = False
    Left = 174
    Top = 232
  end
  object sdsConsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID_PESSOA, NOME_CLIFORN, SUM(VLR_DUPLICATA) VLR_DUPLICATA' +
      ', SUM(VLR_ICMS) VLR_ICMS, SUM(VLR_TOTAL) VLR_TOTAL,'#13#10'       SUM(' +
      'VLR_ICMSSUBST) VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI, SUM(VLR_FRET' +
      'E) VLR_FRETE,'#13#10'       SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, ' +
      'SUM(VLR_ICMS_UF_DEST) VLR_ICMS_UF_DEST, SUM(VLR_DESCONTO) VLR_DE' +
      'SCONTO,'#13#10'       SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS' +
      ', SUM(VLR_CUSTO) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA,'#13#10'   ' +
      '    SUM(VLR_CSLL_VENDA) VLR_CSLL_VENDA,'#13#10'       (SUM(V.VLR_TOTAL' +
      ') + SUM(V.VLR_IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU, SUM(V.VLR_' +
      'DUPLICATA) VLR_TOTAL_LIQ,'#13#10'       sum(coalesce(v.base_fcp_st,0))' +
      ' BASE_FCP_ST,'#13#10'       sum(coalesce(v.base_icms_fcp,0)) base_icms' +
      '_fcp,'#13#10'       sum(coalesce(v.base_icms_fcp_dest,0)) base_icms_fc' +
      'p_dest,'#13#10'       sum(coalesce(v.vlr_icms_fcp_dest,0)) vlr_icms_fc' +
      'p_dest,'#13#10'       sum(coalesce(v.vlr_icms_fcp,0)) vlr_icms_fcp,'#13#10' ' +
      '      sum(coalesce(v.vlr_fcp_st,0)) vlr_fcp_st'#13#10'FROM VFAT_ACUM V' +
      #13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 300
    Top = 291
  end
  object dspConsCliente: TDataSetProvider
    DataSet = sdsConsCliente
    Left = 333
    Top = 293
  end
  object cdsConsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PESSOA'
    Params = <>
    ProviderName = 'dspConsCliente'
    Left = 365
    Top = 291
    object cdsConsClienteID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsConsClienteNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsConsClienteVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
    end
    object cdsConsClienteBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
      DisplayFormat = '##0.00'
    end
  end
  object dsConsCliente: TDataSource
    DataSet = cdsConsCliente
    Left = 397
    Top = 293
  end
  object frxConsCliente: TfrxDBDataset
    UserName = 'frxConsCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PESSOA=ID_PESSOA'
      'NOME_CLIFORN=NOME_CLIFORN'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'VLR_FRETE=VLR_FRETE'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_COFINS=VLR_COFINS'
      'VLR_PIS=VLR_PIS'
      'VLR_CUSTO=VLR_CUSTO'
      'VLR_IR_VENDA=VLR_IR_VENDA'
      'VLR_CSLL_VENDA=VLR_CSLL_VENDA'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ')
    DataSource = dsConsCliente
    BCDToCurrency = False
    Left = 89
    Top = 285
  end
  object sdsConsData: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DTEMISSAO, SUM(VLR_DUPLICATA) VLR_DUPLICATA, SUM(VLR_ICMS' +
      ') VLR_ICMS, SUM(VLR_TOTAL) VLR_TOTAL,'#13#10'       SUM(VLR_ICMSSUBST)' +
      ' VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI, SUM(VLR_FRETE) VLR_FRETE,'#13 +
      #10'       SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, SUM(VLR_ICMS_U' +
      'F_DEST) VLR_ICMS_UF_DEST, SUM(VLR_DESCONTO) VLR_DESCONTO,'#13#10'     ' +
      '  SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS, SUM(VLR_CUST' +
      'O) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA,'#13#10'       SUM(VLR_CS' +
      'LL_VENDA) VLR_CSLL_VENDA,'#13#10'       (SUM(V.VLR_TOTAL) + SUM(V.VLR_' +
      'IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU, SUM(V.VLR_TOTAL) VLR_TOT' +
      'AL_LIQ,'#13#10'       sum(coalesce(v.base_fcp_st,0)) BASE_FCP_ST,'#13#10'   ' +
      '    sum(coalesce(v.base_icms_fcp,0)) base_icms_fcp,'#13#10'       sum(' +
      'coalesce(v.base_icms_fcp_dest,0)) base_icms_fcp_dest,'#13#10'       su' +
      'm(coalesce(v.vlr_icms_fcp_dest,0)) vlr_icms_fcp_dest,'#13#10'       su' +
      'm(coalesce(v.vlr_icms_fcp,0)) vlr_icms_fcp,'#13#10'       sum(coalesce' +
      '(v.vlr_fcp_st,0)) vlr_fcp_st'#13#10'FROM VFAT_ACUM V'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 303
    Top = 344
  end
  object dspConsData: TDataSetProvider
    DataSet = sdsConsData
    Left = 335
    Top = 344
  end
  object cdsConsData: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DTEMISSAO'
    Params = <>
    ProviderName = 'dspConsData'
    Left = 367
    Top = 346
    object cdsConsDataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsDataVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
      DisplayFormat = '##0.00'
    end
  end
  object dsConsData: TDataSource
    DataSet = cdsConsData
    Left = 399
    Top = 344
  end
  object frxConsData: TfrxDBDataset
    UserName = 'frxConsData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DTEMISSAO=DTEMISSAO'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'VLR_FRETE=VLR_FRETE'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_COFINS=VLR_COFINS'
      'VLR_PIS=VLR_PIS'
      'VLR_CUSTO=VLR_CUSTO'
      'VLR_IR_VENDA=VLR_IR_VENDA'
      'VLR_CSLL_VENDA=VLR_CSLL_VENDA'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ')
    DataSource = dsConsData
    BCDToCurrency = False
    Left = 173
    Top = 284
  end
  object sdsComprasServico_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'with ITEM'#13#10'as (select NI.ID, NI.ITEM, NI.ID_PRODUTO, P.REFERENCI' +
      'A, P.NOME, NI.UNIDADE, NI.QTD, NI.VLR_UNITARIO, NI.VLR_TOTAL,'#13#10' ' +
      '          '#39'NTE'#39' TIPO_REGISTRO'#13#10'    from NOTAFISCAL_ITENS NI'#13#10'   ' +
      ' inner join PRODUTO P on NI.ID_PRODUTO = P.ID'#13#10'    union all'#13#10'  ' +
      '  select NSI.ID, NSI.ITEM, NSI.ID_SERVICO_INT, '#39#39', SI.NOME, '#39'UN'#39 +
      ', NSI.QTD, NSI.VLR_UNITARIO, NSI.VLR_TOTAL,'#13#10'           '#39'NS'#39' TIP' +
      'O_REGISTRO'#13#10'    from NOTASERVICO_ITENS NSI'#13#10'    left join SERVIC' +
      'O_INT SI on SI.ID = NSI.ID_SERVICO_INT)'#13#10'select ITEM.*'#13#10'from ITE' +
      'M'#13#10'where 0=0 and ITEM.ID = :ID AND ITEM.TIPO_REGISTRO = :TREG'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TREG'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 248
  end
  object dspComprasServico_Item: TDataSetProvider
    DataSet = sdsComprasServico_Item
    Left = 336
    Top = 248
  end
  object cdsComprasServico_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComprasServico_Item'
    Left = 376
    Top = 248
    object cdsComprasServico_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsComprasServico_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsComprasServico_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsComprasServico_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsComprasServico_ItemNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsComprasServico_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsComprasServico_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsComprasServico_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsComprasServico_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsComprasServico_ItemTIPO_REGISTRO: TStringField
      FieldName = 'TIPO_REGISTRO'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object dsComprasServico_Item: TDataSource
    DataSet = cdsComprasServico_Item
    Left = 424
    Top = 248
  end
  object frxComprasServicoItem: TfrxDBDataset
    UserName = 'frxComprasServicoItem'
    OnFirst = frxComprasServicoItemFirst
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'UNIDADE=UNIDADE'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'TIPO_REGISTRO=TIPO_REGISTRO')
    DataSource = dsComprasServico_Item
    BCDToCurrency = False
    Left = 96
    Top = 336
  end
end
