unit UDMCadCFOP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMCadCFOP = class(TDataModule)
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
    sdsCFOPID: TIntegerField;
    sdsCFOPCODCFOP: TStringField;
    sdsCFOPNOME: TStringField;
    sdsCFOPENTRADASAIDA: TStringField;
    sdsCFOPGERAR_IPI: TStringField;
    sdsCFOPGERAR_ICMS: TStringField;
    sdsCFOPGERAR_DUPLICATA: TStringField;
    sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsCFOPNOME_INTERNO: TStringField;
    sdsCFOPID_CSTICMS: TIntegerField;
    sdsCFOPID_CSTIPI: TIntegerField;
    sdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    sdsCFOPID_PIS: TIntegerField;
    sdsCFOPID_COFINS: TIntegerField;
    sdsCFOPTIPO_PIS: TStringField;
    sdsCFOPTIPO_COFINS: TStringField;
    sdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    sdsCFOPTIPO_EMPRESA: TStringField;
    sdsCFOPSUBSTITUICAO_TRIB: TStringField;
    sdsCFOPMVA: TStringField;
    sdsCFOPPERC_COFINS: TFloatField;
    sdsCFOPPERC_PIS: TFloatField;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    dsTab_Pis: TDataSource;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    dsTab_Cofins: TDataSource;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    dsTab_CSTICMS: TDataSource;
    sdsCFOPLEI: TMemoField;
    cdsCFOPLEI: TMemoField;
    dsCFOP_Mestre: TDataSource;
    sdsCFOP_Variacao: TSQLDataSet;
    sdsCFOP_VariacaoID: TIntegerField;
    sdsCFOP_VariacaoITEM: TIntegerField;
    sdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    sdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    cdsCFOP_Variacao: TClientDataSet;
    cdsCFOPsdsCFOP_Variacao: TDataSetField;
    cdsCFOP_VariacaoID: TIntegerField;
    cdsCFOP_VariacaoITEM: TIntegerField;
    cdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    cdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    dsCFOP_Variacao: TDataSource;
    sdsCFOP_VariacaoCOD_IPI: TStringField;
    sdsCFOP_VariacaoCOD_ICMS: TStringField;
    cdsCFOP_VariacaoCOD_ICMS: TStringField;
    cdsCFOP_VariacaoCOD_IPI: TStringField;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    dsTab_CSTIPI: TDataSource;
    sdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    sdsCFOP_VariacaoID_PIS: TIntegerField;
    sdsCFOP_VariacaoID_COFINS: TIntegerField;
    cdsCFOP_VariacaoID_PIS: TIntegerField;
    cdsCFOP_VariacaoID_COFINS: TIntegerField;
    sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    sdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    sdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    sdsCFOP_VariacaoUF_CLIENTE: TStringField;
    sdsCFOP_VariacaoFINALIDADE: TStringField;
    sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    sdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    cdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    cdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    cdsCFOP_VariacaoUF_CLIENTE: TStringField;
    cdsCFOP_VariacaoFINALIDADE: TStringField;
    cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    cdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    sdsOperacao_Nota: TSQLDataSet;
    dspOperaca_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    dsOperacao_Nota: TDataSource;
    sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    sdsCFOP_VariacaoNOME: TStringField;
    cdsCFOP_VariacaoNOME: TStringField;
    sdsCFOPMAOOBRA: TStringField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPMAOOBRA: TStringField;
    sdsCFOPOBS_CLASSIFICACAO: TMemoField;
    cdsCFOPOBS_CLASSIFICACAO: TMemoField;
    sdsCFOP_Ori: TSQLDataSet;
    dspCFOP_Ori: TDataSetProvider;
    cdsCFOP_Ori: TClientDataSet;
    cdsCFOP_OriCFCOD: TStringField;
    cdsCFOP_OriCFNOME: TStringField;
    cdsCFOP_OriCFNOTA: TMemoField;
    sdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    cdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    sdsCFOP_VariacaoLEI: TMemoField;
    cdsCFOP_VariacaoLEI: TMemoField;
    sdsCFOPGERAR_TRIBUTO: TStringField;
    cdsCFOPGERAR_TRIBUTO: TStringField;
    sdsCFOPPERC_TRIBUTO: TFloatField;
    cdsCFOPPERC_TRIBUTO: TFloatField;
    sdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    cdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    sdsCFOPTIPO_IND_VEN: TStringField;
    cdsCFOPTIPO_IND_VEN: TStringField;
    sdsCFOP_VariacaoPERC_PIS: TFloatField;
    sdsCFOP_VariacaoPERC_COFINS: TFloatField;
    cdsCFOP_VariacaoPERC_PIS: TFloatField;
    cdsCFOP_VariacaoPERC_COFINS: TFloatField;
    sdsCFOP_VariacaoTIPO_PIS: TStringField;
    sdsCFOP_VariacaoTIPO_COFINS: TStringField;
    cdsCFOP_VariacaoTIPO_PIS: TStringField;
    cdsCFOP_VariacaoTIPO_COFINS: TStringField;
    sdsCFOPINATIVO: TStringField;
    cdsCFOPINATIVO: TStringField;
    qVerifica: TSQLQuery;
    qVerificaNUM_REGISTRO: TIntegerField;
    qVerificaNUM_REGISTRO2: TIntegerField;
    sdsCFOPDEVOLUCAO: TStringField;
    cdsCFOPDEVOLUCAO: TStringField;
    sdsCFOPGERAR_ESTOQUE_MP: TStringField;
    cdsCFOPGERAR_ESTOQUE_MP: TStringField;
    sdsCFOPID_OBS_LEI: TIntegerField;
    cdsCFOPID_OBS_LEI: TIntegerField;
    sdsCFOP_VariacaoID_OBS_LEI: TIntegerField;
    cdsCFOP_VariacaoID_OBS_LEI: TIntegerField;
    sdsObs_Lei: TSQLDataSet;
    dspObs_Lei: TDataSetProvider;
    cdsObs_Lei: TClientDataSet;
    dsObs_Lei: TDataSource;
    qParametros: TSQLQuery;
    qParametrosUSA_SPED: TStringField;
    cdsObs_LeiID: TIntegerField;
    cdsObs_LeiNOME: TStringField;
    cdsObs_LeiOBS: TStringField;
    qVerifica_CFOP: TSQLQuery;
    qVerifica_CFOPID: TIntegerField;
    qVerifica_CFOPCODCFOP: TStringField;
    sdsCFOP_Consulta: TSQLDataSet;
    dspCFOP_Consulta: TDataSetProvider;
    cdsCFOP_Consulta: TClientDataSet;
    dsCFOP_Consulta: TDataSource;
    cdsCFOP_ConsultaID: TIntegerField;
    cdsCFOP_ConsultaCODCFOP: TStringField;
    cdsCFOP_ConsultaNOME: TStringField;
    cdsCFOP_ConsultaGERAR_IPI: TStringField;
    cdsCFOP_ConsultaGERAR_ICMS: TStringField;
    cdsCFOP_ConsultaGERAR_DUPLICATA: TStringField;
    cdsCFOP_ConsultaSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOP_ConsultaGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOP_ConsultaTIPO_EMPRESA: TStringField;
    cdsCFOP_ConsultaBENEFICIAMENTO: TStringField;
    cdsCFOP_ConsultaNOME_INTERNO: TStringField;
    cdsCFOP_ConsultaINATIVO: TStringField;
    sdsCFOPGERAR_DESONERACAO_ICMS: TStringField;
    cdsCFOPGERAR_DESONERACAO_ICMS: TStringField;
    sdsCFOPGERAR_ESTOQUE: TStringField;
    cdsCFOPGERAR_ESTOQUE: TStringField;
    sdsCFOPBAIXAR_FUT: TStringField;
    cdsCFOPBAIXAR_FUT: TStringField;
    sdsCFOPUSA_NFCE: TStringField;
    cdsCFOPUSA_NFCE: TStringField;
    sdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField;
    cdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField;
    sdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField;
    cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField;
    qParametrosUSA_PERC_ORGAO_PUBLICO: TStringField;
    qParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField;
    sdsCFOP_VariacaoID_ENQIPI: TIntegerField;
    cdsCFOP_VariacaoID_ENQIPI: TIntegerField;
    sdsCFOP_VariacaoCOD_ENQ: TStringField;
    cdsCFOP_VariacaoCOD_ENQ: TStringField;
    sdsEnqIPI: TSQLDataSet;
    dspEnqIPI: TDataSetProvider;
    cdsEnqIPI: TClientDataSet;
    dsEnqIPI: TDataSource;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    dsmImpAux: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxCFOP_Imp: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    sdsCFOPNOME_ORIGINAL: TStringField;
    cdsCFOPNOME_ORIGINAL: TStringField;
    sdsCFOPFATURAMENTO: TStringField;
    cdsCFOPFATURAMENTO: TStringField;
    sdsCFOP_VariacaoTIPO_CONSUMIDOR: TSmallintField;
    sdsCFOP_VariacaoTIPO_CONTRIBUINTE: TSmallintField;
    cdsCFOP_VariacaoTIPO_CONSUMIDOR: TSmallintField;
    cdsCFOP_VariacaoTIPO_CONTRIBUINTE: TSmallintField;
    qParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralID: TIntegerField;
    qParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField;
    sdsCFOP_VariacaoCALCULAR_ST: TStringField;
    cdsCFOP_VariacaoCALCULAR_ST: TStringField;
    sdsCFOP_VariacaoDESC_TIPO_CONSUMIDOR: TStringField;
    cdsCFOP_VariacaoDESC_TIPO_CONSUMIDOR: TStringField;
    sdsCFOP_VariacaoDESC_TIPO_EMPRESA: TStringField;
    sdsCFOP_VariacaoDESC_TIPO_CLIENTE: TStringField;
    sdsCFOP_VariacaoDESC_PESSOA_CLIENTE: TStringField;
    cdsCFOP_VariacaoDESC_TIPO_EMPRESA: TStringField;
    cdsCFOP_VariacaoDESC_TIPO_CLIENTE: TStringField;
    cdsCFOP_VariacaoDESC_PESSOA_CLIENTE: TStringField;
    cdsCFOP_VariacaoclDesc_Tipo_Consumidor: TStringField;
    cdsCFOP_VariacaoclDesc_Tipo_Empresa: TStringField;
    cdsCFOP_VariacaoclDesc_Tipo_Cliente: TStringField;
    cdsCFOP_VariacaoclDesc_Pessoa_Cliente: TStringField;
    sdsCFOPID_COFINS_SIMP: TIntegerField;
    sdsCFOPID_PIS_SIMP: TIntegerField;
    sdsCFOPTIPO_PIS_SIMP: TStringField;
    sdsCFOPTIPO_COFINS_SIMP: TStringField;
    sdsCFOPPERC_COFINS_SIMP: TFloatField;
    sdsCFOPPERC_PIS_SIMP: TFloatField;
    cdsCFOPID_COFINS_SIMP: TIntegerField;
    cdsCFOPID_PIS_SIMP: TIntegerField;
    cdsCFOPTIPO_PIS_SIMP: TStringField;
    cdsCFOPTIPO_COFINS_SIMP: TStringField;
    cdsCFOPPERC_COFINS_SIMP: TFloatField;
    cdsCFOPPERC_PIS_SIMP: TFloatField;
    sdsRegra: TSQLDataSet;
    dspRegra: TDataSetProvider;
    cdsRegra: TClientDataSet;
    dsRegra: TDataSource;
    cdsRegraID: TIntegerField;
    cdsRegraNOME: TStringField;
    sdsCFOPID_REGRA: TIntegerField;
    cdsCFOPID_REGRA: TIntegerField;
    cdsRegraFATURAMENTO: TStringField;
    cdsRegraCALCULA_ST: TStringField;
    cdsRegraID_CSTPIS: TIntegerField;
    cdsRegraID_CSTCOFINS: TIntegerField;
    cdsRegraPERC_PIS: TFloatField;
    cdsRegraPERC_COFINS: TFloatField;
    cdsRegraTIPO_PIS: TStringField;
    cdsRegraTIPO_COFINS: TStringField;
    cdsRegraID_CSTPIS_SIMP: TIntegerField;
    cdsRegraID_CSTCOFINS_SIMP: TIntegerField;
    cdsRegraPERC_PIS_SIMP: TFloatField;
    cdsRegraPERC_COFINS_SIMP: TFloatField;
    cdsRegraTIPO_PIS_SIMP: TStringField;
    cdsRegraTIPO_COFINS_SIMP: TStringField;
    sdsTab_CSTICMS_Simples: TSQLDataSet;
    dspTab_CSTICMS_Simples: TDataSetProvider;
    cdsTab_CSTICMS_Simples: TClientDataSet;
    cdsTab_CSTICMS_SimplesID: TIntegerField;
    cdsTab_CSTICMS_SimplesPERCENTUAL: TFloatField;
    cdsTab_CSTICMS_SimplesHISTORICO: TMemoField;
    cdsTab_CSTICMS_SimplesCOD_CST: TStringField;
    cdsTab_CSTICMS_SimplesTIPO: TStringField;
    cdsTab_CSTICMS_SimplesNOME: TStringField;
    cdsTab_CSTICMS_SimplesUSA_DESONERACAO: TStringField;
    cdsTab_CSTICMS_SimplesCOD_DESONERACAO: TSmallintField;
    cdsTab_CSTICMS_SimplesPERC_DIFERIMENTO: TFloatField;
    dsTab_CSTICMS_Simples: TDataSource;
    mAuxItens: TClientDataSet;
    mAuxItensTipo_Empresa: TStringField;
    mAuxItensTipo_Cliente: TStringField;
    mAuxItensTipo_Consumidor: TIntegerField;
    mAuxItensPessoa_Cliente: TStringField;
    mAuxItensItem: TIntegerField;
    sdsRegra_Itens: TSQLDataSet;
    cdsRegra_Itens: TClientDataSet;
    dspRegra_Itens: TDataSetProvider;
    cdsRegra_ItensID: TIntegerField;
    cdsRegra_ItensITEM: TIntegerField;
    cdsRegra_ItensNOME: TStringField;
    cdsRegra_ItensTIPO_EMPRESA: TStringField;
    cdsRegra_ItensTIPO_CLIENTE: TStringField;
    cdsRegra_ItensPESSOA_CLIENTE: TStringField;
    cdsRegra_ItensTIPO_CONSUMIDOR: TStringField;
    cdsRegra_ItensID_CSTICMS: TIntegerField;
    cdsRegra_ItensID_CSTIPI: TIntegerField;
    cdsRegra_ItensID_ENQIPI: TIntegerField;
    cdsRegra_ItensOBS_LEI: TStringField;
    cdsRegra_ItensCALCULAR_ST: TStringField;
    cdsRegra_ItensCOD_CST: TStringField;
    cdsRegra_ItensCOD_IPI: TStringField;
    cdsRegra_ItensCOD_ENQIPI: TStringField;
    sdsCFOPNFEFINALIDADE: TStringField;
    cdsCFOPNFEFINALIDADE: TStringField;
    sdsCFOPGERAR_CUSTO_MEDIO: TStringField;
    cdsCFOPGERAR_CUSTO_MEDIO: TStringField;
    sdsCFOPUSA_UNIDADE_TRIB: TStringField;
    cdsCFOPUSA_UNIDADE_TRIB: TStringField;
    mImpAux: TClientDataSet;
    mImpAuxID: TIntegerField;
    mImpAuxNome: TStringField;
    mImpAuxCalcula_ICMS: TStringField;
    mImpAuxCalcula_ICMS_Simples: TStringField;
    mImpAuxCalcula_IPI: TStringField;
    mImpAuxCalcula_Subs_Trib: TStringField;
    mImpAuxCalcula_ICMS_Diferido: TStringField;
    mImpAuxCalcula_Desonerao: TStringField;
    mImpAuxGera_Tributo: TStringField;
    mImpAuxControla_Estoque: TStringField;
    mImpAuxGera_Custo_Medio: TStringField;
    mImpAuxBaixa_Estoque_Consumo: TStringField;
    mImpAuxGera_Duplicata: TStringField;
    mImpAuxFaturamento: TStringField;
    mImpAuxMao_de_Obra: TStringField;
    mImpAuxDevolucao: TStringField;
    mImpAuxControla_Beneficiamento: TStringField;
    mImpAuxCopia_Nota_Triangular: TStringField;
    mImpAuxUsa_NFCe: TStringField;
    mImpAuxUsa_Unidade_Trib: TStringField;
    mImpAuxCODCFOP: TStringField;
    sdsCFOP_Imp: TSQLDataSet;
    dspCFOP_Imp: TDataSetProvider;
    cdsCFOP_Imp: TClientDataSet;
    dsCFOP_Imp: TDataSource;
    cdsCFOP_ImpID: TIntegerField;
    cdsCFOP_ImpCODCFOP: TStringField;
    cdsCFOP_ImpNOME: TStringField;
    cdsCFOP_ImpGERAR_IPI: TStringField;
    cdsCFOP_ImpGERAR_ICMS: TStringField;
    cdsCFOP_ImpGERAR_DUPLICATA: TStringField;
    cdsCFOP_ImpSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOP_ImpGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOP_ImpTIPO_EMPRESA: TStringField;
    cdsCFOP_ImpBENEFICIAMENTO: TStringField;
    cdsCFOP_ImpNOME_INTERNO: TStringField;
    cdsCFOP_ImpINATIVO: TStringField;
    cdsCFOP_ImpSUBSTITUICAO_TRIB: TStringField;
    cdsCFOP_ImpCALCULAR_ICMS_DIFERIDO: TStringField;
    cdsCFOP_ImpGERAR_DESONERACAO_ICMS: TStringField;
    cdsCFOP_ImpGERAR_TRIBUTO: TStringField;
    cdsCFOP_ImpTIPO_IND_VEN: TStringField;
    cdsCFOP_ImpFATURAMENTO: TStringField;
    cdsCFOP_ImpMAOOBRA: TStringField;
    cdsCFOP_ImpDEVOLUCAO: TStringField;
    cdsCFOP_ImpCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOP_ImpUSA_NFCE: TStringField;
    cdsCFOP_ImpUSA_UNIDADE_TRIB: TStringField;
    cdsCFOP_ImpNFEFINALIDADE: TStringField;
    cdsCFOP_ImpGERAR_ESTOQUE: TStringField;
    cdsCFOP_ImpGERAR_ESTOQUE_MP: TStringField;
    cdsCFOP_ImpGERAR_CUSTO_MEDIO: TStringField;
    cdsCFOP_ImpPERC_TRIBUTO: TFloatField;
    cdsCFOP_ImpNOME_VARIACAO: TStringField;
    cdsCFOP_ImpITEM: TIntegerField;
    cdsCFOP_ImpCALCULAR_ST: TStringField;
    cdsCFOP_ImpTIPO_EMPRESA_1: TStringField;
    cdsCFOP_ImpTIPO_CLIENTE: TStringField;
    cdsCFOP_ImpUF_CLIENTE: TStringField;
    cdsCFOP_ImpPESSOA_CLIENTE: TStringField;
    cdsCFOP_ImpTIPO_CONSUMIDOR: TStringField;
    cdsCFOP_ImpCOD_CST: TStringField;
    cdsCFOP_ImpCOD_IPI: TStringField;
    cdsCFOP_ImpENQIPI: TStringField;
    sdsCFOPALT_NCM_CUSTO: TStringField;
    cdsCFOPALT_NCM_CUSTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsCFOPNewRecord(DataSet: TDataSet);
    procedure dspCFOPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCFOP_VariacaoNewRecord(DataSet: TDataSet);
    procedure cdsCFOP_VariacaoBeforePost(DataSet: TDataSet);
    procedure mImpAuxAfterScroll(DataSet: TDataSet);
    procedure cdsCFOP_VariacaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctImp: String;
    ctConsulta : String;
    ctCSTICMS : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Itens;
    function fnc_Existe_CFOP : Boolean;
    procedure prc_Abre_CFOP_Imp(vIn : string);

    procedure prc_abrir_csticms(Tipo : String);

  end;

var
  DMCadCFOP: TDMCadCFOP;

implementation

uses DmdDatabase, LogProvider, Math, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadCFOP.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCFOP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_CFOP',0);

  cdsCFOP.Insert;
  cdsCFOPID.AsInteger := vAux;
end;

procedure TDMCadCFOP.prc_Excluir;
begin
  if not(cdsCFOP.Active) or (cdsCFOP.IsEmpty) then
    exit;
  try
    cdsCFOP_Variacao.First;
    while not cdsCFOP_Variacao.Eof do
      cdsCFOP_Variacao.Delete;
    cdsCFOP.Delete;
    cdsCFOP.ApplyUpdates(0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao excluir CFOP, ' + cdsCFOP_ConsultaCODCFOP.AsString + '   '+ E.Message);
    end;
  end;

end;

procedure TDMCadCFOP.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsCFOPNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsCFOPCODCFOP.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Código CFOP não informado!';
  if trim(cdsCFOPTIPO_EMPRESA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo Empresa não informada!';
  if (cdsCFOPINATIVO.AsString = 'S') and (fnc_Existe_CFOP)  then
    vMsgErro := vMsgErro + #13 + '*** CFOP não pode ser inativada, pois já foi utilizada!';
  if cdsCFOPINATIVO.AsString <> 'S' then
  begin
    qVerifica_CFOP.Close;
    qVerifica_CFOP.ParamByName('CODCFOP').AsString := cdsCFOPCODCFOP.AsString;
    qVerifica_CFOP.Open;
    if not(qVerifica_CFOP.IsEmpty) and (qVerifica_CFOPID.AsInteger <> cdsCFOPID.AsInteger) then
      vMsgErro := vMsgErro + #13 + '*** CFOP já cadastrada no ID = ' + qVerifica_CFOPID.AsString + ', A CFOP pode estar inativa, ' + #13
                + 'caso seja isto, favor entrar no cadastro e ativar!';
  end;
  if trim(vMsgErro) <> '' then
    exit;

  if (Length(cdsCFOPCODCFOP.AsString) = 4) or (trim(cdsCFOPENTRADASAIDA.AsString) = '') then
  begin
    if (copy(cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '2') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '3') then
      cdsCFOPENTRADASAIDA.AsString := 'E'
    else
      cdsCFOPENTRADASAIDA.AsString := 'S';
  end;
  if (cdsCFOPGERAR_ESTOQUE.AsString <> 'S') then
    cdsCFOPGERAR_ESTOQUE_MP.AsString := 'N';
  cdsCFOP.Post;
  cdsCFOP.ApplyUpdates(0);
end;

procedure TDMCadCFOP.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsCFOP.Close;
  sdsCFOP.CommandText := ctCommand;
  if ID <> 0 then
    sdsCFOP.CommandText := sdsCFOP.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsCFOP.Open;
end;

procedure TDMCadCFOP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsCFOP.CommandText;
  ctConsulta := sdsCFOP_Consulta.CommandText;
  ctImp := sdsCFOP_Imp.CommandText;
  ctCSTICMS  := sdsTab_CSTICMS.CommandText;
  cdsTab_Cofins.Open;
  cdsTab_Pis.Open;
  cdsTab_CSTICMS.Open;
  cdsTab_CSTIPI.Open;
  cdsOperacao_Nota.Open;
  cdsObs_Lei.Open;
  qParametros.Open;
  cdsEnqIPI.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  cdsRegra.Close;
  cdsRegra.Open;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadCFOP.prc_Inserir_Itens;
var
  vItemAux: Integer;
  vID_CSTICMS, vID_CSTIPI, vID_PIS, vID_COFINS, vID_Operacao_Nota, vID_Obs_Lei, vID_EnqIPI: Integer;
  vTipo_Consumidor, vTipo_Contribuinte : Integer;
  vCod_ICMS, vCOD_IPI, vTipo_Empresa, vTipo_Cliente, vUF_Cliente, vFinalidade, vPessoa_Cliente: String;
  vControlar_ICMS, vControlar_Reducao, vControlar_IPI, vControlar_SubstIcms, vControlar_Diferimento: String;
  vTipo_Pis, vTipo_Cofins, vCalcular_ST : String;
  vPerc_Pis, vPerc_Cofins : Real;
begin
  vID_CSTICMS            := 0;
  vID_CSTIPI             := 0;
  vID_PIS                := 0;
  vID_COFINS             := 0;
  vID_Operacao_Nota      := 0;
  vID_Obs_Lei            := 0;
  vID_EnqIPI             := 0;
  vCod_ICMS              := '';
  vCOD_IPI               := '';
  vTipo_Empresa          := '';
  vTipo_Cliente          := '';
  vUF_Cliente            := '';
  vFinalidade            := '';
  vPessoa_Cliente        := '';
  vControlar_ICMS        := '';
  vControlar_Reducao     := '';
  vControlar_IPI         := '';
  vControlar_SubstIcms   := '';
  vControlar_Diferimento := '';
  vTipo_Cofins           := '';
  vTipo_Pis              := '';
  vPerc_Cofins           := 0;
  vPerc_Pis              := 0;
  vTipo_Consumidor       := 99;
  vTipo_Contribuinte     := 99;
  vCalcular_ST           := '';
  cdsCFOP_Variacao.Last;
  vItemAux := cdsCFOP_VariacaoITEM.AsInteger;
  vItemAux := vItemAux + 1;

  if cdsCFOP_Variacao.RecordCount > 0 then
  begin
    vID_CSTICMS       := cdsCFOP_VariacaoID_CSTICMS.AsInteger;
    vID_CSTIPI        := cdsCFOP_VariacaoID_CSTIPI.AsInteger;
    vID_PIS           := cdsCFOP_VariacaoID_PIS.AsInteger;
    vID_COFINS        := cdsCFOP_VariacaoID_COFINS.AsInteger;
    vID_Operacao_Nota := cdsCFOP_VariacaoID_OPERACAO_NOTA.AsInteger;
    vID_Obs_Lei       := cdsCFOP_VariacaoID_OBS_LEI.AsInteger;
    vID_EnqIPI        := cdsCFOP_VariacaoID_ENQIPI.AsInteger;
    vCod_ICMS              := cdsCFOP_VariacaoCOD_ICMS.AsString;
    vCOD_IPI               := cdsCFOP_VariacaoCOD_IPI.AsString;
    vTipo_Empresa          := cdsCFOP_VariacaoTIPO_EMPRESA.AsString;
    vTipo_Cliente          := cdsCFOP_VariacaoTIPO_CLIENTE.AsString;
    vUF_Cliente            := cdsCFOP_VariacaoUF_CLIENTE.AsString;
    vFinalidade            := cdsCFOP_VariacaoFINALIDADE.AsString;
    vPessoa_Cliente        := cdsCFOP_VariacaoPESSOA_CLIENTE.AsString;
    vControlar_ICMS        := cdsCFOP_VariacaoCONTROLAR_ICMS.AsString;
    vControlar_Reducao     := cdsCFOP_VariacaoCONTROLAR_REDUCAO.AsString;
    vControlar_IPI         := cdsCFOP_VariacaoCONTROLAR_IPI.AsString;
    vControlar_SubstIcms   := cdsCFOP_VariacaoCONTROLAR_SUBSTICMS.AsString;
    vControlar_Diferimento := cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO.AsString;
    vTipo_Cofins           := cdsCFOP_VariacaoTIPO_COFINS.AsString;
    vTipo_Pis              := cdsCFOP_VariacaoTIPO_PIS.AsString;
    vPerc_Cofins           := cdsCFOP_VariacaoPERC_COFINS.AsFloat;
    vPerc_Pis              := cdsCFOP_VariacaoPERC_PIS.AsFloat;
    if not cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull then
      vTipo_Consumidor       := cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger;
    if not cdsCFOP_VariacaoTIPO_CONTRIBUINTE.IsNull then
      vTipo_Contribuinte     := cdsCFOP_VariacaoTIPO_CONTRIBUINTE.AsInteger;
    vCalcular_ST           := cdsCFOP_VariacaoCALCULAR_ST.AsString;
  end;
  cdsCFOP_Variacao.Insert;
  cdsCFOP_VariacaoID.AsInteger   := cdsCFOPID.AsInteger;
  cdsCFOP_VariacaoITEM.AsInteger := vItemAux;

  cdsCFOP_VariacaoID_CSTICMS.AsInteger           := vID_CSTICMS;
  cdsCFOP_VariacaoID_CSTIPI.AsInteger            := vID_CSTIPI;
  cdsCFOP_VariacaoID_PIS.AsInteger               := vID_PIS;
  cdsCFOP_VariacaoID_COFINS.AsInteger            := vID_COFINS;
  cdsCFOP_VariacaoID_OPERACAO_NOTA.AsInteger     := vID_Operacao_Nota;
  if vID_Obs_Lei > 0 then
    cdsCFOP_VariacaoID_OBS_LEI.AsInteger := vID_Obs_Lei;
  if vID_EnqIPI > 0 then
    cdsCFOP_VariacaoID_ENQIPI.AsInteger  := vID_EnqIPI;
  cdsCFOP_VariacaoCOD_ICMS.AsString              := vCod_ICMS;
  cdsCFOP_VariacaoCOD_IPI.AsString               := vCOD_IPI;
  cdsCFOP_VariacaoTIPO_EMPRESA.AsString          := vTipo_Empresa;
  cdsCFOP_VariacaoTIPO_CLIENTE.AsString          := vTipo_Cliente;
  cdsCFOP_VariacaoUF_CLIENTE.AsString            := vUF_Cliente;
  cdsCFOP_VariacaoTIPO_COFINS.AsString           := vTipo_Cofins;
  cdsCFOP_VariacaoTIPO_PIS.AsString              := vTipo_Pis;
  cdsCFOP_VariacaoPERC_COFINS.AsFloat            := vPerc_Cofins;
  cdsCFOP_VariacaoPERC_PIS.AsFloat               := vPerc_Pis;
  if (Length(cdsCFOPCODCFOP.AsString) = 4) then
  begin
    if (copy(cdsCFOPCODCFOP.AsString,1,1) = '5') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '1') then
      cdsCFOP_VariacaoUF_CLIENTE.AsString := 'D'
    else
    if (copy(cdsCFOPCODCFOP.AsString,1,1) = '6') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '2') then
      cdsCFOP_VariacaoUF_CLIENTE.AsString := 'F'
    else
    if (copy(cdsCFOPCODCFOP.AsString,1,1) = '7') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '3') then
      cdsCFOP_VariacaoUF_CLIENTE.AsString := 'E';
  end
  else
    cdsCFOPENTRADASAIDA.AsString := 'D';
  cdsCFOP_VariacaoFINALIDADE.AsString            := vFinalidade;
  cdsCFOP_VariacaoPESSOA_CLIENTE.AsString        := vPessoa_Cliente;
  if trim(vControlar_ICMS) <> '' then
    cdsCFOP_VariacaoCONTROLAR_ICMS.AsString        := vControlar_ICMS;
  if trim(vControlar_Reducao) <> '' then
    cdsCFOP_VariacaoCONTROLAR_REDUCAO.AsString     := vControlar_Reducao;
  if trim(vControlar_IPI) <> '' then
    cdsCFOP_VariacaoCONTROLAR_IPI.AsString         := vControlar_IPI;
  if trim(vControlar_SubstIcms) <> '' then
    cdsCFOP_VariacaoCONTROLAR_SUBSTICMS.AsString   := vControlar_SubstIcms;
  if trim(vControlar_Diferimento) <> '' then
    cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO.AsString := vControlar_Diferimento;
  if vTipo_Consumidor <> 99 then
    cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger := vTipo_Consumidor;
  if vTipo_Contribuinte <> 99 then
    cdsCFOP_VariacaoTIPO_CONTRIBUINTE.AsInteger := vTipo_Contribuinte;
  if (vCalcular_ST = 'S') or (vCalcular_ST = 'N') then
    cdsCFOP_VariacaoCALCULAR_ST.AsString := vCalcular_ST;
end;

procedure TDMCadCFOP.cdsCFOPNewRecord(DataSet: TDataSet);
begin
  cdsCFOPTIPO_EMPRESA.AsString           := 'A';
  cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString  := 'S';
  cdsCFOPDEVOLUCAO.AsString              := 'N';
  cdsCFOPGERAR_ESTOQUE_MP.AsString       := 'S';
  cdsCFOPGERAR_ESTOQUE.AsString          := 'S';
  cdsCFOPFATURAMENTO.AsString            := 'N';
  cdsCFOPGERAR_DESONERACAO_ICMS.AsString := 'N';
  cdsCFOPGERAR_DUPLICATA.AsString        := 'N';
  cdsCFOPSUBSTITUICAO_TRIB.AsString      := 'N';
  cdsCFOPGERAR_CUSTO_MEDIO.AsString      := 'S';
  cdsCFOPINATIVO.AsString                := 'N';
end;

procedure TDMCadCFOP.dspCFOPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCFOP.cdsCFOP_VariacaoNewRecord(DataSet: TDataSet);
begin
  cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO.AsString := 'N';
  cdsCFOP_VariacaoCONTROLAR_ICMS.AsString        := 'N';
  cdsCFOP_VariacaoCONTROLAR_IPI.AsString         := 'N';
  cdsCFOP_VariacaoCONTROLAR_REDUCAO.AsString     := 'N';
  cdsCFOP_VariacaoCONTROLAR_SUBSTICMS.AsString   := 'N';
end;

procedure TDMCadCFOP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TDMCadCFOP.fnc_Existe_CFOP: Boolean;
begin
  Result := False;
  qVerifica.Close;
  qVerifica.ParamByName('ID_CFOP').AsInteger := cdsCFOPID.AsInteger;
  qVerifica.Open;
  if (qVerificaNUM_REGISTRO.AsInteger > 0) or (qVerificaNUM_REGISTRO2.AsInteger > 0) then
    Result := True;
end;

procedure TDMCadCFOP.cdsCFOP_VariacaoBeforePost(DataSet: TDataSet);
begin
  if cdsCFOP_VariacaoID_OBS_LEI.AsInteger <= 0 then
    cdsCFOP_VariacaoID_OBS_LEI.Clear;
end;

procedure TDMCadCFOP.mImpAuxAfterScroll(DataSet: TDataSet);
begin
  prc_Localizar(mImpAuxID.AsInteger);
end;

procedure TDMCadCFOP.cdsCFOP_VariacaoCalcFields(DataSet: TDataSet);
begin
  if cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull then
    cdsCFOP_VariacaoclDesc_Tipo_Consumidor.AsString := ''
  else
  if cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 0 then
    cdsCFOP_VariacaoclDesc_Tipo_Consumidor.AsString := 'Normal'
  else
  if cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1 then
    cdsCFOP_VariacaoclDesc_Tipo_Consumidor.AsString := 'Final';
  if cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
    cdsCFOP_VariacaoclDesc_Tipo_Empresa.AsString := 'Geral'
  else
  if cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'S' then
    cdsCFOP_VariacaoclDesc_Tipo_Empresa.AsString := 'Simples';
  if cdsCFOP_VariacaoTIPO_CLIENTE.AsString = 'G' then
    cdsCFOP_VariacaoclDesc_Tipo_Cliente.AsString := 'Geral'
  else
  if cdsCFOP_VariacaoTIPO_CLIENTE.AsString = 'S' then
    cdsCFOP_VariacaoclDesc_Tipo_Cliente.AsString := 'Simples';
  if cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'J' then
    cdsCFOP_VariacaoclDesc_Pessoa_Cliente.AsString := 'Jurídica'
  else
  if cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F' then
    cdsCFOP_VariacaoclDesc_Pessoa_Cliente.AsString := 'Física';
end;

procedure TDMCadCFOP.prc_abrir_csticms(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
  if Tipo = 'G' then
    sdsTab_CSTICMS.CommandText := ctCSTICMS + ' WHERE TIPO = ' + QuotedStr('N')
  else
  if Tipo = 'S' then
    sdsTab_CSTICMS.CommandText := ctCSTICMS + ' WHERE TIPO = ' + QuotedStr('S')
  else
    sdsTab_CSTICMS.CommandText := ctCSTICMS;
  cdsTab_CSTICMS.Open;
end;

procedure TDMCadCFOP.prc_Abre_CFOP_Imp(vIn : string) ;
var
  vAux : String;
begin
  cdsCFOP_Imp.Close;
  sdsCFOP_Imp.CommandText := ctImp + ' WHERE T.ID IN (' + vIn + ') order by T.CODCFOP, V.ITEM';
  cdsCFOP_Imp.Open;
end;

end.
