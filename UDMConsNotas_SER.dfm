object DMConsNotas_SER: TDMConsNotas_SER
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 351
  Top = 152
  Height = 539
  Width = 675
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 144
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 160
    Top = 144
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 200
    Top = 144
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
    Left = 240
    Top = 144
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NS.ID, NS.numnota, NS.dtemissao_cad,'#13#10'  CLI.NOME NOME_CLI' +
      'ENTE, SPAD.codigo, SPAD.nome NOME_SERVICO, NS.status_rps,'#13#10'  NS.' +
      'motivo_cancelamento,NS.FILIAL, FIL.NOME NOME_FILIAL, NS.SERIE, F' +
      'IL.NOME_INTERNO,'#13#10'  NS.vlr_total, NS.vlr_liquido_nfse, NS.vlr_in' +
      'ss, NS.base_calculo, NS.base_inss,'#13#10'  NS.vlr_iss, NS.vlr_iss_ret' +
      'ido, NS.perc_aliquota, NS.ISS_RETIDO, '#13#10'NS.NUMRPS'#13#10#13#10'FROM NOTASE' +
      'RVICO NS'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NS.ID_CLIENTE = CLI.CODIGO'#13#10 +
      'INNER JOIN SERVICO SPAD'#13#10'ON NS.ID_SERVICO = SPAD.ID'#13#10'INNER JOIN ' +
      'FILIAL FIL'#13#10'ON NS.FILIAL = FIL.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsConsultaDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object sdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object sdsConsultaNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object sdsConsultaSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object sdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsConsultaVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsConsultaVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object sdsConsultaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object sdsConsultaBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object sdsConsultaVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
    end
    object sdsConsultaVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
    end
    object sdsConsultaPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object sdsConsultaISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 152
    Top = 32
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILIAL;NUMNOTA'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 192
    Top = 32
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsConsultaDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsConsultaNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsConsultaSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsConsultaVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object cdsConsultaVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object cdsConsultaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object cdsConsultaBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object cdsConsultaVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
    end
    object cdsConsultaVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
    end
    object cdsConsultaPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object cdsConsultaISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 232
    Top = 32
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE (TP_CLIENTE = '#39'S'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 208
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 152
    Top = 208
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 192
    Top = 208
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 232
    Top = 208
  end
end
