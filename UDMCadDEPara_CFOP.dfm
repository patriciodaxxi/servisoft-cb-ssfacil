object DMCadDEPara_CFOP: TDMCadDEPara_CFOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 542
  Width = 747
  object sdsDEPara_CFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DEPARA_CFOP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
    object sdsDEPara_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDEPara_CFOPID_CFOP_ENT: TIntegerField
      FieldName = 'ID_CFOP_ENT'
      Required = True
    end
    object sdsDEPara_CFOPTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDEPara_CFOPID_CFOP_GRA: TIntegerField
      FieldName = 'ID_CFOP_GRA'
      Required = True
    end
    object sdsDEPara_CFOPCOD_CFOP_ENT: TStringField
      FieldName = 'COD_CFOP_ENT'
      Size = 4
    end
    object sdsDEPara_CFOPCOD_CFOP_GRA: TStringField
      FieldName = 'COD_CFOP_GRA'
      Size = 4
    end
    object sdsDEPara_CFOPID_CFOP_PED: TIntegerField
      FieldName = 'ID_CFOP_PED'
    end
    object sdsDEPara_CFOPCOD_CFOP_PED: TStringField
      FieldName = 'COD_CFOP_PED'
      Size = 4
    end
    object sdsDEPara_CFOPID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object sdsDEPara_CFOPCOD_SITTRIB_CF: TStringField
      FieldName = 'COD_SITTRIB_CF'
      Size = 5
    end
    object sdsDEPara_CFOPID_CFOP_PROD_NFCE: TIntegerField
      FieldName = 'ID_CFOP_PROD_NFCE'
    end
    object sdsDEPara_CFOPCOD_CFOP_PROD_NFCE: TStringField
      FieldName = 'COD_CFOP_PROD_NFCE'
      Size = 4
    end
  end
  object dspDEPara_CFOP: TDataSetProvider
    DataSet = sdsDEPara_CFOP
    OnUpdateError = dspCFOPUpdateError
    Left = 144
    Top = 32
  end
  object cdsDEPara_CFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDEPara_CFOP'
    Left = 208
    Top = 32
    object cdsDEPara_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDEPara_CFOPID_CFOP_ENT: TIntegerField
      FieldName = 'ID_CFOP_ENT'
      Required = True
    end
    object cdsDEPara_CFOPTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDEPara_CFOPID_CFOP_GRA: TIntegerField
      FieldName = 'ID_CFOP_GRA'
      Required = True
    end
    object cdsDEPara_CFOPCOD_CFOP_ENT: TStringField
      FieldName = 'COD_CFOP_ENT'
      Size = 4
    end
    object cdsDEPara_CFOPCOD_CFOP_GRA: TStringField
      FieldName = 'COD_CFOP_GRA'
      Size = 4
    end
    object cdsDEPara_CFOPID_CFOP_PED: TIntegerField
      FieldName = 'ID_CFOP_PED'
    end
    object cdsDEPara_CFOPCOD_CFOP_PED: TStringField
      FieldName = 'COD_CFOP_PED'
      Size = 4
    end
    object cdsDEPara_CFOPID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsDEPara_CFOPCOD_SITTRIB_CF: TStringField
      FieldName = 'COD_SITTRIB_CF'
      Size = 5
    end
    object cdsDEPara_CFOPID_CFOP_PROD_NFCE: TIntegerField
      FieldName = 'ID_CFOP_PROD_NFCE'
    end
    object cdsDEPara_CFOPCOD_CFOP_PROD_NFCE: TStringField
      FieldName = 'COD_CFOP_PROD_NFCE'
      Size = 4
    end
  end
  object dsDEPara_CFOP: TDataSource
    DataSet = cdsDEPara_CFOP
    Left = 280
    Top = 32
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 136
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    OnUpdateError = dspCFOPUpdateError
    Left = 152
    Top = 136
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 216
    Top = 136
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
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPOBS_CLASSIFICACAO: TMemoField
      FieldName = 'OBS_CLASSIFICACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 288
    Top = 136
  end
  object sdsDEPara_CFOP_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DE.*, CASE DE.TIPO_PRODUTO'#13#10'             WHEN '#39'C'#39' THEN '#39'C' +
      'onsumo'#39#13#10'             WHEN '#39'R'#39' THEN '#39'Revenda'#39#13#10'             WHEN' +
      ' '#39'I'#39' THEN '#39'Industrializa'#231#227'o'#39#13#10'             WHEN '#39'G'#39' THEN '#39'Geral'#39 +
      #13#10'             else '#39#39#13#10'             end as NOME_TIPO'#13#10'FROM DEPA' +
      'RA_CFOP DE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 40
  end
  object dspDEPara_CFOP_Consulta: TDataSetProvider
    DataSet = sdsDEPara_CFOP_Consulta
    OnUpdateError = dspCFOPUpdateError
    Left = 480
    Top = 40
  end
  object cdsDEPara_CFOP_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDEPara_CFOP_Consulta'
    Left = 512
    Top = 40
    object cdsDEPara_CFOP_ConsultaID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsDEPara_CFOP_ConsultaID_CFOP_ENT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID CFOP Entrada'
      FieldName = 'ID_CFOP_ENT'
      Required = True
    end
    object cdsDEPara_CFOP_ConsultaTIPO_PRODUTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo Produto'
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDEPara_CFOP_ConsultaID_CFOP_GRA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID CFOP Grava'#231#227'o'
      FieldName = 'ID_CFOP_GRA'
      Required = True
    end
    object cdsDEPara_CFOP_ConsultaCOD_CFOP_ENT: TStringField
      DisplayLabel = 'CFOP Entrada'
      FieldName = 'COD_CFOP_ENT'
      Size = 4
    end
    object cdsDEPara_CFOP_ConsultaCOD_CFOP_GRA: TStringField
      DisplayLabel = 'CFOP Grava'#231#227'o'
      FieldName = 'COD_CFOP_GRA'
      Size = 4
    end
    object cdsDEPara_CFOP_ConsultaID_CFOP_PED: TIntegerField
      FieldName = 'ID_CFOP_PED'
    end
    object cdsDEPara_CFOP_ConsultaCOD_CFOP_PED: TStringField
      FieldName = 'COD_CFOP_PED'
      Size = 4
    end
    object cdsDEPara_CFOP_ConsultaNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsDEPara_CFOP_ConsultaID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsDEPara_CFOP_ConsultaCOD_SITTRIB_CF: TStringField
      FieldName = 'COD_SITTRIB_CF'
      Size = 5
    end
    object cdsDEPara_CFOP_ConsultaID_CFOP_PROD_NFCE: TIntegerField
      FieldName = 'ID_CFOP_PROD_NFCE'
    end
    object cdsDEPara_CFOP_ConsultaCOD_CFOP_PROD_NFCE: TStringField
      FieldName = 'COD_CFOP_PROD_NFCE'
      Size = 4
    end
  end
  object dsDEPara_CFOP_Consulta: TDataSource
    DataSet = cdsDEPara_CFOP_Consulta
    Left = 544
    Top = 40
  end
  object sdsSitTrib_CF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SITTRIB_CF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 224
  end
  object dspSitTrib_CF: TDataSetProvider
    DataSet = sdsSitTrib_CF
    OnUpdateError = dspCFOPUpdateError
    Left = 144
    Top = 224
  end
  object cdsSitTrib_CF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSitTrib_CF'
    Left = 208
    Top = 224
    object cdsSitTrib_CFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSitTrib_CFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object cdsSitTrib_CFPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object dsSitTrib_CF: TDataSource
    DataSet = cdsSitTrib_CF
    Left = 280
    Top = 224
  end
end
