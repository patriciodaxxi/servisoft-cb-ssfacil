object frmGerarMovimento: TfrmGerarMovimento
  Left = 180
  Top = 46
  Width = 827
  Height = 590
  Caption = 'frmGerarMovimento'
  Color = 16772313
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzProgressStatus1: TRzProgressStatus
    Left = 24
    Top = 280
    Width = 673
    ParentShowHint = False
    PartsComplete = 0
    Percent = 0
    ShowPercent = True
    TotalParts = 0
  end
  object RzLabel1: TRzLabel
    Left = 296
    Top = 117
    Width = 45
    Height = 13
    Caption = 'RzLabel1'
    Visible = False
  end
  object RzLabel2: TRzLabel
    Left = 296
    Top = 149
    Width = 45
    Height = 13
    Caption = 'RzLabel1'
    Visible = False
  end
  object Label1: TLabel
    Left = 48
    Top = 16
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 53
    Top = 38
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object RzLabel3: TRzLabel
    Left = 296
    Top = 181
    Width = 45
    Height = 13
    Caption = 'RzLabel1'
    Visible = False
  end
  object RzLabel4: TRzLabel
    Left = 296
    Top = 213
    Width = 45
    Height = 13
    Caption = 'RzLabel1'
    Visible = False
  end
  object btnAlterar: TNxButton
    Left = 20
    Top = 107
    Width = 245
    Height = 30
    Caption = 'Carregar Notas Entrada/Sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 0
    Transparent = True
    OnClick = btnAlterarClick
  end
  object NxButton1: TNxButton
    Left = 20
    Top = 139
    Width = 245
    Height = 30
    Caption = 'Carregar Nota Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 1
    Transparent = True
    OnClick = NxButton1Click
  end
  object DateEdit1: TDateEdit
    Left = 108
    Top = 8
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit2: TDateEdit
    Left = 108
    Top = 30
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object btnCupomFiscal: TNxButton
    Left = 20
    Top = 172
    Width = 245
    Height = 30
    Caption = 'Carregar Cupom Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 4
    Transparent = True
    OnClick = btnCupomFiscalClick
  end
  object NxButton2: TNxButton
    Left = 20
    Top = 204
    Width = 245
    Height = 30
    Caption = 'Carregar Recibos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 5
    Transparent = True
    OnClick = NxButton2Click
  end
  object btnGravar_Ult_Fat: TNxButton
    Left = 20
    Top = 340
    Width = 245
    Height = 30
    Caption = 'Gravar '#218'lt. Faturamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 6
    Transparent = True
    OnClick = btnGravar_Ult_FatClick
  end
  object btnGravar_Metas: TNxButton
    Left = 20
    Top = 404
    Width = 245
    Height = 30
    Caption = 'Gravar Metas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    GlyphSpacing = 5
    ParentFont = False
    TabOrder = 7
    Transparent = True
    OnClick = btnGravar_MetasClick
  end
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CF.*'#13#10'FROM CUPOMFISCAL CF'#13#10'WHERE CF.CANCELADO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 32
    object sdsCupomFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsCupomFiscalTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsCupomFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsCupomFiscalPERC_VENDEDOR: TFloatField
      FieldName = 'PERC_VENDEDOR'
    end
    object sdsCupomFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsCupomFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsCupomFiscalVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
    end
    object sdsCupomFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscalVLR_RECEBIDO: TFloatField
      FieldName = 'VLR_RECEBIDO'
    end
    object sdsCupomFiscalVLR_TROCO: TFloatField
      FieldName = 'VLR_TROCO'
    end
    object sdsCupomFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsCupomFiscalCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object sdsCupomFiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsCupomFiscalTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object sdsCupomFiscalVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    UpdateMode = upWhereKeyOnly
    Left = 600
    Top = 32
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomFiscal'
    Left = 640
    Top = 32
    object cdsCupomFiscalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsCupomFiscalTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsCupomFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsCupomFiscalPERC_VENDEDOR: TFloatField
      FieldName = 'PERC_VENDEDOR'
      DisplayFormat = '0.0%'
    end
    object cdsCupomFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLR_RECEBIDO: TFloatField
      FieldName = 'VLR_RECEBIDO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalVLR_TROCO: TFloatField
      FieldName = 'VLR_TROCO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupomFiscalCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00'
      Size = 18
    end
    object cdsCupomFiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsCupomFiscalTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsCupomFiscalVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsCupomFiscalsdsCupomFiscal_Itens: TDataSetField
      FieldName = 'sdsCupomFiscal_Itens'
    end
  end
  object dsmCupomFiscal: TDataSource
    DataSet = sdsCupomFiscal
    Left = 560
    Top = 80
  end
  object sdsCupomFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFI.*'#13#10'FROM CUPOMFISCAL_ITENS CFI'#13#10'WHERE CFI.ID = :ID'#13#10'AN' +
      'D CFI.CANCELADO = '#39'N'#39
    DataSource = dsmCupomFiscal
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 600
    Top = 128
    object sdsCupomFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCupomFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCupomFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCupomFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsCupomFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsCupomFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsCupomFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsCupomFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsCupomFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsCupomFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCupomFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsCupomFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsCupomFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsCupomFiscal_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCupomFiscal_ItensSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object sdsCupomFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCupomFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsCupomFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsCupomFiscal_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCupomFiscal_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object sdsCupomFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsCupomFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCupomFiscal_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCupomFiscalsdsCupomFiscal_Itens
    Params = <>
    Left = 640
    Top = 128
    object cdsCupomFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCupomFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCupomFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCupomFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00%'
    end
    object cdsCupomFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00%'
    end
    object cdsCupomFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCupomFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsCupomFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsCupomFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsCupomFiscal_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscal_ItensSITTRIB: TStringField
      FieldName = 'SITTRIB'
      Size = 5
    end
    object cdsCupomFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCupomFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsCupomFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsCupomFiscal_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCupomFiscal_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsCupomFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsCupomFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 176
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object qFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object qFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object qFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object qFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object qFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object qFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object qFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object qFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object qFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object qFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object qFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object qFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object qFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object qFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object qFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object qFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object qFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object qFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object qFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object qFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object qFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object qFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object qFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object qFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object qFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object qFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object qFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object qFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object qFilialPERC_TRIB_NTS_IND: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND'
    end
    object qFilialPERC_TRIB_NTS_VEN: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN'
    end
    object qFilialPERC_TRIB_NTS_IND_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND_EXP'
    end
    object qFilialPERC_TRIB_NTS_VEN_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN_EXP'
    end
    object qFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object qFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object qFilialID_CONTABILISTA: TIntegerField
      FieldName = 'ID_CONTABILISTA'
    end
    object qFilialINSCR_SUFRAMA: TStringField
      FieldName = 'INSCR_SUFRAMA'
      Size = 10
    end
    object qFilialSPED_PERFIL: TStringField
      FieldName = 'SPED_PERFIL'
      FixedChar = True
      Size = 1
    end
    object qFilialSPED_ATIVIDADE: TStringField
      FieldName = 'SPED_ATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object qFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object qFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, TIPO_REG, NOME, REFERENCIA'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 224
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 720
    Top = 288
    object qParametrosUSA_CUPOM_FISCAL: TStringField
      FieldName = 'USA_CUPOM_FISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id_vendedor, p.VLR_TOTAL, p.dtemissao, p.vlr_icmssubst,' +
      ' P.vlr_itens,'#13#10'P.VLR_DESCONTO, P.vlr_desconto_item'#13#10'FROM PEDIDO ' +
      'P'#13#10'WHERE P.dtemissao BETWEEN :DATA1 AND :DATA2'#13#10'  AND P.cancelad' +
      'o <> '#39'S'#39#13#10'  AND P.tipo_reg = '#39'P'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 376
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 576
    Top = 376
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 616
    Top = 376
    object cdsPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsPedidoVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedidoVLR_DESCONTO_ITEM: TFloatField
      FieldName = 'VLR_DESCONTO_ITEM'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 656
    Top = 376
  end
  object sdsMetas_Acum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*'#13#10'FROM METAS_ACUM M'#13#10'WHERE M.id_vendedor = :ID_VENDEDO' +
      'R'#13#10'  AND M.ano = :ANO'#13#10'  AND M.mes = :MES'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 416
    object sdsMetas_AcumID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object sdsMetas_AcumANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object sdsMetas_AcumMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object sdsMetas_AcumVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsMetas_AcumANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dspMetas_Acum: TDataSetProvider
    DataSet = sdsMetas_Acum
    Left = 576
    Top = 416
  end
  object cdsMetas_Acum: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMetas_Acum'
    Left = 616
    Top = 416
    object cdsMetas_AcumID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object cdsMetas_AcumANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object cdsMetas_AcumMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object cdsMetas_AcumVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsMetas_AcumANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dsMetas_Acum: TDataSource
    DataSet = cdsMetas_Acum
    Left = 656
    Top = 416
  end
  object sdsNota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 480
  end
  object dspNota: TDataSetProvider
    DataSet = sdsNota
    Left = 576
    Top = 480
  end
  object cdsNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNota'
    Left = 616
    Top = 480
    object cdsNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsNotaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsNotaVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object cdsNotaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsNotaPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsNotaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsNotaVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsNotaVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object cdsNotaBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsNotaPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsNotaVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object cdsNotaVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsNotaVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsNotaVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object cdsNotaVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object cdsNotaBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsNotaVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsNotaPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsNotaVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsNotaBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsNotaVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsNotaBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object cdsNotaVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object cdsNotaVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object cdsNotaVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsNotaPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object cdsNotaPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object cdsNotaPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsNotaPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object cdsNotaQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsNotaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsNotaNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object cdsNotaPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotaPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsNotaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsNotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsNotaDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object cdsNotaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsNotaDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsNotaID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotaNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsNotaNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object cdsNotaSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object cdsNotaDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object cdsNotaHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object cdsNotaMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsNotaNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object cdsNotaID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsNotaRNTC: TStringField
      FieldName = 'RNTC'
    end
    object cdsNotaVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object cdsNotaVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object cdsNotaUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object cdsNotaLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object cdsNotaPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsNotaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsNotaGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsNotaDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsNotaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaCALCULAR_IMP_ITEM: TStringField
      FieldName = 'CALCULAR_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsNotaGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      Size = 1
    end
    object cdsNotaID_NOTACOPIADA: TIntegerField
      FieldName = 'ID_NOTACOPIADA'
    end
    object cdsNotaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 2
    end
    object cdsNotaCOD_CONS_EE: TStringField
      FieldName = 'COD_CONS_EE'
      Size = 2
    end
    object cdsNotaCOD_CONS_AGUA: TStringField
      FieldName = 'COD_CONS_AGUA'
      Size = 2
    end
    object cdsNotaVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object cdsNotaBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object cdsNotaHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsNotaTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object cdsNotaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsNotaTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsNotaLOCALDESPEXPORTACAO: TStringField
      FieldName = 'LOCALDESPEXPORTACAO'
      Size = 60
    end
    object cdsNotaVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object cdsNotaVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object cdsNotaVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object cdsNotaFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 30
    end
    object cdsNotaVERSAO_TRIBUTOS: TStringField
      FieldName = 'VERSAO_TRIBUTOS'
      Size = 15
    end
    object cdsNotaVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object cdsNotaPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsNotaNFEENVIADA: TStringField
      FieldName = 'NFEENVIADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsNotaVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsNotaVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsNotaVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsNotaVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsNotaVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
    end
    object cdsNotaNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object cdsNotaVLR_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'VLR_PIS_COFINS_SUFRAMA'
    end
    object cdsNotaVLR_DESC_SUFRAMA: TFloatField
      FieldName = 'VLR_DESC_SUFRAMA'
    end
    object cdsNotaIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object cdsNotaVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object cdsNotaGEROU_MDFE: TStringField
      FieldName = 'GEROU_MDFE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaQTD_TOTAL_PRODUTOS: TFloatField
      FieldName = 'QTD_TOTAL_PRODUTOS'
    end
  end
  object dsNota: TDataSource
    DataSet = cdsNota
    Left = 656
    Top = 480
  end
end
