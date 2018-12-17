object dmProdutoCarto: TdmProdutoCarto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 300
  Top = 11
  Height = 734
  Width = 828
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM PRODUTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 72
    Top = 24
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Options = [poCascadeDeletes]
    Left = 104
    Top = 24
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 144
    Top = 24
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object cdsProdutosdsProdutoCartoFD: TDataSetField
      FieldName = 'sdsProdutoCartoFD'
    end
    object cdsProdutosdsProdutoCarto: TDataSetField
      FieldName = 'sdsProdutoCarto'
    end
    object cdsProdutosdsProdutoCartoSP: TDataSetField
      FieldName = 'sdsProdutoCartoSP'
    end
    object cdsProdutosdsProdutoCartoTP: TDataSetField
      FieldName = 'sdsProdutoCartoTP'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 184
    Top = 24
  end
  object sdsProdutoCarto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsProdutoMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 80
    object sdsProdutoCartoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object sdsProdutoCartoSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object sdsProdutoCartoSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object sdsProdutoCartoSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object sdsProdutoCartoFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object sdsProdutoCartoFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object sdsProdutoCartoENDERECO: TStringField
      FieldName = 'ENDERECO'
    end
    object sdsProdutoCartoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsProdutoCartoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCartoFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsProdutoCartoTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsProdutoCartoSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object sdsProdutoCartoFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsProdutoCartoFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsProdutoCartoTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsProdutoCartoSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object sdsProdutoCartoFACA: TStringField
      FieldName = 'FACA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsProdutoCarto: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoCarto
    Params = <>
    Left = 152
    Top = 80
    object cdsProdutoCartoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object cdsProdutoCartoSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object cdsProdutoCartoSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object cdsProdutoCartoSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object cdsProdutoCartoFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object cdsProdutoCartoFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object cdsProdutoCartoENDERECO: TStringField
      FieldName = 'ENDERECO'
    end
    object cdsProdutoCartoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsProdutoCartoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCartoFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsProdutoCartoTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsProdutoCartoSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object cdsProdutoCartoFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsProdutoCartoFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsProdutoCartoTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsProdutoCartoSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object cdsProdutoCartoFACA: TStringField
      FieldName = 'FACA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProdutoCarto: TDataSource
    DataSet = cdsProdutoCarto
    Left = 184
    Top = 80
  end
  object sdsProdutoCartoFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_FD'#13#10'WHERE ID = :ID'
    DataSource = dsProdutoMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 128
    object sdsProdutoCartoFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoFDFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsProdutoCartoFDFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 3
    end
    object sdsProdutoCartoFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsProdutoCartoFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsProdutoCartoFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsProdutoCartoFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsProdutoCartoFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsProdutoCartoFDPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsProdutoCartoFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoFDVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsProdutoCartoFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsProdutoCartoFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsProdutoCartoFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsProdutoCartoFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsProdutoCartoFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsProdutoCartoFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object cdsProdutoCartoFD: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoCartoFD
    Params = <>
    Left = 152
    Top = 128
    object cdsProdutoCartoFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoFDFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsProdutoCartoFDFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 3
    end
    object cdsProdutoCartoFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsProdutoCartoFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsProdutoCartoFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsProdutoCartoFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsProdutoCartoFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsProdutoCartoFDPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsProdutoCartoFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoFDVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsProdutoCartoFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsProdutoCartoFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsProdutoCartoFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsProdutoCartoFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsProdutoCartoFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsProdutoCartoFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsProdutoCartoFD: TDataSource
    DataSet = cdsProdutoCartoFD
    Left = 184
    Top = 128
  end
  object sdsProdutoCartoTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_TP'#13#10'WHERE ID = :ID'
    DataSource = dsProdutoMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 176
    object sdsProdutoCartoTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsProdutoCartoTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsProdutoCartoTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsProdutoCartoTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsProdutoCartoTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsProdutoCartoTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsProdutoCartoTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsProdutoCartoTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsProdutoCartoTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsProdutoCartoTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsProdutoCartoTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsProdutoCartoTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsProdutoCartoTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsProdutoCartoTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object cdsProdutoCartoTP: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoCartoTP
    Params = <>
    Left = 152
    Top = 176
    object cdsProdutoCartoTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsProdutoCartoTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsProdutoCartoTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsProdutoCartoTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsProdutoCartoTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsProdutoCartoTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsProdutoCartoTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsProdutoCartoTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsProdutoCartoTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsProdutoCartoTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsProdutoCartoTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsProdutoCartoTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsProdutoCartoTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsProdutoCartoTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsProdutoCartoTP: TDataSource
    DataSet = cdsProdutoCartoTP
    Left = 184
    Top = 176
  end
  object sdsProdutoCartoSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTOCARTO_SP'#13#10'WHERE ID =  :ID'
    DataSource = dsProdutoMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 88
    Top = 232
    object sdsProdutoCartoSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoCartoSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsProdutoCartoSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsProdutoCartoSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsProdutoCartoSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsProdutoCartoSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsProdutoCartoSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsProdutoCartoSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsProdutoCartoSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsProdutoCartoSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsProdutoCartoSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsProdutoCartoSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsProdutoCartoSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCartoSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsProdutoCartoSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsProdutoCartoSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsProdutoCartoSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsProdutoCartoSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsProdutoCartoSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsProdutoCartoSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsProdutoCartoSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object cdsProdutoCartoSP: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoCartoSP
    Params = <>
    Left = 152
    Top = 232
    object cdsProdutoCartoSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoCartoSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsProdutoCartoSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsProdutoCartoSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsProdutoCartoSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsProdutoCartoSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsProdutoCartoSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsProdutoCartoSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsProdutoCartoSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsProdutoCartoSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsProdutoCartoSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsProdutoCartoSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsProdutoCartoSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCartoSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsProdutoCartoSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsProdutoCartoSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsProdutoCartoSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsProdutoCartoSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsProdutoCartoSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsProdutoCartoSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsProdutoCartoSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsProdutoCartoSP: TDataSource
    DataSet = cdsProdutoCartoSP
    Left = 184
    Top = 232
  end
  object dsProdutoMaster: TDataSource
    DataSet = sdsProduto
    Left = 32
    Top = 80
  end
  object sdsFacaFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.ID, FD_COMPR, FD_LARGURA, FD_ALTURA, FD_ABA_INT_CAB, F' +
      'D_ABA_INT_LAT, FD_COPIAS_L, FD_COPIAS_C'#13#10'FROM PRODUTOCARTO PC'#13#10'W' +
      'HERE FACA = '#39'1'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 60
    Top = 354
    object sdsFacaFDFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsFacaFDFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsFacaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspFacaFD: TDataSetProvider
    DataSet = sdsFacaFD
    Left = 92
    Top = 354
  end
  object cdsFacaFD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaFD'
    Left = 128
    Top = 354
    object cdsFacaFDFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsFacaFDFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsFacaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsFacaFD: TDataSource
    DataSet = cdsFacaFD
    Left = 164
    Top = 354
  end
  object sdsFacaTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.ID, TP_ABA_EXT_CAB, TP_ABA_INT_CAB,'#13#10'TP_ABA_EXT_LAT, T' +
      'P_ABA_INT_LAT, TP_COPIAS_C, TP_COPIAS_L'#13#10'FROM PRODUTOCARTO PC'#13#10'W' +
      'HERE FACA = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 60
    Top = 402
    object sdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsFacaTPTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsFacaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspFacaTP: TDataSetProvider
    DataSet = sdsFacaTP
    Left = 92
    Top = 402
  end
  object cdsFacaTP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaTP'
    Left = 128
    Top = 402
    object cdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsFacaTPTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsFacaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsFacaTP: TDataSource
    DataSet = cdsFacaTP
    Left = 164
    Top = 402
  end
  object dsFacaSP: TDataSource
    DataSet = cdsFacaSP
    Left = 164
    Top = 450
  end
  object cdsFacaSP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaSP'
    Left = 128
    Top = 450
    object cdsFacaSPSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaSPSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaSPSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaSPSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaSPSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaSPSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object cdsFacaSPSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object cdsFacaSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspFacaSP: TDataSetProvider
    DataSet = sdsFacaSP
    Left = 92
    Top = 450
  end
  object sdsFacaSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.ID, SP_COMPR, SP_LARGURA, SP_ALTURA, SP_ABA_INT_CAB, S' +
      'P_ABA_INT_LAT, SP_COPIAS_C, SP_COPIAS_L'#13#10'FROM PRODUTOCARTO PC'#13#10'W' +
      'HERE FACA = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 60
    Top = 450
    object sdsFacaSPSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaSPSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaSPSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaSPSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaSPSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaSPSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object sdsFacaSPSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object sdsFacaSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsConsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*'#13#10'FROM PRODUTO P'#13#10'LEFT JOIN PRODUTOCARTO PC ON (P.ID =' +
      ' PC.ID)'#13#10'WHERE P.TIPO_REG = '#39'P'#39' AND PC.FACA = '#39'0'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 600
    object sdsConsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsConsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsConsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspConsProduto: TDataSetProvider
    DataSet = sdsConsProduto
    Left = 96
    Top = 600
  end
  object cdsConsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConsProduto'
    Left = 128
    Top = 600
    object cdsConsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsConsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsProduto: TDataSource
    DataSet = cdsConsProduto
    Left = 160
    Top = 600
  end
  object dsqGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 164
    Top = 506
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 128
    Top = 506
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 92
    Top = 506
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM GRUPO'#13#10'ORDER BY NOME'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 60
    Top = 506
    object sdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsqMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 164
    Top = 554
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 128
    Top = 554
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 92
    Top = 554
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME'#13#10'FROM PRODUTO'#13#10'WHERE TIPO_REG = '#39'M'#39#13#10'ORDER BY NO' +
      'ME'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 60
    Top = 554
    object sdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsGrupoItemFD3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 280
    Top = 120
    object sdsGrupoItemFD3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoItemFD3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemFD3: TDataSetProvider
    DataSet = sdsGrupoItemFD3
    Left = 312
    Top = 120
  end
  object cdsGrupoItemFD3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD3'
    Left = 344
    Top = 120
    object cdsGrupoItemFD3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoItemFD3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemFD3: TDataSource
    DataSet = cdsGrupoItemFD3
    Left = 376
    Top = 120
  end
  object dsGrupoItemFD1: TDataSource
    DataSet = cdsGrupoItemFD1
    Left = 380
    Top = 26
  end
  object cdsGrupoItemFD1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD1'
    Left = 344
    Top = 26
    object IntegerField4: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField8: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemFD1: TDataSetProvider
    DataSet = sdsGrupoItemFD1
    Left = 308
    Top = 26
  end
  object sdsGrupoItemFD1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 276
    Top = 26
    object IntegerField5: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemFD2: TDataSource
    DataSet = cdsGrupoItemFD2
    Left = 380
    Top = 74
  end
  object cdsGrupoItemFD2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD2'
    Left = 344
    Top = 74
    object IntegerField6: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemFD2: TDataSetProvider
    DataSet = sdsGrupoItemFD2
    Left = 308
    Top = 74
  end
  object sdsGrupoItemFD2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 276
    Top = 74
    object IntegerField7: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsGrupoItemTP3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 120
    object sdsGrupoItemTP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoItemTP3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemTP3: TDataSetProvider
    DataSet = sdsGrupoItemTP3
    Left = 480
    Top = 120
  end
  object cdsGrupoItemTP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP3'
    Left = 512
    Top = 120
    object cdsGrupoItemTP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoItemTP3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemTP3: TDataSource
    DataSet = cdsGrupoItemTP3
    Left = 544
    Top = 120
  end
  object dsGrupoItemTP1: TDataSource
    DataSet = cdsGrupoItemTP1
    Left = 548
    Top = 26
  end
  object cdsGrupoItemTP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP1'
    Left = 512
    Top = 26
    object IntegerField10: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField18: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemTP1: TDataSetProvider
    DataSet = sdsGrupoItemTP1
    Left = 476
    Top = 26
  end
  object sdsGrupoItemTP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 444
    Top = 26
    object IntegerField11: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField19: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemTP2: TDataSource
    DataSet = cdsGrupoItemTP2
    Left = 548
    Top = 74
  end
  object cdsGrupoItemTP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP2'
    Left = 512
    Top = 74
    object IntegerField12: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField20: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemTP2: TDataSetProvider
    DataSet = sdsGrupoItemTP2
    Left = 476
    Top = 74
  end
  object sdsGrupoItemTP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 444
    Top = 74
    object IntegerField13: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField21: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsGrupoItemSP3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 608
    Top = 120
    object sdsGrupoItemSP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrupoItemSP3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemSP3: TDataSetProvider
    DataSet = sdsGrupoItemSP3
    Left = 640
    Top = 120
  end
  object cdsGrupoItemSP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP3'
    Left = 672
    Top = 120
    object cdsGrupoItemSP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoItemSP3NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemSP3: TDataSource
    DataSet = cdsGrupoItemSP3
    Left = 704
    Top = 120
  end
  object dsGrupoItemSP1: TDataSource
    DataSet = cdsGrupoItemSP1
    Left = 708
    Top = 26
  end
  object cdsGrupoItemSP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP1'
    Left = 672
    Top = 26
    object IntegerField16: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField28: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemSP1: TDataSetProvider
    DataSet = sdsGrupoItemSP1
    Left = 636
    Top = 26
  end
  object sdsGrupoItemSP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 604
    Top = 26
    object IntegerField17: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField29: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupoItemSP2: TDataSource
    DataSet = cdsGrupoItemSP2
    Left = 708
    Top = 74
  end
  object cdsGrupoItemSP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP2'
    Left = 672
    Top = 74
    object IntegerField18: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField30: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspGrupoItemSP2: TDataSetProvider
    DataSet = sdsGrupoItemSP2
    Left = 636
    Top = 74
  end
  object sdsGrupoItemSP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM SUBGRUPO WHERE ID_GRUPO = :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 604
    Top = 74
    object IntegerField19: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField31: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsMaterialFD3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 288
    Top = 344
    object sdsMaterialFD3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialFD3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspMaterialFD3: TDataSetProvider
    DataSet = sdsMaterialFD3
    Left = 320
    Top = 344
  end
  object cdsMaterialFD3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD3'
    Left = 352
    Top = 344
    object cdsMaterialFD3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialFD3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsqMaterialFD3: TDataSource
    DataSet = cdsMaterialFD3
    Left = 388
    Top = 344
  end
  object dsqMaterialFD1: TDataSource
    DataSet = cdsMaterialFD1
    Left = 388
    Top = 250
  end
  object cdsMaterialFD1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD1'
    Left = 352
    Top = 250
    object IntegerField22: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField38: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialFD1: TDataSetProvider
    DataSet = sdsMaterialFD1
    Left = 316
    Top = 250
  end
  object sdsMaterialFD1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 284
    Top = 250
    object IntegerField23: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField39: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsqMaterialFD2: TDataSource
    DataSet = cdsMaterialFD2
    Left = 388
    Top = 298
  end
  object cdsMaterialFD2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD2'
    Left = 352
    Top = 298
    object IntegerField24: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField40: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialFD2: TDataSetProvider
    DataSet = sdsMaterialFD2
    Left = 316
    Top = 298
  end
  object sdsMaterialFD2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 284
    Top = 298
    object IntegerField25: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField41: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsMaterialTP3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 456
    Top = 344
    object sdsMaterialTP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialTP3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspMaterialTP3: TDataSetProvider
    DataSet = sdsMaterialTP3
    Left = 488
    Top = 344
  end
  object cdsMaterialTP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP3'
    Left = 520
    Top = 344
    object cdsMaterialTP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialTP3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsqMaterialTP3: TDataSource
    DataSet = cdsMaterialTP3
    Left = 556
    Top = 344
  end
  object dsqMaterialTP1: TDataSource
    DataSet = cdsMaterialTP1
    Left = 556
    Top = 250
  end
  object cdsMaterialTP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP1'
    Left = 520
    Top = 250
    object IntegerField28: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField48: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialTP1: TDataSetProvider
    DataSet = sdsMaterialTP1
    Left = 484
    Top = 250
  end
  object sdsMaterialTP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 452
    Top = 250
    object IntegerField29: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField49: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsqMaterialTP2: TDataSource
    DataSet = cdsMaterialTP2
    Left = 556
    Top = 298
  end
  object cdsMaterialTP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP2'
    Left = 520
    Top = 298
    object IntegerField30: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField50: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialTP2: TDataSetProvider
    DataSet = sdsMaterialTP2
    Left = 484
    Top = 298
  end
  object sdsMaterialTP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 452
    Top = 298
    object IntegerField31: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField51: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsMaterialSP3: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 616
    Top = 344
    object sdsMaterialSP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialSP3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspMaterialSP3: TDataSetProvider
    DataSet = sdsMaterialSP3
    Left = 648
    Top = 344
  end
  object cdsMaterialSP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP3'
    Left = 680
    Top = 344
    object cdsMaterialSP3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialSP3NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsqMaterialSP3: TDataSource
    DataSet = cdsMaterialSP3
    Left = 716
    Top = 344
  end
  object dsqMaterialSP1: TDataSource
    DataSet = cdsMaterialSP1
    Left = 716
    Top = 250
  end
  object cdsMaterialSP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP1'
    Left = 680
    Top = 250
    object IntegerField34: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField58: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialSP1: TDataSetProvider
    DataSet = sdsMaterialSP1
    Left = 644
    Top = 250
  end
  object sdsMaterialSP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 612
    Top = 250
    object IntegerField35: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField59: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsqMaterialSP2: TDataSource
    DataSet = cdsMaterialSP2
    Left = 716
    Top = 298
  end
  object cdsMaterialSP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP2'
    Left = 680
    Top = 298
    object IntegerField36: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField60: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMaterialSP2: TDataSetProvider
    DataSet = sdsMaterialSP2
    Left = 644
    Top = 298
  end
  object sdsMaterialSP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1 AND ID_SUBGRUPO = :SG1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 612
    Top = 298
    object IntegerField37: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField61: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 288
    Top = 464
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
    Options = [poCascadeDeletes]
    Left = 328
    Top = 464
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 368
    Top = 464
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
    Left = 408
    Top = 464
  end
end
