object DMCadRegra_Empresa: TDMCadRegra_Empresa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 542
  Width = 936
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 304
    object sdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 400
    Top = 304
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    Left = 464
    Top = 304
    object cdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 536
    Top = 304
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 360
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 400
    Top = 360
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 464
    Top = 360
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      DisplayLabel = 'Gerar ICMS'
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      DisplayLabel = 'Gerar Duplicata'
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      DisplayLabel = 'Somar no Vlr. dos Produtos'
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      DisplayLabel = 'Nome Interno'
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      DisplayLabel = 'Gerar ICMS Simples'
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      DisplayLabel = 'Beneficiamento'
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 536
    Top = 360
  end
  object qOperacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM OPERACAO_NOTA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 344
    object qOperacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qOperacaoPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qOperacaoNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object qOperacaoSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
  end
  object qCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, CODCFOP'
      'FROM TAB_CFOP'
      'WHERE ID = :ID'
      #9)
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 408
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT RE.*, OPE.NOME NOME_OPERACAO, CFOP.CODCFOP,'#13#10'CASE'#13#10'  WHEN' +
      ' RE.TIPO_EMPRESA = '#39'G'#39' THEN '#39'GERAL'#39#13#10'  WHEN RE.TIPO_EMPRESA = '#39'S' +
      #39' THEN '#39'SIMPLES'#39#13#10'  END DESC_TIPO_EMPRESA,'#13#10'CASE'#13#10'  WHEN RE.TIPO' +
      '_CLIENTE = '#39'G'#39' THEN '#39'GERAL'#39#13#10'  WHEN RE.TIPO_CLIENTE = '#39'S'#39' THEN '#39 +
      'SIMPLES'#39#13#10'  END DESC_TIPO_CLIENTE,'#13#10'CASE'#13#10'  WHEN RE.UF_CLIENTE =' +
      ' '#39'D'#39' THEN '#39'DENTRO DO ESTADO'#39#13#10'  WHEN RE.UF_CLIENTE = '#39'F'#39' THEN '#39'F' +
      'ORA DO ESTADO'#39#13#10'  WHEN RE.UF_CLIENTE = '#39'E'#39' THEN '#39'EXPORTA'#199#195'O'#39#13#10'  ' +
      'END DESC_UF_CLIENTE,'#13#10'CASE'#13#10'  WHEN RE.finalidade_comprador = '#39'R'#39 +
      ' THEN '#39'REVENDA'#39#13#10'  WHEN RE.finalidade_comprador = '#39'I'#39' THEN '#39'INDU' +
      'STRIALIZA'#199#195'O'#39#13#10'  WHEN RE.finalidade_comprador = '#39'C'#39' THEN '#39'CONSUM' +
      'O'#39#13#10'  END DESC_FINALIDADE_COMPRADOR'#13#10#13#10'FROM REGRA_EMPRESA RE'#13#10'IN' +
      'NER JOIN operacao_nota OPE'#13#10'ON RE.id_operacao = OPE.id'#13#10'LEFT JOI' +
      'N TAB_CFOP CFOP'#13#10'ON RE.ID_CFOP = CFOP.ID'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 40
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 592
    Top = 40
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 656
    Top = 40
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsConsultaTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsultaNOME_OPERACAO: TStringField
      FieldName = 'NOME_OPERACAO'
      Size = 40
    end
    object cdsConsultaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsConsultaDESC_TIPO_EMPRESA: TStringField
      FieldName = 'DESC_TIPO_EMPRESA'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaDESC_TIPO_CLIENTE: TStringField
      FieldName = 'DESC_TIPO_CLIENTE'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaDESC_UF_CLIENTE: TStringField
      FieldName = 'DESC_UF_CLIENTE'
      FixedChar = True
      Size = 16
    end
    object cdsConsultaFINALIDADE_COMPRADOR: TStringField
      FieldName = 'FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaDESC_FINALIDADE_COMPRADOR: TStringField
      FieldName = 'DESC_FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 16
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 728
    Top = 40
  end
  object sdsRegra_Empresa: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM REGRA_EMPRESA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 48
    object sdsRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_EmpresaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object sdsRegra_EmpresaTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField
      FieldName = 'FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 1
    end
  end
  object dspRegra_Empresa: TDataSetProvider
    DataSet = sdsRegra_Empresa
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 48
  end
  object cdsRegra_Empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegra_Empresa'
    Left = 200
    Top = 48
    object cdsRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_EmpresaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsRegra_EmpresaTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsRegra_EmpresasdsRegra_Empresa_Itens: TDataSetField
      FieldName = 'sdsRegra_Empresa_Itens'
    end
    object cdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField
      FieldName = 'FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 1
    end
  end
  object dsRegra_Empresa: TDataSource
    DataSet = cdsRegra_Empresa
    Left = 264
    Top = 48
  end
  object dsRegra_Empresa_Mestre: TDataSource
    DataSet = sdsRegra_Empresa
    Left = 32
    Top = 96
  end
  object sdsRegra_Empresa_Itens: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM REGRA_EMPRESA_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsRegra_Empresa_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 152
    object sdsRegra_Empresa_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_Empresa_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_Empresa_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensZONA_FRANCA: TStringField
      FieldName = 'ZONA_FRANCA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField
      FieldName = 'SUBST_TRIBUTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsRegra_Empresa_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRegra_EmpresasdsRegra_Empresa_Itens
    Params = <>
    OnCalcFields = cdsRegra_Empresa_ItensCalcFields
    Left = 168
    Top = 152
    object cdsRegra_Empresa_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_Empresa_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_Empresa_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensZONA_FRANCA: TStringField
      FieldName = 'ZONA_FRANCA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField
      FieldName = 'SUBST_TRIBUTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensCODCFOP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
      Calculated = True
    end
  end
  object dsRegra_Empresa_Itens: TDataSource
    DataSet = cdsRegra_Empresa_Itens
    Left = 240
    Top = 152
  end
end
