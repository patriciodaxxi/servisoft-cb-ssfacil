object DMEstoqueTerc: TDMEstoqueTerc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 173
  Top = 149
  Height = 472
  Width = 1033
  object sdsEstoque_DeTerc_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, EM.filial, EM.ID_COR, QTD, C.NOME NOME_COM' +
      'BINACAO,'#13#10'P.NOME NOME_PRODUTO, P.REFERENCIA, em.tipo_es, em.tipo' +
      '_mov, EM.dtmovimento,'#13#10'EM.id_pessoa, PS.NOME NOME_PESSOA, EM.TAM' +
      'ANHO'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUT' +
      'O = P.ID'#13#10'LEFT JOIN operacao_nota ONOTA'#13#10'ON EM.ID_OPERACAO = ONO' +
      'TA.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON EM.ID_COR = C.ID'#13#10'LEFT JOIN PE' +
      'SSOA PS'#13#10'ON EM.id_pessoa = PS.codigo'#13#10'WHERE coalesce(ONOTA.estoq' +
      'ue_de_terceiro,'#39'N'#39') = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 24
  end
  object dspEstoque_DeTerc_Mov: TDataSetProvider
    DataSet = sdsEstoque_DeTerc_Mov
    Left = 112
    Top = 24
  end
  object cdsEstoque_DeTerc_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO;NOME_COMBINACAO;'
    Params = <>
    ProviderName = 'dspEstoque_DeTerc_Mov'
    Left = 160
    Top = 24
    object cdsEstoque_DeTerc_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_DeTerc_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_DeTerc_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_DeTerc_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_DeTerc_MovNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_DeTerc_MovNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_DeTerc_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_DeTerc_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_DeTerc_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_DeTerc_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_DeTerc_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_DeTerc_MovNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsEstoque_DeTerc_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsEstoque_DeTerc_Mov: TDataSource
    DataSet = cdsEstoque_DeTerc_Mov
    Left = 192
    Top = 24
  end
  object sdsEstoque_EmTerc_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, EM.filial, EM.ID_COR, QTD, C.NOME NOME_COM' +
      'BINACAO,'#13#10'P.NOME NOME_PRODUTO, P.REFERENCIA, em.tipo_es, em.tipo' +
      '_mov, EM.dtmovimento,'#13#10'EM.id_pessoa, PS.NOME NOME_PESSOA, EM.TAM' +
      'ANHO'#13#10'FROM ESTOQUE_MOV EM'#13#10'INNER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUT' +
      'O = P.ID'#13#10'LEFT JOIN operacao_nota ONOTA'#13#10'ON EM.ID_OPERACAO = ONO' +
      'TA.ID'#13#10'LEFT JOIN COMBINACAO C'#13#10'ON EM.ID_COR = C.ID'#13#10'LEFT JOIN PE' +
      'SSOA PS'#13#10'ON EM.id_pessoa = PS.codigo'#13#10'WHERE coalesce(ONOTA.estoq' +
      'ue_EM_terceiro,'#39'N'#39') = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 72
  end
  object dspsEstoque_EmTerc_Mov: TDataSetProvider
    DataSet = sdsEstoque_EmTerc_Mov
    Left = 112
    Top = 72
  end
  object cdsEstoque_EmTerc_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO;NOME_COMBINACAO;'
    Params = <>
    ProviderName = 'dspsEstoque_EmTerc_Mov'
    Left = 160
    Top = 72
    object cdsEstoque_EmTerc_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_EmTerc_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_EmTerc_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_EmTerc_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_EmTerc_MovNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_EmTerc_MovNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_EmTerc_MovREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_EmTerc_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_EmTerc_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_EmTerc_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_EmTerc_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_EmTerc_MovNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsEstoque_EmTerc_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dssEstoque_EmTerc_Mov: TDataSource
    DataSet = cdsEstoque_EmTerc_Mov
    Left = 192
    Top = 72
  end
  object sdsEstoque_DeTerc_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EM.id_produto, EM.filial, EM.ID_COR, sum(em.qtd2) QTD, C.' +
      'NOME NOME_COMBINACAO,'#13#10'P.NOME NOME_PRODUTO, P.REFERENCIA,'#13#10'EM.id' +
      '_pessoa, PS.NOME NOME_PESSOA, EM.TAMANHO'#13#10'FROM ESTOQUE_MOV EM'#13#10'I' +
      'NNER JOIN PRODUTO P'#13#10'ON EM.ID_PRODUTO = P.ID'#13#10'LEFT JOIN operacao' +
      '_nota ONOTA'#13#10'ON EM.ID_OPERACAO = ONOTA.ID'#13#10'LEFT JOIN COMBINACAO ' +
      'C'#13#10'ON EM.ID_COR = C.ID'#13#10'LEFT JOIN PESSOA PS'#13#10'ON EM.id_pessoa = P' +
      'S.codigo'#13#10'WHERE coalesce(ONOTA.estoque_de_terceiro,'#39'N'#39') = '#39'S'#39#13#10'G' +
      'ROUP BY EM.id_produto, EM.filial, EM.ID_COR, C.NOME,'#13#10'P.NOME, P.' +
      'REFERENCIA, EM.id_pessoa, PS.NOME, EM.TAMANHO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 32
  end
  object dspEstoque_DeTerc_Cli: TDataSetProvider
    DataSet = sdsEstoque_DeTerc_Cli
    Left = 408
    Top = 32
  end
  object cdsEstoque_DeTerc_Cli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_PESSOA;ID_PRODUTO;NOME_COMBINACAO;'
    Params = <>
    ProviderName = 'dspEstoque_DeTerc_Cli'
    Left = 456
    Top = 32
    object cdsEstoque_DeTerc_CliID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_DeTerc_CliFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_DeTerc_CliID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_DeTerc_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_DeTerc_CliNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsEstoque_DeTerc_CliNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsEstoque_DeTerc_CliREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsEstoque_DeTerc_CliID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_DeTerc_CliNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsEstoque_DeTerc_CliTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsEstoque_DeTerc_Cli: TDataSource
    DataSet = cdsEstoque_DeTerc_Cli
    Left = 488
    Top = 32
  end
end
