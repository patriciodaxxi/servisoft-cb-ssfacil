object dmMaquina: TdmMaquina
  OldCreateOrder = False
  Left = 318
  Top = 124
  Height = 613
  Width = 510
  object sdsMaquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT M.*, M.ID MAQUINA_ID'#13#10'FROM MAQUINA M'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 40
    object sdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsMaquinaVALORMERCADO: TFloatField
      FieldName = 'VALORMERCADO'
    end
    object sdsMaquinaVIDAUTIL: TSmallintField
      FieldName = 'VIDAUTIL'
    end
    object sdsMaquinaRESIDUAL: TFloatField
      FieldName = 'RESIDUAL'
    end
    object sdsMaquinaDEPRECIACAO: TFloatField
      FieldName = 'DEPRECIACAO'
    end
    object sdsMaquinaHORASPRODUTIVAS: TSmallintField
      FieldName = 'HORASPRODUTIVAS'
    end
    object sdsMaquinaCUSTOOPERACIONAL: TFloatField
      FieldName = 'CUSTOOPERACIONAL'
    end
    object sdsMaquinaCORES_QTD: TSmallintField
      FieldName = 'CORES_QTD'
    end
    object sdsMaquinaMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
      ProviderFlags = []
    end
    object sdsMaquinaPROD_ALTA: TIntegerField
      FieldName = 'PROD_ALTA'
    end
    object sdsMaquinaPROD_MEDIA: TIntegerField
      FieldName = 'PROD_MEDIA'
    end
    object sdsMaquinaPROD_BAIXA: TIntegerField
      FieldName = 'PROD_BAIXA'
    end
    object sdsMaquinaSETOR_ID: TIntegerField
      FieldName = 'SETOR_ID'
    end
    object sdsMaquinaDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
    object sdsMaquinaLARG_MAX: TIntegerField
      FieldName = 'LARG_MAX'
    end
    object sdsMaquinaLARG_MIN: TIntegerField
      FieldName = 'LARG_MIN'
    end
    object sdsMaquinaCOMPR_MAX: TIntegerField
      FieldName = 'COMPR_MAX'
    end
    object sdsMaquinaCOMPR_MIN: TIntegerField
      FieldName = 'COMPR_MIN'
    end
    object sdsMaquinaCUSTODESPESAS: TFloatField
      FieldName = 'CUSTODESPESAS'
    end
    object sdsMaquinaVALORHORACALC: TFloatField
      FieldName = 'VALORHORACALC'
    end
    object sdsMaquinaVALORHORAEFETIVO: TFloatField
      FieldName = 'VALORHORAEFETIVO'
    end
    object sdsMaquinaTEMPO_MINIMO: TIntegerField
      FieldName = 'TEMPO_MINIMO'
    end
    object sdsMaquinaCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      Precision = 15
      Size = 2
    end
    object sdsMaquinaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsMaquinaMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsMaquinaCOBRANCA_MIN_HORAS: TSmallintField
      FieldName = 'COBRANCA_MIN_HORAS'
    end
    object sdsMaquinaAJUSTE_COR_0: TIntegerField
      FieldName = 'AJUSTE_COR_0'
    end
    object sdsMaquinaAJUSTE_COR_1: TIntegerField
      FieldName = 'AJUSTE_COR_1'
    end
    object sdsMaquinaAJUSTE_COR_2_3: TIntegerField
      FieldName = 'AJUSTE_COR_2_3'
    end
    object sdsMaquinaAJUSTE_COR_4: TIntegerField
      FieldName = 'AJUSTE_COR_4'
    end
    object sdsMaquinaPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
  end
  object dspMaquina: TDataSetProvider
    DataSet = sdsMaquina
    Left = 112
    Top = 40
  end
  object cdsMaquina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaquina'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 40
    object cdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMaquinaVALORMERCADO: TFloatField
      FieldName = 'VALORMERCADO'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsMaquinaVIDAUTIL: TSmallintField
      FieldName = 'VIDAUTIL'
    end
    object cdsMaquinaRESIDUAL: TFloatField
      FieldName = 'RESIDUAL'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsMaquinaDEPRECIACAO: TFloatField
      FieldName = 'DEPRECIACAO'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsMaquinaHORASPRODUTIVAS: TSmallintField
      FieldName = 'HORASPRODUTIVAS'
    end
    object cdsMaquinaCUSTOOPERACIONAL: TFloatField
      FieldName = 'CUSTOOPERACIONAL'
      DisplayFormat = '#,##0.00'
    end
    object cdsMaquinaCORES_QTD: TSmallintField
      FieldName = 'CORES_QTD'
    end
    object cdsMaquinaMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
      ProviderFlags = []
    end
    object cdsMaquinasdsMaquinaOper: TDataSetField
      FieldName = 'sdsMaquinaOper'
    end
    object cdsMaquinaPROD_ALTA: TIntegerField
      FieldName = 'PROD_ALTA'
    end
    object cdsMaquinaPROD_MEDIA: TIntegerField
      FieldName = 'PROD_MEDIA'
    end
    object cdsMaquinaPROD_BAIXA: TIntegerField
      FieldName = 'PROD_BAIXA'
    end
    object cdsMaquinaSETOR_ID: TIntegerField
      FieldName = 'SETOR_ID'
    end
    object cdsMaquinaDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
    object cdsMaquinaLARG_MAX: TIntegerField
      FieldName = 'LARG_MAX'
    end
    object cdsMaquinaLARG_MIN: TIntegerField
      FieldName = 'LARG_MIN'
    end
    object cdsMaquinaCOMPR_MAX: TIntegerField
      FieldName = 'COMPR_MAX'
    end
    object cdsMaquinaCOMPR_MIN: TIntegerField
      FieldName = 'COMPR_MIN'
    end
    object cdsMaquinaCUSTODESPESAS: TFloatField
      FieldName = 'CUSTODESPESAS'
    end
    object cdsMaquinaVALORHORACALC: TFloatField
      FieldName = 'VALORHORACALC'
      DisplayFormat = '0.00'
    end
    object cdsMaquinaVALORHORAEFETIVO: TFloatField
      FieldName = 'VALORHORAEFETIVO'
      DisplayFormat = '0.00'
    end
    object cdsMaquinaTEMPO_MINIMO: TIntegerField
      FieldName = 'TEMPO_MINIMO'
    end
    object cdsMaquinaCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      Precision = 15
      Size = 2
    end
    object cdsMaquinaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsMaquinaMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsMaquinaCOBRANCA_MIN_HORAS: TSmallintField
      FieldName = 'COBRANCA_MIN_HORAS'
    end
    object cdsMaquinaAJUSTE_COR_0: TIntegerField
      FieldName = 'AJUSTE_COR_0'
    end
    object cdsMaquinaAJUSTE_COR_1: TIntegerField
      FieldName = 'AJUSTE_COR_1'
    end
    object cdsMaquinaAJUSTE_COR_2_3: TIntegerField
      FieldName = 'AJUSTE_COR_2_3'
    end
    object cdsMaquinaAJUSTE_COR_4: TIntegerField
      FieldName = 'AJUSTE_COR_4'
    end
    object cdsMaquinasdsMaquinaQuebra: TDataSetField
      FieldName = 'sdsMaquinaQuebra'
    end
    object cdsMaquinaPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
  end
  object dsMaquina: TDataSource
    DataSet = cdsMaquina
    Left = 224
    Top = 40
  end
  object dsmMaquina: TDataSource
    DataSet = sdsMaquina
    Left = 272
    Top = 40
  end
  object sdsMaquinaOper: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MO.*, F.NOME'#13#10'FROM MAQUINA_OPER MO'#13#10'INNER JOIN FUNCIONARI' +
      'O F ON (F.CODIGO = MO.FUNCIONARIO_ID)'#13#10'WHERE MAQUINA_ID = :MAQUI' +
      'NA_ID'
    DataSource = dsmMaquina
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MAQUINA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 96
    object sdsMaquinaOperID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaquinaOperMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
    end
    object sdsMaquinaOperFUNCIONARIO_ID: TIntegerField
      FieldName = 'FUNCIONARIO_ID'
    end
    object sdsMaquinaOperSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object sdsMaquinaOperENCARGOS: TFloatField
      FieldName = 'ENCARGOS'
    end
    object sdsMaquinaOperTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object sdsMaquinaOperNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsMaquinaOper: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMaquinasdsMaquinaOper
    Params = <>
    BeforePost = cdsMaquinaOperBeforePost
    Left = 168
    Top = 96
    object cdsMaquinaOperID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaOperMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
    end
    object cdsMaquinaOperFUNCIONARIO_ID: TIntegerField
      FieldName = 'FUNCIONARIO_ID'
    end
    object cdsMaquinaOperSALARIO: TFloatField
      FieldName = 'SALARIO'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object cdsMaquinaOperENCARGOS: TFloatField
      FieldName = 'ENCARGOS'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object cdsMaquinaOperTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object cdsMaquinaOperNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsMaquinaOper: TDataSource
    DataSet = cdsMaquinaOper
    Left = 224
    Top = 96
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME, VLR_SALARIO'#13#10'FROM FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 200
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 112
    Top = 200
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 200
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioVLR_SALARIO: TFloatField
      FieldName = 'VLR_SALARIO'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 224
    Top = 200
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SETOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 248
    object sdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
    object sdsSetorDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    Left = 112
    Top = 248
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 248
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsSetorDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 224
    Top = 248
  end
  object sdsFolhaEncargo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FOLHA_ENCARGOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 296
    object sdsFolhaEncargoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFolhaEncargoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFolhaEncargoVALOR_PERC: TFloatField
      FieldName = 'VALOR_PERC'
    end
    object sdsFolhaEncargoSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsFolhaEncargoHORISTA: TStringField
      FieldName = 'HORISTA'
      FixedChar = True
      Size = 1
    end
  end
  object dspFolhaEncargo: TDataSetProvider
    DataSet = sdsFolhaEncargo
    Left = 112
    Top = 296
  end
  object cdsFolhaEncargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFolhaEncargo'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 296
    object cdsFolhaEncargoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFolhaEncargoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFolhaEncargoVALOR_PERC: TFloatField
      FieldName = 'VALOR_PERC'
    end
    object cdsFolhaEncargoSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFolhaEncargoHORISTA: TStringField
      FieldName = 'HORISTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsFolhaEncargo: TDataSource
    DataSet = cdsFolhaEncargo
    Left = 224
    Top = 296
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 344
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 112
    Top = 344
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 344
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 224
    Top = 344
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM PRODUTO'#13#10'WHERE TIPO_REG = '#39'M'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 392
    object sdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 112
    Top = 392
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial'
    BeforePost = cdsMaquinaBeforePost
    Left = 168
    Top = 392
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 224
    Top = 392
  end
  object sdsMaquinaQuebra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MQ.*'#13#10'FROM MAQUINA_QUEBRA MQ'#13#10'WHERE MAQUINA_ID = :MAQUINA' +
      '_ID'
    DataSource = dsmMaquina
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MAQUINA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 56
    Top = 144
    object sdsMaquinaQuebraMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
      Required = True
    end
    object sdsMaquinaQuebraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaquinaQuebraQTD_MIN: TIntegerField
      FieldName = 'QTD_MIN'
    end
    object sdsMaquinaQuebraQTD_MAX: TIntegerField
      FieldName = 'QTD_MAX'
    end
    object sdsMaquinaQuebraCOR_0: TIntegerField
      FieldName = 'COR_0'
    end
    object sdsMaquinaQuebraCOR_1: TIntegerField
      FieldName = 'COR_1'
    end
    object sdsMaquinaQuebraCOR_2_3: TIntegerField
      FieldName = 'COR_2_3'
    end
    object sdsMaquinaQuebraCOR_4: TIntegerField
      FieldName = 'COR_4'
    end
  end
  object cdsMaquinaQuebra: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMaquinasdsMaquinaQuebra
    Params = <>
    BeforePost = cdsMaquinaQuebraBeforePost
    Left = 168
    Top = 144
    object cdsMaquinaQuebraMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
      Required = True
    end
    object cdsMaquinaQuebraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaQuebraQTD_MIN: TIntegerField
      FieldName = 'QTD_MIN'
    end
    object cdsMaquinaQuebraQTD_MAX: TIntegerField
      FieldName = 'QTD_MAX'
    end
    object cdsMaquinaQuebraCOR_0: TIntegerField
      FieldName = 'COR_0'
    end
    object cdsMaquinaQuebraCOR_1: TIntegerField
      FieldName = 'COR_1'
    end
    object cdsMaquinaQuebraCOR_2_3: TIntegerField
      FieldName = 'COR_2_3'
    end
    object cdsMaquinaQuebraCOR_4: TIntegerField
      FieldName = 'COR_4'
    end
  end
  object dsMaquinaQuebra: TDataSource
    DataSet = cdsMaquinaQuebra
    Left = 224
    Top = 144
  end
  object sdsCartoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_PROCESSO'#13#10'WHERE TIPO IN (2,3)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 59
    Top = 441
    object sdsCartoProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsCartoProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCartoProcesso: TDataSetProvider
    DataSet = sdsCartoProcesso
    Left = 115
    Top = 441
  end
  object cdsCartoProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoProcesso'
    Left = 169
    Top = 441
    object cdsCartoProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCartoProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCartoProcesso: TDataSource
    DataSet = cdsCartoProcesso
    Left = 227
    Top = 441
  end
end
