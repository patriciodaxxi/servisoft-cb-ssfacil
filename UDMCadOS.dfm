object DMCadOS: TDMCadOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 207
  Top = 28
  Height = 693
  Width = 1106
  object sdsOS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 24
    object sdsOSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOSTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsOSDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOSVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object sdsOSVLR_SERVICO: TIntegerField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOSVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOSID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsOSID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsOSPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object sdsOSPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object sdsOSPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object sdsOSRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsOSRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsOSRETEM_IR: TStringField
      FieldName = 'RETEM_IR'
      FixedChar = True
      Size = 1
    end
    object sdsOSDTCONTRATO_INI: TDateField
      FieldName = 'DTCONTRATO_INI'
    end
    object sdsOSDTCONTRATO_FIN: TDateField
      FieldName = 'DTCONTRATO_FIN'
    end
    object sdsOSDTPREVISTA_REN: TDateField
      FieldName = 'DTPREVISTA_REN'
    end
    object sdsOSDTRENOVACAO: TDateField
      FieldName = 'DTRENOVACAO'
    end
    object sdsOSDTPRAZO_ENT: TDateField
      FieldName = 'DTPRAZO_ENT'
    end
    object sdsOSDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOSPERC_RENOVACAO: TFloatField
      FieldName = 'PERC_RENOVACAO'
    end
    object sdsOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsOSOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOSFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOSDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOSID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object sdsOSCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object sdsOSDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object sdsOSID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsOSID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsOSDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO_CERTIFICADO'
    end
    object sdsOSPERIODO_CERTIFICADO: TStringField
      FieldName = 'PERIODO_CERTIFICADO'
      Size = 2
    end
    object sdsOSTIPO_CERTIFICADO: TStringField
      FieldName = 'TIPO_CERTIFICADO'
      Size = 10
    end
    object sdsOSNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsOSMOTIVO_ENCERRAMENTO: TMemoField
      FieldName = 'MOTIVO_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOSID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsOSRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsOSRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsOSID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsOSDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsOSID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsOSHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsOSHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOSNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsOSSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object sdsOSCOMARCA: TStringField
      FieldName = 'COMARCA'
      Size = 40
    end
    object sdsOSNOME_SINDICO: TStringField
      FieldName = 'NOME_SINDICO'
      Size = 50
    end
    object sdsOSCPF_SINDICO: TStringField
      FieldName = 'CPF_SINDICO'
      Size = 14
    end
    object sdsOSID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsOSPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsOSOPCAO_VENCIMENTO_MREF: TStringField
      FieldName = 'OPCAO_VENCIMENTO_MREF'
      FixedChar = True
      Size = 1
    end
    object sdsOSID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsOSANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsOSDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
  end
  object dspOS: TDataSetProvider
    DataSet = sdsOS
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOSUpdateError
    Left = 96
    Top = 24
  end
  object cdsOS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOS'
    BeforePost = cdsOSBeforePost
    OnNewRecord = cdsOSNewRecord
    Left = 128
    Top = 24
    object cdsOSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOSTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOSDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOSVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object cdsOSVLR_SERVICO: TIntegerField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOSVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOSID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsOSID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOSPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsOSPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsOSPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsOSRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsOSRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsOSRETEM_IR: TStringField
      FieldName = 'RETEM_IR'
      FixedChar = True
      Size = 1
    end
    object cdsOSDTCONTRATO_INI: TDateField
      FieldName = 'DTCONTRATO_INI'
    end
    object cdsOSDTCONTRATO_FIN: TDateField
      FieldName = 'DTCONTRATO_FIN'
    end
    object cdsOSDTPREVISTA_REN: TDateField
      FieldName = 'DTPREVISTA_REN'
    end
    object cdsOSDTRENOVACAO: TDateField
      FieldName = 'DTRENOVACAO'
    end
    object cdsOSDTPRAZO_ENT: TDateField
      FieldName = 'DTPRAZO_ENT'
    end
    object cdsOSDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOSPERC_RENOVACAO: TFloatField
      FieldName = 'PERC_RENOVACAO'
    end
    object cdsOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOSOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOSDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsOSCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsOSDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object cdsOSID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsOSID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsOSsdsOS_Servico_Int: TDataSetField
      FieldName = 'sdsOS_Servico_Int'
    end
    object cdsOSDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO_CERTIFICADO'
    end
    object cdsOSPERIODO_CERTIFICADO: TStringField
      FieldName = 'PERIODO_CERTIFICADO'
      Size = 2
    end
    object cdsOSTIPO_CERTIFICADO: TStringField
      FieldName = 'TIPO_CERTIFICADO'
      Size = 10
    end
    object cdsOSNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsOSMOTIVO_ENCERRAMENTO: TMemoField
      FieldName = 'MOTIVO_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsOSRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsOSRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsOSID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOSDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsOSID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOSGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsOSHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOSHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOSNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOSSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object cdsOSCOMARCA: TStringField
      FieldName = 'COMARCA'
      Size = 40
    end
    object cdsOSNOME_SINDICO: TStringField
      FieldName = 'NOME_SINDICO'
      Size = 50
    end
    object cdsOSCPF_SINDICO: TStringField
      FieldName = 'CPF_SINDICO'
      Size = 14
    end
    object cdsOSsdsOS_Parc: TDataSetField
      FieldName = 'sdsOS_Parc'
    end
    object cdsOSID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOSPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsOSOPCAO_VENCIMENTO_MREF: TStringField
      FieldName = 'OPCAO_VENCIMENTO_MREF'
      FixedChar = True
      Size = 1
    end
    object cdsOSID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsOSsdsOS_Material: TDataSetField
      FieldName = 'sdsOS_Material'
    end
    object cdsOSANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsOSDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
  end
  object dsOS: TDataSource
    DataSet = cdsOS
    Left = 160
    Top = 24
  end
  object sdsOS_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, CLI.NOME NOME_CLIENTE, SER.NOME NOME_SERVICO, AC.co' +
      'digo COD_ATIVIDADE_CID, SER.CODIGO COD_SERVICO, CNPJ_CPF, ENDERE' +
      'CO, NUM_END, COMPLEMENTO_END, BAIRRO, CID.UF, CID.NOME CIDADE_NO' +
      'ME'#13#10'FROM OS'#13#10'LEFT JOIN PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO' +
      ')'#13#10'LEFT JOIN SERVICO SER ON (OS.ID_SERVICO = SER.ID)'#13#10'LEFT JOIN ' +
      'ATIVIDADE_CID AC ON (OS.ID_ATIVIDADE_CID = AC.ID)'#13#10'LEFT JOIN CID' +
      'ADE CID ON (CLI.ID_CIDADE = CID.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 16
  end
  object dspOS_Consulta: TDataSetProvider
    DataSet = sdsOS_Consulta
    OnUpdateError = dspOSUpdateError
    Left = 360
    Top = 16
  end
  object cdsOS_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Consulta'
    Left = 392
    Top = 16
    object cdsOS_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_ConsultaTIPO_REG: TStringField
      DisplayLabel = 'Tipo Reg.'
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsOS_ConsultaDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsOS_ConsultaVLR_PRODUTO: TFloatField
      DisplayLabel = 'Vlr. Produto'
      FieldName = 'VLR_PRODUTO'
      DisplayFormat = '0.00'
    end
    object cdsOS_ConsultaVLR_SERVICO: TIntegerField
      DisplayLabel = 'Vlr. Servi'#231'o'
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsOS_ConsultaVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOS_ConsultaID_SERVICO: TIntegerField
      DisplayLabel = 'ID Servi'#231'o'
      FieldName = 'ID_SERVICO'
    end
    object cdsOS_ConsultaID_SERVICO_INT: TIntegerField
      DisplayLabel = 'ID Servi'#231'o Interno'
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOS_ConsultaPERC_INSS: TFloatField
      DisplayLabel = '% INSS'
      FieldName = 'PERC_INSS'
    end
    object cdsOS_ConsultaPERC_ISS: TFloatField
      DisplayLabel = '% ISS'
      FieldName = 'PERC_ISS'
    end
    object cdsOS_ConsultaPERC_IR: TFloatField
      DisplayLabel = '% IR'
      FieldName = 'PERC_IR'
    end
    object cdsOS_ConsultaRETEM_INSS: TStringField
      DisplayLabel = 'Ret'#233'm INSS'
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaRETEM_ISS: TStringField
      DisplayLabel = 'Ret'#233'm ISS'
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaRETEM_IR: TStringField
      DisplayLabel = 'Ret'#233'm IR'
      FieldName = 'RETEM_IR'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaDTCONTRATO_INI: TDateField
      DisplayLabel = 'Data Contrato Inicial'
      FieldName = 'DTCONTRATO_INI'
    end
    object cdsOS_ConsultaDTCONTRATO_FIN: TDateField
      DisplayLabel = 'Data Contrato Final'
      FieldName = 'DTCONTRATO_FIN'
    end
    object cdsOS_ConsultaDTPREVISTA_REN: TDateField
      DisplayLabel = 'Data Previs'#227'o Renova'#231#227'o'
      FieldName = 'DTPREVISTA_REN'
    end
    object cdsOS_ConsultaDTRENOVACAO: TDateField
      DisplayLabel = 'Data Renova'#231#227'o'
      FieldName = 'DTRENOVACAO'
    end
    object cdsOS_ConsultaDTPRAZO_ENT: TDateField
      DisplayLabel = 'Data Prazo Entrega'
      FieldName = 'DTPRAZO_ENT'
    end
    object cdsOS_ConsultaDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsOS_ConsultaPERC_RENOVACAO: TFloatField
      DisplayLabel = '% Renova'#231#227'o'
      FieldName = 'PERC_RENOVACAO'
    end
    object cdsOS_ConsultaNUM_OS: TIntegerField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUM_OS'
    end
    object cdsOS_ConsultaOBS: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOS_ConsultaNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOS_ConsultaNOME_SERVICO: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsOS_ConsultaFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsOS_ConsultaDISCRIMINACAO: TMemoField
      DisplayLabel = 'Discrimina'#231#227'o'
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOS_ConsultaID_ATIVIDADE_CID: TIntegerField
      DisplayLabel = 'ID Atividade Cid'
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsOS_ConsultaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsOS_ConsultaDIA_VENCIMENTO: TIntegerField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
    end
    object cdsOS_ConsultaID_CONTA: TIntegerField
      DisplayLabel = 'ID Conta'
      FieldName = 'ID_CONTA'
    end
    object cdsOS_ConsultaID_TIPO_COBRANCA: TIntegerField
      DisplayLabel = 'ID Tipo Cobran'#231'a'
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsOS_ConsultaDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO_CERTIFICADO'
    end
    object cdsOS_ConsultaPERIODO_CERTIFICADO: TStringField
      DisplayLabel = 'Per'#237'odo Certificado'
      FieldName = 'PERIODO_CERTIFICADO'
      Size = 2
    end
    object cdsOS_ConsultaTIPO_CERTIFICADO: TStringField
      DisplayLabel = 'Tipo Certificado'
      FieldName = 'TIPO_CERTIFICADO'
      Size = 10
    end
    object cdsOS_ConsultaNUM_CONTRATO: TIntegerField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUM_CONTRATO'
    end
    object cdsOS_ConsultaCOD_ATIVIDADE_CID: TStringField
      DisplayLabel = 'C'#243'd. Atividade'
      FieldName = 'COD_ATIVIDADE_CID'
      Size = 10
    end
    object cdsOS_ConsultaCOD_SERVICO: TStringField
      DisplayLabel = 'C'#243'd. Servi'#231'o'
      FieldName = 'COD_SERVICO'
      Required = True
      Size = 5
    end
    object cdsOS_ConsultaMOTIVO_ENCERRAMENTO: TMemoField
      FieldName = 'MOTIVO_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOS_ConsultaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsOS_ConsultaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOS_ConsultaDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsOS_ConsultaCOMARCA: TStringField
      FieldName = 'COMARCA'
      Size = 40
    end
    object cdsOS_ConsultaNOME_SINDICO: TStringField
      FieldName = 'NOME_SINDICO'
      Size = 50
    end
    object cdsOS_ConsultaCPF_SINDICO: TStringField
      FieldName = 'CPF_SINDICO'
      Size = 14
    end
    object cdsOS_ConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsOS_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsOS_ConsultaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsOS_ConsultaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsOS_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsOS_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsOS_ConsultaCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      Size = 40
    end
    object cdsOS_ConsultaOPCAO_VENCIMENTO_MREF: TStringField
      Alignment = taCenter
      DisplayLabel = 'M'#234's Venc. igual ao m'#234's de refer'#234'ncia'
      FieldName = 'OPCAO_VENCIMENTO_MREF'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ConsultaANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsOS_ConsultaDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
  end
  object dsOS_Consulta: TDataSource
    DataSet = cdsOS_Consulta
    Left = 424
    Top = 16
  end
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO, CNAE, PERC_ISS, ID_ATIVIDADE_CID'#13#10'FROM SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 118
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 360
    Top = 118
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 392
    Top = 118
    object cdsServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
    object cdsServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 424
    Top = 118
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_CLIENTE' +
      ' = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 64
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 360
    Top = 64
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 392
    Top = 64
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsClienteCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsClienteNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsClienteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsClienteCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsClienteNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsClienteBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsClienteID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsClienteCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsClienteCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsClienteUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsClientePESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsClienteINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsClienteENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsClienteCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsClienteNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsClienteBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsClienteID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsClienteCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsClienteCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsClienteUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsClienteDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsClienteHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsClienteDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsClienteFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsClienteDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsClienteFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsClienteINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsClienteNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsClienteEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsClienteID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsClienteEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsClienteEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsClientePESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsClienteINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsClienteUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsClientePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsClienteTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsClienteTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsClienteTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsClienteTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsClienteTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsClienteDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsClienteDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsClienteID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsClienteID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsClienteVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsClienteRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsClientePERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsClienteCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsClienteCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsClienteID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 424
    Top = 64
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 166
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 360
    Top = 166
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 392
    Top = 166
    object cdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsServico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsServico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 424
    Top = 166
  end
  object sdsOS_Servico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT S.*, P.NOME NOME_VENDEDOR'#13#10'FROM OS_SERVICO_INT S'#13#10'LEFT JO' +
      'IN PESSOA P'#13#10'ON S.ID_VENDEDOR = P.CODIGO'#13#10'WHERE S.ID = :ID'
    DataSource = dsOS_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 96
    object sdsOS_Servico_IntID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_Servico_IntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_Servico_IntID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsOS_Servico_IntCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOS_Servico_IntNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object sdsOS_Servico_IntID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOS_Servico_IntCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOS_Servico_IntVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOS_Servico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsOS_Servico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsOS_Servico_IntNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sdsOS_Servico_IntQTD_FRANQUIA: TIntegerField
      FieldName = 'QTD_FRANQUIA'
    end
    object sdsOS_Servico_IntVLR_UNIT_EXCEDENTE: TFloatField
      FieldName = 'VLR_UNIT_EXCEDENTE'
    end
    object sdsOS_Servico_IntTIPO_COB: TStringField
      FieldName = 'TIPO_COB'
      FixedChar = True
      Size = 1
    end
    object sdsOS_Servico_IntID_PONTO: TIntegerField
      FieldName = 'ID_PONTO'
    end
  end
  object cdsOS_Servico_Int: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOSsdsOS_Servico_Int
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsOS_Servico_IntBeforePost
    OnNewRecord = cdsOS_Servico_IntNewRecord
    Left = 128
    Top = 96
    object cdsOS_Servico_IntID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_Servico_IntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_Servico_IntID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOS_Servico_IntCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00##'
    end
    object cdsOS_Servico_IntNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsOS_Servico_IntID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOS_Servico_IntCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_Servico_IntVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOS_Servico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOS_Servico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsOS_Servico_IntNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cdsOS_Servico_IntQTD_FRANQUIA: TIntegerField
      FieldName = 'QTD_FRANQUIA'
    end
    object cdsOS_Servico_IntVLR_UNIT_EXCEDENTE: TFloatField
      FieldName = 'VLR_UNIT_EXCEDENTE'
    end
    object cdsOS_Servico_IntTIPO_COB: TStringField
      FieldName = 'TIPO_COB'
      FixedChar = True
      Size = 1
    end
    object cdsOS_Servico_IntsdsOS_Servico_Hist: TDataSetField
      FieldName = 'sdsOS_Servico_Hist'
    end
    object cdsOS_Servico_IntID_PONTO: TIntegerField
      FieldName = 'ID_PONTO'
    end
  end
  object dsOS_Servico_Int: TDataSource
    DataSet = cdsOS_Servico_Int
    Left = 160
    Top = 96
  end
  object dsOS_Mestre: TDataSource
    DataSet = sdsOS
    Left = 24
    Top = 56
  end
  object qProximo_Num_a: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_CONTRATO) NUM_CONTRATO, MAX(NUM_OS) NUM_OS'
      'FROM OS'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 984
    Top = 312
    object qProximo_Num_aNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object qProximo_Num_aNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object sdsNatureza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFSE_NATUREZA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 220
  end
  object dspNatureza: TDataSetProvider
    DataSet = sdsNatureza
    Left = 360
    Top = 220
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 392
    Top = 220
    object cdsNaturezaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNaturezaID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 424
    Top = 220
  end
  object sdsAtividade_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 272
  end
  object dspAtividade_Cid: TDataSetProvider
    DataSet = sdsAtividade_Cid
    Left = 360
    Top = 272
  end
  object cdsAtividade_Cid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtividade_Cid'
    Left = 392
    Top = 272
    object cdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsAtividade_Cid: TDataSource
    DataSet = cdsAtividade_Cid
    Left = 424
    Top = 272
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 312
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
    object qParametrosTIPO_COMISSAO_NFSE: TStringField
      FieldName = 'TIPO_COMISSAO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESCOLA: TStringField
      FieldName = 'ESCOLA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_RECIBO_NFSE: TStringField
      FieldName = 'USA_RECIBO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_COND_PGTO_NFSE: TIntegerField
      FieldName = 'ID_COND_PGTO_NFSE'
    end
    object qParametrosQTD_DIG_COD_CLI_CTB: TIntegerField
      FieldName = 'QTD_DIG_COD_CLI_CTB'
    end
    object qParametrosGERAR_NUM_AUT_CONTRATO: TStringField
      FieldName = 'GERAR_NUM_AUT_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONTRATO_CONSUMO: TStringField
      FieldName = 'CONTRATO_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CID.*, PRO.TIPO_NATUREZA'#13#10'FROM CIDADE CID'#13#10'LEFT JOIN PROV' +
      'EDOR PRO'#13#10'ON CID.ID_PROVEDOR = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 324
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 360
    Top = 324
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 392
    Top = 324
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
    object cdsCidadeTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 424
    Top = 324
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.*, NAT.CODIGO COD_NATUREZA, PRO.TIPO_NATUREZA, PRO.NO' +
      'ME NOME_PROVEDOR,'#13#10'SER.CODIGO COD_SERVICO_SINT, RT.CODIGO COD_RE' +
      'GIME_TIB_ESP, CID.CODMUNICIPIO, PRO.TIPO_RETORNO,'#13#10'PRO.mostrar_a' +
      'liquota_pd, PRO.inf_cod_servico, CID.LINKNFSE, CID.FONE_PREFEITU' +
      'RA, CID.SITE_PREFEITURA,'#13#10'CID.END_LOGO_PREFEITURA'#13#10'FROM FILIAL F' +
      'IL'#13#10'LEFT JOIN NFSE_NATUREZA NAT'#13#10'ON FIL.ID_NATUREZA = NAT.ID'#13#10'LE' +
      'FT JOIN SERVICO SER'#13#10'ON FIL.ID_SERVICO_SINT = SER.ID'#13#10'LEFT JOIN ' +
      'REGIME_TRIB RT'#13#10'ON FIL.ID_REGIME_TRIB_NFSE = RT.ID'#13#10'LEFT JOIN CI' +
      'DADE CID'#13#10'ON FIL.ID_CIDADE = CID.ID'#13#10'LEFT JOIN PROVEDOR PRO'#13#10'ON ' +
      'CID.ID_PROVEDOR = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 265
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 896
    Top = 265
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 928
    Top = 265
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
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object cdsFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object cdsFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object cdsFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object cdsFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object cdsFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsFilialCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialNOME_PROVEDOR: TStringField
      FieldName = 'NOME_PROVEDOR'
      Size = 40
    end
    object cdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object cdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object cdsFilialCOD_SERVICO_SINT: TStringField
      FieldName = 'COD_SERVICO_SINT'
      Size = 5
    end
    object cdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object cdsFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsFilialCOD_REGIME_TIB_ESP: TIntegerField
      FieldName = 'COD_REGIME_TIB_ESP'
    end
    object cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object cdsFilialCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsFilialTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object cdsFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object cdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object cdsFilialMOSTRAR_ALIQUOTA_PD: TStringField
      FieldName = 'MOSTRAR_ALIQUOTA_PD'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINF_COD_SERVICO: TStringField
      FieldName = 'INF_COD_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsFilialLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object cdsFilialFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object cdsFilialSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object cdsFilialEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
    object cdsFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object cdsFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object cdsFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialPERC_ISS_SIMPLES: TFloatField
      FieldName = 'PERC_ISS_SIMPLES'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 960
    Top = 265
  end
  object qPessoa_Servico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SERVICO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PERC_ISS'
      'FROM PESSOA_SERVICO'
      'WHERE CODIGO = :CODIGO'
      '   AND ID_SERVICO = :ID_SERVICO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 312
    object qPessoa_ServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 44
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 832
    Top = 44
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 864
    Top = 44
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoMOSTRAR_NFCE: TStringField
      FieldName = 'MOSTRAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 896
    Top = 44
  end
  object sdsContrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, CLI.NOME NOME_CLIENTE, SER.NOME NOME_SERVICO, AC.CO' +
      'DIGO COD_ATIVIDADE_CID, SER.CODIGO COD_SERVICO'#13#10'FROM OS'#13#10'INNER J' +
      'OIN PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO)'#13#10'INNER JOIN SERVI' +
      'CO SER ON (OS.ID_SERVICO = SER.ID)'#13#10'LEFT JOIN ATIVIDADE_CID AC O' +
      'N (OS.ID_ATIVIDADE_CID = AC.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 16
  end
  object dspContrato: TDataSetProvider
    DataSet = sdsContrato
    Left = 520
    Top = 16
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContrato'
    Left = 552
    Top = 16
    object cdsContratoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContratoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsContratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsContratoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsContratoVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
      DisplayFormat = '0.00'
    end
    object cdsContratoVLR_SERVICO: TIntegerField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsContratoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsContratoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsContratoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsContratoPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
      DisplayFormat = '0.00'
    end
    object cdsContratoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      DisplayFormat = '0.00'
    end
    object cdsContratoPERC_IR: TFloatField
      FieldName = 'PERC_IR'
      DisplayFormat = '0.00'
    end
    object cdsContratoRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsContratoRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsContratoRETEM_IR: TStringField
      FieldName = 'RETEM_IR'
      FixedChar = True
      Size = 1
    end
    object cdsContratoDTCONTRATO_INI: TDateField
      FieldName = 'DTCONTRATO_INI'
    end
    object cdsContratoDTCONTRATO_FIN: TDateField
      FieldName = 'DTCONTRATO_FIN'
    end
    object cdsContratoDTPREVISTA_REN: TDateField
      FieldName = 'DTPREVISTA_REN'
    end
    object cdsContratoDTRENOVACAO: TDateField
      FieldName = 'DTRENOVACAO'
    end
    object cdsContratoDTPRAZO_ENT: TDateField
      FieldName = 'DTPRAZO_ENT'
    end
    object cdsContratoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsContratoPERC_RENOVACAO: TFloatField
      FieldName = 'PERC_RENOVACAO'
    end
    object cdsContratoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsContratoDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsContratoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsContratoDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object cdsContratoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsContratoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsContratoDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO_CERTIFICADO'
    end
    object cdsContratoPERIODO_CERTIFICADO: TStringField
      FieldName = 'PERIODO_CERTIFICADO'
      Size = 2
    end
    object cdsContratoTIPO_CERTIFICADO: TStringField
      FieldName = 'TIPO_CERTIFICADO'
      Size = 10
    end
    object cdsContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsContratoMOTIVO_ENCERRAMENTO: TMemoField
      FieldName = 'MOTIVO_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsContratoRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsContratoRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsContratoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsContratoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsContratoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsContratoCOD_ATIVIDADE_CID: TStringField
      FieldName = 'COD_ATIVIDADE_CID'
      Size = 10
    end
    object cdsContratoCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      Required = True
      Size = 5
    end
    object cdsContratoDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContratoOPCAO_VENCIMENTO_MREF: TStringField
      DisplayLabel = 'M'#234's Venc. igual ao m'#234's de refer'#234'ncia'
      FieldName = 'OPCAO_VENCIMENTO_MREF'
      FixedChar = True
      Size = 1
    end
    object cdsContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsContratoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsContratoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsContratoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 584
    Top = 16
  end
  object sdsOS_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OS_PARC'#13#10'WHERE ID = :ID'
    DataSource = dsOS_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 192
    object sdsOS_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsOS_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsOS_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsOS_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object cdsOS_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOSsdsOS_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsOS_Servico_IntNewRecord
    Left = 128
    Top = 192
    object cdsOS_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsOS_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsOS_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsOS_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object dsOS_Parc: TDataSource
    DataSet = cdsOS_Parc
    Left = 160
    Top = 192
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDO' +
      'R = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 166
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 520
    Top = 166
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 552
    Top = 166
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 584
    Top = 166
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 220
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 520
    Top = 220
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 552
    Top = 220
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 584
    Top = 220
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 272
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 520
    Top = 272
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 552
    Top = 272
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object cdsTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 584
    Top = 272
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, CASE NIVEL'#13#10'        ' +
      '   WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'           WHEN 4 THE' +
      'N '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39'      '#39' ||  ' +
      'DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRICAO'#13#10'        ' +
      '   WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13#10'           ' +
      'END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 424
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 360
    Top = 424
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 392
    Top = 424
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 424
    Top = 424
  end
  object sdsEventos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSS.*'#13#10'FROM ORDEMSERVICO_SIMPLES_ITEM OSS'#13#10'INNER JOIN ORD' +
      'EMSERVICO OS ON (OSS.ID = OS.ID)'#13#10'WHERE OS.TP_ORCAMENTO = '#39'3'#39' '#13#10 +
      'AND TP_SIMPLES = '#39'S'#39#13#10'AND OS.ID_CLIENTE = :CLI'#13#10'AND OS.DTEMISSAO' +
      ' BETWEEN :DT1 AND :DT2'#13#10'AND OS.ID_NOTA_SERVICO IS NULL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 64
  end
  object dspEventos: TDataSetProvider
    DataSet = sdsEventos
    Left = 520
    Top = 64
  end
  object cdsEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEventos'
    Left = 552
    Top = 64
    object cdsEventosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEventosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsEventosID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsEventosID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsEventosQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEventosVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEventosVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsEventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsEventosCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsEventosDT_CONCLUIDO: TDateField
      FieldName = 'DT_CONCLUIDO'
    end
    object cdsEventosDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object cdsEventosHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
    end
    object cdsEventosHR_CONCLUIDO: TTimeField
      FieldName = 'HR_CONCLUIDO'
    end
  end
  object dsEventos: TDataSource
    DataSet = cdsEventos
    Left = 584
    Top = 64
  end
  object qVerificaNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID FROM NOTASERVICO NS'
      'WHERE NS.NUM_CONTRATO = :NUM_CONTRATO'
      '  AND NS.ANO_REF = :ANO'
      '  AND NS.MES_REF = :MES'
      '  AND NS.STATUS_RPS = '#39'1'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 312
    object qVerificaNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42054.579274733800000000
    ReportOptions.LastChange = 42054.661281759260000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 856
    Top = 416
  end
  object mExtrato: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Alfa_Aux'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cod_Alfa'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Num_Contrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Mes_Ref'
        DataType = ftInteger
      end
      item
        Name = 'Ano_Ref'
        DataType = ftInteger
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vlr_Servico'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'CNAE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Perc_ISS'
        DataType = ftFloat
      end
      item
        Name = 'Perc_INSS'
        DataType = ftFloat
      end
      item
        Name = 'Perc_IR'
        DataType = ftFloat
      end
      item
        Name = 'Retem_ISS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Retem_IR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Retem_INSS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Perc_Red_INSS'
        DataType = ftFloat
      end
      item
        Name = 'Ano_Contrato'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Cod_Alfa_Aux'
    Params = <>
    StoreDefs = True
    BeforeDelete = mExtratoBeforeDelete
    Left = 560
    Top = 596
    Data = {
      010200009619E0BD01000000180000001400000000000300000001020C436F64
      5F416C66615F4175780100490000000100055749445448020002000F0008436F
      645F416C66610100490000000100055749445448020002000F000C4E756D5F43
      6F6E747261746F0100490000000100055749445448020002001400074D65735F
      526566040001000000000007416E6F5F52656604000100000000000C44745665
      6E63696D656E746F0400060000000000094474456D697373616F040006000000
      00000A49445F436C69656E746504000100000000000C4E6F6D655F436C69656E
      74650100490000000100055749445448020002003C000B566C725F5365727669
      636F080004000000000009566C725F546F74616C080004000000000004434E41
      450100490000000100055749445448020002000A0008506572635F4953530800
      04000000000009506572635F494E5353080004000000000007506572635F4952
      080004000000000009526574656D5F4953530100490000000100055749445448
      02000200010008526574656D5F49520100490000000100055749445448020002
      0001000A526574656D5F494E5353010049000000010005574944544802000200
      01000D506572635F5265645F494E535308000400000000000C416E6F5F436F6E
      747261746F040001000000000001000D44454641554C545F4F52444552020082
      0000000000}
    object mExtratoCod_Alfa_Aux: TStringField
      FieldName = 'Cod_Alfa_Aux'
      Size = 15
    end
    object mExtratoCod_Alfa: TStringField
      FieldName = 'Cod_Alfa'
      Size = 15
    end
    object mExtratoNum_Contrato: TStringField
      FieldName = 'Num_Contrato'
    end
    object mExtratoMes_Ref: TIntegerField
      FieldName = 'Mes_Ref'
    end
    object mExtratoAno_Ref: TIntegerField
      FieldName = 'Ano_Ref'
    end
    object mExtratoDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mExtratoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mExtratoID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mExtratoNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mExtratoVlr_Servico: TFloatField
      FieldName = 'Vlr_Servico'
      DisplayFormat = '0.00'
    end
    object mExtratoVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mExtratoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object mExtratoPerc_ISS: TFloatField
      FieldName = 'Perc_ISS'
      DisplayFormat = '0.00#'
    end
    object mExtratoPerc_INSS: TFloatField
      FieldName = 'Perc_INSS'
      DisplayFormat = '0.00#'
    end
    object mExtratoPerc_IR: TFloatField
      FieldName = 'Perc_IR'
      DisplayFormat = '0.00#'
    end
    object mExtratoRetem_ISS: TStringField
      FieldName = 'Retem_ISS'
      Size = 1
    end
    object mExtratoRetem_IR: TStringField
      FieldName = 'Retem_IR'
      Size = 1
    end
    object mExtratoRetem_INSS: TStringField
      FieldName = 'Retem_INSS'
      Size = 1
    end
    object mExtratoPerc_Red_INSS: TFloatField
      FieldName = 'Perc_Red_INSS'
      DisplayFormat = '0.00#'
    end
    object mExtratoAno_Contrato: TIntegerField
      FieldName = 'Ano_Contrato'
    end
  end
  object dsmExtrato: TDataSource
    DataSet = mExtrato
    Left = 600
    Top = 596
  end
  object mExtrato_Itens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Alfa'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Num_Contrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'ID_Servico'
        DataType = ftInteger
      end
      item
        Name = 'ID_Servico_Int'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Servico'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Cod_Servico'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Cod_Alfa_Aux'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Cod_Alfa_Aux;Item'
    MasterFields = 'Cod_Alfa_Aux'
    MasterSource = dsmExtrato
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    BeforeDelete = mExtrato_ItensBeforeDelete
    Left = 648
    Top = 596
    Data = {
      3A0100009619E0BD01000000180000000B0000000000030000003A0108436F64
      5F416C66610100490000000100055749445448020002000F000C4E756D5F436F
      6E747261746F0100490000000100055749445448020002001400044974656D04
      000100000000000A49445F5365727669636F04000100000000000E49445F5365
      727669636F5F496E7404000100000000000C4E6F6D655F5365727669636F0100
      4900000001000557494454480200020064000351746408000400000000000956
      6C725F546F74616C08000400000000000C566C725F556E69746172696F080004
      00000000000B436F645F5365727669636F010049000000010005574944544802
      00020005000C436F645F416C66615F4175780100490000000100055749445448
      020002000F0001000D44454641554C545F4F524445520200820000000000}
    object mExtrato_ItensCod_Alfa_Aux: TStringField
      FieldName = 'Cod_Alfa_Aux'
      Size = 15
    end
    object mExtrato_ItensCod_Alfa: TStringField
      FieldName = 'Cod_Alfa'
      Size = 15
    end
    object mExtrato_ItensNum_Contrato: TStringField
      FieldName = 'Num_Contrato'
    end
    object mExtrato_ItensItem: TIntegerField
      FieldName = 'Item'
    end
    object mExtrato_ItensID_Servico: TIntegerField
      FieldName = 'ID_Servico'
    end
    object mExtrato_ItensID_Servico_Int: TIntegerField
      FieldName = 'ID_Servico_Int'
    end
    object mExtrato_ItensNome_Servico: TStringField
      FieldName = 'Nome_Servico'
      Size = 100
    end
    object mExtrato_ItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mExtrato_ItensVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mExtrato_ItensVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
      DisplayFormat = '0.00'
    end
    object mExtrato_ItensCod_Servico: TStringField
      FieldName = 'Cod_Servico'
      Size = 5
    end
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_ALFA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA'
      'WHERE COD_ALFA = :COD_ALFA')
    SQLConnection = dmDatabase.scoDados
    Left = 912
    Top = 312
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object qClienteID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object qClienteID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object qClienteVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object qClienteRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object qClienteRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object qClienteRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qClienteRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object qClienteDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object qClientePERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
  end
  object dsmExtrato_Itens: TDataSource
    DataSet = mExtrato_Itens
    Left = 680
    Top = 596
  end
  object frxRichObject1: TfrxRichObject
    Left = 928
    Top = 416
  end
  object mExtrato_Nao: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Alfa'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Motivo'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'COd_Alfa'
    Params = <>
    StoreDefs = True
    Left = 464
    Top = 596
    Data = {
      680000009619E0BD010000001800000002000000000003000000680008436F64
      5F416C66610100490000000100055749445448020002000F00064D6F7469766F
      010049000000010005574944544802000200640001000D44454641554C545F4F
      524445520200820000000000}
    object mExtrato_NaoCod_Alfa: TStringField
      FieldName = 'Cod_Alfa'
      Size = 15
    end
    object mExtrato_NaoMotivo: TStringField
      FieldName = 'Motivo'
      Size = 100
    end
  end
  object dsmExtrato_Nao: TDataSource
    DataSet = mExtrato_Nao
    Left = 504
    Top = 596
  end
  object sdsOS_Material: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OS_MATERIAL'#13#10'WHERE ID = :ID'
    DataSource = dsOS_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 238
    object sdsOS_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_MaterialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_MaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOS_MaterialNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsOS_MaterialVLR: TFMTBCDField
      FieldName = 'VLR'
      Precision = 15
      Size = 2
    end
    object sdsOS_MaterialOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object cdsOS_Material: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOSsdsOS_Material
    Params = <>
    OnCalcFields = cdsOS_MaterialCalcFields
    Left = 128
    Top = 238
    object cdsOS_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_MaterialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_MaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOS_MaterialNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsOS_MaterialVLR: TFMTBCDField
      FieldName = 'VLR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsOS_MaterialOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsOS_MaterialclRefProduto: TStringField
      FieldKind = fkCalculated
      FieldName = 'clRefProduto'
      Calculated = True
    end
    object cdsOS_MaterialclNomeProduto: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeProduto'
      Size = 100
      Calculated = True
    end
  end
  object dsOS_Material: TDataSource
    DataSet = cdsOS_Material
    Left = 160
    Top = 238
  end
  object sdsProdutoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA,  P.NOME,  P.PRECO_VENDA'#13#10'FROM PRODUTO' +
      ' P'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 118
  end
  object dspProdutoCons: TDataSetProvider
    DataSet = sdsProdutoCons
    Left = 520
    Top = 118
  end
  object cdsProdutoCons: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProdutoCons'
    Left = 552
    Top = 118
    object cdsProdutoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoConsPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 984
    Top = 360
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA,  P.NOME,  P.PRECO_VENDA'#13#10'FROM PRODUTO' +
      ' P'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 360
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 904
    Top = 360
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 944
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'REFERENCIA'
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object FloatField1: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsOS_Consulta
    BCDToCurrency = False
    Left = 856
    Top = 464
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'OS_IMP'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 912
    Top = 464
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'OSITEM_IMP'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 944
    Top = 464
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
    Left = 856
    Top = 520
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
    Left = 888
    Top = 520
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'OSEXEC_IMP'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 976
    Top = 464
  end
  object sdsMov_Servico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MOV.*, S.nome NOME_SERVICO, SI.nome NOME_SERVICO_INT,'#13#10'CL' +
      'I.NOME NOME_CLIENTE, FIL.nome NOME_FILIAL, FIL.nome_interno FANT' +
      'ASIA_FILIAL,'#13#10'SI.NOME || '#39' '#39' || MOV.COMPLEMENTO SERVICO_COMPLEME' +
      'NTO'#13#10'FROM MOV_SERVICO_EXTRA MOV'#13#10'INNER JOIN SERVICO S'#13#10'ON MOV.id' +
      '_servico = S.id'#13#10'INNER JOIN SERVICO_INT SI'#13#10'ON MOV.ID_SERVICO_IN' +
      'T = SI.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON MOV.id_cliente = CLI.CODIGO' +
      #13#10'INNER JOIN FILIAL FIL'#13#10'ON MOV.FILIAL = FIL.ID'#13#10'WHERE MOV.ENCER' +
      'RADO = '#39'N'#39#13#10'      AND MOV.FILIAL = :FILIAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 472
  end
  object dspMov_Servico: TDataSetProvider
    DataSet = sdsMov_Servico
    Left = 360
    Top = 472
  end
  object cdsMov_Servico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_CLIENTE;DTEMISSAO'
    Params = <>
    ProviderName = 'dspMov_Servico'
    Left = 392
    Top = 472
    object cdsMov_ServicoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_ServicoID_SERVICO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o'
      FieldName = 'ID_SERVICO'
    end
    object cdsMov_ServicoID_SERVICO_INT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o Interno'
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMov_ServicoCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object cdsMov_ServicoDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsMov_ServicoQTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTD'
    end
    object cdsMov_ServicoVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsMov_ServicoVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
    end
    object cdsMov_ServicoID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsMov_ServicoFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsMov_ServicoID_NOTA: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsMov_ServicoID_RECIBO: TIntegerField
      DisplayLabel = 'ID Recibo'
      FieldName = 'ID_RECIBO'
    end
    object cdsMov_ServicoENCERRADO: TStringField
      DisplayLabel = 'Encerrado'
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_ServicoNOME_SERVICO: TStringField
      DisplayLabel = 'Nome Servi'#231'o Padr'#227'o'
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsMov_ServicoNOME_SERVICO_INT: TStringField
      DisplayLabel = 'Servi'#231'o Interno'
      FieldName = 'NOME_SERVICO_INT'
      Size = 70
    end
    object cdsMov_ServicoNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsMov_ServicoNOME_FILIAL: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsMov_ServicoFANTASIA_FILIAL: TStringField
      DisplayLabel = 'Nome Interno Filial'
      FieldName = 'FANTASIA_FILIAL'
      Size = 30
    end
    object cdsMov_ServicoSERVICO_COMPLEMENTO: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'SERVICO_COMPLEMENTO'
      Size = 171
    end
  end
  object dsMov_Servico: TDataSource
    DataSet = cdsMov_Servico
    Left = 424
    Top = 472
  end
  object sdsOS_Servico_Int_Cons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM OS_SERVICO_INT'#13#10'WHERE ID = :ID'#13#10'  and ((TIPO_COB ' +
      '= '#39'2'#39')'#13#10'    or (TIPO_COB = '#39'3'#39'))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 324
  end
  object dspOS_Servico_Int_Cons: TDataSetProvider
    DataSet = sdsOS_Servico_Int_Cons
    Left = 520
    Top = 324
  end
  object cdsOS_Servico_Int_Cons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Servico_Int_Cons'
    Left = 552
    Top = 324
    object cdsOS_Servico_Int_ConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_Servico_Int_ConsITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_Servico_Int_ConsID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOS_Servico_Int_ConsNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsOS_Servico_Int_ConsQTD_FRANQUIA: TIntegerField
      FieldName = 'QTD_FRANQUIA'
    end
    object cdsOS_Servico_Int_ConsVLR_UNIT_EXCEDENTE: TFloatField
      FieldName = 'VLR_UNIT_EXCEDENTE'
    end
  end
  object dsOS_Servico_Int_Cons: TDataSource
    DataSet = cdsOS_Servico_Int_Cons
    Left = 584
    Top = 324
  end
  object mContrato_Consumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ID_SERVICO_INT'
        DataType = ftInteger
      end
      item
        Name = 'NOME_SERVICO_INT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FRANQUIA'
        DataType = ftInteger
      end
      item
        Name = 'VLR_EXCEDENTE'
        DataType = ftFloat
      end
      item
        Name = 'QTD_ATUAL'
        DataType = ftInteger
      end
      item
        Name = 'QTD_ANT'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = mContrato_ConsumoCalcFields
    Left = 488
    Top = 372
    Data = {
      B70000009619E0BD010000001800000008000000000003000000B70002494404
      00010000000000044954454D04000100000000000E49445F5345525649434F5F
      494E540400010000000000104E4F4D455F5345525649434F5F494E5401004900
      00000100055749445448020002003200084652414E5155494104000100000000
      000D564C525F4558434544454E54450800040000000000095154445F41545541
      4C0400010000000000075154445F414E5404000100000000000000}
    object mContrato_ConsumoID: TIntegerField
      FieldName = 'ID'
    end
    object mContrato_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object mContrato_ConsumoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object mContrato_ConsumoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 50
    end
    object mContrato_ConsumoFRANQUIA: TIntegerField
      FieldName = 'FRANQUIA'
    end
    object mContrato_ConsumoVLR_EXCEDENTE: TFloatField
      FieldName = 'VLR_EXCEDENTE'
    end
    object mContrato_ConsumoQTD_ATUAL: TIntegerField
      FieldName = 'QTD_ATUAL'
    end
    object mContrato_ConsumoQTD_ANT: TIntegerField
      FieldName = 'QTD_ANT'
    end
    object mContrato_ConsumoclVLR_UTILIZADA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVLR_UTILIZADA'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
  object dsmContrato_Consumo: TDataSource
    DataSet = mContrato_Consumo
    Left = 520
    Top = 372
  end
  object sdsOS_Servico_Int_Mes: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM OS_SERVICO_INT_MES'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = ' +
      ':ITEM'
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
    Left = 488
    Top = 420
    object sdsOS_Servico_Int_MesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOS_Servico_Int_MesITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOS_Servico_Int_MesCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object sdsOS_Servico_Int_MesANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 7
    end
    object sdsOS_Servico_Int_MesQTD_INFORMADA: TIntegerField
      FieldName = 'QTD_INFORMADA'
    end
    object sdsOS_Servico_Int_MesVLR_EXCEDENTE: TFloatField
      FieldName = 'VLR_EXCEDENTE'
    end
    object sdsOS_Servico_Int_MesQTD_ANT: TIntegerField
      FieldName = 'QTD_ANT'
    end
    object sdsOS_Servico_Int_MesQTD_ATUAL: TIntegerField
      FieldName = 'QTD_ATUAL'
    end
  end
  object dspOS_Servico_Int_Mes: TDataSetProvider
    DataSet = sdsOS_Servico_Int_Mes
    Left = 520
    Top = 420
  end
  object cdsOS_Servico_Int_Mes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Servico_Int_Mes'
    Left = 552
    Top = 420
    object cdsOS_Servico_Int_MesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_Servico_Int_MesITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_Servico_Int_MesCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Required = True
    end
    object cdsOS_Servico_Int_MesANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 7
    end
    object cdsOS_Servico_Int_MesQTD_INFORMADA: TIntegerField
      FieldName = 'QTD_INFORMADA'
    end
    object cdsOS_Servico_Int_MesVLR_EXCEDENTE: TFloatField
      FieldName = 'VLR_EXCEDENTE'
    end
    object cdsOS_Servico_Int_MesQTD_ANT: TIntegerField
      FieldName = 'QTD_ANT'
    end
    object cdsOS_Servico_Int_MesQTD_ATUAL: TIntegerField
      FieldName = 'QTD_ATUAL'
    end
  end
  object dsOS_Servico_Int_Mes: TDataSource
    DataSet = cdsOS_Servico_Int_Mes
    Left = 584
    Top = 420
  end
  object qMesControle: TSQLQuery
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
    SQL.Strings = (
      'SELECT MAX(CONTROLE) CONTROLE'
      'FROM OS_SERVICO_INT_MES'
      'WHERE ID = :ID'
      '  AND ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 472
    object qMesControleCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 472
    object qParametros_SerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField
      FieldName = 'AGRUPA_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_AJUSTE_PRECO: TStringField
      FieldName = 'USA_AJUSTE_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerTIPO_COBRANCA_NFSE: TStringField
      FieldName = 'TIPO_COBRANCA_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField
      FieldName = 'GERAR_DUPLICATA_CONTRATO'
      FixedChar = True
      Size = 1
    end
  end
  object mOSAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_Contrato'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'ID_Servico_Padrao'
        DataType = ftInteger
      end
      item
        Name = 'Dia_Vencimento'
        DataType = ftInteger
      end
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Perc_Comissao'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 912
    Top = 184
    Data = {
      A70000009619E0BD010000001800000007000000000003000000A70002494404
      000100000000000B49445F436F6E747261746F04000100000000000A49445F43
      6C69656E746504000100000000001149445F5365727669636F5F50616472616F
      04000100000000000E4469615F56656E63696D656E746F04000100000000000B
      49445F56656E6465646F7204000100000000000D506572635F436F6D69737361
      6F08000400000000000000}
    object mOSAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mOSAuxID_Contrato: TIntegerField
      FieldName = 'ID_Contrato'
    end
    object mOSAuxID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mOSAuxID_Servico_Padrao: TIntegerField
      FieldName = 'ID_Servico_Padrao'
    end
    object mOSAuxDia_Vencimento: TIntegerField
      FieldName = 'Dia_Vencimento'
    end
    object mOSAuxID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mOSAuxPerc_Comissao: TFloatField
      FieldName = 'Perc_Comissao'
    end
  end
  object dsmOSAux: TDataSource
    DataSet = mOSAux
    Left = 944
    Top = 184
  end
  object mContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 184
    object mContratoID_Natureza: TIntegerField
      FieldName = 'ID_Natureza'
    end
    object mContratoISS_Retido: TStringField
      FieldName = 'ISS_Retido'
      Size = 1
    end
    object mContratoPerc_Aliquota: TFloatField
      FieldName = 'Perc_Aliquota'
    end
    object mContratoID_Servico: TIntegerField
      FieldName = 'ID_Servico'
    end
    object mContratoDiscriminacao: TMemoField
      FieldName = 'Discriminacao'
      BlobType = ftMemo
      Size = 2
    end
    object mContratoID_CondPgto: TIntegerField
      FieldName = 'ID_CondPgto'
    end
  end
  object sdsOS_Servico_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM OS_SERVICO_HIST'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :IT' +
      'EM'
    DataSource = dsOS_Servico_Int_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 152
    object sdsOS_Servico_HistID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_Servico_HistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_Servico_HistITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_Servico_HistID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsOS_Servico_HistVLR_ANT: TFloatField
      FieldName = 'VLR_ANT'
    end
    object sdsOS_Servico_HistVLR_NOVO: TFloatField
      FieldName = 'VLR_NOVO'
    end
    object sdsOS_Servico_HistDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
    object sdsOS_Servico_HistHRAJUSTE: TTimeField
      FieldName = 'HRAJUSTE'
    end
    object sdsOS_Servico_HistID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
    end
    object sdsOS_Servico_HistPERC_AJUSTE: TFloatField
      FieldName = 'PERC_AJUSTE'
    end
  end
  object cdsOS_Servico_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOS_Servico_IntsdsOS_Servico_Hist
    IndexFieldNames = 'ID;ITEM;ITEM_HIST'
    Params = <>
    OnNewRecord = cdsOS_Servico_IntNewRecord
    Left = 152
    Top = 152
    object cdsOS_Servico_HistID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_Servico_HistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_Servico_HistITEM_HIST: TIntegerField
      FieldName = 'ITEM_HIST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_Servico_HistID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOS_Servico_HistVLR_ANT: TFloatField
      FieldName = 'VLR_ANT'
    end
    object cdsOS_Servico_HistVLR_NOVO: TFloatField
      FieldName = 'VLR_NOVO'
    end
    object cdsOS_Servico_HistDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
    object cdsOS_Servico_HistHRAJUSTE: TTimeField
      FieldName = 'HRAJUSTE'
    end
    object cdsOS_Servico_HistID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
    end
    object cdsOS_Servico_HistPERC_AJUSTE: TFloatField
      FieldName = 'PERC_AJUSTE'
    end
  end
  object dsOS_Servico_Hist: TDataSource
    DataSet = cdsOS_Servico_Hist
    Left = 184
    Top = 152
  end
  object dsOS_Servico_Int_Mestre: TDataSource
    DataSet = sdsOS_Servico_Int
    Left = 24
    Top = 128
  end
  object sdsAjuste_Contrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM AJUSTE_CONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 320
    object sdsAjuste_ContratoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAjuste_ContratoDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
    object sdsAjuste_ContratoHRAJUSTE: TTimeField
      FieldName = 'HRAJUSTE'
    end
    object sdsAjuste_ContratoTIPO_AJUSTE: TStringField
      FieldName = 'TIPO_AJUSTE'
      FixedChar = True
      Size = 1
    end
    object sdsAjuste_ContratoPERC_AJUSTE: TFloatField
      FieldName = 'PERC_AJUSTE'
    end
    object sdsAjuste_ContratoQTD_CONTRATO: TIntegerField
      FieldName = 'QTD_CONTRATO'
    end
  end
  object dspAjuste_Contrato: TDataSetProvider
    DataSet = sdsAjuste_Contrato
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOSUpdateError
    Left = 88
    Top = 320
  end
  object cdsAjuste_Contrato: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAjuste_Contrato'
    Left = 120
    Top = 320
    object cdsAjuste_ContratoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAjuste_ContratoDTAJUSTE: TDateField
      FieldName = 'DTAJUSTE'
    end
    object cdsAjuste_ContratoHRAJUSTE: TTimeField
      FieldName = 'HRAJUSTE'
    end
    object cdsAjuste_ContratoTIPO_AJUSTE: TStringField
      FieldName = 'TIPO_AJUSTE'
      FixedChar = True
      Size = 1
    end
    object cdsAjuste_ContratoPERC_AJUSTE: TFloatField
      FieldName = 'PERC_AJUSTE'
    end
    object cdsAjuste_ContratoQTD_CONTRATO: TIntegerField
      FieldName = 'QTD_CONTRATO'
    end
  end
  object dsAjuste_Contrato: TDataSource
    DataSet = cdsAjuste_Contrato
    Left = 152
    Top = 320
  end
  object qParametros_Ger: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_pontos_locacao'
      'FROM parametros_geral P')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 480
    object qParametros_GerUSA_PONTOS_LOCACAO: TStringField
      FieldName = 'USA_PONTOS_LOCACAO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPontos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, p.localizacao, C.nome CIDADE, C.UF, L.nome LOGRADOU' +
      'RO, L2.nome LOGRADOURO2'#13#10'FROM PONTOS P'#13#10'INNER JOIN CIDADE C'#13#10'ON ' +
      'P.id_cidade = C.id'#13#10'INNER JOIN LOGRADOURO L'#13#10'ON P.id_logradouro ' +
      '= L.id'#13#10'LEFT JOIN LOGRADOURO L2'#13#10'ON P.id_logradouro2 = L2.id'#13#10'WH' +
      'ERE P.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 528
  end
  object dspPontos: TDataSetProvider
    DataSet = sdsPontos
    Left = 360
    Top = 528
  end
  object cdsPontos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPontos'
    Left = 392
    Top = 528
    object cdsPontosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPontosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cdsPontosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPontosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsPontosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 70
    end
    object cdsPontosLOGRADOURO2: TStringField
      FieldName = 'LOGRADOURO2'
      Size = 70
    end
  end
  object dsPontos: TDataSource
    DataSet = cdsPontos
    Left = 424
    Top = 528
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    OnNewRecord = cdsDuplicataNewRecord
    Left = 161
    Top = 453
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicatasdsDuplicata_Hist: TDataSetField
      FieldName = 'sdsDuplicata_Hist'
    end
    object cdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object cdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDuplicataVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object cdsDuplicataNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 121
    Top = 453
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 81
    Top = 453
    object sdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object sdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object sdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object sdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object sdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object sdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object sdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object sdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object sdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object sdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object sdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object sdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object sdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object sdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object sdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object sdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object sdsDuplicataVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object sdsDuplicataNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDuplicata_Mestre: TDataSource
    DataSet = sdsDuplicata
    Left = 81
    Top = 493
  end
  object sdsDuplicata_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA_HIST'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsDuplicata_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 129
    Top = 501
    object sdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object sdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
    object sdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
    end
    object sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
    end
    object sdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
    end
    object sdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object sdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object sdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object sdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object sdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsDuplicata_HistVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
  end
  object cdsDuplicata_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDuplicatasdsDuplicata_Hist
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 169
    Top = 501
    object cdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object cdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
    object cdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object cdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object cdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object cdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object cdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsDuplicata_HistVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 753
    Top = 81
  end
  object sdsCondPgto_Dia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO_DIA'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsCondPgto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 793
    Top = 100
    object sdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    Params = <>
    Left = 865
    Top = 100
    object cdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
end
