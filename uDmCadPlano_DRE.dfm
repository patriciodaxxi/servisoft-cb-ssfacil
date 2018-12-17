object DmCadPlano_DRE: TDmCadPlano_DRE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 297
  Top = 132
  Height = 462
  Width = 906
  object sdsPlano_DRE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.*'#13#10'from PLANO_DRE C'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 16
    object sdsPlano_DREID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlano_DRECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsPlano_DRENOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPlano_DRENIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsPlano_DRETIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object sdsPlano_DRESUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object sdsPlano_DREIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_DRESOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
  end
  object dspPlano_DRE: TDataSetProvider
    DataSet = sdsPlano_DRE
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPlano_DREUpdateError
    Left = 96
    Top = 16
  end
  object cdsPlano_DRE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPlano_DRE'
    Left = 152
    Top = 16
    object cdsPlano_DREID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlano_DRECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_DRENOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_DRENIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_DRETIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsPlano_DRESUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlano_DREIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_DRESOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_DREsdsPlano_DRE_Itens: TDataSetField
      FieldName = 'sdsPlano_DRE_Itens'
    end
  end
  object dsPlano_DRE: TDataSource
    DataSet = cdsPlano_DRE
    Left = 216
    Top = 16
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, NIVEL, SOMAR'#13#10'FROM PLANO_DRE'#13#10'WHERE TIP' +
      'O_REG = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 96
  end
  object dspSuperior: TDataSetProvider
    DataSet = sdsSuperior
    OnUpdateError = dspPlano_DREUpdateError
    Left = 616
    Top = 96
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 680
    Top = 96
    object cdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsSuperiorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsSuperiorSOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsSuperior: TDataSource
    DataSet = cdsSuperior
    Left = 752
    Top = 96
  end
  object sqProximo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(CODIGO)'
      'FROM PLANO_DRE'
      'WHERE CODIGO LIKE '#39':C%'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 160
    object sqProximoMAX: TStringField
      FieldName = 'MAX'
    end
  end
  object dsPlano_DRE_Mestre: TDataSource
    DataSet = sdsPlano_DRE
    Left = 32
    Top = 80
  end
  object qContaOrc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*'
      'FROM conta_orcamento C'
      'WHERE C.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 288
    object qContaOrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContaOrcTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qContaOrcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qContaOrcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qContaOrcNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qContaOrcSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object qContaOrcINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qContaOrcID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qContaOrcDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object qContaOrcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qContaOrcTIPO_CALCULO: TStringField
      FieldName = 'TIPO_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qContaOrcVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qContaOrcTIPO_DESPESA: TStringField
      FieldName = 'TIPO_DESPESA'
      FixedChar = True
      Size = 1
    end
    object qContaOrcTIPO_RD: TStringField
      FieldName = 'TIPO_RD'
      FixedChar = True
      Size = 1
    end
    object qContaOrcCOD_CONTABIL: TIntegerField
      FieldName = 'COD_CONTABIL'
    end
  end
  object sdsPlano_DRE_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANO_DRE_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsPlano_DRE_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 128
    object sdsPlano_DRE_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlano_DRE_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlano_DRE_ItensID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
  end
  object cdsPlano_DRE_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlano_DREsdsPlano_DRE_Itens
    Params = <>
    OnCalcFields = cdsPlano_DRE_ItensCalcFields
    Left = 120
    Top = 128
    object cdsPlano_DRE_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlano_DRE_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlano_DRE_ItensID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsPlano_DRE_ItensclNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome'
      Size = 100
      Calculated = True
    end
    object cdsPlano_DRE_ItensclCodigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCodigo'
      Size = 60
      Calculated = True
    end
  end
  object dsPlano_DRE_Itens: TDataSource
    DataSet = cdsPlano_DRE_Itens
    Left = 192
    Top = 128
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE'#13#10'   WHEN NIVEL = 1 THEN NOME'#13#10'   WHEN NIVEL = 2' +
      ' THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||C.NOME'#13#10'   WHEN NIVEL > 2 THEN LPAD' +
      '('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.NOME'#13#10'   END AS NOME_AUX,'#13#10'CASE' +
      #13#10'  WHEN TIPO_REG = '#39'A'#39' THEN '#39'Anal'#237'tica'#39#13#10'  WHEN TIPO_REG = '#39'S'#39' ' +
      'THEN '#39'Sint'#233'tica'#39#13#10'  else '#39#39#13#10'  end DESCRICAO_TIPO_REG'#13#10'from PLAN' +
      'O_DRE C'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 32
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPlano_DREUpdateError
    Left = 464
    Top = 32
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 520
    Top = 32
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsConsultaSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsConsultaIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaSOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 32765
    end
    object cdsConsultaDESCRICAO_TIPO_REG: TStringField
      FieldName = 'DESCRICAO_TIPO_REG'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 584
    Top = 32
  end
  object mPlanoAux: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 280
    Data = {
      B40000009619E0BD010000001800000007000000000003000000B4000649445F
      445245040001000000000007434F445F44524501004900000001000557494454
      48020002003C00044E4F4D450100490000000100055749445448020002006400
      054E6976656C0400010000000000085469706F5F526567010049000000010005
      5749445448020002000100085375706572696F72040001000000000005536F6D
      617201004900000001000557494454480200020001000000}
    object mPlanoAuxID_DRE: TIntegerField
      FieldName = 'ID_DRE'
    end
    object mPlanoAuxCOD_DRE: TStringField
      FieldName = 'COD_DRE'
      Size = 60
    end
    object mPlanoAuxNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mPlanoAuxNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object mPlanoAuxTipo_Reg: TStringField
      FieldName = 'Tipo_Reg'
      Size = 1
    end
    object mPlanoAuxSuperior: TIntegerField
      FieldName = 'Superior'
    end
    object mPlanoAuxSomar: TStringField
      FieldName = 'Somar'
      Size = 1
    end
  end
end
