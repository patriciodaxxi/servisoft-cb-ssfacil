object DMCadOrdemServico: TDMCadOrdemServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 179
  Top = 18
  Height = 692
  Width = 1018
  object sdsOrdemServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, CLI.NOME NOME_CLIENTE, CLI.CNPJ_CPF, CLI.CIDADE, F.' +
      'NOME NOME_ATENDENTE, CP.NOME CONDPGTO, CLI.INSCR_EST, '#13#10'CLI.ENDE' +
      'RECO, CLI.NUM_END, CLI.COMPLEMENTO_END, CLI.UF, CLI.FANTASIA, CL' +
      'I.BAIRRO, CLI.CEP'#13#10'FROM ORDEMSERVICO OS'#13#10'LEFT JOIN PESSOA CLI ON' +
      ' (OS.ID_CLIENTE = CLI.CODIGO)'#13#10'LEFT JOIN FUNCIONARIO F ON (OS.ID' +
      '_FUNCIONARIO = F.CODIGO)'#13#10'LEFT JOIN CONDPGTO CP ON (OS.ID_CONDPG' +
      'TO = CP.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 8
    object sdsOrdemServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServicoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsOrdemServicoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOrdemServicoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsOrdemServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsOrdemServicoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServicoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrdemServicoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsOrdemServicoSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object sdsOrdemServicoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsOrdemServicoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsOrdemServicoENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOrdemServicoHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsOrdemServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServicoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrdemServicoVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrdemServicoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object sdsOrdemServicoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object sdsOrdemServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsOrdemServicoTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object sdsOrdemServicoSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object sdsOrdemServicoSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object sdsOrdemServicoNOME_ATENDENTE: TStringField
      FieldName = 'NOME_ATENDENTE'
      ProviderFlags = []
      Size = 50
    end
    object sdsOrdemServicoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsOrdemServicoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object sdsOrdemServicoINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsOrdemServicoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsOrdemServicoNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsOrdemServicoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsOrdemServicoAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object sdsOrdemServicoAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object sdsOrdemServicoAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object sdsOrdemServicoAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object sdsOrdemServicoMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServicoDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object sdsOrdemServicoHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object sdsOrdemServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object sdsOrdemServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsOrdemServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object sdsOrdemServicoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsOrdemServicoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object dspOrdemServico: TDataSetProvider
    DataSet = sdsOrdemServico
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOrdemServicoUpdateError
    Left = 56
    Top = 8
  end
  object cdsOrdemServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOrdemServico'
    OnNewRecord = cdsOrdemServicoNewRecord
    Left = 88
    Top = 8
    object cdsOrdemServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServicoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServicoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrdemServicoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOrdemServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrdemServicoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServicoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServicoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOrdemServicoSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOrdemServicoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOrdemServicoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServicoENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrdemServicoHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsOrdemServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsOrdemServicoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object cdsOrdemServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOrdemServicoSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object cdsOrdemServicoSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object cdsOrdemServicoNOME_ATENDENTE: TStringField
      FieldName = 'NOME_ATENDENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsOrdemServicoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOrdemServicoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsOrdemServicoINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsOrdemServicoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsOrdemServicoNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsOrdemServicoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOrdemServicoAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object cdsOrdemServicoAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object cdsOrdemServicoAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object cdsOrdemServicoAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object cdsOrdemServicoMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServicosdsOrdemServico_Itens: TDataSetField
      FieldName = 'sdsOrdemServico_Itens'
    end
    object cdsOrdemServicosdsOrdemServico_Simples: TDataSetField
      FieldName = 'sdsOrdemServico_Simples'
    end
    object cdsOrdemServicoDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrdemServicoHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object cdsOrdemServicolkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object cdsOrdemServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsOrdemServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrdemServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsOrdemServicoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsOrdemServicoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object dsOrdemServico: TDataSource
    DataSet = cdsOrdemServico
    Left = 120
    Top = 8
  end
  object sdsOrdemServico_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.ID, OS.num_os, OS.dtemissao, OS.hremissao, OS.id_clien' +
      'te, OS.dtentrega,'#13#10'OS.hrentrega, OS.num_nota, OS.num_oc, OS.seri' +
      'e_nota, OS.id_funcionario, OS.entregue,'#13#10'OS.concluido, OS.dtconc' +
      'luido, OS.filial, CLI.NOME NOME_CLIENTE, OS.SOLICITANTE_NOME,'#13#10'o' +
      's.faturado, OT.vlr_restante, OS.vlr_total, OS.vlr_entrada, OS.ST' +
      'ATUS,'#13#10'CASE'#13#10'  WHEN OS.STATUS = '#39'1'#39' THEN '#39'Entrada'#39#13#10'  WHEN OS.ST' +
      'ATUS = '#39'2'#39' THEN '#39'Or'#231'ado'#39#13#10'  WHEN OS.STATUS = '#39'3'#39' THEN '#39'Aguardand' +
      'o Aprova'#231#227'o'#39#13#10'  WHEN OS.STATUS = '#39'4'#39' THEN '#39'Liberado para Servi'#231'o' +
      #39#13#10'  WHEN OS.STATUS = '#39'5'#39' THEN '#39'Aguardando Pe'#231'as'#39#13#10'  WHEN OS.STA' +
      'TUS = '#39'6'#39' THEN '#39'Sem conserto'#39#13#10'  WHEN OS.STATUS = '#39'8'#39' THEN '#39'Pron' +
      'to'#39#13#10'  WHEN OS.STATUS = '#39'9'#39' THEN '#39'Entregue'#39#13#10'  end DESC_STATUS'#13#10 +
      'FROM ORDEMSERVICO OS'#13#10'LEFT JOIN PESSOA CLI ON (OS.ID_CLIENTE = C' +
      'LI.CODIGO)'#13#10'LEFT JOIN ORDEMSERVICO_OTICA OT ON (OS.id = OT.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 8
  end
  object dspOrdemServico_Consulta: TDataSetProvider
    DataSet = sdsOrdemServico_Consulta
    OnUpdateError = dspOrdemServicoUpdateError
    Left = 304
    Top = 8
  end
  object cdsOrdemServico_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico_Consulta'
    Left = 336
    Top = 8
    object cdsOrdemServico_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_ConsultaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServico_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrdemServico_ConsultaHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOrdemServico_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrdemServico_ConsultaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ConsultaHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServico_ConsultaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOrdemServico_ConsultaSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOrdemServico_ConsultaNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOrdemServico_ConsultaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServico_ConsultaENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrdemServico_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemServico_ConsultaSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOrdemServico_ConsultaFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsOrdemServico_ConsultaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDESC_STATUS: TStringField
      FieldName = 'DESC_STATUS'
      FixedChar = True
      Size = 21
    end
  end
  object dsOrdemServico_Consulta: TDataSource
    DataSet = cdsOrdemServico_Consulta
    Left = 376
    Top = 8
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.codigo, PES.nome, PES.fantasia, PES.endereco, PES.com' +
      'plemento_end, PES.num_end, PES.bairro,'#13#10'PES.id_cidade, PES.cidad' +
      'e, PES.uf, PES.bairro_ent, PES.bairro_pgto, pes.endereco_ent, pe' +
      's.endereco_pgto, pes.complemento_end_ent, pes.complemento_end_pg' +
      'to, pes.num_end_ent, pes.num_end_pgto, pes.cnpj_cpf, pes.cep, pe' +
      's.cep_ent, pes.cep_pgto, pes.id_cidade_ent, pes.id_cidade_pgto, ' +
      'pes.uf_ent, pes.fone_pgto, pes.cnpj_cpf_ent, PES.ID_REGIME_TRIB,' +
      ' PES.ID_PAIS, PES.PESSOA, PES.TIPO_ICMS, PES.email_nfe, PES.emai' +
      'l_nfe2, PES.INSCR_EST, PES.DDDFONE1, PES.TELEFONE1, PES.PESSOA_P' +
      'GTO, PES.CNPJ_CPG_PGTO, PES.PESSOA_ENT, PES.USA_TAMANHO_AGRUPADO' +
      '_NFE, PES.ID_TAB_PRECO, PES.VLR_LIMITE_CREDITO,  PES.usa_transfi' +
      'cms, PES.id_tipocobranca, PES.id_contaboleto, PES.id_condpgto, P' +
      'ES.cliente_conta_id,'#13#10'PES.cliente_estoque, PES.id_vendedor, PES.' +
      'PERC_COMISSAO, PES.ID_TRANSPORTADORA, PES.ID_REDESPACHO, PES.TIP' +
      'O_FRETE, PES.EMAIL_PGTO, PES.FORNECEDOR_CONTA_ID,'#13#10'PES.DDDFAX, P' +
      'ES.FAX'#13#10'FROM PESSOA PES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 72
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 304
    Top = 72
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 336
    Top = 72
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
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
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
    object cdsClienteID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 376
    Top = 72
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 126
    object sdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 304
    Top = 126
  end
  object cdsServico_Int: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 336
    Top = 126
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
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 376
    Top = 126
  end
  object sdsOrdemServico_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT OS.*'#13#10'FROM ORDEMSERVICO_ITENS OS'#13#10'WHERE OS.ID = :ID'
    DataSource = dsOrdemServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 80
    object sdsOrdemServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrdemServico_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsOrdemServico_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsOrdemServico_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsOrdemServico_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServico_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOrdemServico_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrdemServico_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrdemServico_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrdemServico_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object sdsOrdemServico_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object sdsOrdemServico_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object sdsOrdemServico_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServico_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOrdemServico_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServicosdsOrdemServico_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsOrdemServico_ItensBeforePost
    OnNewRecord = cdsOrdemServico_ItensNewRecord
    Left = 88
    Top = 80
    object cdsOrdemServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemServico_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOrdemServico_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsOrdemServico_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsOrdemServico_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOrdemServico_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrdemServico_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrdemServico_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsOrdemServico_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Mat: TDataSetField
      FieldName = 'sdsOrdemServico_Mat'
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Serv: TDataSetField
      FieldName = 'sdsOrdemServico_Serv'
    end
    object cdsOrdemServico_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object cdsOrdemServico_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object cdsOrdemServico_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Itens: TDataSource
    DataSet = cdsOrdemServico_Itens
    Left = 120
    Top = 80
  end
  object qProximo_Num: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_OS) NUM_OS'
      'FROM ORDEMSERVICO')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 435
    object qProximo_NumNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 339
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
    object qParametrosIMP_MEIA_FOLHA_PED: TStringField
      FieldName = 'IMP_MEIA_FOLHA_PED'
      FixedChar = True
      Size = 1
    end
    object qParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SERVICO_MOTOR: TStringField
      FieldName = 'USA_SERVICO_MOTOR'
      Size = 1
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 241
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 304
    Top = 241
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 336
    Top = 241
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
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cdsFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 376
    Top = 241
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FUNCIONARIO'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 182
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object sdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 304
    Top = 182
  end
  object cdsFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 336
    Top = 182
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 376
    Top = 182
  end
  object sdsOrdemServico_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OM.*'#13#10'FROM ORDEMSERVICO_MAT OM'#13#10'WHERE OM.ID = :ID'#13#10' AND O' +
      'M.ITEM = :ITEM'#13#10
    DataSource = dsOrdemServicoItens_Mestre
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
    Left = 24
    Top = 136
    object sdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrdemServico_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOrdemServico_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrdemServico_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOrdemServico_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
  end
  object cdsOrdemServico_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Mat
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    OnNewRecord = cdsOrdemServico_MatNewRecord
    Left = 88
    Top = 136
    object cdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemServico_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrdemServico_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOrdemServico_MatlkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PRODUTO'
      Size = 50
      Lookup = True
    end
    object cdsOrdemServico_MatlkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'REFERENCIA'
      KeyFields = 'ID_PRODUTO'
      Size = 30
      Lookup = True
    end
  end
  object dsOrdemServico_Mat: TDataSource
    DataSet = cdsOrdemServico_Mat
    Left = 120
    Top = 136
  end
  object sdsOrdemServico_Serv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_SERV'#13#10'WHERE ID = :ID'#13#10' AND ITEM = :I' +
      'TEM'
    DataSource = dsOrdemServicoItens_Mestre
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
    Left = 24
    Top = 184
    object sdsOrdemServico_ServID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ServITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ServITEM_SERV: TIntegerField
      FieldName = 'ITEM_SERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ServID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsOrdemServico_ServTEMPO_TOTAL: TFloatField
      FieldName = 'TEMPO_TOTAL'
    end
    object sdsOrdemServico_ServVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOrdemServico_ServVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_ServDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrdemServico_ServDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsOrdemServico_ServHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrdemServico_ServHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsOrdemServico_ServID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOrdemServico_ServFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOrdemServico_Serv: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Serv
    IndexFieldNames = 'ID;ITEM;ITEM_SERV'
    Params = <>
    OnNewRecord = cdsOrdemServico_ServNewRecord
    Left = 88
    Top = 184
    object cdsOrdemServico_ServID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ServITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ServITEM_SERV: TIntegerField
      FieldName = 'ITEM_SERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ServID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsOrdemServico_ServTEMPO_TOTAL: TFloatField
      FieldName = 'TEMPO_TOTAL'
    end
    object cdsOrdemServico_ServVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ServVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ServDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrdemServico_ServDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsOrdemServico_ServHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrdemServico_ServHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsOrdemServico_ServID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOrdemServico_ServlkServico_Int: TStringField
      FieldKind = fkLookup
      FieldName = 'lkServico_Int'
      LookupDataSet = cdsServico_Int
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_SERVICO_INT'
      Size = 50
      Lookup = True
    end
    object cdsOrdemServico_ServlkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TECNICO'
      Size = 30
      Lookup = True
    end
    object cdsOrdemServico_ServFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Serv: TDataSource
    DataSet = cdsOrdemServico_Serv
    Left = 120
    Top = 184
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 337
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
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 304
    Top = 337
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 336
    Top = 337
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
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 376
    Top = 337
  end
  object sdsConsulta_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.num_os, os.dtemissao, os.dtentrega, os.id_cliente, os.' +
      'num_nota, os.serie_nota, os.num_oc,'#13#10'CLI.NOME NOME_CLIENTE, IT.i' +
      'd_produto,  IT.nome_produto, IT.marca, IT.modelo, IT.num_serie,'#13 +
      #10'IT.defeito_alegado, IT.obs, IT.acessorios, it.concluido, it.dtc' +
      'oncluido, it.tipo_garantia,'#13#10'IT.NUM_SERIE_TROCA,'#13#10' CASE IT.TIPO_' +
      'APROV'#13#10'           WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10'           WHEN '#39'R'#39' ' +
      'THEN '#39'Reprovado'#39#13#10'            ELSE '#39#39#13#10' END AS TIPO_APROV'#13#10'FROM ' +
      'ORDEMSERVICO OS'#13#10'INNER JOIN ORDEMSERVICO_ITENS IT'#13#10'ON OS.id = IT' +
      '.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON OS.ID_CLIENTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 72
    object sdsConsulta_ItensNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsConsulta_ItensDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsConsulta_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsConsulta_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsConsulta_ItensNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsConsulta_ItensSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object sdsConsulta_ItensNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsConsulta_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsulta_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsConsulta_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsConsulta_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsConsulta_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsConsulta_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsConsulta_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsConsulta_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsConsulta_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsConsulta_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object sdsConsulta_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object cdsConsulta_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Itens'
    Left = 512
    Top = 72
    object cdsConsulta_ItensNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsulta_ItensDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_ItensNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsConsulta_ItensSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsConsulta_ItensNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsConsulta_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsConsulta_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsConsulta_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsConsulta_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsulta_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsConsulta_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object dspConsulta_Itens: TDataSetProvider
    DataSet = sdsConsulta_Itens
    Left = 480
    Top = 72
  end
  object dsConsulta_Itens: TDataSource
    DataSet = cdsConsulta_Itens
    Left = 544
    Top = 72
  end
  object qOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUM_OS'
      'FROM ORDEMSERVICO'
      'WHERE NUM_OS = :NUM_OS')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 331
    object qOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object sdsHistProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.id, it.id_produto, it.item, it.nome_produto, it.marca,' +
      ' it.modelo, it.num_serie, it.dtentrada, '#13#10'it.dtconcluido, ord.dt' +
      'emissao, ord.id_cliente, ORD.NUM_OS, CLI.NOME NOME_CLIENTE, IT.N' +
      'UM_SERIE_TROCA'#13#10'FROM ORDEMSERVICO_ITENS IT'#13#10'INNER JOIN ORDEMSERV' +
      'ICO ORD'#13#10'ON IT.ID = ORD.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON ORD.ID_CLIE' +
      'NTE = CLI.CODIGO'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 428
  end
  object dspHistProduto: TDataSetProvider
    DataSet = sdsHistProduto
    Left = 64
    Top = 428
  end
  object cdsHistProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistProduto'
    Left = 96
    Top = 428
    object cdsHistProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsHistProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsHistProdutoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsHistProdutoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsHistProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsHistProdutoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsHistProdutoNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsHistProdutoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsHistProdutoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsHistProdutoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsHistProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsHistProdutoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsHistProdutoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsHistProdutoNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
  end
  object dsHistProduto: TDataSource
    DataSet = cdsHistProduto
    Left = 128
    Top = 428
  end
  object qPesquisaOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PS.num_serie, PRO.nome NOME_PRODUTO, M.nome NOME_MARCA, C' +
        'AST('#39#39' AS VARCHAR(20)) Modelo, PRO.ID ID_PRODUTO,'
      'CAST('#39'P'#39' AS VARCHAR(20)) Tipo, PS.INATIVO'
      'FROM PRODUTO_SERIE PS'
      'INNER JOIN PRODUTO PRO'
      'ON PS.ID = PRO.ID'
      'LEFT JOIN MARCA M'
      'ON PRO.id_marca = M.id'
      'WHERE PS.NUM_SERIE = :NUM_SERIE'
      ''
      'UNION ALL'
      ''
      ''
      
        'SELECT IT.num_serie, IT.nome_produto, IT.marca NOME_MARCA, IT.mo' +
        'delo, IT.id_produto, CAST('#39'O'#39' AS VARCHAR(20)) Tipo,'
      'CAST('#39'N'#39' AS VARCHAR(20)) INATIVO'
      'FROM ORDEMSERVICO_ITENS IT'
      'WHERE (IT.NUM_SERIE = :NUM_SERIE)'
      '  or (IT.NUM_SERIE_TROCA = :NUM_SERIE)')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 387
    object qPesquisaOSNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object qPesquisaOSNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qPesquisaOSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object qPesquisaOSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qPesquisaOSNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object qPesquisaOSTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
    end
    object qPesquisaOSINATIVO: TStringField
      FieldName = 'INATIVO'
    end
  end
  object qProduto_Serie: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PS.num_serie, PRO.nome NOME_PRODUTO, M.nome NOME_MARCA, P' +
        'S.ID, PS.NUM_SERIE_SEQ'
      'FROM PRODUTO_SERIE PS'
      'INNER JOIN PRODUTO PRO'
      'ON PS.ID = PRO.ID'
      'LEFT JOIN MARCA M'
      'ON PRO.id_marca = M.id'
      'WHERE PS.NUM_SERIE = :NUM_SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 435
    object qProduto_SerieNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
    end
    object qProduto_SerieNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qProduto_SerieNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object qProduto_SerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_SerieNUM_SERIE_SEQ: TIntegerField
      FieldName = 'NUM_SERIE_SEQ'
    end
  end
  object sdsProduto_Serie: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT S.ID, S.NUM_SERIE, S.DTCADASTRO, S.INATIVO, '#13#10'S.NUM_SERIE' +
      '_SEQ, S.ITEM'#13#10'FROM PRODUTO_SERIE S'#13#10'WHERE S.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 493
    object sdsProduto_SerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_SerieNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsProduto_SerieDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsProduto_SerieINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_SerieNUM_SERIE_SEQ: TIntegerField
      FieldName = 'NUM_SERIE_SEQ'
    end
    object sdsProduto_SerieITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
  end
  object dspProduto_Serie: TDataSetProvider
    DataSet = sdsProduto_Serie
    Left = 64
    Top = 493
  end
  object cdsProduto_Serie: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Serie'
    Left = 96
    Top = 493
    object cdsProduto_SerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_SerieNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsProduto_SerieDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsProduto_SerieINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_SerieNUM_SERIE_SEQ: TIntegerField
      FieldName = 'NUM_SERIE_SEQ'
    end
    object cdsProduto_SerieITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
  end
  object dsProduto_Serie: TDataSource
    DataSet = cdsProduto_Serie
    Left = 128
    Top = 493
  end
  object qProximaSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_SERIE) NUM_SERIE'
      'FROM PRODUTO_SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 387
    object qProximaSerieNUM_SERIE: TIntegerField
      FieldName = 'NUM_SERIE'
    end
  end
  object sdsOrdemServico_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSI.*'#13#10'FROM ORDEMSERVICO_SIMPLES_ITEM OSI'#13#10'WHERE OSI.ID =' +
      ' :ID'
    DataSource = dsOrdemServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 232
    object sdsOrdemServico_SimplesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_SimplesITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_SimplesID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsOrdemServico_SimplesQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_SimplesVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOrdemServico_SimplesVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_SimplesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sdsOrdemServico_SimplesCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_SimplesFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOrdemServico_Simples: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServicosdsOrdemServico_Simples
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsOrdemServico_SimplesCalcFields
    OnNewRecord = cdsOrdemServico_SimplesNewRecord
    Left = 88
    Top = 232
    object cdsOrdemServico_SimplesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_SimplesITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_SimplesID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsOrdemServico_SimplesQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_SimplesVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_SimplesVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_SimplesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsOrdemServico_SimplesCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_SimplesclNomeServico: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeServico'
      Size = 70
      Calculated = True
    end
    object cdsOrdemServico_SimplessdsOS_Exec: TDataSetField
      FieldName = 'sdsOS_Exec'
    end
    object cdsOrdemServico_SimplesFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Simples: TDataSource
    DataSet = cdsOrdemServico_Simples
    Left = 120
    Top = 232
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, ENTRADA'#13#10'FROM CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 393
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 304
    Top = 393
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 336
    Top = 393
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 376
    Top = 393
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'I1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME FROM SERVICO_INT WHERE ID = :I1')
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 387
    object qServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object sdsOSParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORDEMSERVICO_SIMPLES_PARAM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 549
    object sdsOSParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField
      FieldName = 'LAYOUT_IMPRESSAO'
    end
    object sdsOSParametrosTAMANHO_PAPEL: TStringField
      FieldName = 'TAMANHO_PAPEL'
    end
    object sdsOSParametrosINFO_ADICIONAIS: TMemoField
      FieldName = 'INFO_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOSParametrosIMPRIMIR_VIAS: TSmallintField
      FieldName = 'IMPRIMIR_VIAS'
    end
  end
  object dspOSParametros: TDataSetProvider
    DataSet = sdsOSParametros
    Left = 64
    Top = 549
  end
  object cdsOSParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSParametros'
    Left = 96
    Top = 549
    object cdsOSParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField
      FieldName = 'LAYOUT_IMPRESSAO'
    end
    object cdsOSParametrosTAMANHO_PAPEL: TStringField
      FieldName = 'TAMANHO_PAPEL'
    end
    object cdsOSParametrosINFO_ADICIONAIS: TMemoField
      FieldName = 'INFO_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSParametrosIMPRIMIR_VIAS: TSmallintField
      FieldName = 'IMPRIMIR_VIAS'
    end
  end
  object dsOSParametros: TDataSource
    DataSet = cdsOSParametros
    Left = 128
    Top = 549
  end
  object sdsOSImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, CP.NOME COND_NOME,'#13#10'F.NOME FIL_NOME, F.NOME_INTERNO' +
      ', F.ENDERECO FIL_ENDERECO, F.NUM_END FIL_NUM_END, F.COMPLEMENTO_' +
      'END FIL_COMPL_END,'#13#10'F.BAIRRO FIL_BAIRRO, F.CEP FIL_CEP, F.CIDADE' +
      ' FIL_CIDADE, F.UF FIL_UF, F.DDD1 FIL_DDD1, F.FONE1 FIL_FONE1, F.' +
      'CNPJ_CPF FIL_CNPJ,'#13#10'F.INSCR_EST IE_FILIAL, F.ENDLOGO, F.EMAIL FI' +
      'L_EMAIL,'#13#10'C.NOME CLI_NOME, C.FANTASIA CLI_FANTASIA, C.ENDERECO C' +
      'LI_ENDERECO, C.NUM_END CLI_NUM_END, C.COMPLEMENTO_END CLI_COMPL_' +
      'END, C.EMAIL_PGTO,'#13#10'C.BAIRRO CLI_BAIRRO, C.CIDADE CLI_CIDADE, C.' +
      'UF CLI_UF, C.CEP CLI_CEP, C.DDDFONE1, C.TELEFONE1, C.CNPJ_CPF CL' +
      'I_CNPJ,'#13#10'C.INSCR_EST CLI_IE, C.NOME_CONTATO CLI_CONTATO, FUN.NOM' +
      'E TECNICO, FUN.CONSELHO, FUN.NUM_CONSELHO, VEND.NOME NOME_VENDED' +
      'OR,'#13#10'C.pessoa CLI_PESSOA, (SELECT COUNT(1) QTD_ITENS FROM ORDEMS' +
      'ERVICO_ITENS I WHERE I.ID = OS.ID)'#13#10'FROM ORDEMSERVICO OS '#13#10'INNER' +
      ' JOIN FILIAL F ON (OS.FILIAL = F.ID)'#13#10'INNER JOIN PESSOA C ON (OS' +
      '.ID_CLIENTE = C.CODIGO)'#13#10'LEFT JOIN CONDPGTO CP ON (OS.ID_CONDPGT' +
      'O = CP.ID)'#13#10'LEFT JOIN FUNCIONARIO FUN ON (OS.ID_FUNCIONARIO = FU' +
      'N.CODIGO)'#13#10'LEFT JOIN PESSOA VEND ON (OS.ID_VENDEDOR = VEND.CODIG' +
      'O)'#13#10'WHERE OS.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 126
  end
  object dspOSImp: TDataSetProvider
    DataSet = sdsOSImp
    Left = 480
    Top = 126
  end
  object cdsOSImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp'
    Left = 512
    Top = 126
    object cdsOSImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSImpNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOSImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOSImpHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOSImpID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOSImpDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOSImpHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOSImpNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOSImpSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOSImpNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOSImpID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOSImpENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOSImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOSImpHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOSImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOSImpVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOSImpVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object cdsOSImpVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsOSImpTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOSImpSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object cdsOSImpSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object cdsOSImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImpID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOSImpCOND_NOME: TStringField
      FieldName = 'COND_NOME'
      Size = 40
    end
    object cdsOSImpFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Size = 60
    end
    object cdsOSImpNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsOSImpFIL_ENDERECO: TStringField
      FieldName = 'FIL_ENDERECO'
      Size = 60
    end
    object cdsOSImpFIL_NUM_END: TStringField
      FieldName = 'FIL_NUM_END'
      Size = 15
    end
    object cdsOSImpFIL_COMPL_END: TStringField
      FieldName = 'FIL_COMPL_END'
      Size = 60
    end
    object cdsOSImpFIL_BAIRRO: TStringField
      FieldName = 'FIL_BAIRRO'
      Size = 30
    end
    object cdsOSImpFIL_CEP: TStringField
      FieldName = 'FIL_CEP'
      Size = 9
    end
    object cdsOSImpFIL_CIDADE: TStringField
      FieldName = 'FIL_CIDADE'
      Size = 40
    end
    object cdsOSImpFIL_UF: TStringField
      FieldName = 'FIL_UF'
      Size = 2
    end
    object cdsOSImpFIL_DDD1: TIntegerField
      FieldName = 'FIL_DDD1'
    end
    object cdsOSImpFIL_FONE1: TStringField
      FieldName = 'FIL_FONE1'
      Size = 15
    end
    object cdsOSImpFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 18
    end
    object cdsOSImpIE_FILIAL: TStringField
      FieldName = 'IE_FILIAL'
      Size = 18
    end
    object cdsOSImpENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsOSImpCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object cdsOSImpCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 30
    end
    object cdsOSImpCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsOSImpCLI_NUM_END: TStringField
      FieldName = 'CLI_NUM_END'
    end
    object cdsOSImpCLI_COMPL_END: TStringField
      FieldName = 'CLI_COMPL_END'
      Size = 60
    end
    object cdsOSImpCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 30
    end
    object cdsOSImpCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 40
    end
    object cdsOSImpCLI_UF: TStringField
      FieldName = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object cdsOSImpCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object cdsOSImpDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsOSImpTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsOSImpCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 18
    end
    object cdsOSImpCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Size = 18
    end
    object cdsOSImpCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 40
    end
    object cdsOSImpAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object cdsOSImpAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object cdsOSImpAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object cdsOSImpAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object cdsOSImpFIL_EMAIL: TStringField
      FieldName = 'FIL_EMAIL'
      Size = 40
    end
    object cdsOSImpTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 50
    end
    object cdsOSImpCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsOSImpNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
    object cdsOSImpEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsOSImpMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImplkAgente1: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente1'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE1'
      Size = 30
      Lookup = True
    end
    object cdsOSImplkAgente2: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente2'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE2'
      Size = 30
      Lookup = True
    end
    object cdsOSImplkAgente3: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente3'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE3'
      Size = 30
      Lookup = True
    end
    object cdsOSImplkAgente4: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente4'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE4'
      Size = 30
      Lookup = True
    end
    object cdsOSImpNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsOSImpDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOSImpHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object cdsOSImpTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpQTD_ITENS: TIntegerField
      FieldName = 'QTD_ITENS'
    end
  end
  object dsOSImp: TDataSource
    DataSet = cdsOSImp
    Left = 544
    Top = 126
  end
  object sdsOS_ItemImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSI.*, SI.NOME NOME_SERVICO'#13#10'FROM ORDEMSERVICO_SIMPLES_IT' +
      'EM OSI'#13#10'INNER JOIN SERVICO_INT SI ON (OSI.ID_SERVICO = SI.ID)'#13#10'W' +
      'HERE OSI.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 182
  end
  object dspOS_ItemImp: TDataSetProvider
    DataSet = sdsOS_ItemImp
    Left = 480
    Top = 182
  end
  object cdsOS_ItemImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_ItemImp'
    Left = 512
    Top = 182
    object cdsOS_ItemImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_ItemImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_ItemImpID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsOS_ItemImpQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_ItemImpVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOS_ItemImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOS_ItemImpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsOS_ItemImpCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ItemImpNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 70
    end
    object cdsOS_ItemImpsdsOS_ExecImp: TDataSetField
      FieldName = 'sdsOS_ExecImp'
    end
  end
  object dsOS_ItemImp: TDataSource
    DataSet = cdsOS_ItemImp
    Left = 544
    Top = 182
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41864.668858622700000000
    ReportOptions.LastChange = 43424.426620578710000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnPreview = frxReport1Preview
    Left = 664
    Top = 491
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'OS_IMP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_OS=NUM_OS'
      'DTEMISSAO=DTEMISSAO'
      'HREMISSAO=HREMISSAO'
      'ID_CLIENTE=ID_CLIENTE'
      'DTENTREGA=DTENTREGA'
      'HRENTREGA=HRENTREGA'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'NUM_OC=NUM_OC'
      'ID_FUNCIONARIO=ID_FUNCIONARIO'
      'ENTREGUE=ENTREGUE'
      'CONCLUIDO=CONCLUIDO'
      'DTCONCLUIDO=DTCONCLUIDO'
      'FILIAL=FILIAL'
      'HRCONCLUIDO=HRCONCLUIDO'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_SERVICO=VLR_SERVICO'
      'VLR_MATERIAL=VLR_MATERIAL'
      'VLR_ENTRADA=VLR_ENTRADA'
      'TP_SIMPLES=TP_SIMPLES'
      'TP_ORCAMENTO=TP_ORCAMENTO'
      'SOLICITANTE_NOME=SOLICITANTE_NOME'
      'SOLICITANTE_EMAIL=SOLICITANTE_EMAIL'
      'SOLICITANTE_FONE=SOLICITANTE_FONE'
      'OBS=OBS'
      'ID_CONDPGTO=ID_CONDPGTO'
      'COND_NOME=COND_NOME'
      'FIL_NOME=FIL_NOME'
      'NOME_INTERNO=NOME_INTERNO'
      'FIL_ENDERECO=FIL_ENDERECO'
      'FIL_NUM_END=FIL_NUM_END'
      'FIL_COMPL_END=FIL_COMPL_END'
      'FIL_BAIRRO=FIL_BAIRRO'
      'FIL_CEP=FIL_CEP'
      'FIL_CIDADE=FIL_CIDADE'
      'FIL_UF=FIL_UF'
      'FIL_DDD1=FIL_DDD1'
      'FIL_FONE1=FIL_FONE1'
      'FIL_CNPJ=FIL_CNPJ'
      'IE_FILIAL=IE_FILIAL'
      'ENDLOGO=ENDLOGO'
      'CLI_NOME=CLI_NOME'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_NUM_END=CLI_NUM_END'
      'CLI_COMPL_END=CLI_COMPL_END'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_UF=CLI_UF'
      'CLI_CEP=CLI_CEP'
      'DDDFONE1=DDDFONE1'
      'TELEFONE1=TELEFONE1'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_IE=CLI_IE'
      'CLI_CONTATO=CLI_CONTATO'
      'AGENTE1=AGENTE1'
      'AGENTE2=AGENTE2'
      'AGENTE3=AGENTE3'
      'AGENTE4=AGENTE4'
      'FIL_EMAIL=FIL_EMAIL'
      'TECNICO=TECNICO'
      'CONSELHO=CONSELHO'
      'NUM_CONSELHO=NUM_CONSELHO'
      'EMAIL_PGTO=EMAIL_PGTO'
      'MATERIAL=MATERIAL'
      'lkAgente1=lkAgente1'
      'lkAgente2=lkAgente2'
      'lkAgente3=lkAgente3'
      'lkAgente4=lkAgente4'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'DT_AGENDA=DT_AGENDA'
      'HR_AGENDA=HR_AGENDA'
      'TIPO_SERVICO=TIPO_SERVICO'
      'CLI_PESSOA=CLI_PESSOA'
      'QTD_ITENS=QTD_ITENS')
    DataSource = dsOSImp
    BCDToCurrency = False
    Left = 704
    Top = 491
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'OSITEM_IMP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_SERVICO=ID_SERVICO'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'DESCRICAO=DESCRICAO'
      'CONCLUIDO=CONCLUIDO'
      'NOME_SERVICO=NOME_SERVICO'
      '-sdsOS_ExecImp=sdsOS_ExecImp')
    DataSource = dsOS_ItemImp
    BCDToCurrency = False
    Left = 736
    Top = 491
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
    Left = 664
    Top = 539
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
    Left = 696
    Top = 539
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 264
    Top = 288
  end
  object sdsFilialRelatorios: TSQLDataSet
    CommandText = 'SELECT * '#13#10'FROM FILIAL_RELATORIOS'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 288
    object sdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    Params = <>
    Left = 336
    Top = 288
    object cdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 376
    Top = 288
  end
  object dsOSSimples_Mestre: TDataSource
    DataSet = sdsOrdemServico_Simples
    Left = 176
    Top = 280
  end
  object dsOrdemServico_Mestre: TDataSource
    DataSet = sdsOrdemServico
    Left = 176
    Top = 24
  end
  object dsOrdemServicoItens_Mestre: TDataSource
    DataSet = sdsOrdemServico_Itens
    Left = 176
    Top = 96
  end
  object sdsOS_Exec: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * FROM'#13#10'ORDEMSERVICO_SIMPLES_EXEC'#13#10'WHERE ID = :ID'#13#10' AND I' +
      'TEM = :ITEM'
    DataSource = dsOSSimples_Mestre
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
    Left = 24
    Top = 280
    object sdsOS_ExecID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_ExecITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_ExecITEM_EXEC: TIntegerField
      FieldName = 'ITEM_EXEC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOS_ExecID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOS_ExecDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object sdsOS_ExecDT_FIM: TDateField
      FieldName = 'DT_FIM'
    end
    object sdsOS_ExecHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
    end
    object sdsOS_ExecHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
  end
  object cdsOS_Exec: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_SimplessdsOS_Exec
    IndexFieldNames = 'ID;ITEM;ITEM_EXEC'
    Params = <>
    Left = 88
    Top = 280
    object cdsOS_ExecID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_ExecITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_ExecITEM_EXEC: TIntegerField
      FieldName = 'ITEM_EXEC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOS_ExecID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOS_ExecDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object cdsOS_ExecDT_FIM: TDateField
      FieldName = 'DT_FIM'
    end
    object cdsOS_ExecHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
      DisplayFormat = 'hh:nn'
    end
    object cdsOS_ExecHR_FIM: TTimeField
      FieldName = 'HR_FIM'
      DisplayFormat = 'hh:nn'
    end
    object cdsOS_ExeclkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TECNICO'
      Size = 30
      Lookup = True
    end
  end
  object dsOS_Exec: TDataSource
    DataSet = cdsOS_Exec
    Left = 120
    Top = 280
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'OSEXEC_IMP'
    CloseDataSource = False
    DataSource = dsOS_ExecImp
    BCDToCurrency = False
    Left = 768
    Top = 491
  end
  object sdsOS_ExecImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSE.*, F.NOME NOME_TECNICO'#13#10'FROM ORDEMSERVICO_SIMPLES_EXE' +
      'C OSE'#13#10'INNER JOIN FUNCIONARIO F ON (OSE.ID_TECNICO = F.CODIGO)'#13#10 +
      'WHERE OSE.ID = :ID AND OSE.ITEM = :ITEM'
    DataSource = dsOS_ItemImp_Mestre
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
    Left = 448
    Top = 241
  end
  object cdsOS_ExecImp: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOS_ItemImpsdsOS_ExecImp
    Params = <>
    Left = 512
    Top = 241
    object cdsOS_ExecImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_ExecImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_ExecImpITEM_EXEC: TIntegerField
      FieldName = 'ITEM_EXEC'
      Required = True
    end
    object cdsOS_ExecImpID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOS_ExecImpDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object cdsOS_ExecImpDT_FIM: TDateField
      FieldName = 'DT_FIM'
    end
    object cdsOS_ExecImpHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
    end
    object cdsOS_ExecImpHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
    object cdsOS_ExecImpNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
  end
  object dsOS_ExecImp: TDataSource
    DataSet = cdsOS_ExecImp
    Left = 544
    Top = 241
  end
  object dsOS_ItemImp_Mestre: TDataSource
    DataSet = sdsOS_ItemImp
    Left = 576
    Top = 182
  end
  object sdsConsulta_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.num_os, os.dtemissao, os.dtentrega, os.id_cliente, os.' +
      'num_nota, os.serie_nota, os.num_oc, OS.ID ID_OS,'#13#10'CLI.NOME NOME_' +
      'CLIENTE, IT.id_produto,  IT.nome_produto, IT.marca, IT.modelo, I' +
      'T.num_serie,'#13#10'IT.defeito_alegado, IT.obs, IT.acessorios, it.conc' +
      'luido, it.dtconcluido, it.tipo_garantia,'#13#10'IT.NUM_SERIE_TROCA, MA' +
      'T.item_mat, MAT.id_produto ID_PECA_USADA, P_MAT.NOME NOME_PECA,'#13 +
      #10'MAT.qtd QTD_MAT, MAT.qtd_restante QTD_RESTANTE_MAT , MAT.qtd_fa' +
      'turado QTD_FATURADO_MAT, MAT.vlr_unitario VLR_UNITARIO_MAT,'#13#10'MAT' +
      '.vlr_total VLR_TOTAL_MAT, MAT.faturar FATURAR_MAT, IT.ITEM ITEM_' +
      'OS,'#13#10' CASE IT.TIPO_APROV'#13#10'           WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10' ' +
      '          WHEN '#39'R'#39' THEN '#39'Reprovado'#39#13#10'            ELSE '#39#39#13#10' END A' +
      'S TIPO_APROV'#13#10'FROM ORDEMSERVICO OS'#13#10'INNER JOIN ORDEMSERVICO_ITEN' +
      'S IT'#13#10'ON OS.id = IT.ID'#13#10'INNER JOIN ORDEMSERVICO_MAT MAT'#13#10'ON IT.i' +
      'd = MAT.ID'#13#10'AND IT.item = MAT.ITEM'#13#10'INNER JOIN PRODUTO P_MAT'#13#10'ON' +
      ' MAT.id_produto = P_MAT.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON OS.ID_CLIE' +
      'NTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 8
    object sdsConsulta_MatNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsConsulta_MatDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsConsulta_MatDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsConsulta_MatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsConsulta_MatNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsConsulta_MatSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object sdsConsulta_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsConsulta_MatNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsulta_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsConsulta_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsConsulta_MatMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsConsulta_MatMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsConsulta_MatNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsConsulta_MatDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_MatOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_MatACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsulta_MatCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsConsulta_MatDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsConsulta_MatTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsConsulta_MatNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object sdsConsulta_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object sdsConsulta_MatID_PECA_USADA: TIntegerField
      FieldName = 'ID_PECA_USADA'
    end
    object sdsConsulta_MatNOME_PECA: TStringField
      FieldName = 'NOME_PECA'
      Size = 100
    end
    object sdsConsulta_MatQTD_MAT: TFloatField
      FieldName = 'QTD_MAT'
    end
    object sdsConsulta_MatQTD_RESTANTE_MAT: TFloatField
      FieldName = 'QTD_RESTANTE_MAT'
    end
    object sdsConsulta_MatQTD_FATURADO_MAT: TFloatField
      FieldName = 'QTD_FATURADO_MAT'
    end
    object sdsConsulta_MatVLR_UNITARIO_MAT: TFloatField
      FieldName = 'VLR_UNITARIO_MAT'
    end
    object sdsConsulta_MatVLR_TOTAL_MAT: TFloatField
      FieldName = 'VLR_TOTAL_MAT'
    end
    object sdsConsulta_MatFATURAR_MAT: TStringField
      FieldName = 'FATURAR_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsConsulta_MatTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
    object sdsConsulta_MatID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object sdsConsulta_MatITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
      Required = True
    end
  end
  object cdsConsulta_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Mat'
    Left = 512
    Top = 8
    object cdsConsulta_MatNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsulta_MatDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_MatDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_MatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_MatNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsConsulta_MatSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsConsulta_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsConsulta_MatNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_MatMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsConsulta_MatMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsConsulta_MatNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsConsulta_MatDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsulta_MatTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsConsulta_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsConsulta_MatID_PECA_USADA: TIntegerField
      FieldName = 'ID_PECA_USADA'
    end
    object cdsConsulta_MatNOME_PECA: TStringField
      FieldName = 'NOME_PECA'
      Size = 100
    end
    object cdsConsulta_MatQTD_MAT: TFloatField
      FieldName = 'QTD_MAT'
    end
    object cdsConsulta_MatQTD_RESTANTE_MAT: TFloatField
      FieldName = 'QTD_RESTANTE_MAT'
    end
    object cdsConsulta_MatQTD_FATURADO_MAT: TFloatField
      FieldName = 'QTD_FATURADO_MAT'
    end
    object cdsConsulta_MatVLR_UNITARIO_MAT: TFloatField
      FieldName = 'VLR_UNITARIO_MAT'
    end
    object cdsConsulta_MatVLR_TOTAL_MAT: TFloatField
      FieldName = 'VLR_TOTAL_MAT'
    end
    object cdsConsulta_MatFATURAR_MAT: TStringField
      FieldName = 'FATURAR_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsConsulta_MatID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object cdsConsulta_MatITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
      Required = True
    end
  end
  object dspConsulta_Mat: TDataSetProvider
    DataSet = sdsConsulta_Mat
    Left = 480
    Top = 8
  end
  object dsConsulta_Mat: TDataSource
    DataSet = cdsConsulta_Mat
    Left = 544
    Top = 8
  end
  object sdsOS_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA,  NP.item_notaos, NP.qtd' +
      ', NP.num_os, NT.NUMNOTA, NT.DTEMISSAO,'#13#10'NT.SERIE, NT.TIPO_NOTA'#13#10 +
      'FROM NOTAFISCAL_OS NP'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.I' +
      'D'#13#10'WHERE NP.id_os = :ID_OS'#13#10'  AND NP.item_os = :ITEM_OS'#13#10'  AND N' +
      'P.item_os_mat = :ITEM_OS_MAT'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_OS_MAT'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 344
  end
  object cdsOS_Nota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Nota'
    Left = 512
    Top = 344
    object cdsOS_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsOS_NotaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsOS_NotaITEM_NOTAOS: TIntegerField
      FieldName = 'ITEM_NOTAOS'
      Required = True
    end
    object cdsOS_NotaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_NotaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOS_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsOS_NotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOS_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsOS_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsOS_Nota: TDataSource
    DataSet = cdsOS_Nota
    Left = 544
    Top = 344
  end
  object dspOS_Nota: TDataSetProvider
    DataSet = sdsOS_Nota
    Left = 480
    Top = 344
  end
  object sdsCsmMotorServicos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CSM_MOTOR_SERVICOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 443
  end
  object dspCsmMotorServicos: TDataSetProvider
    DataSet = sdsCsmMotorServicos
    Left = 304
    Top = 443
  end
  object cdsCsmMotorServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCsmMotorServicos'
    Left = 336
    Top = 443
    object cdsCsmMotorServicosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCsmMotorServicosPOSICAO: TStringField
      FieldName = 'POSICAO'
    end
    object cdsCsmMotorServicosSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 30
    end
  end
  object dsCsmMotorServicos: TDataSource
    DataSet = cdsCsmMotorServicos
    Left = 376
    Top = 443
  end
  object sdsCsmOsMotor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CSM_OS_MOTOR'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 491
    object sdsCsmOsMotorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCsmOsMotorE_TENS_APLIC: TFloatField
      FieldName = 'E_TENS_APLIC'
    end
    object sdsCsmOsMotorE_IP: TFloatField
      FieldName = 'E_IP'
    end
    object sdsCsmOsMotorE_IA: TFloatField
      FieldName = 'E_IA'
    end
    object sdsCsmOsMotorE_RES_R_S: TFMTBCDField
      FieldName = 'E_RES_R_S'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_S_T: TFMTBCDField
      FieldName = 'E_RES_S_T'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_T_R: TFMTBCDField
      FieldName = 'E_RES_T_R'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_1_4: TFMTBCDField
      FieldName = 'E_RES_1_4'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_2_5: TFMTBCDField
      FieldName = 'E_RES_2_5'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_3_6: TFMTBCDField
      FieldName = 'E_RES_3_6'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_7_10: TFMTBCDField
      FieldName = 'E_RES_7_10'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_8_11: TFMTBCDField
      FieldName = 'E_RES_8_11'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_9_12: TFMTBCDField
      FieldName = 'E_RES_9_12'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TEMP_AMBIENTE: TFMTBCDField
      FieldName = 'E_TEMP_AMBIENTE'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TENS_APLIC_HIPOT: TFMTBCDField
      FieldName = 'E_TENS_APLIC_HIPOT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RST_MASSA: TFMTBCDField
      FieldName = 'E_RST_MASSA'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TEMP_ESTATOR: TFMTBCDField
      FieldName = 'E_TEMP_ESTATOR'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_UMIDADE: TFMTBCDField
      FieldName = 'E_UMIDADE'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_IR: TFMTBCDField
      FieldName = 'E_IR'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_IS: TFMTBCDField
      FieldName = 'E_IS'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_IT: TFMTBCDField
      FieldName = 'E_IT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_BOBINADO_T1: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_BOBINADO_T2: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_BOBINADO_T3: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_MASSA_T1: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_MASSA_T2: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_TERM_MASSA_T3: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_BOBINADO_R1: TFMTBCDField
      FieldName = 'E_RES_BOBINADO_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_BOBINADO_R2: TFMTBCDField
      FieldName = 'E_RES_BOBINADO_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_MASSA_R1: TFMTBCDField
      FieldName = 'E_RES_MASSA_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_MASSA_R2: TFMTBCDField
      FieldName = 'E_RES_MASSA_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_OHMICA_R1: TFMTBCDField
      FieldName = 'E_RES_OHMICA_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_RES_OHMICA_R2: TFMTBCDField
      FieldName = 'E_RES_OHMICA_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT1: TFMTBCDField
      FieldName = 'E_MED_PT1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT2: TFMTBCDField
      FieldName = 'E_MED_PT2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT3: TFMTBCDField
      FieldName = 'E_MED_PT3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT4: TFMTBCDField
      FieldName = 'E_MED_PT4'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT5: TFMTBCDField
      FieldName = 'E_MED_PT5'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_MED_PT6: TFMTBCDField
      FieldName = 'E_MED_PT6'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorE_CAUSA_QUEIMA: TStringField
      FieldName = 'E_CAUSA_QUEIMA'
      Size = 200
    end
    object sdsCsmOsMotorE_OBS: TStringField
      FieldName = 'E_OBS'
      Size = 200
    end
    object sdsCsmOsMotorS_TENS_APLIC: TFloatField
      FieldName = 'S_TENS_APLIC'
    end
    object sdsCsmOsMotorS_IP: TFloatField
      FieldName = 'S_IP'
    end
    object sdsCsmOsMotorS_IA: TFloatField
      FieldName = 'S_IA'
    end
    object sdsCsmOsMotorS_RES_R_S: TFMTBCDField
      FieldName = 'S_RES_R_S'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_S_T: TFMTBCDField
      FieldName = 'S_RES_S_T'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_T_R: TFMTBCDField
      FieldName = 'S_RES_T_R'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_1_4: TFMTBCDField
      FieldName = 'S_RES_1_4'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_2_5: TFMTBCDField
      FieldName = 'S_RES_2_5'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_3_6: TFMTBCDField
      FieldName = 'S_RES_3_6'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_7_10: TFMTBCDField
      FieldName = 'S_RES_7_10'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_8_11: TFMTBCDField
      FieldName = 'S_RES_8_11'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_9_12: TFMTBCDField
      FieldName = 'S_RES_9_12'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TEMP_AMBIENTE: TFMTBCDField
      FieldName = 'S_TEMP_AMBIENTE'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TENS_APLIC_HIPOT: TFMTBCDField
      FieldName = 'S_TENS_APLIC_HIPOT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RST_MASSA: TFMTBCDField
      FieldName = 'S_RST_MASSA'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TEMP_ESTATOR: TFMTBCDField
      FieldName = 'S_TEMP_ESTATOR'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_UMIDADE: TFMTBCDField
      FieldName = 'S_UMIDADE'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_IR: TFMTBCDField
      FieldName = 'S_IR'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_IS: TFMTBCDField
      FieldName = 'S_IS'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_IT: TFMTBCDField
      FieldName = 'S_IT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_BOBINADO_T1: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_BOBINADO_T2: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_BOBINADO_T3: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_MASSA_T1: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_MASSA_T2: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_TERM_MASSA_T3: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_BOBINADO_R1: TFMTBCDField
      FieldName = 'S_RES_BOBINADO_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_BOBINADO_R2: TFMTBCDField
      FieldName = 'S_RES_BOBINADO_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_MASSA_R1: TFMTBCDField
      FieldName = 'S_RES_MASSA_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_MASSA_R2: TFMTBCDField
      FieldName = 'S_RES_MASSA_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_OHMICA_R1: TFMTBCDField
      FieldName = 'S_RES_OHMICA_R1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_RES_OHMICA_R2: TFMTBCDField
      FieldName = 'S_RES_OHMICA_R2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT1: TFMTBCDField
      FieldName = 'S_MED_PT1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT2: TFMTBCDField
      FieldName = 'S_MED_PT2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT3: TFMTBCDField
      FieldName = 'S_MED_PT3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT4: TFMTBCDField
      FieldName = 'S_MED_PT4'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT5: TFMTBCDField
      FieldName = 'S_MED_PT5'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_MED_PT6: TFMTBCDField
      FieldName = 'S_MED_PT6'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorS_CAUSA_QUEIMA: TStringField
      FieldName = 'S_CAUSA_QUEIMA'
      Size = 200
    end
    object sdsCsmOsMotorS_OBS: TStringField
      FieldName = 'S_OBS'
      Size = 200
    end
    object sdsCsmOsMotorREBOBINAGEM: TStringField
      FieldName = 'REBOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorALTERACAO: TStringField
      FieldName = 'ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorMODIFICACAO: TStringField
      FieldName = 'MODIFICACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorTESTE: TStringField
      FieldName = 'TESTE'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorPLANO_PINTURA: TStringField
      FieldName = 'PLANO_PINTURA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorPLANO_PINTURA_DESC: TStringField
      FieldName = 'PLANO_PINTURA_DESC'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorCARCACA: TStringField
      FieldName = 'CARCACA'
    end
    object sdsCsmOsMotorINSP_POLIA: TStringField
      FieldName = 'INSP_POLIA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorINSP_POLIA_R: TFMTBCDField
      FieldName = 'INSP_POLIA_R'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorINSP_ACOPLAMENTO: TStringField
      FieldName = 'INSP_ACOPLAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorINSP_VENTOINHA: TStringField
      FieldName = 'INSP_VENTOINHA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorINSP_CX_LIG: TStringField
      FieldName = 'INSP_CX_LIG'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorINSP_OUTROS: TStringField
      FieldName = 'INSP_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
      Size = 15
    end
    object sdsCsmOsMotorTENSAO: TStringField
      FieldName = 'TENSAO'
      Size = 15
    end
    object sdsCsmOsMotorRPM: TStringField
      FieldName = 'RPM'
      Size = 15
    end
  end
  object dspCsmOsMotor: TDataSetProvider
    DataSet = sdsCsmOsMotor
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 304
    Top = 491
  end
  object cdsCsmOsMotor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCsmOsMotor'
    OnNewRecord = cdsCsmOsMotorNewRecord
    Left = 336
    Top = 491
    object cdsCsmOsMotorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCsmOsMotorE_TENS_APLIC: TFloatField
      FieldName = 'E_TENS_APLIC'
    end
    object cdsCsmOsMotorE_IP: TFloatField
      FieldName = 'E_IP'
    end
    object cdsCsmOsMotorE_IA: TFloatField
      FieldName = 'E_IA'
    end
    object cdsCsmOsMotorE_RES_R_S: TFMTBCDField
      FieldName = 'E_RES_R_S'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_S_T: TFMTBCDField
      FieldName = 'E_RES_S_T'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_T_R: TFMTBCDField
      FieldName = 'E_RES_T_R'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_1_4: TFMTBCDField
      FieldName = 'E_RES_1_4'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_2_5: TFMTBCDField
      FieldName = 'E_RES_2_5'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_3_6: TFMTBCDField
      FieldName = 'E_RES_3_6'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_7_10: TFMTBCDField
      FieldName = 'E_RES_7_10'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_8_11: TFMTBCDField
      FieldName = 'E_RES_8_11'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_9_12: TFMTBCDField
      FieldName = 'E_RES_9_12'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TEMP_AMBIENTE: TFMTBCDField
      FieldName = 'E_TEMP_AMBIENTE'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TENS_APLIC_HIPOT: TFMTBCDField
      FieldName = 'E_TENS_APLIC_HIPOT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RST_MASSA: TFMTBCDField
      FieldName = 'E_RST_MASSA'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TEMP_ESTATOR: TFMTBCDField
      FieldName = 'E_TEMP_ESTATOR'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_UMIDADE: TFMTBCDField
      FieldName = 'E_UMIDADE'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_IR: TFMTBCDField
      FieldName = 'E_IR'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_IS: TFMTBCDField
      FieldName = 'E_IS'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_IT: TFMTBCDField
      FieldName = 'E_IT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_BOBINADO_T1: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_BOBINADO_T2: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_BOBINADO_T3: TFMTBCDField
      FieldName = 'E_TERM_BOBINADO_T3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_MASSA_T1: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_MASSA_T2: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_TERM_MASSA_T3: TFMTBCDField
      FieldName = 'E_TERM_MASSA_T3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_BOBINADO_R1: TFMTBCDField
      FieldName = 'E_RES_BOBINADO_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_BOBINADO_R2: TFMTBCDField
      FieldName = 'E_RES_BOBINADO_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_MASSA_R1: TFMTBCDField
      FieldName = 'E_RES_MASSA_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_MASSA_R2: TFMTBCDField
      FieldName = 'E_RES_MASSA_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_OHMICA_R1: TFMTBCDField
      FieldName = 'E_RES_OHMICA_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_RES_OHMICA_R2: TFMTBCDField
      FieldName = 'E_RES_OHMICA_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT1: TFMTBCDField
      FieldName = 'E_MED_PT1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT2: TFMTBCDField
      FieldName = 'E_MED_PT2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT3: TFMTBCDField
      FieldName = 'E_MED_PT3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT4: TFMTBCDField
      FieldName = 'E_MED_PT4'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT5: TFMTBCDField
      FieldName = 'E_MED_PT5'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_MED_PT6: TFMTBCDField
      FieldName = 'E_MED_PT6'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorE_CAUSA_QUEIMA: TStringField
      FieldName = 'E_CAUSA_QUEIMA'
      Size = 200
    end
    object cdsCsmOsMotorE_OBS: TStringField
      FieldName = 'E_OBS'
      Size = 200
    end
    object cdsCsmOsMotorS_TENS_APLIC: TFloatField
      FieldName = 'S_TENS_APLIC'
    end
    object cdsCsmOsMotorS_IP: TFloatField
      FieldName = 'S_IP'
    end
    object cdsCsmOsMotorS_IA: TFloatField
      FieldName = 'S_IA'
    end
    object cdsCsmOsMotorS_RES_R_S: TFMTBCDField
      FieldName = 'S_RES_R_S'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_S_T: TFMTBCDField
      FieldName = 'S_RES_S_T'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_T_R: TFMTBCDField
      FieldName = 'S_RES_T_R'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_1_4: TFMTBCDField
      FieldName = 'S_RES_1_4'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_2_5: TFMTBCDField
      FieldName = 'S_RES_2_5'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_3_6: TFMTBCDField
      FieldName = 'S_RES_3_6'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_7_10: TFMTBCDField
      FieldName = 'S_RES_7_10'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_8_11: TFMTBCDField
      FieldName = 'S_RES_8_11'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_9_12: TFMTBCDField
      FieldName = 'S_RES_9_12'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TEMP_AMBIENTE: TFMTBCDField
      FieldName = 'S_TEMP_AMBIENTE'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TENS_APLIC_HIPOT: TFMTBCDField
      FieldName = 'S_TENS_APLIC_HIPOT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RST_MASSA: TFMTBCDField
      FieldName = 'S_RST_MASSA'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TEMP_ESTATOR: TFMTBCDField
      FieldName = 'S_TEMP_ESTATOR'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_UMIDADE: TFMTBCDField
      FieldName = 'S_UMIDADE'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_IR: TFMTBCDField
      FieldName = 'S_IR'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_IS: TFMTBCDField
      FieldName = 'S_IS'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_IT: TFMTBCDField
      FieldName = 'S_IT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_BOBINADO_T1: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_BOBINADO_T2: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_BOBINADO_T3: TFMTBCDField
      FieldName = 'S_TERM_BOBINADO_T3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_MASSA_T1: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_MASSA_T2: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_TERM_MASSA_T3: TFMTBCDField
      FieldName = 'S_TERM_MASSA_T3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_BOBINADO_R1: TFMTBCDField
      FieldName = 'S_RES_BOBINADO_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_BOBINADO_R2: TFMTBCDField
      FieldName = 'S_RES_BOBINADO_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_MASSA_R1: TFMTBCDField
      FieldName = 'S_RES_MASSA_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_MASSA_R2: TFMTBCDField
      FieldName = 'S_RES_MASSA_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_OHMICA_R1: TFMTBCDField
      FieldName = 'S_RES_OHMICA_R1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_RES_OHMICA_R2: TFMTBCDField
      FieldName = 'S_RES_OHMICA_R2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT1: TFMTBCDField
      FieldName = 'S_MED_PT1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT2: TFMTBCDField
      FieldName = 'S_MED_PT2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT3: TFMTBCDField
      FieldName = 'S_MED_PT3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT4: TFMTBCDField
      FieldName = 'S_MED_PT4'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT5: TFMTBCDField
      FieldName = 'S_MED_PT5'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_MED_PT6: TFMTBCDField
      FieldName = 'S_MED_PT6'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorS_CAUSA_QUEIMA: TStringField
      FieldName = 'S_CAUSA_QUEIMA'
      Size = 200
    end
    object cdsCsmOsMotorS_OBS: TStringField
      FieldName = 'S_OBS'
      Size = 200
    end
    object cdsCsmOsMotorREBOBINAGEM: TStringField
      FieldName = 'REBOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorALTERACAO: TStringField
      FieldName = 'ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorMODIFICACAO: TStringField
      FieldName = 'MODIFICACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorTESTE: TStringField
      FieldName = 'TESTE'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorPLANO_PINTURA: TStringField
      FieldName = 'PLANO_PINTURA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorPLANO_PINTURA_DESC: TStringField
      FieldName = 'PLANO_PINTURA_DESC'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorCARCACA: TStringField
      FieldName = 'CARCACA'
    end
    object cdsCsmOsMotorINSP_POLIA: TStringField
      FieldName = 'INSP_POLIA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorINSP_POLIA_R: TFMTBCDField
      FieldName = 'INSP_POLIA_R'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorINSP_ACOPLAMENTO: TStringField
      FieldName = 'INSP_ACOPLAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorINSP_VENTOINHA: TStringField
      FieldName = 'INSP_VENTOINHA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorINSP_CX_LIG: TStringField
      FieldName = 'INSP_CX_LIG'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorINSP_OUTROS: TStringField
      FieldName = 'INSP_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
      Size = 15
    end
    object cdsCsmOsMotorTENSAO: TStringField
      FieldName = 'TENSAO'
      Size = 15
    end
    object cdsCsmOsMotorRPM: TStringField
      FieldName = 'RPM'
      Size = 15
    end
  end
  object dsCsmOsMotor: TDataSource
    DataSet = cdsCsmOsMotor
    Left = 376
    Top = 491
  end
  object sdsCsmOsMotorServ: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OMS.*, MS.POSICAO, MS.SERVICO, 2 AS FLAG'#13#10'FROM CSM_OS_MOT' +
      'OR_SERV OMS'#13#10'INNER JOIN CSM_MOTOR_SERVICOS MS ON (OMS.ID_SERVICO' +
      ' = MS.ID)'#13#10'WHERE OMS.ID = :ID'#13#10#13#10'UNION ALL'#13#10#13#10'SELECT DISTINCT OM' +
      'S.ID,  NULL AS ID_SERVICO, OMS.MARCADO, NULL AS DESCRICAO, MS.PO' +
      'SICAO, NULL AS SERVICO, 1 AS FLAG'#13#10'FROM CSM_OS_MOTOR_SERV OMS'#13#10'I' +
      'NNER JOIN CSM_MOTOR_SERVICOS MS ON (OMS.ID_SERVICO = MS.ID)'#13#10'WHE' +
      'RE OMS.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 539
    object sdsCsmOsMotorServID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCsmOsMotorServID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCsmOsMotorServMARCADO: TStringField
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsMotorServDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sdsCsmOsMotorServPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = []
    end
    object sdsCsmOsMotorServSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 30
    end
    object sdsCsmOsMotorServFLAG: TIntegerField
      FieldName = 'FLAG'
      ProviderFlags = []
    end
  end
  object dspCsmOsMotorServ: TDataSetProvider
    DataSet = sdsCsmOsMotorServ
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 539
  end
  object cdsCsmOsMotorServ: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'POSICAO;FLAG'
    Params = <>
    ProviderName = 'dspCsmOsMotorServ'
    Left = 336
    Top = 539
    object cdsCsmOsMotorServID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCsmOsMotorServID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCsmOsMotorServMARCADO: TStringField
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsMotorServDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCsmOsMotorServPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = []
    end
    object cdsCsmOsMotorServSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCsmOsMotorServFLAG: TIntegerField
      FieldName = 'FLAG'
      ProviderFlags = []
    end
  end
  object dsCsmOsMotorServ: TDataSource
    DataSet = cdsCsmOsMotorServ
    Left = 376
    Top = 539
  end
  object sdsCsmOsTransformador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CSM_OS_TRANSFORMADOR'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 443
    object sdsCsmOsTransformadorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCsmOsTransformadorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object sdsCsmOsTransformadorPARAFUSOS: TStringField
      FieldName = 'PARAFUSOS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorACESSORIOS_ESP: TStringField
      FieldName = 'ACESSORIOS_ESP'
      Size = 100
    end
    object sdsCsmOsTransformadorBOBINAGEM: TStringField
      FieldName = 'BOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorCONSTRUCAO: TStringField
      FieldName = 'CONSTRUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorOUTROS: TStringField
      FieldName = 'OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorOUTROS_DESC: TStringField
      FieldName = 'OUTROS_DESC'
      Size = 100
    end
    object sdsCsmOsTransformadorBOB_AT_REBOBINAR: TStringField
      FieldName = 'BOB_AT_REBOBINAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBOB_AT_COLUNAS: TSmallintField
      FieldName = 'BOB_AT_COLUNAS'
    end
    object sdsCsmOsTransformadorBOB_AT_REISOLAR: TStringField
      FieldName = 'BOB_AT_REISOLAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorCOMUTADOR_NOVO: TStringField
      FieldName = 'COMUTADOR_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorCOMUTADOR_RECUPERAR: TStringField
      FieldName = 'COMUTADOR_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorCOMUTADOR_CABOS: TStringField
      FieldName = 'COMUTADOR_CABOS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_AT_NOVO: TStringField
      FieldName = 'BUC_AT_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_AT_PRESILHA: TStringField
      FieldName = 'BUC_AT_PRESILHA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_AT_JUNTAS: TStringField
      FieldName = 'BUC_AT_JUNTAS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_BT_NOVO: TStringField
      FieldName = 'BUC_BT_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_BT_PRESILHA: TStringField
      FieldName = 'BUC_BT_PRESILHA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBUC_BT_JUNTAS: TStringField
      FieldName = 'BUC_BT_JUNTAS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorTAN_NOVO: TStringField
      FieldName = 'TAN_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorTAN_RECUPERAR: TStringField
      FieldName = 'TAN_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorTAN_JATEAR: TStringField
      FieldName = 'TAN_JATEAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorIMPREG_VERNIZ: TStringField
      FieldName = 'IMPREG_VERNIZ'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorIMPREG_RESINA: TStringField
      FieldName = 'IMPREG_RESINA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorIMPREG_OUTROS: TStringField
      FieldName = 'IMPREG_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorIMPREG_OUTROS_DESC: TStringField
      FieldName = 'IMPREG_OUTROS_DESC'
      Size = 100
    end
    object sdsCsmOsTransformadorOLEO_NOVO: TStringField
      FieldName = 'OLEO_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorOLEO_TRATAR: TStringField
      FieldName = 'OLEO_TRATAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorOLEO_LITROS: TFMTBCDField
      FieldName = 'OLEO_LITROS'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorACESS_NOVO: TStringField
      FieldName = 'ACESS_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorACESS_RECUPERAR: TStringField
      FieldName = 'ACESS_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorVOLTS_PRIM: TFMTBCDField
      FieldName = 'VOLTS_PRIM'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorVOLTS_SEC: TFMTBCDField
      FieldName = 'VOLTS_SEC'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorAMP_PRIM: TFMTBCDField
      FieldName = 'AMP_PRIM'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorAMP_SEC: TFMTBCDField
      FieldName = 'AMP_SEC'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorESPIRAS_PRIM: TSmallintField
      FieldName = 'ESPIRAS_PRIM'
    end
    object sdsCsmOsTransformadorESPIRAS_PRIM_FIO: TSmallintField
      FieldName = 'ESPIRAS_PRIM_FIO'
    end
    object sdsCsmOsTransformadorESPIRAS_SEC: TSmallintField
      FieldName = 'ESPIRAS_SEC'
    end
    object sdsCsmOsTransformadorESPIRAS_SEC_FIO: TSmallintField
      FieldName = 'ESPIRAS_SEC_FIO'
    end
    object sdsCsmOsTransformadorCAMADAS_PRIM: TSmallintField
      FieldName = 'CAMADAS_PRIM'
    end
    object sdsCsmOsTransformadorCAMADAS_SEC: TSmallintField
      FieldName = 'CAMADAS_SEC'
    end
    object sdsCsmOsTransformadorTAM_FORMA: TFMTBCDField
      FieldName = 'TAM_FORMA'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTAM_NUCLEO: TFMTBCDField
      FieldName = 'TAM_NUCLEO'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorESQUEMA_LIG: TStringField
      FieldName = 'ESQUEMA_LIG'
      Size = 10
    end
    object sdsCsmOsTransformadorPESO_FIO: TFMTBCDField
      FieldName = 'PESO_FIO'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorVISTO_OUTROS: TStringField
      FieldName = 'VISTO_OUTROS'
      Size = 100
    end
    object sdsCsmOsTransformadorRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 30
    end
    object sdsCsmOsTransformadorH1_H2: TFMTBCDField
      FieldName = 'H1_H2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorH1_H3: TFMTBCDField
      FieldName = 'H1_H3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorH2_H3: TFMTBCDField
      FieldName = 'H2_H3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorX0_X1: TFMTBCDField
      FieldName = 'X0_X1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorX0_X2: TFMTBCDField
      FieldName = 'X0_X2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorX0_X3: TFMTBCDField
      FieldName = 'X0_X3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_1: TFMTBCDField
      FieldName = 'TENSAO_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_2: TFMTBCDField
      FieldName = 'TENSAO_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_3: TFMTBCDField
      FieldName = 'TENSAO_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_1_1: TFMTBCDField
      FieldName = 'FASE_1_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_1_2: TFMTBCDField
      FieldName = 'FASE_1_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_1_3: TFMTBCDField
      FieldName = 'FASE_1_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_2_1: TFMTBCDField
      FieldName = 'FASE_2_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_2_2: TFMTBCDField
      FieldName = 'FASE_2_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_2_3: TFMTBCDField
      FieldName = 'FASE_2_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_3_1: TFMTBCDField
      FieldName = 'FASE_3_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_3_2: TFMTBCDField
      FieldName = 'FASE_3_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorFASE_3_3: TFMTBCDField
      FieldName = 'FASE_3_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorREL_NOM_1: TFMTBCDField
      FieldName = 'REL_NOM_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorREL_NOM_2: TFMTBCDField
      FieldName = 'REL_NOM_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorREL_NOM_3: TFMTBCDField
      FieldName = 'REL_NOM_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorVAR_1: TFMTBCDField
      FieldName = 'VAR_1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorVAR_2: TFMTBCDField
      FieldName = 'VAR_2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorVAR_3: TFMTBCDField
      FieldName = 'VAR_3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_AT: TFMTBCDField
      FieldName = 'TENSAO_AT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_FASE1: TFMTBCDField
      FieldName = 'TENSAO_FASE1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_FASE2: TFMTBCDField
      FieldName = 'TENSAO_FASE2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_FASE3: TFMTBCDField
      FieldName = 'TENSAO_FASE3'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorAT_BT: TFMTBCDField
      FieldName = 'AT_BT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorAT_BTM: TFMTBCDField
      FieldName = 'AT_BTM'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorRIGIDEZ_OLEO: TFMTBCDField
      FieldName = 'RIGIDEZ_OLEO'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorREBOBINAGEM: TStringField
      FieldName = 'REBOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorMODIFICACAO: TStringField
      FieldName = 'MODIFICACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorTESTE: TStringField
      FieldName = 'TESTE'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBOB_BT_REBOBINAR: TStringField
      FieldName = 'BOB_BT_REBOBINAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorBOB_BT_COLUNAS: TSmallintField
      FieldName = 'BOB_BT_COLUNAS'
    end
    object sdsCsmOsTransformadorBOB_BT_REISOLAR: TStringField
      FieldName = 'BOB_BT_REISOLAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsTransformadorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
      Size = 10
    end
    object sdsCsmOsTransformadorMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object sdsCsmOsTransformadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsCsmOsTransformadorITEM_NAO_CONFORME: TStringField
      FieldName = 'ITEM_NAO_CONFORME'
      Size = 50
    end
    object sdsCsmOsTransformadorACESS_TESTE: TStringField
      FieldName = 'ACESS_TESTE'
      Size = 30
    end
    object sdsCsmOsTransformadorESTANQUEIDADE: TStringField
      FieldName = 'ESTANQUEIDADE'
      Size = 30
    end
    object sdsCsmOsTransformadorTENSAO_LIG_AT: TFMTBCDField
      FieldName = 'TENSAO_LIG_AT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorTENSAO_LIG_BT: TFMTBCDField
      FieldName = 'TENSAO_LIG_BT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorRESP_MONTAGEM: TIntegerField
      FieldName = 'RESP_MONTAGEM'
    end
    object sdsCsmOsTransformadorRESP_SUPERVISAO: TIntegerField
      FieldName = 'RESP_SUPERVISAO'
    end
    object sdsCsmOsTransformadorTRAFO_OUTROS: TStringField
      FieldName = 'TRAFO_OUTROS'
      Size = 50
    end
    object sdsCsmOsTransformadorBT_ATM: TFMTBCDField
      FieldName = 'BT_ATM'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsTransformadorORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCsmOsTransformador: TDataSetProvider
    DataSet = sdsCsmOsTransformador
    Left = 480
    Top = 443
  end
  object cdsCsmOsTransformador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCsmOsTransformador'
    OnNewRecord = cdsCsmOsTransformadorNewRecord
    Left = 512
    Top = 443
    object cdsCsmOsTransformadorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCsmOsTransformadorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object cdsCsmOsTransformadorPARAFUSOS: TStringField
      FieldName = 'PARAFUSOS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorACESSORIOS_ESP: TStringField
      FieldName = 'ACESSORIOS_ESP'
      Size = 100
    end
    object cdsCsmOsTransformadorBOBINAGEM: TStringField
      FieldName = 'BOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorCONSTRUCAO: TStringField
      FieldName = 'CONSTRUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorOUTROS: TStringField
      FieldName = 'OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorOUTROS_DESC: TStringField
      FieldName = 'OUTROS_DESC'
      Size = 100
    end
    object cdsCsmOsTransformadorBOB_AT_REBOBINAR: TStringField
      FieldName = 'BOB_AT_REBOBINAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBOB_AT_COLUNAS: TSmallintField
      FieldName = 'BOB_AT_COLUNAS'
    end
    object cdsCsmOsTransformadorBOB_AT_REISOLAR: TStringField
      FieldName = 'BOB_AT_REISOLAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorCOMUTADOR_NOVO: TStringField
      FieldName = 'COMUTADOR_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorCOMUTADOR_RECUPERAR: TStringField
      FieldName = 'COMUTADOR_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorCOMUTADOR_CABOS: TStringField
      FieldName = 'COMUTADOR_CABOS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_AT_NOVO: TStringField
      FieldName = 'BUC_AT_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_AT_PRESILHA: TStringField
      FieldName = 'BUC_AT_PRESILHA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_AT_JUNTAS: TStringField
      FieldName = 'BUC_AT_JUNTAS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_BT_NOVO: TStringField
      FieldName = 'BUC_BT_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_BT_PRESILHA: TStringField
      FieldName = 'BUC_BT_PRESILHA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBUC_BT_JUNTAS: TStringField
      FieldName = 'BUC_BT_JUNTAS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorTAN_NOVO: TStringField
      FieldName = 'TAN_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorTAN_RECUPERAR: TStringField
      FieldName = 'TAN_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorTAN_JATEAR: TStringField
      FieldName = 'TAN_JATEAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorIMPREG_VERNIZ: TStringField
      FieldName = 'IMPREG_VERNIZ'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorIMPREG_RESINA: TStringField
      FieldName = 'IMPREG_RESINA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorIMPREG_OUTROS: TStringField
      FieldName = 'IMPREG_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorIMPREG_OUTROS_DESC: TStringField
      FieldName = 'IMPREG_OUTROS_DESC'
      Size = 100
    end
    object cdsCsmOsTransformadorOLEO_NOVO: TStringField
      FieldName = 'OLEO_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorOLEO_TRATAR: TStringField
      FieldName = 'OLEO_TRATAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorOLEO_LITROS: TFMTBCDField
      FieldName = 'OLEO_LITROS'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorACESS_NOVO: TStringField
      FieldName = 'ACESS_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorACESS_RECUPERAR: TStringField
      FieldName = 'ACESS_RECUPERAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorVOLTS_PRIM: TFMTBCDField
      FieldName = 'VOLTS_PRIM'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorVOLTS_SEC: TFMTBCDField
      FieldName = 'VOLTS_SEC'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorAMP_PRIM: TFMTBCDField
      FieldName = 'AMP_PRIM'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorAMP_SEC: TFMTBCDField
      FieldName = 'AMP_SEC'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorESPIRAS_PRIM: TSmallintField
      FieldName = 'ESPIRAS_PRIM'
    end
    object cdsCsmOsTransformadorESPIRAS_PRIM_FIO: TSmallintField
      FieldName = 'ESPIRAS_PRIM_FIO'
    end
    object cdsCsmOsTransformadorESPIRAS_SEC: TSmallintField
      FieldName = 'ESPIRAS_SEC'
    end
    object cdsCsmOsTransformadorESPIRAS_SEC_FIO: TSmallintField
      FieldName = 'ESPIRAS_SEC_FIO'
    end
    object cdsCsmOsTransformadorCAMADAS_PRIM: TSmallintField
      FieldName = 'CAMADAS_PRIM'
    end
    object cdsCsmOsTransformadorCAMADAS_SEC: TSmallintField
      FieldName = 'CAMADAS_SEC'
    end
    object cdsCsmOsTransformadorTAM_FORMA: TFMTBCDField
      FieldName = 'TAM_FORMA'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTAM_NUCLEO: TFMTBCDField
      FieldName = 'TAM_NUCLEO'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorESQUEMA_LIG: TStringField
      FieldName = 'ESQUEMA_LIG'
      Size = 10
    end
    object cdsCsmOsTransformadorPESO_FIO: TFMTBCDField
      FieldName = 'PESO_FIO'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorVISTO_OUTROS: TStringField
      FieldName = 'VISTO_OUTROS'
      Size = 100
    end
    object cdsCsmOsTransformadorRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 30
    end
    object cdsCsmOsTransformadorH1_H2: TFMTBCDField
      FieldName = 'H1_H2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorH1_H3: TFMTBCDField
      FieldName = 'H1_H3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorH2_H3: TFMTBCDField
      FieldName = 'H2_H3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorX0_X1: TFMTBCDField
      FieldName = 'X0_X1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorX0_X2: TFMTBCDField
      FieldName = 'X0_X2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorX0_X3: TFMTBCDField
      FieldName = 'X0_X3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_1: TFMTBCDField
      FieldName = 'TENSAO_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_2: TFMTBCDField
      FieldName = 'TENSAO_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_3: TFMTBCDField
      FieldName = 'TENSAO_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_1_1: TFMTBCDField
      FieldName = 'FASE_1_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_1_2: TFMTBCDField
      FieldName = 'FASE_1_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_1_3: TFMTBCDField
      FieldName = 'FASE_1_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_2_1: TFMTBCDField
      FieldName = 'FASE_2_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_2_2: TFMTBCDField
      FieldName = 'FASE_2_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_2_3: TFMTBCDField
      FieldName = 'FASE_2_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_3_1: TFMTBCDField
      FieldName = 'FASE_3_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_3_2: TFMTBCDField
      FieldName = 'FASE_3_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorFASE_3_3: TFMTBCDField
      FieldName = 'FASE_3_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorREL_NOM_1: TFMTBCDField
      FieldName = 'REL_NOM_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorREL_NOM_2: TFMTBCDField
      FieldName = 'REL_NOM_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorREL_NOM_3: TFMTBCDField
      FieldName = 'REL_NOM_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorVAR_1: TFMTBCDField
      FieldName = 'VAR_1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorVAR_2: TFMTBCDField
      FieldName = 'VAR_2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorVAR_3: TFMTBCDField
      FieldName = 'VAR_3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_AT: TFMTBCDField
      FieldName = 'TENSAO_AT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_FASE1: TFMTBCDField
      FieldName = 'TENSAO_FASE1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_FASE2: TFMTBCDField
      FieldName = 'TENSAO_FASE2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_FASE3: TFMTBCDField
      FieldName = 'TENSAO_FASE3'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorAT_BT: TFMTBCDField
      FieldName = 'AT_BT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorAT_BTM: TFMTBCDField
      FieldName = 'AT_BTM'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorRIGIDEZ_OLEO: TFMTBCDField
      FieldName = 'RIGIDEZ_OLEO'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorREBOBINAGEM: TStringField
      FieldName = 'REBOBINAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorMODIFICACAO: TStringField
      FieldName = 'MODIFICACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorTESTE: TStringField
      FieldName = 'TESTE'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBOB_BT_REBOBINAR: TStringField
      FieldName = 'BOB_BT_REBOBINAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorBOB_BT_COLUNAS: TSmallintField
      FieldName = 'BOB_BT_COLUNAS'
    end
    object cdsCsmOsTransformadorBOB_BT_REISOLAR: TStringField
      FieldName = 'BOB_BT_REISOLAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsTransformadorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
      Size = 10
    end
    object cdsCsmOsTransformadorMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object cdsCsmOsTransformadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsCsmOsTransformadorITEM_NAO_CONFORME: TStringField
      FieldName = 'ITEM_NAO_CONFORME'
      Size = 50
    end
    object cdsCsmOsTransformadorACESS_TESTE: TStringField
      FieldName = 'ACESS_TESTE'
      Size = 30
    end
    object cdsCsmOsTransformadorESTANQUEIDADE: TStringField
      FieldName = 'ESTANQUEIDADE'
      Size = 30
    end
    object cdsCsmOsTransformadorTENSAO_LIG_AT: TFMTBCDField
      FieldName = 'TENSAO_LIG_AT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorTENSAO_LIG_BT: TFMTBCDField
      FieldName = 'TENSAO_LIG_BT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorRESP_MONTAGEM: TIntegerField
      FieldName = 'RESP_MONTAGEM'
    end
    object cdsCsmOsTransformadorRESP_SUPERVISAO: TIntegerField
      FieldName = 'RESP_SUPERVISAO'
    end
    object cdsCsmOsTransformadorTRAFO_OUTROS: TStringField
      FieldName = 'TRAFO_OUTROS'
      Size = 50
    end
    object cdsCsmOsTransformadorBT_ATM: TFMTBCDField
      FieldName = 'BT_ATM'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsTransformadorORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCsmOsTransformador: TDataSource
    DataSet = cdsCsmOsTransformador
    Left = 544
    Top = 443
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxCsmOsMotor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'E_TENS_APLIC=E_TENS_APLIC'
      'E_IP=E_IP'
      'E_IA=E_IA'
      'E_RES_R_S=E_RES_R_S'
      'E_RES_S_T=E_RES_S_T'
      'E_RES_T_R=E_RES_T_R'
      'E_RES_1_4=E_RES_1_4'
      'E_RES_2_5=E_RES_2_5'
      'E_RES_3_6=E_RES_3_6'
      'E_RES_7_10=E_RES_7_10'
      'E_RES_8_11=E_RES_8_11'
      'E_RES_9_12=E_RES_9_12'
      'E_TEMP_AMBIENTE=E_TEMP_AMBIENTE'
      'E_TENS_APLIC_HIPOT=E_TENS_APLIC_HIPOT'
      'E_RST_MASSA=E_RST_MASSA'
      'E_TEMP_ESTATOR=E_TEMP_ESTATOR'
      'E_UMIDADE=E_UMIDADE'
      'E_IR=E_IR'
      'E_IS=E_IS'
      'E_IT=E_IT'
      'E_TERM_BOBINADO_T1=E_TERM_BOBINADO_T1'
      'E_TERM_BOBINADO_T2=E_TERM_BOBINADO_T2'
      'E_TERM_BOBINADO_T3=E_TERM_BOBINADO_T3'
      'E_TERM_MASSA_T1=E_TERM_MASSA_T1'
      'E_TERM_MASSA_T2=E_TERM_MASSA_T2'
      'E_TERM_MASSA_T3=E_TERM_MASSA_T3'
      'E_RES_BOBINADO_R1=E_RES_BOBINADO_R1'
      'E_RES_BOBINADO_R2=E_RES_BOBINADO_R2'
      'E_RES_MASSA_R1=E_RES_MASSA_R1'
      'E_RES_MASSA_R2=E_RES_MASSA_R2'
      'E_RES_OHMICA_R1=E_RES_OHMICA_R1'
      'E_RES_OHMICA_R2=E_RES_OHMICA_R2'
      'E_MED_PT1=E_MED_PT1'
      'E_MED_PT2=E_MED_PT2'
      'E_MED_PT3=E_MED_PT3'
      'E_MED_PT4=E_MED_PT4'
      'E_MED_PT5=E_MED_PT5'
      'E_MED_PT6=E_MED_PT6'
      'E_CAUSA_QUEIMA=E_CAUSA_QUEIMA'
      'E_OBS=E_OBS'
      'S_TENS_APLIC=S_TENS_APLIC'
      'S_IP=S_IP'
      'S_IA=S_IA'
      'S_RES_R_S=S_RES_R_S'
      'S_RES_S_T=S_RES_S_T'
      'S_RES_T_R=S_RES_T_R'
      'S_RES_1_4=S_RES_1_4'
      'S_RES_2_5=S_RES_2_5'
      'S_RES_3_6=S_RES_3_6'
      'S_RES_7_10=S_RES_7_10'
      'S_RES_8_11=S_RES_8_11'
      'S_RES_9_12=S_RES_9_12'
      'S_TEMP_AMBIENTE=S_TEMP_AMBIENTE'
      'S_TENS_APLIC_HIPOT=S_TENS_APLIC_HIPOT'
      'S_RST_MASSA=S_RST_MASSA'
      'S_TEMP_ESTATOR=S_TEMP_ESTATOR'
      'S_UMIDADE=S_UMIDADE'
      'S_IR=S_IR'
      'S_IS=S_IS'
      'S_IT=S_IT'
      'S_TERM_BOBINADO_T1=S_TERM_BOBINADO_T1'
      'S_TERM_BOBINADO_T2=S_TERM_BOBINADO_T2'
      'S_TERM_BOBINADO_T3=S_TERM_BOBINADO_T3'
      'S_TERM_MASSA_T1=S_TERM_MASSA_T1'
      'S_TERM_MASSA_T2=S_TERM_MASSA_T2'
      'S_TERM_MASSA_T3=S_TERM_MASSA_T3'
      'S_RES_BOBINADO_R1=S_RES_BOBINADO_R1'
      'S_RES_BOBINADO_R2=S_RES_BOBINADO_R2'
      'S_RES_MASSA_R1=S_RES_MASSA_R1'
      'S_RES_MASSA_R2=S_RES_MASSA_R2'
      'S_RES_OHMICA_R1=S_RES_OHMICA_R1'
      'S_RES_OHMICA_R2=S_RES_OHMICA_R2'
      'S_MED_PT1=S_MED_PT1'
      'S_MED_PT2=S_MED_PT2'
      'S_MED_PT3=S_MED_PT3'
      'S_MED_PT4=S_MED_PT4'
      'S_MED_PT5=S_MED_PT5'
      'S_MED_PT6=S_MED_PT6'
      'S_CAUSA_QUEIMA=S_CAUSA_QUEIMA'
      'S_OBS=S_OBS'
      'REBOBINAGEM=REBOBINAGEM'
      'ALTERACAO=ALTERACAO'
      'MODIFICACAO=MODIFICACAO'
      'ORCAMENTO=ORCAMENTO'
      'TESTE=TESTE'
      'PLANO_PINTURA=PLANO_PINTURA'
      'PLANO_PINTURA_DESC=PLANO_PINTURA_DESC'
      'POTENCIA=POTENCIA'
      'TENSAO=TENSAO'
      'RPM=RPM'
      'CARCACA=CARCACA'
      'INSP_POLIA=INSP_POLIA'
      'INSP_POLIA_R=INSP_POLIA_R'
      'INSP_ACOPLAMENTO=INSP_ACOPLAMENTO'
      'INSP_VENTOINHA=INSP_VENTOINHA'
      'INSP_CX_LIG=INSP_CX_LIG'
      'INSP_OUTROS=INSP_OUTROS')
    DataSet = cdsCsmOsMotor
    BCDToCurrency = False
    Left = 408
    Top = 491
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxCsmOsMotorServ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_SERVICO=ID_SERVICO'
      'MARCADO=MARCADO'
      'DESCRICAO=DESCRICAO'
      'POSICAO=POSICAO'
      'SERVICO=SERVICO'
      '-FLAG=FLAG')
    DataSet = cdsCsmOsMotorServ
    BCDToCurrency = False
    Left = 408
    Top = 539
  end
  object sdsOsItem_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM ORDEMSERVICO_ITENS'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 286
  end
  object dspOsItem_Imp: TDataSetProvider
    DataSet = sdsOsItem_Imp
    Left = 480
    Top = 286
  end
  object cdsOsItem_Imp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOsItem_Imp'
    Left = 512
    Top = 286
    object cdsOsItem_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOsItem_ImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOsItem_ImpID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOsItem_ImpNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOsItem_ImpMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsOsItem_ImpMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsOsItem_ImpDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOsItem_ImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOsItem_ImpACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOsItem_ImpCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOsItem_ImpDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOsItem_ImpID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOsItem_ImpTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsOsItem_ImpDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOsItem_ImpHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOsItem_ImpHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOsItem_ImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOsItem_ImpVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOsItem_ImpVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object cdsOsItem_ImpDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOsItem_ImpNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsOsItem_ImpNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsOsItem_ImpTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
  end
  object dsOsItem_Imp: TDataSource
    DataSet = cdsOsItem_Imp
    Left = 544
    Top = 286
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'OS_ITEM'
    CloseDataSource = False
    DataSet = cdsOsItem_Imp
    BCDToCurrency = False
    Left = 576
    Top = 286
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 736
    Top = 539
  end
  object frxCsmOsTrafo: TfrxDBDataset
    UserName = 'frxCsmOsTrafo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ESTADO=ESTADO'
      'PARAFUSOS=PARAFUSOS'
      'ACESSORIOS=ACESSORIOS'
      'ACESSORIOS_ESP=ACESSORIOS_ESP'
      'BOBINAGEM=BOBINAGEM'
      'CONSTRUCAO=CONSTRUCAO'
      'OUTROS=OUTROS'
      'OUTROS_DESC=OUTROS_DESC'
      'BOB_AT_REBOBINAR=BOB_AT_REBOBINAR'
      'BOB_AT_COLUNAS=BOB_AT_COLUNAS'
      'BOB_AT_REISOLAR=BOB_AT_REISOLAR'
      'COMUTADOR_NOVO=COMUTADOR_NOVO'
      'COMUTADOR_RECUPERAR=COMUTADOR_RECUPERAR'
      'COMUTADOR_CABOS=COMUTADOR_CABOS'
      'BUC_AT_NOVO=BUC_AT_NOVO'
      'BUC_AT_PRESILHA=BUC_AT_PRESILHA'
      'BUC_AT_JUNTAS=BUC_AT_JUNTAS'
      'BUC_BT_NOVO=BUC_BT_NOVO'
      'BUC_BT_PRESILHA=BUC_BT_PRESILHA'
      'BUC_BT_JUNTAS=BUC_BT_JUNTAS'
      'TAN_NOVO=TAN_NOVO'
      'TAN_RECUPERAR=TAN_RECUPERAR'
      'TAN_JATEAR=TAN_JATEAR'
      'IMPREG_VERNIZ=IMPREG_VERNIZ'
      'IMPREG_RESINA=IMPREG_RESINA'
      'IMPREG_OUTROS=IMPREG_OUTROS'
      'IMPREG_OUTROS_DESC=IMPREG_OUTROS_DESC'
      'OLEO_NOVO=OLEO_NOVO'
      'OLEO_TRATAR=OLEO_TRATAR'
      'OLEO_LITROS=OLEO_LITROS'
      'ACESS_NOVO=ACESS_NOVO'
      'ACESS_RECUPERAR=ACESS_RECUPERAR'
      'VOLTS_PRIM=VOLTS_PRIM'
      'VOLTS_SEC=VOLTS_SEC'
      'AMP_PRIM=AMP_PRIM'
      'AMP_SEC=AMP_SEC'
      'ESPIRAS_PRIM=ESPIRAS_PRIM'
      'ESPIRAS_PRIM_FIO=ESPIRAS_PRIM_FIO'
      'ESPIRAS_SEC=ESPIRAS_SEC'
      'ESPIRAS_SEC_FIO=ESPIRAS_SEC_FIO'
      'CAMADAS_PRIM=CAMADAS_PRIM'
      'CAMADAS_SEC=CAMADAS_SEC'
      'TAM_FORMA=TAM_FORMA'
      'TAM_NUCLEO=TAM_NUCLEO'
      'ESQUEMA_LIG=ESQUEMA_LIG'
      'PESO_FIO=PESO_FIO'
      'VISTO_OUTROS=VISTO_OUTROS'
      'RESPONSAVEL=RESPONSAVEL'
      'H1_H2=H1_H2'
      'H1_H3=H1_H3'
      'H2_H3=H2_H3'
      'X0_X1=X0_X1'
      'X0_X2=X0_X2'
      'X0_X3=X0_X3'
      'TENSAO_1=TENSAO_1'
      'TENSAO_2=TENSAO_2'
      'TENSAO_3=TENSAO_3'
      'FASE_1_1=FASE_1_1'
      'FASE_1_2=FASE_1_2'
      'FASE_1_3=FASE_1_3'
      'FASE_2_1=FASE_2_1'
      'FASE_2_2=FASE_2_2'
      'FASE_2_3=FASE_2_3'
      'FASE_3_1=FASE_3_1'
      'FASE_3_2=FASE_3_2'
      'FASE_3_3=FASE_3_3'
      'REL_NOM_1=REL_NOM_1'
      'REL_NOM_2=REL_NOM_2'
      'REL_NOM_3=REL_NOM_3'
      'VAR_1=VAR_1'
      'VAR_2=VAR_2'
      'VAR_3=VAR_3'
      'TENSAO_AT=TENSAO_AT'
      'TENSAO_FASE1=TENSAO_FASE1'
      'TENSAO_FASE2=TENSAO_FASE2'
      'TENSAO_FASE3=TENSAO_FASE3'
      'AT_BT=AT_BT'
      'AT_BTM=AT_BTM'
      'RIGIDEZ_OLEO=RIGIDEZ_OLEO'
      'APROVADO=APROVADO'
      'REBOBINAGEM=REBOBINAGEM'
      'MODIFICACAO=MODIFICACAO'
      'TESTE=TESTE'
      'BOB_BT_REBOBINAR=BOB_BT_REBOBINAR'
      'BOB_BT_COLUNAS=BOB_BT_COLUNAS'
      'BOB_BT_REISOLAR=BOB_BT_REISOLAR'
      'POTENCIA=POTENCIA'
      'MODELO=MODELO'
      'NUMERO=NUMERO'
      'ITEM_NAO_CONFORME=ITEM_NAO_CONFORME'
      'ACESS_TESTE=ACESS_TESTE'
      'ESTANQUEIDADE=ESTANQUEIDADE'
      'TENSAO_LIG_AT=TENSAO_LIG_AT'
      'TENSAO_LIG_BT=TENSAO_LIG_BT'
      'RESP_MONTAGEM=RESP_MONTAGEM'
      'RESP_SUPERVISAO=RESP_SUPERVISAO'
      'TRAFO_OUTROS=TRAFO_OUTROS'
      'BT_ATM=BT_ATM'
      'ORCAMENTO=ORCAMENTO')
    DataSet = cdsCsmOsTransformador
    BCDToCurrency = False
    Left = 576
    Top = 443
  end
  object sdsCsmOsAcionamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CSM_OS_ACIONAMENTO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 491
    object sdsCsmOsAcionamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCsmOsAcionamentoACOMP_CABOS: TStringField
      FieldName = 'ACOMP_CABOS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoACOMP_CAIXA: TStringField
      FieldName = 'ACOMP_CAIXA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoACOMP_PAINEL: TStringField
      FieldName = 'ACOMP_PAINEL'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoACOMP_OUTROS: TStringField
      FieldName = 'ACOMP_OUTROS'
      Size = 50
    end
    object sdsCsmOsAcionamentoSOL_MONTAGEM: TStringField
      FieldName = 'SOL_MONTAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoSOL_CONSERTO: TStringField
      FieldName = 'SOL_CONSERTO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoSOL_ORCAMENTO: TStringField
      FieldName = 'SOL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoSOL_OUTROS: TStringField
      FieldName = 'SOL_OUTROS'
      Size = 50
    end
    object sdsCsmOsAcionamentoPOTENCIA: TFMTBCDField
      FieldName = 'POTENCIA'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsAcionamentoTENSAO_FORCA: TFMTBCDField
      FieldName = 'TENSAO_FORCA'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsAcionamentoTENSAO_COMANDO: TFMTBCDField
      FieldName = 'TENSAO_COMANDO'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsAcionamentoACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      Size = 50
    end
    object sdsCsmOsAcionamentoCHAVE_PARTIDA: TStringField
      FieldName = 'CHAVE_PARTIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoCAPACITORES: TStringField
      FieldName = 'CAPACITORES'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoTROCAR: TStringField
      FieldName = 'TROCAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoMODIFICAR: TStringField
      FieldName = 'MODIFICAR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoBOBINA: TStringField
      FieldName = 'BOBINA'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoFUSIVEIS: TStringField
      FieldName = 'FUSIVEIS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoTEMPORIZADOR: TStringField
      FieldName = 'TEMPORIZADOR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoRELE_TERMICO: TStringField
      FieldName = 'RELE_TERMICO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoRELE_FASE: TStringField
      FieldName = 'RELE_FASE'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoRELE_Y: TStringField
      FieldName = 'RELE_Y'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoCONTATOR: TStringField
      FieldName = 'CONTATOR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoCONTATOS: TStringField
      FieldName = 'CONTATOS'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoFIACAO: TStringField
      FieldName = 'FIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoBORNES: TStringField
      FieldName = 'BORNES'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoCAPACITORES_DESC: TStringField
      FieldName = 'CAPACITORES_DESC'
      Size = 50
    end
    object sdsCsmOsAcionamentoRESISTORES_DESC: TStringField
      FieldName = 'RESISTORES_DESC'
      Size = 50
    end
    object sdsCsmOsAcionamentoINVERSOR: TStringField
      FieldName = 'INVERSOR'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoSOFT_STARTER: TStringField
      FieldName = 'SOFT_STARTER'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoCLP: TStringField
      FieldName = 'CLP'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoSERVOACIONAMENTO: TStringField
      FieldName = 'SERVOACIONAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCsmOsAcionamentoORCAMENTO_OUTROS: TStringField
      FieldName = 'ORCAMENTO_OUTROS'
      Size = 50
    end
    object sdsCsmOsAcionamentoORCAMENTO_OBS: TStringField
      FieldName = 'ORCAMENTO_OBS'
      Size = 50
    end
  end
  object dspCsmOsAcionamento: TDataSetProvider
    DataSet = sdsCsmOsAcionamento
    Left = 480
    Top = 491
  end
  object cdsCsmOsAcionamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCsmOsAcionamento'
    OnNewRecord = cdsCsmOsTransformadorNewRecord
    Left = 512
    Top = 491
    object cdsCsmOsAcionamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCsmOsAcionamentoACOMP_CABOS: TStringField
      FieldName = 'ACOMP_CABOS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoACOMP_CAIXA: TStringField
      FieldName = 'ACOMP_CAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoACOMP_PAINEL: TStringField
      FieldName = 'ACOMP_PAINEL'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoACOMP_OUTROS: TStringField
      FieldName = 'ACOMP_OUTROS'
      Size = 50
    end
    object cdsCsmOsAcionamentoSOL_MONTAGEM: TStringField
      FieldName = 'SOL_MONTAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoSOL_CONSERTO: TStringField
      FieldName = 'SOL_CONSERTO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoSOL_ORCAMENTO: TStringField
      FieldName = 'SOL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoSOL_OUTROS: TStringField
      FieldName = 'SOL_OUTROS'
      Size = 50
    end
    object cdsCsmOsAcionamentoPOTENCIA: TFMTBCDField
      FieldName = 'POTENCIA'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsAcionamentoTENSAO_FORCA: TFMTBCDField
      FieldName = 'TENSAO_FORCA'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsAcionamentoTENSAO_COMANDO: TFMTBCDField
      FieldName = 'TENSAO_COMANDO'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsAcionamentoACESSORIOS: TStringField
      FieldName = 'ACESSORIOS'
      Size = 50
    end
    object cdsCsmOsAcionamentoCHAVE_PARTIDA: TStringField
      FieldName = 'CHAVE_PARTIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoCAPACITORES: TStringField
      FieldName = 'CAPACITORES'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoTROCAR: TStringField
      FieldName = 'TROCAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoMODIFICAR: TStringField
      FieldName = 'MODIFICAR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoBOBINA: TStringField
      FieldName = 'BOBINA'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoFUSIVEIS: TStringField
      FieldName = 'FUSIVEIS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoTEMPORIZADOR: TStringField
      FieldName = 'TEMPORIZADOR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoRELE_TERMICO: TStringField
      FieldName = 'RELE_TERMICO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoRELE_FASE: TStringField
      FieldName = 'RELE_FASE'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoRELE_Y: TStringField
      FieldName = 'RELE_Y'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoCONTATOR: TStringField
      FieldName = 'CONTATOR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoCONTATOS: TStringField
      FieldName = 'CONTATOS'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoFIACAO: TStringField
      FieldName = 'FIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoBORNES: TStringField
      FieldName = 'BORNES'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoCAPACITORES_DESC: TStringField
      FieldName = 'CAPACITORES_DESC'
      Size = 50
    end
    object cdsCsmOsAcionamentoRESISTORES_DESC: TStringField
      FieldName = 'RESISTORES_DESC'
      Size = 50
    end
    object cdsCsmOsAcionamentoINVERSOR: TStringField
      FieldName = 'INVERSOR'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoSOFT_STARTER: TStringField
      FieldName = 'SOFT_STARTER'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoCLP: TStringField
      FieldName = 'CLP'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoSERVOACIONAMENTO: TStringField
      FieldName = 'SERVOACIONAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCsmOsAcionamentoORCAMENTO_OUTROS: TStringField
      FieldName = 'ORCAMENTO_OUTROS'
      Size = 50
    end
    object cdsCsmOsAcionamentoORCAMENTO_OBS: TStringField
      FieldName = 'ORCAMENTO_OBS'
      Size = 50
    end
  end
  object dsCsmOsAcionamento: TDataSource
    DataSet = cdsCsmOsAcionamento
    Left = 544
    Top = 491
  end
  object frxCsmOsAciona: TfrxDBDataset
    UserName = 'frxCsmOsAciona'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ESTADO=ESTADO'
      'PARAFUSOS=PARAFUSOS'
      'ACESSORIOS=ACESSORIOS'
      'ACESSORIOS_ESP=ACESSORIOS_ESP'
      'BOBINAGEM=BOBINAGEM'
      'CONSTRUCAO=CONSTRUCAO'
      'OUTROS=OUTROS'
      'OUTROS_DESC=OUTROS_DESC'
      'BOB_AT_REBOBINAR=BOB_AT_REBOBINAR'
      'BOB_AT_COLUNAS=BOB_AT_COLUNAS'
      'BOB_AT_REISOLAR=BOB_AT_REISOLAR'
      'COMUTADOR_NOVO=COMUTADOR_NOVO'
      'COMUTADOR_RECUPERAR=COMUTADOR_RECUPERAR'
      'COMUTADOR_CABOS=COMUTADOR_CABOS'
      'BUC_AT_NOVO=BUC_AT_NOVO'
      'BUC_AT_PRESILHA=BUC_AT_PRESILHA'
      'BUC_AT_JUNTAS=BUC_AT_JUNTAS'
      'BUC_BT_NOVO=BUC_BT_NOVO'
      'BUC_BT_PRESILHA=BUC_BT_PRESILHA'
      'BUC_BT_JUNTAS=BUC_BT_JUNTAS'
      'TAN_NOVO=TAN_NOVO'
      'TAN_RECUPERAR=TAN_RECUPERAR'
      'TAN_JATEAR=TAN_JATEAR'
      'IMPREG_VERNIZ=IMPREG_VERNIZ'
      'IMPREG_RESINA=IMPREG_RESINA'
      'IMPREG_OUTROS=IMPREG_OUTROS'
      'IMPREG_OUTROS_DESC=IMPREG_OUTROS_DESC'
      'OLEO_NOVO=OLEO_NOVO'
      'OLEO_TRATAR=OLEO_TRATAR'
      'OLEO_LITROS=OLEO_LITROS'
      'ACESS_NOVO=ACESS_NOVO'
      'ACESS_RECUPERAR=ACESS_RECUPERAR'
      'VOLTS_PRIM=VOLTS_PRIM'
      'VOLTS_SEC=VOLTS_SEC'
      'AMP_PRIM=AMP_PRIM'
      'AMP_SEC=AMP_SEC'
      'ESPIRAS_PRIM=ESPIRAS_PRIM'
      'ESPIRAS_PRIM_FIO=ESPIRAS_PRIM_FIO'
      'ESPIRAS_SEC=ESPIRAS_SEC'
      'ESPIRAS_SEC_FIO=ESPIRAS_SEC_FIO'
      'CAMADAS_PRIM=CAMADAS_PRIM'
      'CAMADAS_SEC=CAMADAS_SEC'
      'TAM_FORMA=TAM_FORMA'
      'TAM_NUCLEO=TAM_NUCLEO'
      'ESQUEMA_LIG=ESQUEMA_LIG'
      'PESO_FIO=PESO_FIO'
      'VISTO_OUTROS=VISTO_OUTROS'
      'RESPONSAVEL=RESPONSAVEL'
      'H1_H2=H1_H2'
      'H1_H3=H1_H3'
      'H2_H3=H2_H3'
      'X0_X1=X0_X1'
      'X0_X2=X0_X2'
      'X0_X3=X0_X3'
      'TENSAO_1=TENSAO_1'
      'TENSAO_2=TENSAO_2'
      'TENSAO_3=TENSAO_3'
      'FASE_1_1=FASE_1_1'
      'FASE_1_2=FASE_1_2'
      'FASE_1_3=FASE_1_3'
      'FASE_2_1=FASE_2_1'
      'FASE_2_2=FASE_2_2'
      'FASE_2_3=FASE_2_3'
      'FASE_3_1=FASE_3_1'
      'FASE_3_2=FASE_3_2'
      'FASE_3_3=FASE_3_3'
      'REL_NOM_1=REL_NOM_1'
      'REL_NOM_2=REL_NOM_2'
      'REL_NOM_3=REL_NOM_3'
      'VAR_1=VAR_1'
      'VAR_2=VAR_2'
      'VAR_3=VAR_3'
      'TENSAO_AT=TENSAO_AT'
      'TENSAO_FASE1=TENSAO_FASE1'
      'TENSAO_FASE2=TENSAO_FASE2'
      'TENSAO_FASE3=TENSAO_FASE3'
      'AT_BT=AT_BT'
      'AT_BTM=AT_BTM'
      'RIGIDEZ_OLEO=RIGIDEZ_OLEO'
      'APROVADO=APROVADO'
      'REBOBINAGEM=REBOBINAGEM'
      'MODIFICACAO=MODIFICACAO'
      'TESTE=TESTE'
      'BOB_BT_REBOBINAR=BOB_BT_REBOBINAR'
      'BOB_BT_COLUNAS=BOB_BT_COLUNAS'
      'BOB_BT_REISOLAR=BOB_BT_REISOLAR'
      'POTENCIA=POTENCIA'
      'MODELO=MODELO'
      'NUMERO=NUMERO'
      'ITEM_NAO_CONFORME=ITEM_NAO_CONFORME'
      'ACESS_TESTE=ACESS_TESTE'
      'ESTANQUEIDADE=ESTANQUEIDADE'
      'TENSAO_LIG_AT=TENSAO_LIG_AT'
      'TENSAO_LIG_BT=TENSAO_LIG_BT'
      'RESP_MONTAGEM=RESP_MONTAGEM'
      'RESP_SUPERVISAO=RESP_SUPERVISAO'
      'TRAFO_OUTROS=TRAFO_OUTROS'
      'BT_ATM=BT_ATM'
      'ORCAMENTO=ORCAMENTO')
    DataSet = cdsCsmOsAcionamento
    BCDToCurrency = False
    Left = 576
    Top = 491
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.CODIGO, PES.NOME'#13#10'FROM PESSOA PES'#13#10'WHERE TP_VENDEDOR ' +
      '= '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 595
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 72
    Top = 595
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 104
    Top = 595
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 144
    Top = 595
  end
  object sdsCsmOsMotorBobinagem: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CSM_OS_MOTOR_BOBINAGEM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 539
    object sdsCsmOsMotorBobinagemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCsmOsMotorBobinagemCVKW: TStringField
      FieldName = 'CVKW'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemMODELO: TStringField
      FieldName = 'MODELO'
    end
    object sdsCsmOsMotorBobinagemNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object sdsCsmOsMotorBobinagemVOLT: TFMTBCDField
      FieldName = 'VOLT'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemAMP: TFMTBCDField
      FieldName = 'AMP'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemHZ: TSmallintField
      FieldName = 'HZ'
    end
    object sdsCsmOsMotorBobinagemRPM: TIntegerField
      FieldName = 'RPM'
    end
    object sdsCsmOsMotorBobinagemISOL: TStringField
      FieldName = 'ISOL'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemFS: TStringField
      FieldName = 'FS'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemRANHURAS: TStringField
      FieldName = 'RANHURAS'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemPOLOS: TStringField
      FieldName = 'POLOS'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemPASSO: TStringField
      FieldName = 'PASSO'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemESP1: TFMTBCDField
      FieldName = 'ESP1'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemESP2: TFMTBCDField
      FieldName = 'ESP2'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemFIO1: TStringField
      FieldName = 'FIO1'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemFIO2: TStringField
      FieldName = 'FIO2'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemLIG1: TStringField
      FieldName = 'LIG1'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemLIG2: TStringField
      FieldName = 'LIG2'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemNUM_BOBINAS: TFMTBCDField
      FieldName = 'NUM_BOBINAS'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemCABO_SAIDA: TStringField
      FieldName = 'CABO_SAIDA'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemALT_BOBINAS: TStringField
      FieldName = 'ALT_BOBINAS'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemPESO_FIO: TFMTBCDField
      FieldName = 'PESO_FIO'
      Precision = 15
      Size = 2
    end
    object sdsCsmOsMotorBobinagemISOL_RANHURA: TStringField
      FieldName = 'ISOL_RANHURA'
    end
    object sdsCsmOsMotorBobinagemISOL_BOBINAS: TStringField
      FieldName = 'ISOL_BOBINAS'
    end
    object sdsCsmOsMotorBobinagemVERNIZ: TStringField
      FieldName = 'VERNIZ'
    end
    object sdsCsmOsMotorBobinagemTEMPO_SECAGEM: TStringField
      FieldName = 'TEMPO_SECAGEM'
    end
    object sdsCsmOsMotorBobinagemPACOTE: TStringField
      FieldName = 'PACOTE'
    end
    object sdsCsmOsMotorBobinagemDENTE: TStringField
      FieldName = 'DENTE'
    end
    object sdsCsmOsMotorBobinagemCOROA: TStringField
      FieldName = 'COROA'
    end
    object sdsCsmOsMotorBobinagemRANHURA: TStringField
      FieldName = 'RANHURA'
    end
    object sdsCsmOsMotorBobinagemBOBINAS: TStringField
      FieldName = 'BOBINAS'
    end
    object sdsCsmOsMotorBobinagemBOBINADOR: TStringField
      FieldName = 'BOBINADOR'
    end
    object sdsCsmOsMotorBobinagemLIGACAO: TStringField
      FieldName = 'LIGACAO'
    end
    object sdsCsmOsMotorBobinagemTEMPO1: TStringField
      FieldName = 'TEMPO1'
      Size = 10
    end
    object sdsCsmOsMotorBobinagemTEMPO2: TStringField
      FieldName = 'TEMPO2'
      Size = 10
    end
  end
  object dspCsmOsMotorBobinagem: TDataSetProvider
    DataSet = sdsCsmOsMotorBobinagem
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 480
    Top = 539
  end
  object cdsCsmOsMotorBobinagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCsmOsMotorBobinagem'
    OnNewRecord = cdsCsmOsMotorBobinagemNewRecord
    Left = 512
    Top = 539
    object cdsCsmOsMotorBobinagemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCsmOsMotorBobinagemCVKW: TStringField
      FieldName = 'CVKW'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemMODELO: TStringField
      FieldName = 'MODELO'
    end
    object cdsCsmOsMotorBobinagemNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object cdsCsmOsMotorBobinagemVOLT: TFMTBCDField
      FieldName = 'VOLT'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemAMP: TFMTBCDField
      FieldName = 'AMP'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemHZ: TSmallintField
      FieldName = 'HZ'
    end
    object cdsCsmOsMotorBobinagemRPM: TIntegerField
      FieldName = 'RPM'
    end
    object cdsCsmOsMotorBobinagemISOL: TStringField
      FieldName = 'ISOL'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemFS: TStringField
      FieldName = 'FS'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemRANHURAS: TStringField
      FieldName = 'RANHURAS'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemPOLOS: TStringField
      FieldName = 'POLOS'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemPASSO: TStringField
      FieldName = 'PASSO'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemESP1: TFMTBCDField
      FieldName = 'ESP1'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemESP2: TFMTBCDField
      FieldName = 'ESP2'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemFIO1: TStringField
      FieldName = 'FIO1'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemFIO2: TStringField
      FieldName = 'FIO2'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemLIG1: TStringField
      FieldName = 'LIG1'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemLIG2: TStringField
      FieldName = 'LIG2'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemNUM_BOBINAS: TFMTBCDField
      FieldName = 'NUM_BOBINAS'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemCABO_SAIDA: TStringField
      FieldName = 'CABO_SAIDA'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemALT_BOBINAS: TStringField
      FieldName = 'ALT_BOBINAS'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemPESO_FIO: TFMTBCDField
      FieldName = 'PESO_FIO'
      Precision = 15
      Size = 2
    end
    object cdsCsmOsMotorBobinagemISOL_RANHURA: TStringField
      FieldName = 'ISOL_RANHURA'
    end
    object cdsCsmOsMotorBobinagemISOL_BOBINAS: TStringField
      FieldName = 'ISOL_BOBINAS'
    end
    object cdsCsmOsMotorBobinagemVERNIZ: TStringField
      FieldName = 'VERNIZ'
    end
    object cdsCsmOsMotorBobinagemTEMPO_SECAGEM: TStringField
      FieldName = 'TEMPO_SECAGEM'
    end
    object cdsCsmOsMotorBobinagemPACOTE: TStringField
      FieldName = 'PACOTE'
    end
    object cdsCsmOsMotorBobinagemDENTE: TStringField
      FieldName = 'DENTE'
    end
    object cdsCsmOsMotorBobinagemCOROA: TStringField
      FieldName = 'COROA'
    end
    object cdsCsmOsMotorBobinagemRANHURA: TStringField
      FieldName = 'RANHURA'
    end
    object cdsCsmOsMotorBobinagemBOBINAS: TStringField
      FieldName = 'BOBINAS'
    end
    object cdsCsmOsMotorBobinagemLIGACAO: TStringField
      FieldName = 'LIGACAO'
    end
    object cdsCsmOsMotorBobinagemTEMPO1: TStringField
      FieldName = 'TEMPO1'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemTEMPO2: TStringField
      FieldName = 'TEMPO2'
      Size = 10
    end
    object cdsCsmOsMotorBobinagemBOBINADOR: TStringField
      FieldName = 'BOBINADOR'
    end
  end
  object dsCsmOsMotorBobinagem: TDataSource
    DataSet = cdsCsmOsMotorBobinagem
    Left = 544
    Top = 539
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxCsmOsMotorBobinagem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CVKW=CVKW'
      'MODELO=MODELO'
      'NUMERO=NUMERO'
      'VOLT=VOLT'
      'AMP=AMP'
      'HZ=HZ'
      'RPM=RPM'
      'ISOL=ISOL'
      'FS=FS'
      'RANHURAS=RANHURAS'
      'POLOS=POLOS'
      'PASSO=PASSO'
      'ESP1=ESP1'
      'ESP2=ESP2'
      'FIO1=FIO1'
      'FIO2=FIO2'
      'LIG1=LIG1'
      'LIG2=LIG2'
      'NUM_BOBINAS=NUM_BOBINAS'
      'CABO_SAIDA=CABO_SAIDA'
      'ALT_BOBINAS=ALT_BOBINAS'
      'PESO_FIO=PESO_FIO'
      'ISOL_RANHURA=ISOL_RANHURA'
      'ISOL_BOBINAS=ISOL_BOBINAS'
      'VERNIZ=VERNIZ'
      'TEMPO_SECAGEM=TEMPO_SECAGEM'
      'PACOTE=PACOTE'
      'DENTE=DENTE'
      'COROA=COROA'
      'RANHURA=RANHURA'
      'BOBINAS=BOBINAS'
      'LIGACAO=LIGACAO'
      'TEMPO1=TEMPO1'
      'TEMPO2=TEMPO2'
      'BOBINADOR=BOBINADOR')
    DataSet = cdsCsmOsMotorBobinagem
    BCDToCurrency = False
    Left = 576
    Top = 539
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 267
    object qParametros_SerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_SerIMP_NA_OS_REF_PROD: TStringField
      FieldName = 'IMP_NA_OS_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_OS_REDUZIDA: TStringField
      FieldName = 'USA_OS_REDUZIDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRAR_SERIE_TROCA: TStringField
      FieldName = 'MOSTRAR_SERIE_TROCA'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRAR_STATUS: TStringField
      FieldName = 'MOSTRAR_STATUS'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ALEG'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ENC'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_ACESSORIOS: TStringField
      FieldName = 'MOSTRA_OS_ACESSORIOS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsOrdemServico_Otica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORDEMSERVICO_OTICA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 356
    object sdsOrdemServico_OticaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOrdemServico_OticaLONGE_ESF_DIR: TFloatField
      FieldName = 'LONGE_ESF_DIR'
    end
    object sdsOrdemServico_OticaLONGE_ESF_ESQ: TFloatField
      FieldName = 'LONGE_ESF_ESQ'
    end
    object sdsOrdemServico_OticaLONGE_CIL_DIR: TFloatField
      FieldName = 'LONGE_CIL_DIR'
    end
    object sdsOrdemServico_OticaLONGE_CIL_ESQ: TFloatField
      FieldName = 'LONGE_CIL_ESQ'
    end
    object sdsOrdemServico_OticaLONGE_FIXO_DIR: TIntegerField
      FieldName = 'LONGE_FIXO_DIR'
    end
    object sdsOrdemServico_OticaLONGE_FIXO_ESQ: TIntegerField
      FieldName = 'LONGE_FIXO_ESQ'
    end
    object sdsOrdemServico_OticaLONGE_PRISMA_DIR: TStringField
      FieldName = 'LONGE_PRISMA_DIR'
      Size = 10
    end
    object sdsOrdemServico_OticaLONGE_BASE_DIR: TStringField
      FieldName = 'LONGE_BASE_DIR'
      Size = 10
    end
    object sdsOrdemServico_OticaLONGE_PRISMA_ESQ: TStringField
      FieldName = 'LONGE_PRISMA_ESQ'
      Size = 10
    end
    object sdsOrdemServico_OticaLONGE_BASE_ESQ: TStringField
      FieldName = 'LONGE_BASE_ESQ'
      Size = 10
    end
    object sdsOrdemServico_OticaLONGE_DNP: TFloatField
      FieldName = 'LONGE_DNP'
    end
    object sdsOrdemServico_OticaLONGE_MM: TFloatField
      FieldName = 'LONGE_MM'
    end
    object sdsOrdemServico_OticaPERTO_ADICAO: TStringField
      FieldName = 'PERTO_ADICAO'
      Size = 30
    end
    object sdsOrdemServico_OticaPERTO_ESF_DIR: TFloatField
      FieldName = 'PERTO_ESF_DIR'
    end
    object sdsOrdemServico_OticaPERTO_ESF_ESQ: TFloatField
      FieldName = 'PERTO_ESF_ESQ'
    end
    object sdsOrdemServico_OticaPERTO_CIL_DIR: TFloatField
      FieldName = 'PERTO_CIL_DIR'
    end
    object sdsOrdemServico_OticaPERTO_CIL_ESQ: TFloatField
      FieldName = 'PERTO_CIL_ESQ'
    end
    object sdsOrdemServico_OticaPERTO_FIXO_DIR: TIntegerField
      FieldName = 'PERTO_FIXO_DIR'
    end
    object sdsOrdemServico_OticaPERTO_FIXO_ESQ: TIntegerField
      FieldName = 'PERTO_FIXO_ESQ'
    end
    object sdsOrdemServico_OticaPERTO_PRISMA_DIR: TStringField
      FieldName = 'PERTO_PRISMA_DIR'
      Size = 10
    end
    object sdsOrdemServico_OticaPERTO_PRISMA_ESQ: TStringField
      FieldName = 'PERTO_PRISMA_ESQ'
      Size = 10
    end
    object sdsOrdemServico_OticaPERTO_DNP: TFloatField
      FieldName = 'PERTO_DNP'
    end
    object sdsOrdemServico_OticaPERTO_MM: TFloatField
      FieldName = 'PERTO_MM'
    end
    object sdsOrdemServico_OticaID_LENTE: TIntegerField
      FieldName = 'ID_LENTE'
    end
    object sdsOrdemServico_OticaALT_SEG: TStringField
      FieldName = 'ALT_SEG'
      Size = 30
    end
    object sdsOrdemServico_OticaID_ARMACAO: TIntegerField
      FieldName = 'ID_ARMACAO'
    end
    object sdsOrdemServico_OticaTAM_ARMACAO: TStringField
      FieldName = 'TAM_ARMACAO'
    end
    object sdsOrdemServico_OticaNOME_DOUTOR: TStringField
      FieldName = 'NOME_DOUTOR'
      Size = 70
    end
    object sdsOrdemServico_OticaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object sdsOrdemServico_OticaPERTO_BASE_DIR: TStringField
      FieldName = 'PERTO_BASE_DIR'
      Size = 10
    end
    object sdsOrdemServico_OticaPERTO_BASE_ESQ: TStringField
      FieldName = 'PERTO_BASE_ESQ'
      Size = 10
    end
    object sdsOrdemServico_OticaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
  end
  object dspOrdemServico_Otica: TDataSetProvider
    DataSet = sdsOrdemServico_Otica
    Left = 56
    Top = 356
  end
  object cdsOrdemServico_Otica: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOrdemServico_Otica'
    Left = 88
    Top = 356
    object cdsOrdemServico_OticaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_OticaLONGE_ESF_DIR: TFloatField
      FieldName = 'LONGE_ESF_DIR'
    end
    object cdsOrdemServico_OticaLONGE_ESF_ESQ: TFloatField
      FieldName = 'LONGE_ESF_ESQ'
    end
    object cdsOrdemServico_OticaLONGE_CIL_DIR: TFloatField
      FieldName = 'LONGE_CIL_DIR'
    end
    object cdsOrdemServico_OticaLONGE_CIL_ESQ: TFloatField
      FieldName = 'LONGE_CIL_ESQ'
    end
    object cdsOrdemServico_OticaLONGE_FIXO_DIR: TIntegerField
      FieldName = 'LONGE_FIXO_DIR'
    end
    object cdsOrdemServico_OticaLONGE_FIXO_ESQ: TIntegerField
      FieldName = 'LONGE_FIXO_ESQ'
    end
    object cdsOrdemServico_OticaLONGE_PRISMA_DIR: TStringField
      FieldName = 'LONGE_PRISMA_DIR'
      Size = 10
    end
    object cdsOrdemServico_OticaLONGE_BASE_DIR: TStringField
      FieldName = 'LONGE_BASE_DIR'
      Size = 10
    end
    object cdsOrdemServico_OticaLONGE_PRISMA_ESQ: TStringField
      FieldName = 'LONGE_PRISMA_ESQ'
      Size = 10
    end
    object cdsOrdemServico_OticaLONGE_BASE_ESQ: TStringField
      FieldName = 'LONGE_BASE_ESQ'
      Size = 10
    end
    object cdsOrdemServico_OticaLONGE_DNP: TFloatField
      FieldName = 'LONGE_DNP'
    end
    object cdsOrdemServico_OticaLONGE_MM: TFloatField
      FieldName = 'LONGE_MM'
    end
    object cdsOrdemServico_OticaPERTO_ADICAO: TStringField
      FieldName = 'PERTO_ADICAO'
      Size = 30
    end
    object cdsOrdemServico_OticaPERTO_ESF_DIR: TFloatField
      FieldName = 'PERTO_ESF_DIR'
    end
    object cdsOrdemServico_OticaPERTO_ESF_ESQ: TFloatField
      FieldName = 'PERTO_ESF_ESQ'
    end
    object cdsOrdemServico_OticaPERTO_CIL_DIR: TFloatField
      FieldName = 'PERTO_CIL_DIR'
    end
    object cdsOrdemServico_OticaPERTO_CIL_ESQ: TFloatField
      FieldName = 'PERTO_CIL_ESQ'
    end
    object cdsOrdemServico_OticaPERTO_FIXO_DIR: TIntegerField
      FieldName = 'PERTO_FIXO_DIR'
    end
    object cdsOrdemServico_OticaPERTO_FIXO_ESQ: TIntegerField
      FieldName = 'PERTO_FIXO_ESQ'
    end
    object cdsOrdemServico_OticaPERTO_PRISMA_DIR: TStringField
      FieldName = 'PERTO_PRISMA_DIR'
      Size = 10
    end
    object cdsOrdemServico_OticaPERTO_PRISMA_ESQ: TStringField
      FieldName = 'PERTO_PRISMA_ESQ'
      Size = 10
    end
    object cdsOrdemServico_OticaPERTO_DNP: TFloatField
      FieldName = 'PERTO_DNP'
    end
    object cdsOrdemServico_OticaPERTO_MM: TFloatField
      FieldName = 'PERTO_MM'
    end
    object cdsOrdemServico_OticaID_LENTE: TIntegerField
      FieldName = 'ID_LENTE'
    end
    object cdsOrdemServico_OticaALT_SEG: TStringField
      FieldName = 'ALT_SEG'
      Size = 30
    end
    object cdsOrdemServico_OticaID_ARMACAO: TIntegerField
      FieldName = 'ID_ARMACAO'
    end
    object cdsOrdemServico_OticaTAM_ARMACAO: TStringField
      FieldName = 'TAM_ARMACAO'
    end
    object cdsOrdemServico_OticaNOME_DOUTOR: TStringField
      FieldName = 'NOME_DOUTOR'
      Size = 70
    end
    object cdsOrdemServico_OticaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsOrdemServico_OticaPERTO_BASE_DIR: TStringField
      FieldName = 'PERTO_BASE_DIR'
      Size = 10
    end
    object cdsOrdemServico_OticaPERTO_BASE_ESQ: TStringField
      FieldName = 'PERTO_BASE_ESQ'
      Size = 10
    end
    object cdsOrdemServico_OticaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
  end
  object dsOrdemServico_Otica: TDataSource
    DataSet = cdsOrdemServico_Otica
    Left = 120
    Top = 356
  end
  object sdsOSImp_Otica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT os.id, os.num_os, os.dtemissao, os.dtentrega, os.filial,'#13 +
      #10'os.vlr_total, os.vlr_servico, os.vlr_entrada, os.tp_simples, os' +
      '.tp_orcamento,'#13#10'os.solicitante_nome, os.solicitante_email, os.so' +
      'licitante_fone, os.obs,'#13#10'os.id_condpgto, CP.NOME COND_NOME,'#13#10'F.N' +
      'OME FIL_NOME, F.NOME_INTERNO, F.ENDERECO FIL_ENDERECO, F.NUM_END' +
      ' FIL_NUM_END, F.COMPLEMENTO_END FIL_COMPL_END,'#13#10'F.BAIRRO FIL_BAI' +
      'RRO, F.CEP FIL_CEP, F.CIDADE FIL_CIDADE, F.UF FIL_UF, F.DDD1 FIL' +
      '_DDD1, F.FONE1 FIL_FONE1, F.CNPJ_CPF FIL_CNPJ,'#13#10'F.INSCR_EST IE_F' +
      'ILIAL, F.ENDLOGO, F.EMAIL FIL_EMAIL,'#13#10'C.NOME CLI_NOME, C.FANTASI' +
      'A CLI_FANTASIA, C.ENDERECO CLI_ENDERECO, C.NUM_END CLI_NUM_END, ' +
      'C.COMPLEMENTO_END CLI_COMPL_END, C.EMAIL_PGTO,'#13#10'C.BAIRRO CLI_BAI' +
      'RRO, C.CIDADE CLI_CIDADE, C.UF CLI_UF, C.CEP CLI_CEP, C.DDDFONE1' +
      ', C.TELEFONE1, C.CNPJ_CPF CLI_CNPJ,'#13#10'C.INSCR_EST CLI_IE, C.NOME_' +
      'CONTATO CLI_CONTATO,'#13#10'OT.longe_esf_dir, OT.longe_esf_esq, OT.lon' +
      'ge_cil_dir, OT.longe_cil_esq,'#13#10'OT.longe_fixo_dir, OT.longe_fixo_' +
      'esq, OT.longe_prisma_dir, OT.longe_prisma_esq,'#13#10'OT.longe_base_di' +
      'r, OT.longe_base_esq, OT.longe_dnp, OT.longe_mm, OT.perto_adicao' +
      ','#13#10'OT.perto_esf_dir, OT.perto_esf_esq, OT.perto_cil_dir, OT.pert' +
      'o_cil_esq, OT.perto_fixo_dir,'#13#10'OT.perto_fixo_esq, OT.perto_prism' +
      'a_dir, OT.perto_prisma_esq, OT.perto_dnp, OT.perto_mm,'#13#10'OT.perto' +
      '_base_dir, OT.perto_base_esq, LT.nome NOME_LENTE, LT.REFERENCIA ' +
      'REFERENCIA_LENTE,'#13#10'AR.nome NOME_ARMACAO, AR.REFERENCIA REFERENCI' +
      'A_ARMACAO, OT.alt_seg, OT.tam_armacao,'#13#10'OT.nome_doutor, OT.nome_' +
      'cor, OT.vlr_restante, cp.nome NOME_CONDPGTO'#13#10'FROM ORDEMSERVICO O' +
      'S'#13#10'INNER JOIN ORDEMSERVICO_OTICA OT ON (OS.id = OT.ID)'#13#10'INNER JO' +
      'IN FILIAL F ON (OS.FILIAL = F.ID)'#13#10'INNER JOIN PESSOA C ON (OS.ID' +
      '_CLIENTE = C.CODIGO)'#13#10'LEFT JOIN CONDPGTO CP ON (OS.ID_CONDPGTO =' +
      ' CP.ID)'#13#10'LEFT JOIN PRODUTO LT ON (OT.id_lente = LT.id)'#13#10'LEFT JOI' +
      'N PRODUTO AR ON (OT.id_armacao = AR.id)'#13#10'WHERE OS.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 38
  end
  object dspOSImp_Otica: TDataSetProvider
    DataSet = sdsOSImp_Otica
    Left = 704
    Top = 38
  end
  object cdsOSImp_Otica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp_Otica'
    Left = 736
    Top = 38
    object cdsOSImp_OticaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSImp_OticaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOSImp_OticaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOSImp_OticaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOSImp_OticaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOSImp_OticaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOSImp_OticaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOSImp_OticaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsOSImp_OticaTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsOSImp_OticaTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOSImp_OticaSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOSImp_OticaSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object cdsOSImp_OticaSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object cdsOSImp_OticaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImp_OticaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOSImp_OticaCOND_NOME: TStringField
      FieldName = 'COND_NOME'
      Size = 40
    end
    object cdsOSImp_OticaFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Size = 60
    end
    object cdsOSImp_OticaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsOSImp_OticaFIL_ENDERECO: TStringField
      FieldName = 'FIL_ENDERECO'
      Size = 60
    end
    object cdsOSImp_OticaFIL_NUM_END: TStringField
      FieldName = 'FIL_NUM_END'
      Size = 15
    end
    object cdsOSImp_OticaFIL_COMPL_END: TStringField
      FieldName = 'FIL_COMPL_END'
      Size = 60
    end
    object cdsOSImp_OticaFIL_BAIRRO: TStringField
      FieldName = 'FIL_BAIRRO'
      Size = 30
    end
    object cdsOSImp_OticaFIL_CEP: TStringField
      FieldName = 'FIL_CEP'
      Size = 9
    end
    object cdsOSImp_OticaFIL_CIDADE: TStringField
      FieldName = 'FIL_CIDADE'
      Size = 40
    end
    object cdsOSImp_OticaFIL_UF: TStringField
      FieldName = 'FIL_UF'
      Size = 2
    end
    object cdsOSImp_OticaFIL_DDD1: TIntegerField
      FieldName = 'FIL_DDD1'
    end
    object cdsOSImp_OticaFIL_FONE1: TStringField
      FieldName = 'FIL_FONE1'
      Size = 15
    end
    object cdsOSImp_OticaFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 18
    end
    object cdsOSImp_OticaIE_FILIAL: TStringField
      FieldName = 'IE_FILIAL'
      Size = 18
    end
    object cdsOSImp_OticaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsOSImp_OticaFIL_EMAIL: TStringField
      FieldName = 'FIL_EMAIL'
      Size = 40
    end
    object cdsOSImp_OticaCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object cdsOSImp_OticaCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 30
    end
    object cdsOSImp_OticaCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsOSImp_OticaCLI_NUM_END: TStringField
      FieldName = 'CLI_NUM_END'
    end
    object cdsOSImp_OticaCLI_COMPL_END: TStringField
      FieldName = 'CLI_COMPL_END'
      Size = 60
    end
    object cdsOSImp_OticaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsOSImp_OticaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 30
    end
    object cdsOSImp_OticaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 40
    end
    object cdsOSImp_OticaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object cdsOSImp_OticaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object cdsOSImp_OticaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsOSImp_OticaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsOSImp_OticaCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
    end
    object cdsOSImp_OticaCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Size = 18
    end
    object cdsOSImp_OticaCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 40
    end
    object cdsOSImp_OticaLONGE_ESF_DIR: TFloatField
      FieldName = 'LONGE_ESF_DIR'
    end
    object cdsOSImp_OticaLONGE_ESF_ESQ: TFloatField
      FieldName = 'LONGE_ESF_ESQ'
    end
    object cdsOSImp_OticaLONGE_CIL_DIR: TFloatField
      FieldName = 'LONGE_CIL_DIR'
    end
    object cdsOSImp_OticaLONGE_CIL_ESQ: TFloatField
      FieldName = 'LONGE_CIL_ESQ'
    end
    object cdsOSImp_OticaLONGE_FIXO_DIR: TIntegerField
      FieldName = 'LONGE_FIXO_DIR'
    end
    object cdsOSImp_OticaLONGE_FIXO_ESQ: TIntegerField
      FieldName = 'LONGE_FIXO_ESQ'
    end
    object cdsOSImp_OticaLONGE_PRISMA_DIR: TStringField
      FieldName = 'LONGE_PRISMA_DIR'
      Size = 10
    end
    object cdsOSImp_OticaLONGE_PRISMA_ESQ: TStringField
      FieldName = 'LONGE_PRISMA_ESQ'
      Size = 10
    end
    object cdsOSImp_OticaLONGE_BASE_DIR: TStringField
      FieldName = 'LONGE_BASE_DIR'
      Size = 10
    end
    object cdsOSImp_OticaLONGE_BASE_ESQ: TStringField
      FieldName = 'LONGE_BASE_ESQ'
      Size = 10
    end
    object cdsOSImp_OticaLONGE_DNP: TFloatField
      FieldName = 'LONGE_DNP'
    end
    object cdsOSImp_OticaLONGE_MM: TFloatField
      FieldName = 'LONGE_MM'
    end
    object cdsOSImp_OticaPERTO_ADICAO: TStringField
      FieldName = 'PERTO_ADICAO'
      Size = 30
    end
    object cdsOSImp_OticaPERTO_ESF_DIR: TFloatField
      FieldName = 'PERTO_ESF_DIR'
    end
    object cdsOSImp_OticaPERTO_ESF_ESQ: TFloatField
      FieldName = 'PERTO_ESF_ESQ'
    end
    object cdsOSImp_OticaPERTO_CIL_DIR: TFloatField
      FieldName = 'PERTO_CIL_DIR'
    end
    object cdsOSImp_OticaPERTO_CIL_ESQ: TFloatField
      FieldName = 'PERTO_CIL_ESQ'
    end
    object cdsOSImp_OticaPERTO_FIXO_DIR: TIntegerField
      FieldName = 'PERTO_FIXO_DIR'
    end
    object cdsOSImp_OticaPERTO_FIXO_ESQ: TIntegerField
      FieldName = 'PERTO_FIXO_ESQ'
    end
    object cdsOSImp_OticaPERTO_PRISMA_DIR: TStringField
      FieldName = 'PERTO_PRISMA_DIR'
      Size = 10
    end
    object cdsOSImp_OticaPERTO_PRISMA_ESQ: TStringField
      FieldName = 'PERTO_PRISMA_ESQ'
      Size = 10
    end
    object cdsOSImp_OticaPERTO_DNP: TFloatField
      FieldName = 'PERTO_DNP'
    end
    object cdsOSImp_OticaPERTO_MM: TFloatField
      FieldName = 'PERTO_MM'
    end
    object cdsOSImp_OticaPERTO_BASE_DIR: TStringField
      FieldName = 'PERTO_BASE_DIR'
      Size = 10
    end
    object cdsOSImp_OticaPERTO_BASE_ESQ: TStringField
      FieldName = 'PERTO_BASE_ESQ'
      Size = 10
    end
    object cdsOSImp_OticaNOME_LENTE: TStringField
      FieldName = 'NOME_LENTE'
      Size = 100
    end
    object cdsOSImp_OticaREFERENCIA_LENTE: TStringField
      FieldName = 'REFERENCIA_LENTE'
    end
    object cdsOSImp_OticaNOME_ARMACAO: TStringField
      FieldName = 'NOME_ARMACAO'
      Size = 100
    end
    object cdsOSImp_OticaREFERENCIA_ARMACAO: TStringField
      FieldName = 'REFERENCIA_ARMACAO'
    end
    object cdsOSImp_OticaALT_SEG: TStringField
      FieldName = 'ALT_SEG'
      Size = 30
    end
    object cdsOSImp_OticaTAM_ARMACAO: TStringField
      FieldName = 'TAM_ARMACAO'
    end
    object cdsOSImp_OticaNOME_DOUTOR: TStringField
      FieldName = 'NOME_DOUTOR'
      Size = 70
    end
    object cdsOSImp_OticaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object cdsOSImp_OticaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsOSImp_OticaNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
  end
  object dsOSImp_Otica: TDataSource
    DataSet = cdsOSImp_Otica
    Left = 768
    Top = 38
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'OSIMP_Otica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_OS=NUM_OS'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA=DTENTREGA'
      'FILIAL=FILIAL'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_SERVICO=VLR_SERVICO'
      'VLR_ENTRADA=VLR_ENTRADA'
      'TP_SIMPLES=TP_SIMPLES'
      'TP_ORCAMENTO=TP_ORCAMENTO'
      'SOLICITANTE_NOME=SOLICITANTE_NOME'
      'SOLICITANTE_EMAIL=SOLICITANTE_EMAIL'
      'SOLICITANTE_FONE=SOLICITANTE_FONE'
      'OBS=OBS'
      'ID_CONDPGTO=ID_CONDPGTO'
      'COND_NOME=COND_NOME'
      'FIL_NOME=FIL_NOME'
      'NOME_INTERNO=NOME_INTERNO'
      'FIL_ENDERECO=FIL_ENDERECO'
      'FIL_NUM_END=FIL_NUM_END'
      'FIL_COMPL_END=FIL_COMPL_END'
      'FIL_BAIRRO=FIL_BAIRRO'
      'FIL_CEP=FIL_CEP'
      'FIL_CIDADE=FIL_CIDADE'
      'FIL_UF=FIL_UF'
      'FIL_DDD1=FIL_DDD1'
      'FIL_FONE1=FIL_FONE1'
      'FIL_CNPJ=FIL_CNPJ'
      'IE_FILIAL=IE_FILIAL'
      'ENDLOGO=ENDLOGO'
      'FIL_EMAIL=FIL_EMAIL'
      'CLI_NOME=CLI_NOME'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_NUM_END=CLI_NUM_END'
      'CLI_COMPL_END=CLI_COMPL_END'
      'EMAIL_PGTO=EMAIL_PGTO'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_UF=CLI_UF'
      'CLI_CEP=CLI_CEP'
      'DDDFONE1=DDDFONE1'
      'TELEFONE1=TELEFONE1'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_IE=CLI_IE'
      'CLI_CONTATO=CLI_CONTATO'
      'LONGE_ESF_DIR=LONGE_ESF_DIR'
      'LONGE_ESF_ESQ=LONGE_ESF_ESQ'
      'LONGE_CIL_DIR=LONGE_CIL_DIR'
      'LONGE_CIL_ESQ=LONGE_CIL_ESQ'
      'LONGE_FIXO_DIR=LONGE_FIXO_DIR'
      'LONGE_FIXO_ESQ=LONGE_FIXO_ESQ'
      'LONGE_PRISMA_DIR=LONGE_PRISMA_DIR'
      'LONGE_PRISMA_ESQ=LONGE_PRISMA_ESQ'
      'LONGE_BASE_DIR=LONGE_BASE_DIR'
      'LONGE_BASE_ESQ=LONGE_BASE_ESQ'
      'LONGE_DNP=LONGE_DNP'
      'LONGE_MM=LONGE_MM'
      'PERTO_ADICAO=PERTO_ADICAO'
      'PERTO_ESF_DIR=PERTO_ESF_DIR'
      'PERTO_ESF_ESQ=PERTO_ESF_ESQ'
      'PERTO_CIL_DIR=PERTO_CIL_DIR'
      'PERTO_CIL_ESQ=PERTO_CIL_ESQ'
      'PERTO_FIXO_DIR=PERTO_FIXO_DIR'
      'PERTO_FIXO_ESQ=PERTO_FIXO_ESQ'
      'PERTO_PRISMA_DIR=PERTO_PRISMA_DIR'
      'PERTO_PRISMA_ESQ=PERTO_PRISMA_ESQ'
      'PERTO_DNP=PERTO_DNP'
      'PERTO_MM=PERTO_MM'
      'PERTO_BASE_DIR=PERTO_BASE_DIR'
      'PERTO_BASE_ESQ=PERTO_BASE_ESQ'
      'NOME_LENTE=NOME_LENTE'
      'REFERENCIA_LENTE=REFERENCIA_LENTE'
      'NOME_ARMACAO=NOME_ARMACAO'
      'REFERENCIA_ARMACAO=REFERENCIA_ARMACAO'
      'ALT_SEG=ALT_SEG'
      'TAM_ARMACAO=TAM_ARMACAO'
      'NOME_DOUTOR=NOME_DOUTOR'
      'NOME_COR=NOME_COR'
      'VLR_RESTANTE=VLR_RESTANTE'
      'NOME_CONDPGTO=NOME_CONDPGTO')
    DataSource = dsOSImp_Otica
    BCDToCurrency = False
    Left = 800
    Top = 39
  end
  object frxOrdemServico_Itens: TfrxDBDataset
    UserName = 'OrdemServico_Itens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'NOME_PRODUTO=NOME_PRODUTO'
      'MARCA=MARCA'
      'MODELO=MODELO'
      'NUM_SERIE=NUM_SERIE'
      'DEFEITO_ALEGADO=DEFEITO_ALEGADO'
      'OBS=OBS'
      'ACESSORIOS=ACESSORIOS'
      'CONCLUIDO=CONCLUIDO'
      'DTCONCLUIDO=DTCONCLUIDO'
      'ID_TECNICO=ID_TECNICO'
      'TIPO_GARANTIA=TIPO_GARANTIA'
      'DTENTRADA=DTENTRADA'
      'HRENTRADA=HRENTRADA'
      'HRCONCLUIDO=HRCONCLUIDO'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_SERVICO=VLR_SERVICO'
      'VLR_MATERIAL=VLR_MATERIAL'
      'DEFEITO_ENCONTRADO=DEFEITO_ENCONTRADO'
      'NUM_SERIE_TROCA=NUM_SERIE_TROCA'
      'TIPO_APROV=TIPO_APROV'
      'sdsOrdemServico_Mat=sdsOrdemServico_Mat'
      'sdsOrdemServico_Serv=sdsOrdemServico_Serv'
      'DT_INSTALACAO=DT_INSTALACAO'
      'DT_GARANTIA=DT_GARANTIA'
      'STATUS=STATUS'
      'DTENTREGA=DTENTREGA'
      'HRENTREGA=HRENTREGA')
    DataSource = dsOrdemServico_Itens
    BCDToCurrency = False
    Left = 672
    Top = 591
  end
  object frxmOS_Mat: TfrxDBDataset
    UserName = 'OS_Mat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'Qtd=Qtd'
      'VlrTotal=VlrTotal'
      'Vlr_Unitario=Vlr_Unitario')
    DataSource = dsmOS_Mat
    BCDToCurrency = False
    Left = 720
    Top = 591
  end
  object frxmOS_Serv: TfrxDBDataset
    UserName = 'OS_Serv'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'Nome_Servico=Nome_Servico'
      'Qtd=Qtd'
      'VlrTotal=VlrTotal'
      'Nome_Tecnico=Nome_Tecnico')
    DataSource = dsmOS_Serv
    BCDToCurrency = False
    Left = 776
    Top = 591
  end
  object mOS_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 816
    Top = 176
    Data = {
      A50000009619E0BD010000001800000006000000000003000000A50004497465
      6D01004900000001000557494454480200020005000A5265666572656E636961
      01004900000001000557494454480200020014000C4E6F6D655F50726F647574
      6F01004900000001000557494454480200020064000351746408000400000000
      0008566C72546F74616C08000400000000000C566C725F556E69746172696F08
      000400000000000000}
    object mOS_MatItem: TStringField
      FieldName = 'Item'
      Size = 5
    end
    object mOS_MatReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mOS_MatNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mOS_MatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mOS_MatVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mOS_MatVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
  end
  object dsmOS_Mat: TDataSource
    DataSet = mOS_Mat
    Left = 848
    Top = 176
  end
  object mOS_Serv: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Nome_Servico'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Tecnico'
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
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 816
    Top = 232
    Data = {
      920000009619E0BD010000001800000005000000000003000000920004497465
      6D01004900000001000557494454480200020005000C4E6F6D655F5365727669
      636F010049000000010005574944544802000200640003517464040001000000
      000008566C72546F74616C08000400000000000C4E6F6D655F5465636E69636F
      01004900000001000557494454480200020064000000}
    object mOS_ServItem: TStringField
      FieldName = 'Item'
      Size = 5
    end
    object mOS_ServNome_Servico: TStringField
      FieldName = 'Nome_Servico'
      Size = 100
    end
    object mOS_ServQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mOS_ServVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mOS_ServNome_Tecnico: TStringField
      FieldName = 'Nome_Tecnico'
      Size = 100
    end
  end
  object dsmOS_Serv: TDataSource
    DataSet = mOS_Serv
    Left = 856
    Top = 232
  end
  object sdsConsultaMat2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CLI.NOME NOME_CLIENTE, OS.NUM_OS, OS.DTEMISSAO, OS.DTENTR' +
      'EGA, OS.ID_CLIENTE, OS.ID ID_OS,'#13#10'IT.ID_PRODUTO, IT.NOME_PRODUTO' +
      ', IT.MARCA, IT.MODELO, IT.NUM_SERIE,'#13#10'IT.CONCLUIDO, IT.DTCONCLUI' +
      'DO, IT.TIPO_GARANTIA,'#13#10'MAT.ITEM_MAT, MAT.ID_PRODUTO ID_PECA_USAD' +
      'A, P_MAT.NOME NOME_PECA,'#13#10'MAT.QTD QTD_MAT, MAT.VLR_UNITARIO VLR_' +
      'UNITARIO_MAT,'#13#10'MAT.VLR_TOTAL VLR_TOTAL_MAT,'#13#10' CASE IT.TIPO_APROV' +
      #13#10'   WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10'   WHEN '#39'R'#39' THEN '#39'Reprovado'#39#13#10'   ' +
      'ELSE '#39#39#13#10' END AS TIPO_APROV, '#39'M'#39' TIPO'#13#10'FROM ORDEMSERVICO OS'#13#10'INN' +
      'ER JOIN ORDEMSERVICO_ITENS IT ON (OS.ID = IT.ID)'#13#10'INNER JOIN ORD' +
      'EMSERVICO_MAT MAT ON (IT.ID = MAT.ID AND IT.ITEM = MAT.ITEM)'#13#10'IN' +
      'NER JOIN PRODUTO P_MAT ON (MAT.ID_PRODUTO = P_MAT.ID)'#13#10'INNER JOI' +
      'N PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO)'#13#10#13#10'UNION'#13#10#13#10'SELECT ' +
      'CLI.NOME NOME_CLIENTE, OS.NUM_OS, OS.DTEMISSAO, OS.DTENTREGA, OS' +
      '.ID_CLIENTE, OS.ID ID_OS,'#13#10'IT.ID_PRODUTO, IT.NOME_PRODUTO, IT.MA' +
      'RCA, IT.MODELO, IT.NUM_SERIE,'#13#10'IT.CONCLUIDO, IT.DTCONCLUIDO, IT.' +
      'TIPO_GARANTIA,'#13#10'OSS.ITEM_SERV ITEM_MAT, OSS.ID_SERVICO_INT ID_PE' +
      'CA_USADA, SI.NOME NOME_PECA,'#13#10'OSS.TEMPO_TOTAL QTD_MAT, OSS.VLR_U' +
      'NITARIO VLR_UNITARIO_MAT,'#13#10'OSS.VLR_TOTAL VLR_TOTAL_MAT,'#13#10' CASE I' +
      'T.TIPO_APROV'#13#10'   WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10'   WHEN '#39'R'#39' THEN '#39'Rep' +
      'rovado'#39#13#10'   ELSE '#39#39#13#10' END AS TIPO_APROV, '#39'S'#39' TIPO'#13#10'FROM ORDEMSER' +
      'VICO OS'#13#10'INNER JOIN ORDEMSERVICO_ITENS IT ON (OS.ID = IT.ID)'#13#10'IN' +
      'NER JOIN ORDEMSERVICO_SERV OSS ON (IT.ID = OSS.ID AND IT.ITEM = ' +
      'OSS.ITEM)'#13#10'INNER JOIN SERVICO_INT SI ON (OSS.ID_SERVICO_INT = SI' +
      '.ID)'#13#10'INNER JOIN PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO)'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 587
  end
  object dspConsultaMat2: TDataSetProvider
    DataSet = sdsConsultaMat2
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 587
  end
  object cdsConsultaMat2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaMat2'
    Left = 336
    Top = 587
    object cdsConsultaMat2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaMat2NUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsultaMat2DTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsultaMat2DTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsultaMat2ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsultaMat2ID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object cdsConsultaMat2ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaMat2NOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsultaMat2MARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsConsultaMat2MODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsConsultaMat2NUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsConsultaMat2CONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaMat2DTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsultaMat2TIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaMat2ITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsConsultaMat2ID_PECA_USADA: TIntegerField
      FieldName = 'ID_PECA_USADA'
    end
    object cdsConsultaMat2NOME_PECA: TStringField
      FieldName = 'NOME_PECA'
      Size = 100
    end
    object cdsConsultaMat2QTD_MAT: TFloatField
      FieldName = 'QTD_MAT'
    end
    object cdsConsultaMat2VLR_UNITARIO_MAT: TFloatField
      FieldName = 'VLR_UNITARIO_MAT'
      DisplayFormat = '0.00'
    end
    object cdsConsultaMat2VLR_TOTAL_MAT: TFloatField
      FieldName = 'VLR_TOTAL_MAT'
      DisplayFormat = '0.00'
    end
    object cdsConsultaMat2TIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object dsConsultaMat2: TDataSource
    DataSet = cdsConsultaMat2
    Left = 376
    Top = 587
  end
  object frxConsultaMat2: TfrxDBDataset
    UserName = 'frxConsultaMat2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME_CLIENTE=NOME_CLIENTE'
      'NUM_OS=NUM_OS'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA=DTENTREGA'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_OS=ID_OS'
      'ID_PRODUTO=ID_PRODUTO'
      'NOME_PRODUTO=NOME_PRODUTO'
      'MARCA=MARCA'
      'MODELO=MODELO'
      'NUM_SERIE=NUM_SERIE'
      'CONCLUIDO=CONCLUIDO'
      'DTCONCLUIDO=DTCONCLUIDO'
      'TIPO_GARANTIA=TIPO_GARANTIA'
      'ITEM_MAT=ITEM_MAT'
      'ID_PECA_USADA=ID_PECA_USADA'
      'NOME_PECA=NOME_PECA'
      'QTD_MAT=QTD_MAT'
      'VLR_UNITARIO_MAT=VLR_UNITARIO_MAT'
      'VLR_TOTAL_MAT=VLR_TOTAL_MAT'
      'TIPO_APROV=TIPO_APROV')
    DataSource = dsConsultaMat2
    BCDToCurrency = False
    Left = 409
    Top = 587
  end
end
