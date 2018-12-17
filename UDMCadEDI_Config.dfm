object DMCadEDI_Config: TDMCadEDI_Config
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 222
  Height = 296
  Width = 478
  object sdsEdi_Config: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EDI_CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsEdi_ConfigID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEdi_ConfigLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 15
    end
    object sdsEdi_ConfigCNPJ_CLIENTE_INI: TIntegerField
      FieldName = 'CNPJ_CLIENTE_INI'
    end
    object sdsEdi_ConfigCNPJ_CLIENTE_TAM: TIntegerField
      FieldName = 'CNPJ_CLIENTE_TAM'
    end
    object sdsEdi_ConfigNUM_OC_INI: TIntegerField
      FieldName = 'NUM_OC_INI'
    end
    object sdsEdi_ConfigNUM_OC_TAM: TIntegerField
      FieldName = 'NUM_OC_TAM'
    end
    object sdsEdi_ConfigOCO_INI: TIntegerField
      FieldName = 'OCO_INI'
    end
    object sdsEdi_ConfigOCO_TAM: TIntegerField
      FieldName = 'OCO_TAM'
    end
    object sdsEdi_ConfigPLANO_INI: TIntegerField
      FieldName = 'PLANO_INI'
    end
    object sdsEdi_ConfigPLANO_TAM: TIntegerField
      FieldName = 'PLANO_TAM'
    end
    object sdsEdi_ConfigDTEMISSAO_INI: TIntegerField
      FieldName = 'DTEMISSAO_INI'
    end
    object sdsEdi_ConfigDTEMISSAO_TAM: TIntegerField
      FieldName = 'DTEMISSAO_TAM'
    end
    object sdsEdi_ConfigTIPO_OPERACAO_INI: TIntegerField
      FieldName = 'TIPO_OPERACAO_INI'
    end
    object sdsEdi_ConfigTIPO_OPERACAO_TAM: TIntegerField
      FieldName = 'TIPO_OPERACAO_TAM'
    end
    object sdsEdi_ConfigDTENTREGA_INI: TIntegerField
      FieldName = 'DTENTREGA_INI'
    end
    object sdsEdi_ConfigDTENTREGA_TAM: TIntegerField
      FieldName = 'DTENTREGA_TAM'
    end
    object sdsEdi_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_INI'
    end
    object sdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_TAM'
    end
    object sdsEdi_ConfigFABRICA_INI: TIntegerField
      FieldName = 'FABRICA_INI'
    end
    object sdsEdi_ConfigFABRICA_TAM: TIntegerField
      FieldName = 'FABRICA_TAM'
    end
    object sdsEdi_ConfigCOD_PRODUTO_INI: TIntegerField
      FieldName = 'COD_PRODUTO_INI'
    end
    object sdsEdi_ConfigCOD_PRODUTO_TAM: TIntegerField
      FieldName = 'COD_PRODUTO_TAM'
    end
    object sdsEdi_ConfigQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object sdsEdi_ConfigQTD_TAM: TIntegerField
      FieldName = 'QTD_TAM'
    end
    object sdsEdi_ConfigUNIDADE_INI: TIntegerField
      FieldName = 'UNIDADE_INI'
    end
    object sdsEdi_ConfigUNIDADE_TAM: TIntegerField
      FieldName = 'UNIDADE_TAM'
    end
    object sdsEdi_ConfigPERC_TRANSF_INI: TIntegerField
      FieldName = 'PERC_TRANSF_INI'
    end
    object sdsEdi_ConfigPERC_TRANSF_TAM: TIntegerField
      FieldName = 'PERC_TRANSF_TAM'
    end
    object sdsEdi_ConfigVLR_UNITARIO_INI: TIntegerField
      FieldName = 'VLR_UNITARIO_INI'
    end
    object sdsEdi_ConfigVLR_UNITARIO_TAM: TIntegerField
      FieldName = 'VLR_UNITARIO_TAM'
    end
    object sdsEdi_ConfigVLR_UNITARIO_DEC: TIntegerField
      FieldName = 'VLR_UNITARIO_DEC'
    end
    object sdsEdi_ConfigCOND_PGTO_INI: TIntegerField
      FieldName = 'COND_PGTO_INI'
    end
    object sdsEdi_ConfigCOND_PGTO_TAM: TIntegerField
      FieldName = 'COND_PGTO_TAM'
    end
    object sdsEdi_ConfigNOME_PRODUTO_INI: TIntegerField
      FieldName = 'NOME_PRODUTO_INI'
    end
    object sdsEdi_ConfigNOME_PRODUTO_TAM: TIntegerField
      FieldName = 'NOME_PRODUTO_TAM'
    end
    object sdsEdi_ConfigCNPJ_FORNECEDOR_INI: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_INI'
    end
    object sdsEdi_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_TAM'
    end
    object sdsEdi_ConfigPLANO2_INI: TIntegerField
      FieldName = 'PLANO2_INI'
    end
    object sdsEdi_ConfigPLANO2_TAM: TIntegerField
      FieldName = 'PLANO2_TAM'
    end
    object sdsEdi_ConfigUSA_PLANO: TStringField
      FieldName = 'USA_PLANO'
      FixedChar = True
      Size = 1
    end
    object sdsEdi_ConfigDRAWBACK_INI: TIntegerField
      FieldName = 'DRAWBACK_INI'
    end
    object sdsEdi_ConfigDRAWBACK_TAM: TIntegerField
      FieldName = 'DRAWBACK_TAM'
    end
    object sdsEdi_ConfigTAMANHO_INI: TIntegerField
      FieldName = 'TAMANHO_INI'
    end
    object sdsEdi_ConfigTAMANHO_TAM: TIntegerField
      FieldName = 'TAMANHO_TAM'
    end
    object sdsEdi_ConfigRESERVADO_INI: TIntegerField
      FieldName = 'RESERVADO_INI'
    end
    object sdsEdi_ConfigRESERVADO_TAM: TIntegerField
      FieldName = 'RESERVADO_TAM'
    end
    object sdsEdi_ConfigNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsEdi_ConfigQTD_DEC: TIntegerField
      FieldName = 'QTD_DEC'
    end
    object sdsEdi_ConfigITEM_INI: TIntegerField
      FieldName = 'ITEM_INI'
    end
    object sdsEdi_ConfigITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
    end
    object sdsEdi_ConfigCOD_COR_INI: TIntegerField
      FieldName = 'COD_COR_INI'
    end
    object sdsEdi_ConfigCOD_COR_TAM: TIntegerField
      FieldName = 'COD_COR_TAM'
    end
  end
  object dspEdi_Config: TDataSetProvider
    DataSet = sdsEdi_Config
    OnUpdateError = dspEdi_ConfigUpdateError
    Left = 128
    Top = 32
  end
  object cdsEdi_Config: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEdi_Config'
    Left = 192
    Top = 32
    object cdsEdi_ConfigID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEdi_ConfigLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 15
    end
    object cdsEdi_ConfigCNPJ_CLIENTE_INI: TIntegerField
      FieldName = 'CNPJ_CLIENTE_INI'
    end
    object cdsEdi_ConfigCNPJ_CLIENTE_TAM: TIntegerField
      FieldName = 'CNPJ_CLIENTE_TAM'
    end
    object cdsEdi_ConfigNUM_OC_INI: TIntegerField
      FieldName = 'NUM_OC_INI'
    end
    object cdsEdi_ConfigNUM_OC_TAM: TIntegerField
      FieldName = 'NUM_OC_TAM'
    end
    object cdsEdi_ConfigOCO_INI: TIntegerField
      FieldName = 'OCO_INI'
    end
    object cdsEdi_ConfigOCO_TAM: TIntegerField
      FieldName = 'OCO_TAM'
    end
    object cdsEdi_ConfigPLANO_INI: TIntegerField
      FieldName = 'PLANO_INI'
    end
    object cdsEdi_ConfigPLANO_TAM: TIntegerField
      FieldName = 'PLANO_TAM'
    end
    object cdsEdi_ConfigDTEMISSAO_INI: TIntegerField
      FieldName = 'DTEMISSAO_INI'
    end
    object cdsEdi_ConfigDTEMISSAO_TAM: TIntegerField
      FieldName = 'DTEMISSAO_TAM'
    end
    object cdsEdi_ConfigTIPO_OPERACAO_INI: TIntegerField
      FieldName = 'TIPO_OPERACAO_INI'
    end
    object cdsEdi_ConfigTIPO_OPERACAO_TAM: TIntegerField
      FieldName = 'TIPO_OPERACAO_TAM'
    end
    object cdsEdi_ConfigDTENTREGA_INI: TIntegerField
      FieldName = 'DTENTREGA_INI'
    end
    object cdsEdi_ConfigDTENTREGA_TAM: TIntegerField
      FieldName = 'DTENTREGA_TAM'
    end
    object cdsEdi_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_INI'
    end
    object cdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_TAM'
    end
    object cdsEdi_ConfigFABRICA_INI: TIntegerField
      FieldName = 'FABRICA_INI'
    end
    object cdsEdi_ConfigFABRICA_TAM: TIntegerField
      FieldName = 'FABRICA_TAM'
    end
    object cdsEdi_ConfigCOD_PRODUTO_INI: TIntegerField
      FieldName = 'COD_PRODUTO_INI'
    end
    object cdsEdi_ConfigCOD_PRODUTO_TAM: TIntegerField
      FieldName = 'COD_PRODUTO_TAM'
    end
    object cdsEdi_ConfigQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object cdsEdi_ConfigQTD_TAM: TIntegerField
      FieldName = 'QTD_TAM'
    end
    object cdsEdi_ConfigUNIDADE_INI: TIntegerField
      FieldName = 'UNIDADE_INI'
    end
    object cdsEdi_ConfigUNIDADE_TAM: TIntegerField
      FieldName = 'UNIDADE_TAM'
    end
    object cdsEdi_ConfigPERC_TRANSF_INI: TIntegerField
      FieldName = 'PERC_TRANSF_INI'
    end
    object cdsEdi_ConfigPERC_TRANSF_TAM: TIntegerField
      FieldName = 'PERC_TRANSF_TAM'
    end
    object cdsEdi_ConfigVLR_UNITARIO_INI: TIntegerField
      FieldName = 'VLR_UNITARIO_INI'
    end
    object cdsEdi_ConfigVLR_UNITARIO_TAM: TIntegerField
      FieldName = 'VLR_UNITARIO_TAM'
    end
    object cdsEdi_ConfigVLR_UNITARIO_DEC: TIntegerField
      FieldName = 'VLR_UNITARIO_DEC'
    end
    object cdsEdi_ConfigCOND_PGTO_INI: TIntegerField
      FieldName = 'COND_PGTO_INI'
    end
    object cdsEdi_ConfigCOND_PGTO_TAM: TIntegerField
      FieldName = 'COND_PGTO_TAM'
    end
    object cdsEdi_ConfigNOME_PRODUTO_INI: TIntegerField
      FieldName = 'NOME_PRODUTO_INI'
    end
    object cdsEdi_ConfigNOME_PRODUTO_TAM: TIntegerField
      FieldName = 'NOME_PRODUTO_TAM'
    end
    object cdsEdi_ConfigCNPJ_FORNECEDOR_INI: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_INI'
    end
    object cdsEdi_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_TAM'
    end
    object cdsEdi_ConfigPLANO2_INI: TIntegerField
      FieldName = 'PLANO2_INI'
    end
    object cdsEdi_ConfigPLANO2_TAM: TIntegerField
      FieldName = 'PLANO2_TAM'
    end
    object cdsEdi_ConfigUSA_PLANO: TStringField
      FieldName = 'USA_PLANO'
      FixedChar = True
      Size = 1
    end
    object cdsEdi_ConfigDRAWBACK_INI: TIntegerField
      FieldName = 'DRAWBACK_INI'
    end
    object cdsEdi_ConfigDRAWBACK_TAM: TIntegerField
      FieldName = 'DRAWBACK_TAM'
    end
    object cdsEdi_ConfigTAMANHO_INI: TIntegerField
      FieldName = 'TAMANHO_INI'
    end
    object cdsEdi_ConfigTAMANHO_TAM: TIntegerField
      FieldName = 'TAMANHO_TAM'
    end
    object cdsEdi_ConfigRESERVADO_INI: TIntegerField
      FieldName = 'RESERVADO_INI'
    end
    object cdsEdi_ConfigRESERVADO_TAM: TIntegerField
      FieldName = 'RESERVADO_TAM'
    end
    object cdsEdi_ConfigNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsEdi_ConfigQTD_DEC: TIntegerField
      FieldName = 'QTD_DEC'
    end
    object cdsEdi_ConfigITEM_INI: TIntegerField
      FieldName = 'ITEM_INI'
    end
    object cdsEdi_ConfigITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
    end
    object cdsEdi_ConfigCOD_COR_INI: TIntegerField
      FieldName = 'COD_COR_INI'
    end
    object cdsEdi_ConfigCOD_COR_TAM: TIntegerField
      FieldName = 'COD_COR_TAM'
    end
  end
  object dsEdi_Config: TDataSource
    DataSet = cdsEdi_Config
    Left = 264
    Top = 32
  end
end
