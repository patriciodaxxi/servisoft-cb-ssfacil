object dmEtiqueta: TdmEtiqueta
  OldCreateOrder = False
  Left = 635
  Top = 249
  Height = 353
  Width = 337
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 16
    Top = 16
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object sdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object sdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 56
    Top = 16
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 96
    Top = 16
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
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 144
    Top = 16
  end
  object mEtiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ACABADO_ID'
        DataType = ftInteger
      end
      item
        Name = 'ACABADO_NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'ALTURA'
        DataType = ftFloat
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'OC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OP_DATA'
        DataType = ftDate
      end
      item
        Name = 'FD_TP_SP'
        DataType = ftWord
      end
      item
        Name = 'CLIENTE_ID'
        DataType = ftInteger
      end
      item
        Name = 'OP_ID'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 96
    Top = 72
    Data = {
      ED0000009619E0BD01000000180000000B000000000003000000ED000A414341
      4241444F5F494404000100000000000C4143414241444F5F4E4F4D4501004900
      000001000557494454480200020032000B434F4D5052494D454E544F08000400
      00000000074C415247555241080004000000000006414C545552410800040000
      0000000A5155414E5449444144450400010000000000024F4301004900000001
      00055749445448020002001400074F505F444154410400060000000000084644
      5F54505F535002000200000000000A434C49454E54455F494404000100000000
      00054F505F494408000100000000000000}
    object mEtiquetaACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object mEtiquetaACABADO_NOME: TStringField
      FieldName = 'ACABADO_NOME'
      Size = 50
    end
    object mEtiquetaCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object mEtiquetaLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object mEtiquetaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object mEtiquetaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object mEtiquetaOC: TStringField
      FieldName = 'OC'
    end
    object mEtiquetaOP_DATA: TDateField
      FieldName = 'OP_DATA'
    end
    object mEtiquetaFD_TP_SP: TWordField
      FieldName = 'FD_TP_SP'
    end
    object mEtiquetaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object mEtiquetaOP_ID: TLargeintField
      FieldName = 'OP_ID'
    end
  end
  object dsmEtiqueta: TDataSource
    DataSet = mEtiqueta
    Left = 144
    Top = 72
  end
  object sdsAcabado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA, F.FD_COMPR, F.FD_LARGURA, F.F' +
      'D_ALTURA'#13#10'FROM  PRODUTO P'#13#10'LEFT JOIN CARTO_ACABADO A ON (P.ID = ' +
      'A.ID)'#13#10'LEFT JOIN CARTO_FACA F ON (A.FACA_ID = F.ID)'#13#10'WHERE TIPO_' +
      'REG = '#39'P'#39' '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 24
    Top = 192
    object sdsAcabadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAcabadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsAcabadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAcabadoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsAcabadoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsAcabadoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object dspAcabado: TDataSetProvider
    DataSet = sdsAcabado
    Left = 64
    Top = 192
  end
  object cdsAcabado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAcabado'
    Left = 104
    Top = 192
    object cdsAcabadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcabadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAcabadoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsAcabadoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsAcabadoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object dsAcabado: TDataSource
    DataSet = cdsAcabado
    Left = 152
    Top = 192
  end
  object sdsOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CARTO_OP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 24
    Top = 136
    object sdsOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOPDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object sdsOPDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object sdsOPACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object sdsOPQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsOPOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsOPCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsOPOC: TStringField
      FieldName = 'OC'
    end
  end
  object dspOP: TDataSetProvider
    DataSet = sdsOP
    Left = 64
    Top = 136
  end
  object cdsOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOP'
    Left = 104
    Top = 136
    object cdsOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOPDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsOPDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object cdsOPACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object cdsOPQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsOPOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsOPCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsOPOC: TStringField
      FieldName = 'OC'
    end
  end
  object dsOP: TDataSource
    DataSet = cdsOP
    Left = 152
    Top = 136
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM  PESSOA '#13#10'WHERE TP_CLIENTE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 24
    Top = 240
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 64
    Top = 240
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 104
    Top = 240
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 152
    Top = 240
  end
end
