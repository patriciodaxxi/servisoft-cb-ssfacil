object dmFichaTecnica: TdmFichaTecnica
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 285
  Top = 24
  Height = 734
  Width = 967
  object dspCartoFT: TDataSetProvider
    DataSet = sdsCartoFT
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 24
  end
  object sdsCartoFT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 24
    object sdsCartoFTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoFTNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCartoFTSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCartoFT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoFT'
    Left = 96
    Top = 24
    object cdsCartoFTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFTNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCartoFTSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTsdsCartoFTFD: TDataSetField
      FieldName = 'sdsCartoFTFD'
    end
    object cdsCartoFTsdsCartoFTTP: TDataSetField
      FieldName = 'sdsCartoFTTP'
    end
    object cdsCartoFTsdsCartoFTSP: TDataSetField
      FieldName = 'sdsCartoFTSP'
    end
    object cdsCartoFTsdsCorSP: TDataSetField
      FieldName = 'sdsCorSP'
    end
    object cdsCartoFTsdsCorTP: TDataSetField
      FieldName = 'sdsCorTP'
    end
    object cdsCartoFTsdsCorFD: TDataSetField
      FieldName = 'sdsCorFD'
    end
  end
  object dsCartoFT: TDataSource
    DataSet = cdsCartoFT
    Left = 128
    Top = 24
  end
  object sdsCartoFTFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CARTO_FT_FD'#13#10'WHERE ID = :ID'
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 72
    object sdsCartoFTFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoFTFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsCartoFTFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsCartoFTFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsCartoFTFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsCartoFTFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsCartoFTFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsCartoFTFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsCartoFTFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsCartoFTFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsCartoFTFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsCartoFTFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsCartoFTFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsCartoFTFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsCartoFTFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsCartoFTFDENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsCartoFTFDARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 150
    end
    object sdsCartoFTFDBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTFDAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTFDGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsCartoFTFDGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsCartoFTFDGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsCartoFTFDGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsCartoFTFDGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsCartoFTFDGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsCartoFTFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCartoFTFD
    Params = <>
    Left = 96
    Top = 72
    object cdsCartoFTFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFTFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsCartoFTFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsCartoFTFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsCartoFTFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsCartoFTFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsCartoFTFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsCartoFTFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsCartoFTFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsCartoFTFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsCartoFTFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsCartoFTFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsCartoFTFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsCartoFTFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsCartoFTFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCartoFTFDENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsCartoFTFDARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 150
    end
    object cdsCartoFTFDBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTFDAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTFDGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsCartoFTFDGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsCartoFTFDGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsCartoFTFDGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsCartoFTFDGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsCartoFTFDGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
    object cdsCartoFTFDsdsAcabamentoFD: TDataSetField
      FieldName = 'sdsAcabamentoFD'
    end
  end
  object dsCartoFTFD: TDataSource
    DataSet = cdsCartoFTFD
    Left = 128
    Top = 72
  end
  object sdsCartoFTTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CARTO_FT_TP'#13#10'WHERE ID = :ID'
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 120
    object sdsCartoFTTPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoFTTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsCartoFTTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsCartoFTTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsCartoFTTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsCartoFTTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsCartoFTTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsCartoFTTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsCartoFTTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsCartoFTTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsCartoFTTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsCartoFTTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsCartoFTTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsCartoFTTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsCartoFTTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsCartoFTTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsCartoFTTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsCartoFTTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsCartoFTTPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsCartoFTTPARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 150
    end
    object sdsCartoFTTPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTTPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsCartoFTTPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsCartoFTTPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsCartoFTTPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsCartoFTTPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsCartoFTTPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsCartoFTTP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCartoFTTP
    Params = <>
    Left = 96
    Top = 120
    object cdsCartoFTTPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFTTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsCartoFTTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsCartoFTTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsCartoFTTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsCartoFTTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsCartoFTTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsCartoFTTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsCartoFTTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsCartoFTTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsCartoFTTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsCartoFTTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsCartoFTTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsCartoFTTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsCartoFTTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsCartoFTTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsCartoFTTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsCartoFTTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCartoFTTPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsCartoFTTPARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 150
    end
    object cdsCartoFTTPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTTPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsCartoFTTPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsCartoFTTPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsCartoFTTPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsCartoFTTPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsCartoFTTPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object dsCartoFTTP: TDataSource
    DataSet = cdsCartoFTTP
    Left = 128
    Top = 120
  end
  object sdsCartoFTSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CARTO_FT_SP'#13#10'WHERE ID = :ID'
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 176
    object sdsCartoFTSPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoFTSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsCartoFTSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsCartoFTSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsCartoFTSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsCartoFTSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsCartoFTSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsCartoFTSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsCartoFTSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsCartoFTSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsCartoFTSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsCartoFTSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsCartoFTSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsCartoFTSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsCartoFTSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsCartoFTSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsCartoFTSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsCartoFTSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsCartoFTSPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsCartoFTSPARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 150
    end
    object sdsCartoFTSPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTSPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsCartoFTSPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsCartoFTSPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsCartoFTSPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsCartoFTSPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsCartoFTSPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsCartoFTSPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsCartoFTSP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCartoFTSP
    Params = <>
    Left = 96
    Top = 176
    object cdsCartoFTSPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFTSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsCartoFTSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsCartoFTSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsCartoFTSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsCartoFTSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsCartoFTSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsCartoFTSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsCartoFTSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsCartoFTSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsCartoFTSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsCartoFTSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsCartoFTSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsCartoFTSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsCartoFTSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsCartoFTSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsCartoFTSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsCartoFTSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCartoFTSPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsCartoFTSPARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 150
    end
    object cdsCartoFTSPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTSPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsCartoFTSPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsCartoFTSPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsCartoFTSPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsCartoFTSPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsCartoFTSPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsCartoFTSPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object dsCartoFTSP: TDataSource
    DataSet = cdsCartoFTSP
    Left = 128
    Top = 176
  end
  object dsCarto_FTMaster: TDataSource
    DataSet = sdsCartoFT
    Left = 160
    Top = 24
  end
  object sdsCartoFTCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FT'#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 224
    object sdsCartoFTConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoFTConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCartoFTConsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTConsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCartoFTCons: TDataSetProvider
    DataSet = sdsCartoFTCons
    Left = 64
    Top = 224
  end
  object cdsCartoFTCons: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCartoFTCons'
    OnCalcFields = cdsCartoFTConsCalcFields
    Left = 96
    Top = 224
    object cdsCartoFTConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoFTConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCartoFTConsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTConsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTConsclTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo'
      Size = 25
      Calculated = True
    end
  end
  object dsCartoFTCons: TDataSource
    DataSet = cdsCartoFTCons
    Left = 128
    Top = 224
  end
  object dsqGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 128
    Top = 354
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 96
    Top = 354
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
    Left = 64
    Top = 354
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM GRUPO'#13#10'WHERE NIVEL = 1'#13#10'ORDER BY NOME'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 354
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
    Left = 128
    Top = 402
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 96
    Top = 402
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
    Left = 64
    Top = 402
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
    Left = 32
    Top = 402
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
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 272
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
    Left = 432
    Top = 272
  end
  object cdsGrupoItemFD3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD3'
    Left = 464
    Top = 272
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
    Left = 496
    Top = 272
  end
  object dsGrupoItemFD1: TDataSource
    DataSet = cdsGrupoItemFD1
    Left = 496
    Top = 178
  end
  object cdsGrupoItemFD1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD1'
    Left = 464
    Top = 178
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
    Left = 432
    Top = 178
  end
  object sdsGrupoItemFD1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 178
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
    Left = 496
    Top = 226
  end
  object cdsGrupoItemFD2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemFD2'
    Left = 464
    Top = 226
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
    Left = 432
    Top = 226
  end
  object sdsGrupoItemFD2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 226
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
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 272
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
    Left = 600
    Top = 272
  end
  object cdsGrupoItemTP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP3'
    Left = 632
    Top = 272
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
    Left = 664
    Top = 272
  end
  object dsGrupoItemTP1: TDataSource
    DataSet = cdsGrupoItemTP1
    Left = 664
    Top = 178
  end
  object cdsGrupoItemTP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP1'
    Left = 632
    Top = 178
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
    Left = 600
    Top = 178
  end
  object sdsGrupoItemTP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 178
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
    Left = 664
    Top = 226
  end
  object cdsGrupoItemTP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemTP2'
    Left = 632
    Top = 226
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
    Left = 600
    Top = 226
  end
  object sdsGrupoItemTP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 226
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
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 272
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
    Left = 760
    Top = 272
  end
  object cdsGrupoItemSP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP3'
    Left = 792
    Top = 272
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
    Left = 824
    Top = 272
  end
  object dsGrupoItemSP1: TDataSource
    DataSet = cdsGrupoItemSP1
    Left = 824
    Top = 178
  end
  object cdsGrupoItemSP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP1'
    Left = 792
    Top = 178
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
    Left = 760
    Top = 178
  end
  object sdsGrupoItemSP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 178
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
    Left = 824
    Top = 226
  end
  object cdsGrupoItemSP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupoItemSP2'
    Left = 792
    Top = 226
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
    Left = 760
    Top = 226
  end
  object sdsGrupoItemSP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM GRUPO WHERE SUPERIOR = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 226
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
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 424
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
    Left = 432
    Top = 424
  end
  object cdsMaterialFD3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD3'
    Left = 464
    Top = 424
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
    Left = 496
    Top = 424
  end
  object dsqMaterialFD1: TDataSource
    DataSet = cdsMaterialFD1
    Left = 496
    Top = 330
  end
  object cdsMaterialFD1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD1'
    Left = 464
    Top = 330
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
    Left = 432
    Top = 330
  end
  object sdsMaterialFD1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 330
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
    Left = 496
    Top = 378
  end
  object cdsMaterialFD2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialFD2'
    Left = 464
    Top = 378
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
    Left = 432
    Top = 378
  end
  object sdsMaterialFD2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 378
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
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 424
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
    Left = 600
    Top = 424
  end
  object cdsMaterialTP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP3'
    Left = 632
    Top = 424
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
    Left = 664
    Top = 424
  end
  object dsqMaterialTP1: TDataSource
    DataSet = cdsMaterialTP1
    Left = 664
    Top = 330
  end
  object cdsMaterialTP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP1'
    Left = 632
    Top = 330
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
    Left = 600
    Top = 330
  end
  object sdsMaterialTP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 330
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
    Left = 664
    Top = 378
  end
  object cdsMaterialTP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialTP2'
    Left = 632
    Top = 378
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
    Left = 600
    Top = 378
  end
  object sdsMaterialTP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 568
    Top = 378
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
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 424
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
    Left = 760
    Top = 424
  end
  object cdsMaterialSP3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP3'
    Left = 792
    Top = 424
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
    Left = 824
    Top = 424
  end
  object dsqMaterialSP1: TDataSource
    DataSet = cdsMaterialSP1
    Left = 824
    Top = 330
  end
  object cdsMaterialSP1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP1'
    Left = 792
    Top = 330
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
    Left = 760
    Top = 330
  end
  object sdsMaterialSP1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 330
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
    Left = 824
    Top = 378
  end
  object cdsMaterialSP2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterialSP2'
    Left = 792
    Top = 378
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
    Left = 760
    Top = 378
  end
  object sdsMaterialSP2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME FROM PRODUTO WHERE TIPO_REG = '#39'M'#39' AND ID_GRUPO =' +
      ' :G1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 728
    Top = 378
    object IntegerField37: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField61: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object sdsAcabPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACAB_POSICAO'#13#10'WHERE TIPO = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 512
    object sdsAcabPosicaoID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object sdsAcabPosicaoDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspAcabPosicao: TDataSetProvider
    DataSet = sdsAcabPosicao
    Left = 64
    Top = 512
  end
  object cdsAcabPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAcabPosicao'
    Left = 96
    Top = 512
    object cdsAcabPosicaoID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object cdsAcabPosicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsAcabPosicao: TDataSource
    DataSet = cdsAcabPosicao
    Left = 128
    Top = 512
  end
  object sdsCorFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.*, C.NOME CORNOME'#13#10'FROM CARTO_FT_COR CC'#13#10'INNER JOIN CO' +
      'R C ON (CC.COR_ID = C.ID)'#13#10'WHERE CC.ID = :ID AND POSICAO = '#39'FD'#39
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 480
    object sdsCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object sdsCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object sdsCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object sdsCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsCorFDCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object sdsCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object cdsCorFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCorFD
    IndexFieldNames = 'ID'
    Params = <>
    BeforePost = cdsCorFDBeforePost
    Left = 432
    Top = 480
    object cdsCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object cdsCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object cdsCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsCorFDCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object cdsCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object dsCorFD: TDataSource
    DataSet = cdsCorFD
    Left = 464
    Top = 480
  end
  object sdsCorTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.*, C.NOME CORNOME'#13#10'FROM CARTO_FT_COR CC'#13#10'INNER JOIN CO' +
      'R C ON (CC.COR_ID = C.ID)'#13#10'WHERE CC.ID = :ID AND POSICAO = '#39'TP'#39
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 528
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object sdsCorTPCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object sdsCorTPMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsCorTPCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object sdsCorTPCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCorTPAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object cdsCorTP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCorTP
    IndexFieldNames = 'ID'
    Params = <>
    Left = 432
    Top = 528
    object cdsCorTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorTPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCorTPPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsCorTPFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object cdsCorTPCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object cdsCorTPMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsCorTPCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object cdsCorTPCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsCorTPAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object dsCorTP: TDataSource
    DataSet = cdsCorTP
    Left = 464
    Top = 528
  end
  object sdsCorSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.*, C.NOME CORNOME'#13#10'FROM CARTO_FT_COR CC'#13#10'INNER JOIN CO' +
      'R C ON (CC.COR_ID = C.ID)'#13#10'WHERE CC.ID = :ID AND POSICAO = '#39'SP'#39
    DataSource = dsCarto_FTMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 576
    object IntegerField14: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField15: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object sdsCorSPCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object sdsCorSPMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsCorSPCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object sdsCorSPCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCorSPAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object cdsCorSP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsCorSP
    IndexFieldNames = 'ID'
    Params = <>
    Left = 432
    Top = 576
    object cdsCorSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorSPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCorSPPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsCorSPFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object cdsCorSPCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object cdsCorSPMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsCorSPCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object cdsCorSPCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsCorSPAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object dsCorSP: TDataSource
    DataSet = cdsCorSP
    Left = 464
    Top = 576
  end
  object sqlCorItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'I1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'SELECT MAX(ITEM) FROM PRODUTOCARTO_COR WHERE ID = :I1 AND POSICA' +
        'O = :P1')
    SQLConnection = DmDatabase.scoDados
    Left = 400
    Top = 624
    object sqlCorItemMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 616
    object sdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object sdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    Left = 64
    Top = 616
  end
  object cdsCor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCor'
    Left = 96
    Top = 616
    object cdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object cdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dsCor: TDataSource
    DataSet = cdsCor
    Left = 128
    Top = 616
  end
  object sdsAcabamentoFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CA.*, A.DESCRICAO ACABAMENTO, CAP.DESCRICAO ACAB_POSICAO,' +
      ' AL.DESCRICAO ALINHAMENTO'#13#10'FROM CARTO_FT_ACAB CA'#13#10'INNER JOIN CAR' +
      'TO_ACABAMENTO A ON (A.ID = CA.ACAB_ID)'#13#10'INNER JOIN CARTO_ACAB_PO' +
      'SICAO CAP ON (CAP.ID = CA.ACAB_POSICAO_ID)'#13#10'LEFT JOIN CARTO_ACAB' +
      '_POSICAO AL ON (AL.ID = CA.ALINHAMENTO_ID)'#13#10'WHERE POSICAO = '#39'FD'#39 +
      ' AND CA.ID = :ID'
    DataSource = dsmCartoFTFD
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 216
    Top = 72
    object sdsAcabamentoFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabamentoFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sdsAcabamentoFDITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabamentoFDACAB_ID: TIntegerField
      FieldName = 'ACAB_ID'
    end
    object sdsAcabamentoFDACAB_POSICAO_ID: TStringField
      FieldName = 'ACAB_POSICAO_ID'
      Size = 2
    end
    object sdsAcabamentoFDACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      ProviderFlags = []
      Size = 50
    end
    object sdsAcabamentoFDACAB_POSICAO: TStringField
      FieldName = 'ACAB_POSICAO'
      ProviderFlags = []
      Size = 50
    end
    object sdsAcabamentoFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsAcabamentoFDVLR: TIntegerField
      FieldName = 'VLR'
    end
    object sdsAcabamentoFDCOMPRIMENTO: TFMTBCDField
      FieldName = 'COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object sdsAcabamentoFDLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsAcabamentoFDALINHAMENTO_ID: TIntegerField
      FieldName = 'ALINHAMENTO_ID'
    end
    object sdsAcabamentoFDALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsmCartoFTFD: TDataSource
    DataSet = sdsCartoFTFD
    Left = 160
    Top = 72
  end
  object cdsAcabamentoFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTFDsdsAcabamentoFD
    Params = <>
    Left = 256
    Top = 72
    object cdsAcabamentoFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabamentoFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object cdsAcabamentoFDITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabamentoFDACAB_ID: TIntegerField
      FieldName = 'ACAB_ID'
    end
    object cdsAcabamentoFDACAB_POSICAO_ID: TStringField
      FieldName = 'ACAB_POSICAO_ID'
      Size = 2
    end
    object cdsAcabamentoFDACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAcabamentoFDACAB_POSICAO: TStringField
      FieldName = 'ACAB_POSICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAcabamentoFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsAcabamentoFDVLR: TIntegerField
      FieldName = 'VLR'
    end
    object cdsAcabamentoFDCOMPRIMENTO: TFMTBCDField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoFDLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoFDALINHAMENTO_ID: TIntegerField
      FieldName = 'ALINHAMENTO_ID'
    end
    object cdsAcabamentoFDALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAcabamentoFD: TDataSource
    DataSet = cdsAcabamentoFD
    Left = 296
    Top = 72
  end
  object sdsCartoAcabamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACABAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 32
    Top = 560
    object sdsCartoAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspCartoAcabamento: TDataSetProvider
    DataSet = sdsCartoAcabamento
    Left = 64
    Top = 560
  end
  object cdsCartoAcabamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCartoAcabamento'
    Left = 96
    Top = 560
    object cdsCartoAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsCartoAcabamento: TDataSource
    DataSet = cdsCartoAcabamento
    Left = 128
    Top = 560
  end
  object sdsAlinhamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACAB_POSICAO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 176
    Top = 512
    object StringField6: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object StringField7: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspAlinhamento: TDataSetProvider
    DataSet = sdsAlinhamento
    Left = 208
    Top = 512
  end
  object cdsAlinhamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAlinhamento'
    Left = 240
    Top = 512
    object StringField12: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsAlinhamento: TDataSource
    DataSet = cdsAlinhamento
    Left = 272
    Top = 512
  end
end
