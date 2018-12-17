unit UDMCadOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, frxClass, frxDBSet, frxExportPDF, frxExportMail,
  frxChBox, dbXPress;

type
  TDMCadOrdemServico = class(TDataModule)
    sdsOrdemServico: TSQLDataSet;
    dspOrdemServico: TDataSetProvider;
    cdsOrdemServico: TClientDataSet;
    dsOrdemServico: TDataSource;
    sdsOrdemServico_Consulta: TSQLDataSet;
    dspOrdemServico_Consulta: TDataSetProvider;
    cdsOrdemServico_Consulta: TClientDataSet;
    dsOrdemServico_Consulta: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteCOMPLEMENTO_END: TStringField;
    cdsClienteNUM_END: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteDDDFONE1: TIntegerField;
    cdsClienteTELEFONE1: TStringField;
    cdsClienteDDDFAX: TIntegerField;
    cdsClienteFAX: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteINSCR_EST: TStringField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteID_CONTABOLETO: TIntegerField;
    cdsClienteID_TRANSPORTADORA: TIntegerField;
    cdsClienteID_TIPOCOBRANCA: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteID_REDESPACHO: TIntegerField;
    cdsClienteID_PAIS: TIntegerField;
    dsCliente: TDataSource;
    sdsServico_Int: TSQLDataSet;
    sdsServico_IntID: TIntegerField;
    sdsServico_IntNOME: TStringField;
    sdsServico_IntVLR_UNITARIO: TFloatField;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    dsServico_Int: TDataSource;
    cdsOrdemServico_Itens: TClientDataSet;
    dsOrdemServico_Itens: TDataSource;
    qProximo_Num: TSQLQuery;
    qParametros: TSQLQuery;
    qParametrosID_CONTA_PADRAO: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    qParametrosID: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    qProximo_NumNUM_OS: TIntegerField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    sdsOrdemServicoID: TIntegerField;
    sdsOrdemServicoNUM_OS: TIntegerField;
    sdsOrdemServicoDTEMISSAO: TDateField;
    sdsOrdemServicoHREMISSAO: TTimeField;
    sdsOrdemServicoID_CLIENTE: TIntegerField;
    sdsOrdemServicoDTENTREGA: TDateField;
    sdsOrdemServicoHRENTREGA: TTimeField;
    sdsOrdemServicoNUM_NOTA: TIntegerField;
    sdsOrdemServicoSERIE_NOTA: TIntegerField;
    sdsOrdemServicoNUM_OC: TIntegerField;
    sdsOrdemServicoID_FUNCIONARIO: TIntegerField;
    sdsOrdemServicoENTREGUE: TStringField;
    sdsOrdemServicoCONCLUIDO: TStringField;
    sdsOrdemServicoDTCONCLUIDO: TDateField;
    sdsOrdemServicoFILIAL: TIntegerField;
    cdsOrdemServicoID: TIntegerField;
    cdsOrdemServicoNUM_OS: TIntegerField;
    cdsOrdemServicoDTEMISSAO: TDateField;
    cdsOrdemServicoHREMISSAO: TTimeField;
    cdsOrdemServicoID_CLIENTE: TIntegerField;
    cdsOrdemServicoDTENTREGA: TDateField;
    cdsOrdemServicoHRENTREGA: TTimeField;
    cdsOrdemServicoNUM_NOTA: TIntegerField;
    cdsOrdemServicoSERIE_NOTA: TIntegerField;
    cdsOrdemServicoNUM_OC: TIntegerField;
    cdsOrdemServicoID_FUNCIONARIO: TIntegerField;
    cdsOrdemServicoENTREGUE: TStringField;
    cdsOrdemServicoCONCLUIDO: TStringField;
    cdsOrdemServicoDTCONCLUIDO: TDateField;
    cdsOrdemServicoFILIAL: TIntegerField;
    sdsOrdemServico_ItensID: TIntegerField;
    sdsOrdemServico_ItensITEM: TIntegerField;
    sdsOrdemServico_ItensID_PRODUTO: TIntegerField;
    sdsOrdemServico_ItensNOME_PRODUTO: TStringField;
    sdsOrdemServico_ItensMARCA: TStringField;
    sdsOrdemServico_ItensMODELO: TStringField;
    sdsOrdemServico_ItensNUM_SERIE: TStringField;
    sdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField;
    sdsOrdemServico_ItensOBS: TMemoField;
    sdsOrdemServico_ItensACESSORIOS: TMemoField;
    sdsOrdemServico_ItensCONCLUIDO: TStringField;
    sdsOrdemServico_ItensDTCONCLUIDO: TDateField;
    sdsOrdemServico_ItensID_TECNICO: TIntegerField;
    cdsOrdemServico_ItensID: TIntegerField;
    cdsOrdemServico_ItensITEM: TIntegerField;
    cdsOrdemServico_ItensID_PRODUTO: TIntegerField;
    cdsOrdemServico_ItensNOME_PRODUTO: TStringField;
    cdsOrdemServico_ItensMARCA: TStringField;
    cdsOrdemServico_ItensMODELO: TStringField;
    cdsOrdemServico_ItensNUM_SERIE: TStringField;
    cdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField;
    cdsOrdemServico_ItensOBS: TMemoField;
    cdsOrdemServico_ItensACESSORIOS: TMemoField;
    cdsOrdemServico_ItensCONCLUIDO: TStringField;
    cdsOrdemServico_ItensDTCONCLUIDO: TDateField;
    cdsOrdemServico_ItensID_TECNICO: TIntegerField;
    sdsOrdemServico_Mat: TSQLDataSet;
    sdsOrdemServico_MatID: TIntegerField;
    sdsOrdemServico_MatITEM: TIntegerField;
    sdsOrdemServico_MatITEM_MAT: TIntegerField;
    sdsOrdemServico_MatID_PRODUTO: TIntegerField;
    sdsOrdemServico_MatQTD: TFloatField;
    sdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    sdsOrdemServico_MatVLR_TOTAL: TFloatField;
    cdsOrdemServico_Mat: TClientDataSet;
    cdsOrdemServico_MatID: TIntegerField;
    cdsOrdemServico_MatITEM: TIntegerField;
    cdsOrdemServico_MatITEM_MAT: TIntegerField;
    cdsOrdemServico_MatID_PRODUTO: TIntegerField;
    cdsOrdemServico_MatQTD: TFloatField;
    cdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    cdsOrdemServico_MatVLR_TOTAL: TFloatField;
    dsOrdemServico_Mat: TDataSource;
    sdsOrdemServico_Serv: TSQLDataSet;
    sdsOrdemServico_ServID: TIntegerField;
    sdsOrdemServico_ServITEM: TIntegerField;
    sdsOrdemServico_ServITEM_SERV: TIntegerField;
    sdsOrdemServico_ServID_SERVICO_INT: TIntegerField;
    sdsOrdemServico_ServTEMPO_TOTAL: TFloatField;
    sdsOrdemServico_ServVLR_UNITARIO: TFloatField;
    sdsOrdemServico_ServVLR_TOTAL: TFloatField;
    sdsOrdemServico_ServDTENTRADA: TDateField;
    sdsOrdemServico_ServDTSAIDA: TDateField;
    sdsOrdemServico_ServHRENTRADA: TTimeField;
    sdsOrdemServico_ServHRSAIDA: TTimeField;
    sdsOrdemServico_ServID_TECNICO: TIntegerField;
    cdsOrdemServico_Serv: TClientDataSet;
    cdsOrdemServico_ServID: TIntegerField;
    cdsOrdemServico_ServITEM: TIntegerField;
    cdsOrdemServico_ServITEM_SERV: TIntegerField;
    cdsOrdemServico_ServID_SERVICO_INT: TIntegerField;
    cdsOrdemServico_ServTEMPO_TOTAL: TFloatField;
    cdsOrdemServico_ServVLR_UNITARIO: TFloatField;
    cdsOrdemServico_ServVLR_TOTAL: TFloatField;
    cdsOrdemServico_ServDTENTRADA: TDateField;
    cdsOrdemServico_ServDTSAIDA: TDateField;
    cdsOrdemServico_ServHRENTRADA: TTimeField;
    cdsOrdemServico_ServHRSAIDA: TTimeField;
    cdsOrdemServico_ServID_TECNICO: TIntegerField;
    dsOrdemServico_Serv: TDataSource;
    cdsOrdemServico_ConsultaID: TIntegerField;
    cdsOrdemServico_ConsultaNUM_OS: TIntegerField;
    cdsOrdemServico_ConsultaDTEMISSAO: TDateField;
    cdsOrdemServico_ConsultaHREMISSAO: TTimeField;
    cdsOrdemServico_ConsultaID_CLIENTE: TIntegerField;
    cdsOrdemServico_ConsultaDTENTREGA: TDateField;
    cdsOrdemServico_ConsultaHRENTREGA: TTimeField;
    cdsOrdemServico_ConsultaNUM_NOTA: TIntegerField;
    cdsOrdemServico_ConsultaSERIE_NOTA: TIntegerField;
    cdsOrdemServico_ConsultaNUM_OC: TIntegerField;
    cdsOrdemServico_ConsultaID_FUNCIONARIO: TIntegerField;
    cdsOrdemServico_ConsultaENTREGUE: TStringField;
    cdsOrdemServico_ConsultaCONCLUIDO: TStringField;
    cdsOrdemServico_ConsultaDTCONCLUIDO: TDateField;
    cdsOrdemServico_ConsultaFILIAL: TIntegerField;
    cdsOrdemServico_ConsultaNOME_CLIENTE: TStringField;
    sdsOrdemServicoHRCONCLUIDO: TTimeField;
    cdsOrdemServicoHRCONCLUIDO: TTimeField;
    sdsOrdemServico_ItensTIPO_GARANTIA: TStringField;
    cdsOrdemServico_ItensTIPO_GARANTIA: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    sdsConsulta_Itens: TSQLDataSet;
    cdsConsulta_Itens: TClientDataSet;
    dspConsulta_Itens: TDataSetProvider;
    sdsConsulta_ItensNUM_OS: TIntegerField;
    sdsConsulta_ItensDTEMISSAO: TDateField;
    sdsConsulta_ItensDTENTREGA: TDateField;
    sdsConsulta_ItensID_CLIENTE: TIntegerField;
    sdsConsulta_ItensNUM_NOTA: TIntegerField;
    sdsConsulta_ItensSERIE_NOTA: TIntegerField;
    sdsConsulta_ItensNUM_OC: TIntegerField;
    sdsConsulta_ItensNOME_CLIENTE: TStringField;
    sdsConsulta_ItensID_PRODUTO: TIntegerField;
    sdsConsulta_ItensNOME_PRODUTO: TStringField;
    sdsConsulta_ItensMARCA: TStringField;
    sdsConsulta_ItensMODELO: TStringField;
    sdsConsulta_ItensNUM_SERIE: TStringField;
    sdsConsulta_ItensDEFEITO_ALEGADO: TMemoField;
    sdsConsulta_ItensOBS: TMemoField;
    sdsConsulta_ItensACESSORIOS: TMemoField;
    sdsConsulta_ItensCONCLUIDO: TStringField;
    sdsConsulta_ItensDTCONCLUIDO: TDateField;
    sdsConsulta_ItensTIPO_GARANTIA: TStringField;
    cdsConsulta_ItensNUM_OS: TIntegerField;
    cdsConsulta_ItensDTEMISSAO: TDateField;
    cdsConsulta_ItensDTENTREGA: TDateField;
    cdsConsulta_ItensID_CLIENTE: TIntegerField;
    cdsConsulta_ItensNUM_NOTA: TIntegerField;
    cdsConsulta_ItensSERIE_NOTA: TIntegerField;
    cdsConsulta_ItensNUM_OC: TIntegerField;
    cdsConsulta_ItensNOME_CLIENTE: TStringField;
    cdsConsulta_ItensID_PRODUTO: TIntegerField;
    cdsConsulta_ItensNOME_PRODUTO: TStringField;
    cdsConsulta_ItensMARCA: TStringField;
    cdsConsulta_ItensMODELO: TStringField;
    cdsConsulta_ItensNUM_SERIE: TStringField;
    cdsConsulta_ItensDEFEITO_ALEGADO: TMemoField;
    cdsConsulta_ItensOBS: TMemoField;
    cdsConsulta_ItensACESSORIOS: TMemoField;
    cdsConsulta_ItensCONCLUIDO: TStringField;
    cdsConsulta_ItensDTCONCLUIDO: TDateField;
    cdsConsulta_ItensTIPO_GARANTIA: TStringField;
    dsConsulta_Itens: TDataSource;
    sdsOrdemServicoNOME_CLIENTE: TStringField;
    cdsOrdemServicoNOME_CLIENTE: TStringField;
    qOS: TSQLQuery;
    qOSID: TIntegerField;
    qOSNUM_OS: TIntegerField;
    sdsOrdemServico_ItensDTENTRADA: TDateField;
    sdsOrdemServico_ItensHRENTRADA: TTimeField;
    cdsOrdemServico_ItensDTENTRADA: TDateField;
    cdsOrdemServico_ItensHRENTRADA: TTimeField;
    sdsOrdemServico_ItensHRCONCLUIDO: TTimeField;
    cdsOrdemServico_ItensHRCONCLUIDO: TTimeField;
    sdsOrdemServicoVLR_TOTAL: TFloatField;
    sdsOrdemServicoVLR_SERVICO: TFloatField;
    sdsOrdemServicoVLR_MATERIAL: TFloatField;
    cdsOrdemServicoVLR_TOTAL: TFloatField;
    cdsOrdemServicoVLR_SERVICO: TFloatField;
    cdsOrdemServicoVLR_MATERIAL: TFloatField;
    sdsOrdemServico_ItensVLR_TOTAL: TFloatField;
    sdsOrdemServico_ItensVLR_SERVICO: TFloatField;
    sdsOrdemServico_ItensVLR_MATERIAL: TFloatField;
    cdsOrdemServico_ItensVLR_TOTAL: TFloatField;
    cdsOrdemServico_ItensVLR_SERVICO: TFloatField;
    cdsOrdemServico_ItensVLR_MATERIAL: TFloatField;
    sdsOrdemServicoCNPJ_CPF: TStringField;
    sdsOrdemServicoCIDADE: TStringField;
    cdsOrdemServicoCNPJ_CPF: TStringField;
    cdsOrdemServicoCIDADE: TStringField;
    sdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField;
    cdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField;
    sdsProdutoCOD_BARRA: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    sdsHistProduto: TSQLDataSet;
    dspHistProduto: TDataSetProvider;
    cdsHistProduto: TClientDataSet;
    dsHistProduto: TDataSource;
    cdsHistProdutoID: TIntegerField;
    cdsHistProdutoID_PRODUTO: TIntegerField;
    cdsHistProdutoITEM: TIntegerField;
    cdsHistProdutoNOME_PRODUTO: TStringField;
    cdsHistProdutoMARCA: TStringField;
    cdsHistProdutoMODELO: TStringField;
    cdsHistProdutoNUM_SERIE: TStringField;
    cdsHistProdutoDTENTRADA: TDateField;
    cdsHistProdutoDTCONCLUIDO: TDateField;
    cdsHistProdutoDTEMISSAO: TDateField;
    cdsHistProdutoID_CLIENTE: TIntegerField;
    cdsHistProdutoNUM_OS: TIntegerField;
    cdsHistProdutoNOME_CLIENTE: TStringField;
    qPesquisaOS: TSQLQuery;
    qPesquisaOSNUM_SERIE: TStringField;
    qPesquisaOSNOME_PRODUTO: TStringField;
    qPesquisaOSMODELO: TStringField;
    qPesquisaOSID_PRODUTO: TIntegerField;
    qProduto_Serie: TSQLQuery;
    qProduto_SerieNOME_PRODUTO: TStringField;
    qProduto_SerieNOME_MARCA: TStringField;
    qProduto_SerieID: TIntegerField;
    sdsProduto_Serie: TSQLDataSet;
    dspProduto_Serie: TDataSetProvider;
    cdsProduto_Serie: TClientDataSet;
    dsProduto_Serie: TDataSource;
    qProximaSerie: TSQLQuery;
    qProximaSerieNUM_SERIE: TIntegerField;
    qPesquisaOSNOME_MARCA: TStringField;
    qPesquisaOSTIPO: TStringField;
    sdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField;
    cdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField;
    cdsHistProdutoNUM_SERIE_TROCA: TStringField;
    sdsOrdemServico_ItensTIPO_APROV: TStringField;
    cdsOrdemServico_ItensTIPO_APROV: TStringField;
    sdsConsulta_ItensNUM_SERIE_TROCA: TStringField;
    cdsConsulta_ItensNUM_SERIE_TROCA: TStringField;
    sdsConsulta_ItensTIPO_APROV: TStringField;
    cdsConsulta_ItensTIPO_APROV: TStringField;
    qPesquisaOSINATIVO: TStringField;
    sdsOrdemServicoVLR_ENTRADA: TFloatField;
    sdsOrdemServicoTP_SIMPLES: TStringField;
    sdsOrdemServicoTP_ORCAMENTO: TStringField;
    sdsOrdemServicoSOLICITANTE_NOME: TStringField;
    sdsOrdemServicoSOLICITANTE_EMAIL: TStringField;
    sdsOrdemServicoSOLICITANTE_FONE: TStringField;
    cdsOrdemServicoVLR_ENTRADA: TFloatField;
    cdsOrdemServicoTP_SIMPLES: TStringField;
    cdsOrdemServicoTP_ORCAMENTO: TStringField;
    cdsOrdemServicoSOLICITANTE_NOME: TStringField;
    cdsOrdemServicoSOLICITANTE_EMAIL: TStringField;
    cdsOrdemServicoSOLICITANTE_FONE: TStringField;
    sdsOrdemServico_Simples: TSQLDataSet;
    cdsOrdemServico_Simples: TClientDataSet;
    dsOrdemServico_Simples: TDataSource;
    cdsOrdemServico_SimplesID: TIntegerField;
    cdsOrdemServico_SimplesITEM: TIntegerField;
    cdsOrdemServico_SimplesID_SERVICO: TIntegerField;
    cdsOrdemServico_SimplesQTD: TFloatField;
    cdsOrdemServico_SimplesVLR_UNITARIO: TFloatField;
    cdsOrdemServico_SimplesVLR_TOTAL: TFloatField;
    cdsOrdemServico_SimplesDESCRICAO: TStringField;
    cdsOrdemServico_ConsultaSOLICITANTE_NOME: TStringField;
    cdsOrdemServico_SimplesCONCLUIDO: TStringField;
    sdsOrdemServicoNOME_ATENDENTE: TStringField;
    cdsOrdemServicoNOME_ATENDENTE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    sdsOrdemServicoOBS: TMemoField;
    cdsOrdemServicoOBS: TMemoField;
    sdsOrdemServicoID_CONDPGTO: TIntegerField;
    cdsOrdemServicoID_CONDPGTO: TIntegerField;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    dsCondPgto: TDataSource;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoENTRADA: TStringField;
    sdsOrdemServicoCONDPGTO: TStringField;
    cdsOrdemServicoCONDPGTO: TStringField;
    cdsOrdemServico_SimplesclNomeServico: TStringField;
    qServico: TSQLQuery;
    qServicoNOME: TStringField;
    qParametrosIMP_MEIA_FOLHA_PED: TStringField;
    sdsOrdemServicoINSCR_EST: TStringField;
    sdsOrdemServicoENDERECO: TStringField;
    sdsOrdemServicoNUM_END: TStringField;
    sdsOrdemServicoCOMPLEMENTO_END: TStringField;
    sdsOrdemServicoUF: TStringField;
    cdsOrdemServicoINSCR_EST: TStringField;
    cdsOrdemServicoENDERECO: TStringField;
    cdsOrdemServicoNUM_END: TStringField;
    cdsOrdemServicoCOMPLEMENTO_END: TStringField;
    cdsOrdemServicoUF: TStringField;
    sdsOSParametros: TSQLDataSet;
    dspOSParametros: TDataSetProvider;
    cdsOSParametros: TClientDataSet;
    dsOSParametros: TDataSource;
    sdsOSParametrosID: TIntegerField;
    sdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField;
    sdsOSParametrosTAMANHO_PAPEL: TStringField;
    sdsOSParametrosINFO_ADICIONAIS: TMemoField;
    sdsOSParametrosIMPRIMIR_VIAS: TSmallintField;
    cdsOSParametrosID: TIntegerField;
    cdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField;
    cdsOSParametrosTAMANHO_PAPEL: TStringField;
    cdsOSParametrosINFO_ADICIONAIS: TMemoField;
    cdsOSParametrosIMPRIMIR_VIAS: TSmallintField;
    cdsFilialEMAIL: TStringField;
    cdsFilialLICENCA_FEPAM: TStringField;
    sdsFuncionarioCONSELHO: TStringField;
    sdsFuncionarioNUM_CONSELHO: TStringField;
    cdsFuncionarioCONSELHO: TStringField;
    cdsFuncionarioNUM_CONSELHO: TStringField;
    sdsOrdemServicoAGENTE1: TIntegerField;
    sdsOrdemServicoAGENTE2: TIntegerField;
    sdsOrdemServicoAGENTE3: TIntegerField;
    sdsOrdemServicoAGENTE4: TIntegerField;
    cdsOrdemServicoAGENTE1: TIntegerField;
    cdsOrdemServicoAGENTE2: TIntegerField;
    cdsOrdemServicoAGENTE3: TIntegerField;
    cdsOrdemServicoAGENTE4: TIntegerField;
    sdsOSImp: TSQLDataSet;
    dspOSImp: TDataSetProvider;
    cdsOSImp: TClientDataSet;
    dsOSImp: TDataSource;
    cdsOSImpID: TIntegerField;
    cdsOSImpNUM_OS: TIntegerField;
    cdsOSImpDTEMISSAO: TDateField;
    cdsOSImpHREMISSAO: TTimeField;
    cdsOSImpID_CLIENTE: TIntegerField;
    cdsOSImpDTENTREGA: TDateField;
    cdsOSImpHRENTREGA: TTimeField;
    cdsOSImpNUM_NOTA: TIntegerField;
    cdsOSImpSERIE_NOTA: TIntegerField;
    cdsOSImpNUM_OC: TIntegerField;
    cdsOSImpID_FUNCIONARIO: TIntegerField;
    cdsOSImpENTREGUE: TStringField;
    cdsOSImpCONCLUIDO: TStringField;
    cdsOSImpDTCONCLUIDO: TDateField;
    cdsOSImpFILIAL: TIntegerField;
    cdsOSImpHRCONCLUIDO: TTimeField;
    cdsOSImpVLR_TOTAL: TFloatField;
    cdsOSImpVLR_SERVICO: TFloatField;
    cdsOSImpVLR_MATERIAL: TFloatField;
    cdsOSImpVLR_ENTRADA: TFloatField;
    cdsOSImpTP_SIMPLES: TStringField;
    cdsOSImpTP_ORCAMENTO: TStringField;
    cdsOSImpSOLICITANTE_NOME: TStringField;
    cdsOSImpSOLICITANTE_EMAIL: TStringField;
    cdsOSImpSOLICITANTE_FONE: TStringField;
    cdsOSImpOBS: TMemoField;
    cdsOSImpID_CONDPGTO: TIntegerField;
    cdsOSImpCOND_NOME: TStringField;
    cdsOSImpFIL_NOME: TStringField;
    cdsOSImpNOME_INTERNO: TStringField;
    cdsOSImpFIL_ENDERECO: TStringField;
    cdsOSImpFIL_NUM_END: TStringField;
    cdsOSImpFIL_COMPL_END: TStringField;
    cdsOSImpFIL_BAIRRO: TStringField;
    cdsOSImpFIL_CEP: TStringField;
    cdsOSImpFIL_CIDADE: TStringField;
    cdsOSImpFIL_UF: TStringField;
    cdsOSImpFIL_DDD1: TIntegerField;
    cdsOSImpFIL_FONE1: TStringField;
    cdsOSImpFIL_CNPJ: TStringField;
    cdsOSImpIE_FILIAL: TStringField;
    cdsOSImpENDLOGO: TStringField;
    cdsOSImpCLI_NOME: TStringField;
    cdsOSImpCLI_FANTASIA: TStringField;
    cdsOSImpCLI_ENDERECO: TStringField;
    cdsOSImpCLI_NUM_END: TStringField;
    cdsOSImpCLI_COMPL_END: TStringField;
    cdsOSImpCLI_BAIRRO: TStringField;
    cdsOSImpCLI_CIDADE: TStringField;
    cdsOSImpCLI_UF: TStringField;
    cdsOSImpCLI_CEP: TStringField;
    cdsOSImpDDDFONE1: TIntegerField;
    cdsOSImpTELEFONE1: TStringField;
    cdsOSImpCLI_CNPJ: TStringField;
    cdsOSImpCLI_IE: TStringField;
    cdsOSImpCLI_CONTATO: TStringField;
    sdsOS_ItemImp: TSQLDataSet;
    dspOS_ItemImp: TDataSetProvider;
    cdsOS_ItemImp: TClientDataSet;
    dsOS_ItemImp: TDataSource;
    cdsOS_ItemImpID: TIntegerField;
    cdsOS_ItemImpITEM: TIntegerField;
    cdsOS_ItemImpID_SERVICO: TIntegerField;
    cdsOS_ItemImpQTD: TFloatField;
    cdsOS_ItemImpVLR_UNITARIO: TFloatField;
    cdsOS_ItemImpVLR_TOTAL: TFloatField;
    cdsOS_ItemImpDESCRICAO: TStringField;
    cdsOS_ItemImpCONCLUIDO: TStringField;
    cdsOSImpAGENTE1: TIntegerField;
    cdsOSImpAGENTE2: TIntegerField;
    cdsOSImpAGENTE3: TIntegerField;
    cdsOSImpAGENTE4: TIntegerField;
    cdsOSImpFIL_EMAIL: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    cdsOS_ItemImpNOME_SERVICO: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    cdsOSImpTECNICO: TStringField;
    cdsOSImpCONSELHO: TStringField;
    cdsOSImpNUM_CONSELHO: TStringField;
    cdsOSImpEMAIL_PGTO: TStringField;
    sdsOrdemServicoMATERIAL: TMemoField;
    cdsOrdemServicoMATERIAL: TMemoField;
    cdsOSImpMATERIAL: TMemoField;
    dsmFilial: TDataSource;
    sdsFilialRelatorios: TSQLDataSet;
    sdsFilialRelatoriosID: TIntegerField;
    sdsFilialRelatoriosITEM: TIntegerField;
    sdsFilialRelatoriosTIPO: TSmallintField;
    sdsFilialRelatoriosCAMINHO: TStringField;
    cdsFilialRelatorios: TClientDataSet;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    dsFilialRelatorios: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    dsOSSimples_Mestre: TDataSource;
    dsOrdemServico_Mestre: TDataSource;
    cdsOrdemServicosdsOrdemServico_Itens: TDataSetField;
    dsOrdemServicoItens_Mestre: TDataSource;
    cdsOrdemServico_ItenssdsOrdemServico_Mat: TDataSetField;
    cdsOrdemServico_ItenssdsOrdemServico_Serv: TDataSetField;
    cdsOrdemServicosdsOrdemServico_Simples: TDataSetField;
    sdsOrdemServico_SimplesID: TIntegerField;
    sdsOrdemServico_SimplesITEM: TIntegerField;
    sdsOrdemServico_SimplesID_SERVICO: TIntegerField;
    sdsOrdemServico_SimplesQTD: TFloatField;
    sdsOrdemServico_SimplesVLR_UNITARIO: TFloatField;
    sdsOrdemServico_SimplesVLR_TOTAL: TFloatField;
    sdsOrdemServico_SimplesDESCRICAO: TStringField;
    sdsOrdemServico_SimplesCONCLUIDO: TStringField;
    sdsOS_Exec: TSQLDataSet;
    sdsOS_ExecID: TIntegerField;
    sdsOS_ExecITEM: TIntegerField;
    sdsOS_ExecITEM_EXEC: TIntegerField;
    sdsOS_ExecID_TECNICO: TIntegerField;
    sdsOS_ExecDT_INICIO: TDateField;
    sdsOS_ExecDT_FIM: TDateField;
    sdsOS_ExecHR_INICIO: TTimeField;
    sdsOS_ExecHR_FIM: TTimeField;
    cdsOS_Exec: TClientDataSet;
    cdsOrdemServico_SimplessdsOS_Exec: TDataSetField;
    cdsOS_ExecID: TIntegerField;
    cdsOS_ExecITEM: TIntegerField;
    cdsOS_ExecITEM_EXEC: TIntegerField;
    cdsOS_ExecID_TECNICO: TIntegerField;
    cdsOS_ExecDT_INICIO: TDateField;
    cdsOS_ExecDT_FIM: TDateField;
    cdsOS_ExecHR_INICIO: TTimeField;
    cdsOS_ExecHR_FIM: TTimeField;
    dsOS_Exec: TDataSource;
    cdsOS_ExeclkTecnico: TStringField;
    frxDBDataset3: TfrxDBDataset;
    sdsOS_ExecImp: TSQLDataSet;
    cdsOS_ExecImp: TClientDataSet;
    dsOS_ExecImp: TDataSource;
    cdsOS_ExecImpID: TIntegerField;
    cdsOS_ExecImpITEM: TIntegerField;
    cdsOS_ExecImpITEM_EXEC: TIntegerField;
    cdsOS_ExecImpID_TECNICO: TIntegerField;
    cdsOS_ExecImpDT_INICIO: TDateField;
    cdsOS_ExecImpDT_FIM: TDateField;
    cdsOS_ExecImpHR_INICIO: TTimeField;
    cdsOS_ExecImpHR_FIM: TTimeField;
    cdsOS_ExecImpNOME_TECNICO: TStringField;
    dsOS_ItemImp_Mestre: TDataSource;
    cdsOS_ItemImpsdsOS_ExecImp: TDataSetField;
    sdsOrdemServicoDT_AGENDA: TDateField;
    sdsOrdemServicoHR_AGENDA: TTimeField;
    cdsOrdemServicoDT_AGENDA: TDateField;
    cdsOrdemServicoHR_AGENDA: TTimeField;
    qParametrosNUMERO_SERIE_INTERNO: TStringField;
    sdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    sdsOrdemServico_MatQTD_FATURADO: TFloatField;
    cdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    cdsOrdemServico_MatQTD_FATURADO: TFloatField;
    sdsOrdemServico_MatFATURAR: TStringField;
    cdsOrdemServico_MatFATURAR: TStringField;
    sdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    cdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    sdsConsulta_Mat: TSQLDataSet;
    cdsConsulta_Mat: TClientDataSet;
    dspConsulta_Mat: TDataSetProvider;
    dsConsulta_Mat: TDataSource;
    sdsConsulta_MatNUM_OS: TIntegerField;
    sdsConsulta_MatDTEMISSAO: TDateField;
    sdsConsulta_MatDTENTREGA: TDateField;
    sdsConsulta_MatID_CLIENTE: TIntegerField;
    sdsConsulta_MatNUM_NOTA: TIntegerField;
    sdsConsulta_MatSERIE_NOTA: TIntegerField;
    sdsConsulta_MatNUM_OC: TIntegerField;
    sdsConsulta_MatNOME_CLIENTE: TStringField;
    sdsConsulta_MatID_PRODUTO: TIntegerField;
    sdsConsulta_MatNOME_PRODUTO: TStringField;
    sdsConsulta_MatMARCA: TStringField;
    sdsConsulta_MatMODELO: TStringField;
    sdsConsulta_MatNUM_SERIE: TStringField;
    sdsConsulta_MatDEFEITO_ALEGADO: TMemoField;
    sdsConsulta_MatOBS: TMemoField;
    sdsConsulta_MatACESSORIOS: TMemoField;
    sdsConsulta_MatCONCLUIDO: TStringField;
    sdsConsulta_MatDTCONCLUIDO: TDateField;
    sdsConsulta_MatTIPO_GARANTIA: TStringField;
    sdsConsulta_MatNUM_SERIE_TROCA: TStringField;
    sdsConsulta_MatITEM_MAT: TIntegerField;
    sdsConsulta_MatID_PECA_USADA: TIntegerField;
    sdsConsulta_MatNOME_PECA: TStringField;
    sdsConsulta_MatQTD_MAT: TFloatField;
    sdsConsulta_MatQTD_RESTANTE_MAT: TFloatField;
    sdsConsulta_MatQTD_FATURADO_MAT: TFloatField;
    sdsConsulta_MatVLR_UNITARIO_MAT: TFloatField;
    sdsConsulta_MatVLR_TOTAL_MAT: TFloatField;
    sdsConsulta_MatFATURAR_MAT: TStringField;
    sdsConsulta_MatTIPO_APROV: TStringField;
    cdsConsulta_MatNUM_OS: TIntegerField;
    cdsConsulta_MatDTEMISSAO: TDateField;
    cdsConsulta_MatDTENTREGA: TDateField;
    cdsConsulta_MatID_CLIENTE: TIntegerField;
    cdsConsulta_MatNUM_NOTA: TIntegerField;
    cdsConsulta_MatSERIE_NOTA: TIntegerField;
    cdsConsulta_MatNUM_OC: TIntegerField;
    cdsConsulta_MatNOME_CLIENTE: TStringField;
    cdsConsulta_MatID_PRODUTO: TIntegerField;
    cdsConsulta_MatNOME_PRODUTO: TStringField;
    cdsConsulta_MatMARCA: TStringField;
    cdsConsulta_MatMODELO: TStringField;
    cdsConsulta_MatNUM_SERIE: TStringField;
    cdsConsulta_MatDEFEITO_ALEGADO: TMemoField;
    cdsConsulta_MatOBS: TMemoField;
    cdsConsulta_MatACESSORIOS: TMemoField;
    cdsConsulta_MatCONCLUIDO: TStringField;
    cdsConsulta_MatDTCONCLUIDO: TDateField;
    cdsConsulta_MatTIPO_GARANTIA: TStringField;
    cdsConsulta_MatNUM_SERIE_TROCA: TStringField;
    cdsConsulta_MatITEM_MAT: TIntegerField;
    cdsConsulta_MatID_PECA_USADA: TIntegerField;
    cdsConsulta_MatNOME_PECA: TStringField;
    cdsConsulta_MatQTD_MAT: TFloatField;
    cdsConsulta_MatQTD_RESTANTE_MAT: TFloatField;
    cdsConsulta_MatQTD_FATURADO_MAT: TFloatField;
    cdsConsulta_MatVLR_UNITARIO_MAT: TFloatField;
    cdsConsulta_MatVLR_TOTAL_MAT: TFloatField;
    cdsConsulta_MatFATURAR_MAT: TStringField;
    cdsConsulta_MatTIPO_APROV: TStringField;
    sdsOS_Nota: TSQLDataSet;
    cdsOS_Nota: TClientDataSet;
    dsOS_Nota: TDataSource;
    dspOS_Nota: TDataSetProvider;
    cdsOS_NotaID_NOTA: TIntegerField;
    cdsOS_NotaITEM_NOTA: TIntegerField;
    cdsOS_NotaITEM_NOTAOS: TIntegerField;
    cdsOS_NotaQTD: TFloatField;
    cdsOS_NotaNUM_OS: TIntegerField;
    cdsOS_NotaNUMNOTA: TIntegerField;
    cdsOS_NotaDTEMISSAO: TDateField;
    cdsOS_NotaSERIE: TStringField;
    cdsOS_NotaTIPO_NOTA: TStringField;
    sdsConsulta_MatID_OS: TIntegerField;
    cdsConsulta_MatID_OS: TIntegerField;
    sdsConsulta_MatITEM_OS: TIntegerField;
    cdsConsulta_MatITEM_OS: TIntegerField;
    cdsOrdemServico_ServlkServico_Int: TStringField;
    cdsOrdemServico_ServlkTecnico: TStringField;
    cdsOrdemServicolkTecnico: TStringField;
    sdsOrdemServico_ItensDT_INSTALACAO: TDateField;
    sdsOrdemServico_ItensDT_GARANTIA: TDateField;
    cdsOrdemServico_ItensDT_INSTALACAO: TDateField;
    cdsOrdemServico_ItensDT_GARANTIA: TDateField;
    cdsOrdemServico_MatlkNomeProduto: TStringField;
    cdsOrdemServico_MatlkReferencia: TStringField;
    qServicoID: TIntegerField;
    sdsOrdemServico_SimplesFATURADO: TStringField;
    cdsOrdemServico_SimplesFATURADO: TStringField;
    cdsOrdemServico_ConsultaFATURADO: TStringField;
    sdsOrdemServicoFATURADO: TStringField;
    cdsOrdemServicoFATURADO: TStringField;
    sdsOrdemServicoTIPO_SERVICO: TStringField;
    cdsOrdemServicoTIPO_SERVICO: TStringField;
    sdsCsmMotorServicos: TSQLDataSet;
    dspCsmMotorServicos: TDataSetProvider;
    cdsCsmMotorServicos: TClientDataSet;
    cdsCsmMotorServicosID: TIntegerField;
    cdsCsmMotorServicosPOSICAO: TStringField;
    cdsCsmMotorServicosSERVICO: TStringField;
    dsCsmMotorServicos: TDataSource;
    sdsCsmOsMotor: TSQLDataSet;
    sdsCsmOsMotorID: TIntegerField;
    sdsCsmOsMotorE_TENS_APLIC: TFloatField;
    sdsCsmOsMotorE_IP: TFloatField;
    sdsCsmOsMotorE_IA: TFloatField;
    sdsCsmOsMotorE_RES_R_S: TFMTBCDField;
    sdsCsmOsMotorE_RES_S_T: TFMTBCDField;
    sdsCsmOsMotorE_RES_T_R: TFMTBCDField;
    sdsCsmOsMotorE_RES_1_4: TFMTBCDField;
    sdsCsmOsMotorE_RES_2_5: TFMTBCDField;
    sdsCsmOsMotorE_RES_3_6: TFMTBCDField;
    sdsCsmOsMotorE_RES_7_10: TFMTBCDField;
    sdsCsmOsMotorE_RES_8_11: TFMTBCDField;
    sdsCsmOsMotorE_RES_9_12: TFMTBCDField;
    sdsCsmOsMotorE_TEMP_AMBIENTE: TFMTBCDField;
    sdsCsmOsMotorE_TENS_APLIC_HIPOT: TFMTBCDField;
    sdsCsmOsMotorE_RST_MASSA: TFMTBCDField;
    sdsCsmOsMotorE_TEMP_ESTATOR: TFMTBCDField;
    sdsCsmOsMotorE_UMIDADE: TFMTBCDField;
    sdsCsmOsMotorE_IR: TFMTBCDField;
    sdsCsmOsMotorE_IS: TFMTBCDField;
    sdsCsmOsMotorE_IT: TFMTBCDField;
    sdsCsmOsMotorE_TERM_BOBINADO_T1: TFMTBCDField;
    sdsCsmOsMotorE_TERM_BOBINADO_T2: TFMTBCDField;
    sdsCsmOsMotorE_TERM_BOBINADO_T3: TFMTBCDField;
    sdsCsmOsMotorE_TERM_MASSA_T1: TFMTBCDField;
    sdsCsmOsMotorE_TERM_MASSA_T2: TFMTBCDField;
    sdsCsmOsMotorE_TERM_MASSA_T3: TFMTBCDField;
    sdsCsmOsMotorE_RES_BOBINADO_R1: TFMTBCDField;
    sdsCsmOsMotorE_RES_BOBINADO_R2: TFMTBCDField;
    sdsCsmOsMotorE_RES_MASSA_R1: TFMTBCDField;
    sdsCsmOsMotorE_RES_MASSA_R2: TFMTBCDField;
    sdsCsmOsMotorE_RES_OHMICA_R1: TFMTBCDField;
    sdsCsmOsMotorE_RES_OHMICA_R2: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT1: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT2: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT3: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT4: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT5: TFMTBCDField;
    sdsCsmOsMotorE_MED_PT6: TFMTBCDField;
    sdsCsmOsMotorE_CAUSA_QUEIMA: TStringField;
    sdsCsmOsMotorE_OBS: TStringField;
    sdsCsmOsMotorS_TENS_APLIC: TFloatField;
    sdsCsmOsMotorS_IP: TFloatField;
    sdsCsmOsMotorS_IA: TFloatField;
    sdsCsmOsMotorS_RES_R_S: TFMTBCDField;
    sdsCsmOsMotorS_RES_S_T: TFMTBCDField;
    sdsCsmOsMotorS_RES_T_R: TFMTBCDField;
    sdsCsmOsMotorS_RES_1_4: TFMTBCDField;
    sdsCsmOsMotorS_RES_2_5: TFMTBCDField;
    sdsCsmOsMotorS_RES_3_6: TFMTBCDField;
    sdsCsmOsMotorS_RES_7_10: TFMTBCDField;
    sdsCsmOsMotorS_RES_8_11: TFMTBCDField;
    sdsCsmOsMotorS_RES_9_12: TFMTBCDField;
    sdsCsmOsMotorS_TEMP_AMBIENTE: TFMTBCDField;
    sdsCsmOsMotorS_TENS_APLIC_HIPOT: TFMTBCDField;
    sdsCsmOsMotorS_RST_MASSA: TFMTBCDField;
    sdsCsmOsMotorS_TEMP_ESTATOR: TFMTBCDField;
    sdsCsmOsMotorS_UMIDADE: TFMTBCDField;
    sdsCsmOsMotorS_IR: TFMTBCDField;
    sdsCsmOsMotorS_IS: TFMTBCDField;
    sdsCsmOsMotorS_IT: TFMTBCDField;
    sdsCsmOsMotorS_TERM_BOBINADO_T1: TFMTBCDField;
    sdsCsmOsMotorS_TERM_BOBINADO_T2: TFMTBCDField;
    sdsCsmOsMotorS_TERM_BOBINADO_T3: TFMTBCDField;
    sdsCsmOsMotorS_TERM_MASSA_T1: TFMTBCDField;
    sdsCsmOsMotorS_TERM_MASSA_T2: TFMTBCDField;
    sdsCsmOsMotorS_TERM_MASSA_T3: TFMTBCDField;
    sdsCsmOsMotorS_RES_BOBINADO_R1: TFMTBCDField;
    sdsCsmOsMotorS_RES_BOBINADO_R2: TFMTBCDField;
    sdsCsmOsMotorS_RES_MASSA_R1: TFMTBCDField;
    sdsCsmOsMotorS_RES_MASSA_R2: TFMTBCDField;
    sdsCsmOsMotorS_RES_OHMICA_R1: TFMTBCDField;
    sdsCsmOsMotorS_RES_OHMICA_R2: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT1: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT2: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT3: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT4: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT5: TFMTBCDField;
    sdsCsmOsMotorS_MED_PT6: TFMTBCDField;
    sdsCsmOsMotorS_CAUSA_QUEIMA: TStringField;
    sdsCsmOsMotorS_OBS: TStringField;
    sdsCsmOsMotorREBOBINAGEM: TStringField;
    sdsCsmOsMotorALTERACAO: TStringField;
    sdsCsmOsMotorMODIFICACAO: TStringField;
    sdsCsmOsMotorORCAMENTO: TStringField;
    sdsCsmOsMotorTESTE: TStringField;
    sdsCsmOsMotorPLANO_PINTURA: TStringField;
    sdsCsmOsMotorPLANO_PINTURA_DESC: TStringField;
    dspCsmOsMotor: TDataSetProvider;
    cdsCsmOsMotor: TClientDataSet;
    cdsCsmOsMotorID: TIntegerField;
    cdsCsmOsMotorE_TENS_APLIC: TFloatField;
    cdsCsmOsMotorE_IP: TFloatField;
    cdsCsmOsMotorE_IA: TFloatField;
    cdsCsmOsMotorE_RES_R_S: TFMTBCDField;
    cdsCsmOsMotorE_RES_S_T: TFMTBCDField;
    cdsCsmOsMotorE_RES_T_R: TFMTBCDField;
    cdsCsmOsMotorE_RES_1_4: TFMTBCDField;
    cdsCsmOsMotorE_RES_2_5: TFMTBCDField;
    cdsCsmOsMotorE_RES_3_6: TFMTBCDField;
    cdsCsmOsMotorE_RES_7_10: TFMTBCDField;
    cdsCsmOsMotorE_RES_8_11: TFMTBCDField;
    cdsCsmOsMotorE_RES_9_12: TFMTBCDField;
    cdsCsmOsMotorE_TEMP_AMBIENTE: TFMTBCDField;
    cdsCsmOsMotorE_TENS_APLIC_HIPOT: TFMTBCDField;
    cdsCsmOsMotorE_RST_MASSA: TFMTBCDField;
    cdsCsmOsMotorE_TEMP_ESTATOR: TFMTBCDField;
    cdsCsmOsMotorE_UMIDADE: TFMTBCDField;
    cdsCsmOsMotorE_IR: TFMTBCDField;
    cdsCsmOsMotorE_IS: TFMTBCDField;
    cdsCsmOsMotorE_IT: TFMTBCDField;
    cdsCsmOsMotorE_TERM_BOBINADO_T1: TFMTBCDField;
    cdsCsmOsMotorE_TERM_BOBINADO_T2: TFMTBCDField;
    cdsCsmOsMotorE_TERM_BOBINADO_T3: TFMTBCDField;
    cdsCsmOsMotorE_TERM_MASSA_T1: TFMTBCDField;
    cdsCsmOsMotorE_TERM_MASSA_T2: TFMTBCDField;
    cdsCsmOsMotorE_TERM_MASSA_T3: TFMTBCDField;
    cdsCsmOsMotorE_RES_BOBINADO_R1: TFMTBCDField;
    cdsCsmOsMotorE_RES_BOBINADO_R2: TFMTBCDField;
    cdsCsmOsMotorE_RES_MASSA_R1: TFMTBCDField;
    cdsCsmOsMotorE_RES_MASSA_R2: TFMTBCDField;
    cdsCsmOsMotorE_RES_OHMICA_R1: TFMTBCDField;
    cdsCsmOsMotorE_RES_OHMICA_R2: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT1: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT2: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT3: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT4: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT5: TFMTBCDField;
    cdsCsmOsMotorE_MED_PT6: TFMTBCDField;
    cdsCsmOsMotorE_CAUSA_QUEIMA: TStringField;
    cdsCsmOsMotorE_OBS: TStringField;
    cdsCsmOsMotorS_TENS_APLIC: TFloatField;
    cdsCsmOsMotorS_IP: TFloatField;
    cdsCsmOsMotorS_IA: TFloatField;
    cdsCsmOsMotorS_RES_R_S: TFMTBCDField;
    cdsCsmOsMotorS_RES_S_T: TFMTBCDField;
    cdsCsmOsMotorS_RES_T_R: TFMTBCDField;
    cdsCsmOsMotorS_RES_1_4: TFMTBCDField;
    cdsCsmOsMotorS_RES_2_5: TFMTBCDField;
    cdsCsmOsMotorS_RES_3_6: TFMTBCDField;
    cdsCsmOsMotorS_RES_7_10: TFMTBCDField;
    cdsCsmOsMotorS_RES_8_11: TFMTBCDField;
    cdsCsmOsMotorS_RES_9_12: TFMTBCDField;
    cdsCsmOsMotorS_TEMP_AMBIENTE: TFMTBCDField;
    cdsCsmOsMotorS_TENS_APLIC_HIPOT: TFMTBCDField;
    cdsCsmOsMotorS_RST_MASSA: TFMTBCDField;
    cdsCsmOsMotorS_TEMP_ESTATOR: TFMTBCDField;
    cdsCsmOsMotorS_UMIDADE: TFMTBCDField;
    cdsCsmOsMotorS_IR: TFMTBCDField;
    cdsCsmOsMotorS_IS: TFMTBCDField;
    cdsCsmOsMotorS_IT: TFMTBCDField;
    cdsCsmOsMotorS_TERM_BOBINADO_T1: TFMTBCDField;
    cdsCsmOsMotorS_TERM_BOBINADO_T2: TFMTBCDField;
    cdsCsmOsMotorS_TERM_BOBINADO_T3: TFMTBCDField;
    cdsCsmOsMotorS_TERM_MASSA_T1: TFMTBCDField;
    cdsCsmOsMotorS_TERM_MASSA_T2: TFMTBCDField;
    cdsCsmOsMotorS_TERM_MASSA_T3: TFMTBCDField;
    cdsCsmOsMotorS_RES_BOBINADO_R1: TFMTBCDField;
    cdsCsmOsMotorS_RES_BOBINADO_R2: TFMTBCDField;
    cdsCsmOsMotorS_RES_MASSA_R1: TFMTBCDField;
    cdsCsmOsMotorS_RES_MASSA_R2: TFMTBCDField;
    cdsCsmOsMotorS_RES_OHMICA_R1: TFMTBCDField;
    cdsCsmOsMotorS_RES_OHMICA_R2: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT1: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT2: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT3: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT4: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT5: TFMTBCDField;
    cdsCsmOsMotorS_MED_PT6: TFMTBCDField;
    cdsCsmOsMotorS_CAUSA_QUEIMA: TStringField;
    cdsCsmOsMotorS_OBS: TStringField;
    cdsCsmOsMotorREBOBINAGEM: TStringField;
    cdsCsmOsMotorALTERACAO: TStringField;
    cdsCsmOsMotorMODIFICACAO: TStringField;
    cdsCsmOsMotorORCAMENTO: TStringField;
    cdsCsmOsMotorTESTE: TStringField;
    cdsCsmOsMotorPLANO_PINTURA: TStringField;
    cdsCsmOsMotorPLANO_PINTURA_DESC: TStringField;
    dsCsmOsMotor: TDataSource;
    sdsCsmOsMotorServ: TSQLDataSet;
    dspCsmOsMotorServ: TDataSetProvider;
    cdsCsmOsMotorServ: TClientDataSet;
    dsCsmOsMotorServ: TDataSource;
    sdsCsmOsTransformador: TSQLDataSet;
    dspCsmOsTransformador: TDataSetProvider;
    cdsCsmOsTransformador: TClientDataSet;
    dsCsmOsTransformador: TDataSource;
    sdsCsmOsTransformadorID: TIntegerField;
    sdsCsmOsTransformadorESTADO: TStringField;
    sdsCsmOsTransformadorPARAFUSOS: TStringField;
    sdsCsmOsTransformadorACESSORIOS: TStringField;
    sdsCsmOsTransformadorACESSORIOS_ESP: TStringField;
    sdsCsmOsTransformadorBOBINAGEM: TStringField;
    sdsCsmOsTransformadorCONSTRUCAO: TStringField;
    sdsCsmOsTransformadorOUTROS: TStringField;
    sdsCsmOsTransformadorOUTROS_DESC: TStringField;
    sdsCsmOsTransformadorBOB_AT_REBOBINAR: TStringField;
    sdsCsmOsTransformadorBOB_AT_COLUNAS: TSmallintField;
    sdsCsmOsTransformadorBOB_AT_REISOLAR: TStringField;
    sdsCsmOsTransformadorCOMUTADOR_NOVO: TStringField;
    sdsCsmOsTransformadorCOMUTADOR_RECUPERAR: TStringField;
    sdsCsmOsTransformadorCOMUTADOR_CABOS: TStringField;
    sdsCsmOsTransformadorBUC_AT_NOVO: TStringField;
    sdsCsmOsTransformadorBUC_AT_PRESILHA: TStringField;
    sdsCsmOsTransformadorBUC_AT_JUNTAS: TStringField;
    sdsCsmOsTransformadorBUC_BT_NOVO: TStringField;
    sdsCsmOsTransformadorBUC_BT_PRESILHA: TStringField;
    sdsCsmOsTransformadorBUC_BT_JUNTAS: TStringField;
    sdsCsmOsTransformadorTAN_NOVO: TStringField;
    sdsCsmOsTransformadorTAN_RECUPERAR: TStringField;
    sdsCsmOsTransformadorTAN_JATEAR: TStringField;
    sdsCsmOsTransformadorIMPREG_VERNIZ: TStringField;
    sdsCsmOsTransformadorIMPREG_RESINA: TStringField;
    sdsCsmOsTransformadorIMPREG_OUTROS: TStringField;
    sdsCsmOsTransformadorIMPREG_OUTROS_DESC: TStringField;
    sdsCsmOsTransformadorOLEO_NOVO: TStringField;
    sdsCsmOsTransformadorOLEO_TRATAR: TStringField;
    sdsCsmOsTransformadorOLEO_LITROS: TFMTBCDField;
    sdsCsmOsTransformadorACESS_NOVO: TStringField;
    sdsCsmOsTransformadorACESS_RECUPERAR: TStringField;
    sdsCsmOsTransformadorVOLTS_PRIM: TFMTBCDField;
    sdsCsmOsTransformadorVOLTS_SEC: TFMTBCDField;
    sdsCsmOsTransformadorAMP_PRIM: TFMTBCDField;
    sdsCsmOsTransformadorAMP_SEC: TFMTBCDField;
    sdsCsmOsTransformadorESPIRAS_PRIM: TSmallintField;
    sdsCsmOsTransformadorESPIRAS_PRIM_FIO: TSmallintField;
    sdsCsmOsTransformadorESPIRAS_SEC: TSmallintField;
    sdsCsmOsTransformadorESPIRAS_SEC_FIO: TSmallintField;
    sdsCsmOsTransformadorCAMADAS_PRIM: TSmallintField;
    sdsCsmOsTransformadorCAMADAS_SEC: TSmallintField;
    sdsCsmOsTransformadorTAM_FORMA: TFMTBCDField;
    sdsCsmOsTransformadorTAM_NUCLEO: TFMTBCDField;
    sdsCsmOsTransformadorESQUEMA_LIG: TStringField;
    sdsCsmOsTransformadorPESO_FIO: TFMTBCDField;
    sdsCsmOsTransformadorVISTO_OUTROS: TStringField;
    sdsCsmOsTransformadorRESPONSAVEL: TStringField;
    sdsCsmOsTransformadorH1_H2: TFMTBCDField;
    sdsCsmOsTransformadorH1_H3: TFMTBCDField;
    sdsCsmOsTransformadorH2_H3: TFMTBCDField;
    sdsCsmOsTransformadorX0_X1: TFMTBCDField;
    sdsCsmOsTransformadorX0_X2: TFMTBCDField;
    sdsCsmOsTransformadorX0_X3: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_1: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_2: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_3: TFMTBCDField;
    sdsCsmOsTransformadorFASE_1_1: TFMTBCDField;
    sdsCsmOsTransformadorFASE_1_2: TFMTBCDField;
    sdsCsmOsTransformadorFASE_1_3: TFMTBCDField;
    sdsCsmOsTransformadorFASE_2_1: TFMTBCDField;
    sdsCsmOsTransformadorFASE_2_2: TFMTBCDField;
    sdsCsmOsTransformadorFASE_2_3: TFMTBCDField;
    sdsCsmOsTransformadorFASE_3_1: TFMTBCDField;
    sdsCsmOsTransformadorFASE_3_2: TFMTBCDField;
    sdsCsmOsTransformadorFASE_3_3: TFMTBCDField;
    sdsCsmOsTransformadorREL_NOM_1: TFMTBCDField;
    sdsCsmOsTransformadorREL_NOM_2: TFMTBCDField;
    sdsCsmOsTransformadorREL_NOM_3: TFMTBCDField;
    sdsCsmOsTransformadorVAR_1: TFMTBCDField;
    sdsCsmOsTransformadorVAR_2: TFMTBCDField;
    sdsCsmOsTransformadorVAR_3: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_AT: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_FASE1: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_FASE2: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_FASE3: TFMTBCDField;
    sdsCsmOsTransformadorAT_BT: TFMTBCDField;
    sdsCsmOsTransformadorAT_BTM: TFMTBCDField;
    sdsCsmOsTransformadorRIGIDEZ_OLEO: TFMTBCDField;
    sdsCsmOsTransformadorAPROVADO: TStringField;
    cdsCsmOsTransformadorID: TIntegerField;
    cdsCsmOsTransformadorESTADO: TStringField;
    cdsCsmOsTransformadorPARAFUSOS: TStringField;
    cdsCsmOsTransformadorACESSORIOS: TStringField;
    cdsCsmOsTransformadorACESSORIOS_ESP: TStringField;
    cdsCsmOsTransformadorBOBINAGEM: TStringField;
    cdsCsmOsTransformadorCONSTRUCAO: TStringField;
    cdsCsmOsTransformadorOUTROS: TStringField;
    cdsCsmOsTransformadorOUTROS_DESC: TStringField;
    cdsCsmOsTransformadorBOB_AT_REBOBINAR: TStringField;
    cdsCsmOsTransformadorBOB_AT_COLUNAS: TSmallintField;
    cdsCsmOsTransformadorBOB_AT_REISOLAR: TStringField;
    cdsCsmOsTransformadorCOMUTADOR_NOVO: TStringField;
    cdsCsmOsTransformadorCOMUTADOR_RECUPERAR: TStringField;
    cdsCsmOsTransformadorCOMUTADOR_CABOS: TStringField;
    cdsCsmOsTransformadorBUC_AT_NOVO: TStringField;
    cdsCsmOsTransformadorBUC_AT_PRESILHA: TStringField;
    cdsCsmOsTransformadorBUC_AT_JUNTAS: TStringField;
    cdsCsmOsTransformadorBUC_BT_NOVO: TStringField;
    cdsCsmOsTransformadorBUC_BT_PRESILHA: TStringField;
    cdsCsmOsTransformadorBUC_BT_JUNTAS: TStringField;
    cdsCsmOsTransformadorTAN_NOVO: TStringField;
    cdsCsmOsTransformadorTAN_RECUPERAR: TStringField;
    cdsCsmOsTransformadorTAN_JATEAR: TStringField;
    cdsCsmOsTransformadorIMPREG_VERNIZ: TStringField;
    cdsCsmOsTransformadorIMPREG_RESINA: TStringField;
    cdsCsmOsTransformadorIMPREG_OUTROS: TStringField;
    cdsCsmOsTransformadorIMPREG_OUTROS_DESC: TStringField;
    cdsCsmOsTransformadorOLEO_NOVO: TStringField;
    cdsCsmOsTransformadorOLEO_TRATAR: TStringField;
    cdsCsmOsTransformadorOLEO_LITROS: TFMTBCDField;
    cdsCsmOsTransformadorACESS_NOVO: TStringField;
    cdsCsmOsTransformadorACESS_RECUPERAR: TStringField;
    cdsCsmOsTransformadorVOLTS_PRIM: TFMTBCDField;
    cdsCsmOsTransformadorVOLTS_SEC: TFMTBCDField;
    cdsCsmOsTransformadorAMP_PRIM: TFMTBCDField;
    cdsCsmOsTransformadorAMP_SEC: TFMTBCDField;
    cdsCsmOsTransformadorESPIRAS_PRIM: TSmallintField;
    cdsCsmOsTransformadorESPIRAS_PRIM_FIO: TSmallintField;
    cdsCsmOsTransformadorESPIRAS_SEC: TSmallintField;
    cdsCsmOsTransformadorESPIRAS_SEC_FIO: TSmallintField;
    cdsCsmOsTransformadorCAMADAS_PRIM: TSmallintField;
    cdsCsmOsTransformadorCAMADAS_SEC: TSmallintField;
    cdsCsmOsTransformadorTAM_FORMA: TFMTBCDField;
    cdsCsmOsTransformadorTAM_NUCLEO: TFMTBCDField;
    cdsCsmOsTransformadorESQUEMA_LIG: TStringField;
    cdsCsmOsTransformadorPESO_FIO: TFMTBCDField;
    cdsCsmOsTransformadorVISTO_OUTROS: TStringField;
    cdsCsmOsTransformadorRESPONSAVEL: TStringField;
    cdsCsmOsTransformadorH1_H2: TFMTBCDField;
    cdsCsmOsTransformadorH1_H3: TFMTBCDField;
    cdsCsmOsTransformadorH2_H3: TFMTBCDField;
    cdsCsmOsTransformadorX0_X1: TFMTBCDField;
    cdsCsmOsTransformadorX0_X2: TFMTBCDField;
    cdsCsmOsTransformadorX0_X3: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_1: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_2: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_3: TFMTBCDField;
    cdsCsmOsTransformadorFASE_1_1: TFMTBCDField;
    cdsCsmOsTransformadorFASE_1_2: TFMTBCDField;
    cdsCsmOsTransformadorFASE_1_3: TFMTBCDField;
    cdsCsmOsTransformadorFASE_2_1: TFMTBCDField;
    cdsCsmOsTransformadorFASE_2_2: TFMTBCDField;
    cdsCsmOsTransformadorFASE_2_3: TFMTBCDField;
    cdsCsmOsTransformadorFASE_3_1: TFMTBCDField;
    cdsCsmOsTransformadorFASE_3_2: TFMTBCDField;
    cdsCsmOsTransformadorFASE_3_3: TFMTBCDField;
    cdsCsmOsTransformadorREL_NOM_1: TFMTBCDField;
    cdsCsmOsTransformadorREL_NOM_2: TFMTBCDField;
    cdsCsmOsTransformadorREL_NOM_3: TFMTBCDField;
    cdsCsmOsTransformadorVAR_1: TFMTBCDField;
    cdsCsmOsTransformadorVAR_2: TFMTBCDField;
    cdsCsmOsTransformadorVAR_3: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_AT: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_FASE1: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_FASE2: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_FASE3: TFMTBCDField;
    cdsCsmOsTransformadorAT_BT: TFMTBCDField;
    cdsCsmOsTransformadorAT_BTM: TFMTBCDField;
    cdsCsmOsTransformadorRIGIDEZ_OLEO: TFMTBCDField;
    cdsCsmOsTransformadorAPROVADO: TStringField;
    sdsCsmOsTransformadorREBOBINAGEM: TStringField;
    sdsCsmOsTransformadorMODIFICACAO: TStringField;
    sdsCsmOsTransformadorTESTE: TStringField;
    sdsCsmOsTransformadorBOB_BT_REBOBINAR: TStringField;
    sdsCsmOsTransformadorBOB_BT_COLUNAS: TSmallintField;
    sdsCsmOsTransformadorBOB_BT_REISOLAR: TStringField;
    cdsCsmOsTransformadorREBOBINAGEM: TStringField;
    cdsCsmOsTransformadorMODIFICACAO: TStringField;
    cdsCsmOsTransformadorTESTE: TStringField;
    cdsCsmOsTransformadorBOB_BT_REBOBINAR: TStringField;
    cdsCsmOsTransformadorBOB_BT_COLUNAS: TSmallintField;
    cdsCsmOsTransformadorBOB_BT_REISOLAR: TStringField;
    sdsCsmOsTransformadorPOTENCIA: TStringField;
    sdsCsmOsTransformadorMODELO: TStringField;
    sdsCsmOsTransformadorNUMERO: TStringField;
    cdsCsmOsTransformadorPOTENCIA: TStringField;
    cdsCsmOsTransformadorMODELO: TStringField;
    cdsCsmOsTransformadorNUMERO: TStringField;
    sdsCsmOsTransformadorITEM_NAO_CONFORME: TStringField;
    cdsCsmOsTransformadorITEM_NAO_CONFORME: TStringField;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    cdsCsmOsMotorServID: TIntegerField;
    cdsCsmOsMotorServID_SERVICO: TIntegerField;
    cdsCsmOsMotorServMARCADO: TStringField;
    cdsCsmOsMotorServDESCRICAO: TStringField;
    cdsCsmOsMotorServPOSICAO: TStringField;
    cdsCsmOsMotorServFLAG: TIntegerField;
    sdsCsmOsMotorServID: TIntegerField;
    sdsCsmOsMotorServID_SERVICO: TIntegerField;
    sdsCsmOsMotorServMARCADO: TStringField;
    sdsCsmOsMotorServDESCRICAO: TStringField;
    sdsCsmOsMotorServPOSICAO: TStringField;
    sdsCsmOsMotorServFLAG: TIntegerField;
    sdsCsmOsMotorServSERVICO: TStringField;
    cdsCsmOsMotorServSERVICO: TStringField;
    sdsOsItem_Imp: TSQLDataSet;
    dspOsItem_Imp: TDataSetProvider;
    cdsOsItem_Imp: TClientDataSet;
    dsOsItem_Imp: TDataSource;
    cdsOsItem_ImpID: TIntegerField;
    cdsOsItem_ImpITEM: TIntegerField;
    cdsOsItem_ImpID_PRODUTO: TIntegerField;
    cdsOsItem_ImpNOME_PRODUTO: TStringField;
    cdsOsItem_ImpMARCA: TStringField;
    cdsOsItem_ImpMODELO: TStringField;
    cdsOsItem_ImpDEFEITO_ALEGADO: TMemoField;
    cdsOsItem_ImpOBS: TMemoField;
    cdsOsItem_ImpACESSORIOS: TMemoField;
    cdsOsItem_ImpCONCLUIDO: TStringField;
    cdsOsItem_ImpDTCONCLUIDO: TDateField;
    cdsOsItem_ImpID_TECNICO: TIntegerField;
    cdsOsItem_ImpTIPO_GARANTIA: TStringField;
    cdsOsItem_ImpDTENTRADA: TDateField;
    cdsOsItem_ImpHRENTRADA: TTimeField;
    cdsOsItem_ImpHRCONCLUIDO: TTimeField;
    cdsOsItem_ImpVLR_TOTAL: TFloatField;
    cdsOsItem_ImpVLR_SERVICO: TFloatField;
    cdsOsItem_ImpVLR_MATERIAL: TFloatField;
    cdsOsItem_ImpDEFEITO_ENCONTRADO: TMemoField;
    cdsOsItem_ImpNUM_SERIE: TStringField;
    cdsOsItem_ImpNUM_SERIE_TROCA: TStringField;
    cdsOsItem_ImpTIPO_APROV: TStringField;
    frxDBDataset6: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCsmOsTrafo: TfrxDBDataset;
    sdsCsmOsTransformadorACESS_TESTE: TStringField;
    sdsCsmOsTransformadorESTANQUEIDADE: TStringField;
    sdsCsmOsTransformadorTENSAO_LIG_AT: TFMTBCDField;
    sdsCsmOsTransformadorTENSAO_LIG_BT: TFMTBCDField;
    sdsCsmOsTransformadorRESP_MONTAGEM: TIntegerField;
    sdsCsmOsTransformadorRESP_SUPERVISAO: TIntegerField;
    sdsCsmOsTransformadorTRAFO_OUTROS: TStringField;
    cdsCsmOsTransformadorACESS_TESTE: TStringField;
    cdsCsmOsTransformadorESTANQUEIDADE: TStringField;
    cdsCsmOsTransformadorTENSAO_LIG_AT: TFMTBCDField;
    cdsCsmOsTransformadorTENSAO_LIG_BT: TFMTBCDField;
    cdsCsmOsTransformadorRESP_MONTAGEM: TIntegerField;
    cdsCsmOsTransformadorRESP_SUPERVISAO: TIntegerField;
    cdsCsmOsTransformadorTRAFO_OUTROS: TStringField;
    sdsCsmOsTransformadorBT_ATM: TFMTBCDField;
    cdsCsmOsTransformadorBT_ATM: TFMTBCDField;
    qParametrosUSA_SERVICO_MOTOR: TStringField;
    cdsOSImplkAgente1: TStringField;
    cdsOSImplkAgente2: TStringField;
    cdsOSImplkAgente3: TStringField;
    cdsOSImplkAgente4: TStringField;
    sdsCsmOsTransformadorORCAMENTO: TStringField;
    cdsCsmOsTransformadorORCAMENTO: TStringField;
    sdsCsmOsAcionamento: TSQLDataSet;
    dspCsmOsAcionamento: TDataSetProvider;
    cdsCsmOsAcionamento: TClientDataSet;
    dsCsmOsAcionamento: TDataSource;
    frxCsmOsAciona: TfrxDBDataset;
    sdsCsmOsAcionamentoID: TIntegerField;
    sdsCsmOsAcionamentoACOMP_CABOS: TStringField;
    sdsCsmOsAcionamentoACOMP_CAIXA: TStringField;
    sdsCsmOsAcionamentoACOMP_PAINEL: TStringField;
    sdsCsmOsAcionamentoACOMP_OUTROS: TStringField;
    sdsCsmOsAcionamentoSOL_MONTAGEM: TStringField;
    sdsCsmOsAcionamentoSOL_CONSERTO: TStringField;
    sdsCsmOsAcionamentoSOL_ORCAMENTO: TStringField;
    sdsCsmOsAcionamentoSOL_OUTROS: TStringField;
    sdsCsmOsAcionamentoPOTENCIA: TFMTBCDField;
    sdsCsmOsAcionamentoTENSAO_FORCA: TFMTBCDField;
    sdsCsmOsAcionamentoTENSAO_COMANDO: TFMTBCDField;
    sdsCsmOsAcionamentoACESSORIOS: TStringField;
    sdsCsmOsAcionamentoCHAVE_PARTIDA: TStringField;
    sdsCsmOsAcionamentoCAPACITORES: TStringField;
    sdsCsmOsAcionamentoTROCAR: TStringField;
    sdsCsmOsAcionamentoMODIFICAR: TStringField;
    sdsCsmOsAcionamentoBOBINA: TStringField;
    sdsCsmOsAcionamentoFUSIVEIS: TStringField;
    sdsCsmOsAcionamentoTEMPORIZADOR: TStringField;
    sdsCsmOsAcionamentoRELE_TERMICO: TStringField;
    sdsCsmOsAcionamentoRELE_FASE: TStringField;
    sdsCsmOsAcionamentoRELE_Y: TStringField;
    sdsCsmOsAcionamentoCONTATOR: TStringField;
    sdsCsmOsAcionamentoCONTATOS: TStringField;
    sdsCsmOsAcionamentoFIACAO: TStringField;
    sdsCsmOsAcionamentoBORNES: TStringField;
    sdsCsmOsAcionamentoCAPACITORES_DESC: TStringField;
    sdsCsmOsAcionamentoRESISTORES_DESC: TStringField;
    sdsCsmOsAcionamentoINVERSOR: TStringField;
    sdsCsmOsAcionamentoSOFT_STARTER: TStringField;
    sdsCsmOsAcionamentoCLP: TStringField;
    sdsCsmOsAcionamentoSERVOACIONAMENTO: TStringField;
    sdsCsmOsAcionamentoORCAMENTO_OUTROS: TStringField;
    sdsCsmOsAcionamentoORCAMENTO_OBS: TStringField;
    cdsCsmOsAcionamentoID: TIntegerField;
    cdsCsmOsAcionamentoACOMP_CABOS: TStringField;
    cdsCsmOsAcionamentoACOMP_CAIXA: TStringField;
    cdsCsmOsAcionamentoACOMP_PAINEL: TStringField;
    cdsCsmOsAcionamentoACOMP_OUTROS: TStringField;
    cdsCsmOsAcionamentoSOL_MONTAGEM: TStringField;
    cdsCsmOsAcionamentoSOL_CONSERTO: TStringField;
    cdsCsmOsAcionamentoSOL_ORCAMENTO: TStringField;
    cdsCsmOsAcionamentoSOL_OUTROS: TStringField;
    cdsCsmOsAcionamentoPOTENCIA: TFMTBCDField;
    cdsCsmOsAcionamentoTENSAO_FORCA: TFMTBCDField;
    cdsCsmOsAcionamentoTENSAO_COMANDO: TFMTBCDField;
    cdsCsmOsAcionamentoACESSORIOS: TStringField;
    cdsCsmOsAcionamentoCHAVE_PARTIDA: TStringField;
    cdsCsmOsAcionamentoCAPACITORES: TStringField;
    cdsCsmOsAcionamentoTROCAR: TStringField;
    cdsCsmOsAcionamentoMODIFICAR: TStringField;
    cdsCsmOsAcionamentoBOBINA: TStringField;
    cdsCsmOsAcionamentoFUSIVEIS: TStringField;
    cdsCsmOsAcionamentoTEMPORIZADOR: TStringField;
    cdsCsmOsAcionamentoRELE_TERMICO: TStringField;
    cdsCsmOsAcionamentoRELE_FASE: TStringField;
    cdsCsmOsAcionamentoRELE_Y: TStringField;
    cdsCsmOsAcionamentoCONTATOR: TStringField;
    cdsCsmOsAcionamentoCONTATOS: TStringField;
    cdsCsmOsAcionamentoFIACAO: TStringField;
    cdsCsmOsAcionamentoBORNES: TStringField;
    cdsCsmOsAcionamentoCAPACITORES_DESC: TStringField;
    cdsCsmOsAcionamentoRESISTORES_DESC: TStringField;
    cdsCsmOsAcionamentoINVERSOR: TStringField;
    cdsCsmOsAcionamentoSOFT_STARTER: TStringField;
    cdsCsmOsAcionamentoCLP: TStringField;
    cdsCsmOsAcionamentoSERVOACIONAMENTO: TStringField;
    cdsCsmOsAcionamentoORCAMENTO_OUTROS: TStringField;
    cdsCsmOsAcionamentoORCAMENTO_OBS: TStringField;
    sdsOrdemServicoID_VENDEDOR: TIntegerField;
    cdsOrdemServicoID_VENDEDOR: TIntegerField;
    cdsOSImpNOME_VENDEDOR: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    sdsCsmOsMotorCARCACA: TStringField;
    cdsCsmOsMotorCARCACA: TStringField;
    sdsCsmOsMotorINSP_POLIA: TStringField;
    sdsCsmOsMotorINSP_POLIA_R: TFMTBCDField;
    sdsCsmOsMotorINSP_ACOPLAMENTO: TStringField;
    sdsCsmOsMotorINSP_VENTOINHA: TStringField;
    sdsCsmOsMotorINSP_CX_LIG: TStringField;
    sdsCsmOsMotorINSP_OUTROS: TStringField;
    cdsCsmOsMotorINSP_POLIA: TStringField;
    cdsCsmOsMotorINSP_POLIA_R: TFMTBCDField;
    cdsCsmOsMotorINSP_ACOPLAMENTO: TStringField;
    cdsCsmOsMotorINSP_VENTOINHA: TStringField;
    cdsCsmOsMotorINSP_CX_LIG: TStringField;
    cdsCsmOsMotorINSP_OUTROS: TStringField;
    sdsCsmOsMotorPOTENCIA: TStringField;
    sdsCsmOsMotorTENSAO: TStringField;
    sdsCsmOsMotorRPM: TStringField;
    cdsCsmOsMotorPOTENCIA: TStringField;
    cdsCsmOsMotorTENSAO: TStringField;
    cdsCsmOsMotorRPM: TStringField;
    sdsCsmOsMotorBobinagem: TSQLDataSet;
    dspCsmOsMotorBobinagem: TDataSetProvider;
    cdsCsmOsMotorBobinagem: TClientDataSet;
    dsCsmOsMotorBobinagem: TDataSource;
    frxDBDataset7: TfrxDBDataset;
    cdsCsmOsMotorBobinagemID: TIntegerField;
    cdsCsmOsMotorBobinagemCVKW: TStringField;
    cdsCsmOsMotorBobinagemMODELO: TStringField;
    cdsCsmOsMotorBobinagemNUMERO: TStringField;
    cdsCsmOsMotorBobinagemVOLT: TFMTBCDField;
    cdsCsmOsMotorBobinagemAMP: TFMTBCDField;
    cdsCsmOsMotorBobinagemHZ: TSmallintField;
    cdsCsmOsMotorBobinagemRPM: TIntegerField;
    cdsCsmOsMotorBobinagemISOL: TStringField;
    cdsCsmOsMotorBobinagemFS: TStringField;
    cdsCsmOsMotorBobinagemRANHURAS: TStringField;
    cdsCsmOsMotorBobinagemPOLOS: TStringField;
    cdsCsmOsMotorBobinagemPASSO: TStringField;
    cdsCsmOsMotorBobinagemESP1: TFMTBCDField;
    cdsCsmOsMotorBobinagemESP2: TFMTBCDField;
    cdsCsmOsMotorBobinagemFIO1: TStringField;
    cdsCsmOsMotorBobinagemFIO2: TStringField;
    cdsCsmOsMotorBobinagemLIG1: TStringField;
    cdsCsmOsMotorBobinagemLIG2: TStringField;
    cdsCsmOsMotorBobinagemNUM_BOBINAS: TFMTBCDField;
    cdsCsmOsMotorBobinagemCABO_SAIDA: TStringField;
    cdsCsmOsMotorBobinagemALT_BOBINAS: TStringField;
    cdsCsmOsMotorBobinagemPESO_FIO: TFMTBCDField;
    cdsCsmOsMotorBobinagemISOL_RANHURA: TStringField;
    cdsCsmOsMotorBobinagemISOL_BOBINAS: TStringField;
    cdsCsmOsMotorBobinagemVERNIZ: TStringField;
    cdsCsmOsMotorBobinagemTEMPO_SECAGEM: TStringField;
    cdsCsmOsMotorBobinagemPACOTE: TStringField;
    cdsCsmOsMotorBobinagemDENTE: TStringField;
    cdsCsmOsMotorBobinagemCOROA: TStringField;
    cdsCsmOsMotorBobinagemRANHURA: TStringField;
    cdsCsmOsMotorBobinagemBOBINAS: TStringField;
    cdsCsmOsMotorBobinagemLIGACAO: TStringField;
    cdsCsmOsMotorBobinagemTEMPO1: TStringField;
    cdsCsmOsMotorBobinagemTEMPO2: TStringField;
    sdsCsmOsMotorBobinagemID: TIntegerField;
    sdsCsmOsMotorBobinagemCVKW: TStringField;
    sdsCsmOsMotorBobinagemMODELO: TStringField;
    sdsCsmOsMotorBobinagemNUMERO: TStringField;
    sdsCsmOsMotorBobinagemVOLT: TFMTBCDField;
    sdsCsmOsMotorBobinagemAMP: TFMTBCDField;
    sdsCsmOsMotorBobinagemHZ: TSmallintField;
    sdsCsmOsMotorBobinagemRPM: TIntegerField;
    sdsCsmOsMotorBobinagemISOL: TStringField;
    sdsCsmOsMotorBobinagemFS: TStringField;
    sdsCsmOsMotorBobinagemRANHURAS: TStringField;
    sdsCsmOsMotorBobinagemPOLOS: TStringField;
    sdsCsmOsMotorBobinagemPASSO: TStringField;
    sdsCsmOsMotorBobinagemESP1: TFMTBCDField;
    sdsCsmOsMotorBobinagemESP2: TFMTBCDField;
    sdsCsmOsMotorBobinagemFIO1: TStringField;
    sdsCsmOsMotorBobinagemFIO2: TStringField;
    sdsCsmOsMotorBobinagemLIG1: TStringField;
    sdsCsmOsMotorBobinagemLIG2: TStringField;
    sdsCsmOsMotorBobinagemNUM_BOBINAS: TFMTBCDField;
    sdsCsmOsMotorBobinagemCABO_SAIDA: TStringField;
    sdsCsmOsMotorBobinagemALT_BOBINAS: TStringField;
    sdsCsmOsMotorBobinagemPESO_FIO: TFMTBCDField;
    sdsCsmOsMotorBobinagemISOL_RANHURA: TStringField;
    sdsCsmOsMotorBobinagemISOL_BOBINAS: TStringField;
    sdsCsmOsMotorBobinagemVERNIZ: TStringField;
    sdsCsmOsMotorBobinagemTEMPO_SECAGEM: TStringField;
    sdsCsmOsMotorBobinagemPACOTE: TStringField;
    sdsCsmOsMotorBobinagemDENTE: TStringField;
    sdsCsmOsMotorBobinagemCOROA: TStringField;
    sdsCsmOsMotorBobinagemRANHURA: TStringField;
    sdsCsmOsMotorBobinagemBOBINAS: TStringField;
    sdsCsmOsMotorBobinagemBOBINADOR: TStringField;
    sdsCsmOsMotorBobinagemLIGACAO: TStringField;
    sdsCsmOsMotorBobinagemTEMPO1: TStringField;
    sdsCsmOsMotorBobinagemTEMPO2: TStringField;
    cdsCsmOsMotorBobinagemBOBINADOR: TStringField;
    cdsOSImpDT_AGENDA: TDateField;
    cdsOSImpHR_AGENDA: TTimeField;
    cdsOSImpTIPO_SERVICO: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerID: TIntegerField;
    qParametros_SerIMP_NA_OS_REF_PROD: TStringField;
    qParametros_SerUSA_OS_REDUZIDA: TStringField;
    sdsOrdemServico_Otica: TSQLDataSet;
    dspOrdemServico_Otica: TDataSetProvider;
    cdsOrdemServico_Otica: TClientDataSet;
    dsOrdemServico_Otica: TDataSource;
    sdsOrdemServico_OticaID: TIntegerField;
    sdsOrdemServico_OticaLONGE_ESF_DIR: TFloatField;
    sdsOrdemServico_OticaLONGE_ESF_ESQ: TFloatField;
    sdsOrdemServico_OticaLONGE_CIL_DIR: TFloatField;
    sdsOrdemServico_OticaLONGE_CIL_ESQ: TFloatField;
    sdsOrdemServico_OticaLONGE_FIXO_DIR: TIntegerField;
    sdsOrdemServico_OticaLONGE_FIXO_ESQ: TIntegerField;
    sdsOrdemServico_OticaLONGE_PRISMA_DIR: TStringField;
    sdsOrdemServico_OticaLONGE_BASE_DIR: TStringField;
    sdsOrdemServico_OticaLONGE_PRISMA_ESQ: TStringField;
    sdsOrdemServico_OticaLONGE_BASE_ESQ: TStringField;
    sdsOrdemServico_OticaLONGE_DNP: TFloatField;
    sdsOrdemServico_OticaLONGE_MM: TFloatField;
    sdsOrdemServico_OticaPERTO_ADICAO: TStringField;
    sdsOrdemServico_OticaPERTO_ESF_DIR: TFloatField;
    sdsOrdemServico_OticaPERTO_ESF_ESQ: TFloatField;
    sdsOrdemServico_OticaPERTO_CIL_DIR: TFloatField;
    sdsOrdemServico_OticaPERTO_CIL_ESQ: TFloatField;
    sdsOrdemServico_OticaPERTO_FIXO_DIR: TIntegerField;
    sdsOrdemServico_OticaPERTO_FIXO_ESQ: TIntegerField;
    sdsOrdemServico_OticaPERTO_PRISMA_DIR: TStringField;
    sdsOrdemServico_OticaPERTO_PRISMA_ESQ: TStringField;
    sdsOrdemServico_OticaPERTO_DNP: TFloatField;
    sdsOrdemServico_OticaPERTO_MM: TFloatField;
    sdsOrdemServico_OticaID_LENTE: TIntegerField;
    sdsOrdemServico_OticaALT_SEG: TStringField;
    sdsOrdemServico_OticaID_ARMACAO: TIntegerField;
    sdsOrdemServico_OticaTAM_ARMACAO: TStringField;
    sdsOrdemServico_OticaNOME_DOUTOR: TStringField;
    cdsOrdemServico_OticaID: TIntegerField;
    cdsOrdemServico_OticaLONGE_ESF_DIR: TFloatField;
    cdsOrdemServico_OticaLONGE_ESF_ESQ: TFloatField;
    cdsOrdemServico_OticaLONGE_CIL_DIR: TFloatField;
    cdsOrdemServico_OticaLONGE_CIL_ESQ: TFloatField;
    cdsOrdemServico_OticaLONGE_FIXO_DIR: TIntegerField;
    cdsOrdemServico_OticaLONGE_FIXO_ESQ: TIntegerField;
    cdsOrdemServico_OticaLONGE_PRISMA_DIR: TStringField;
    cdsOrdemServico_OticaLONGE_BASE_DIR: TStringField;
    cdsOrdemServico_OticaLONGE_PRISMA_ESQ: TStringField;
    cdsOrdemServico_OticaLONGE_BASE_ESQ: TStringField;
    cdsOrdemServico_OticaLONGE_DNP: TFloatField;
    cdsOrdemServico_OticaLONGE_MM: TFloatField;
    cdsOrdemServico_OticaPERTO_ADICAO: TStringField;
    cdsOrdemServico_OticaPERTO_ESF_DIR: TFloatField;
    cdsOrdemServico_OticaPERTO_ESF_ESQ: TFloatField;
    cdsOrdemServico_OticaPERTO_CIL_DIR: TFloatField;
    cdsOrdemServico_OticaPERTO_CIL_ESQ: TFloatField;
    cdsOrdemServico_OticaPERTO_FIXO_DIR: TIntegerField;
    cdsOrdemServico_OticaPERTO_FIXO_ESQ: TIntegerField;
    cdsOrdemServico_OticaPERTO_PRISMA_DIR: TStringField;
    cdsOrdemServico_OticaPERTO_PRISMA_ESQ: TStringField;
    cdsOrdemServico_OticaPERTO_DNP: TFloatField;
    cdsOrdemServico_OticaPERTO_MM: TFloatField;
    cdsOrdemServico_OticaID_LENTE: TIntegerField;
    cdsOrdemServico_OticaALT_SEG: TStringField;
    cdsOrdemServico_OticaID_ARMACAO: TIntegerField;
    cdsOrdemServico_OticaTAM_ARMACAO: TStringField;
    cdsOrdemServico_OticaNOME_DOUTOR: TStringField;
    sdsOrdemServico_OticaNOME_COR: TStringField;
    cdsOrdemServico_OticaNOME_COR: TStringField;
    sdsOrdemServico_OticaPERTO_BASE_DIR: TStringField;
    sdsOrdemServico_OticaPERTO_BASE_ESQ: TStringField;
    cdsOrdemServico_OticaPERTO_BASE_DIR: TStringField;
    cdsOrdemServico_OticaPERTO_BASE_ESQ: TStringField;
    sdsOrdemServico_OticaVLR_RESTANTE: TFloatField;
    cdsOrdemServico_OticaVLR_RESTANTE: TFloatField;
    cdsOrdemServico_ConsultaVLR_RESTANTE: TFloatField;
    cdsOrdemServico_ConsultaVLR_TOTAL: TFloatField;
    cdsOrdemServico_ConsultaVLR_ENTRADA: TFloatField;
    sdsOSImp_Otica: TSQLDataSet;
    dspOSImp_Otica: TDataSetProvider;
    cdsOSImp_Otica: TClientDataSet;
    dsOSImp_Otica: TDataSource;
    cdsOSImp_OticaID: TIntegerField;
    cdsOSImp_OticaNUM_OS: TIntegerField;
    cdsOSImp_OticaDTEMISSAO: TDateField;
    cdsOSImp_OticaDTENTREGA: TDateField;
    cdsOSImp_OticaFILIAL: TIntegerField;
    cdsOSImp_OticaVLR_TOTAL: TFloatField;
    cdsOSImp_OticaVLR_SERVICO: TFloatField;
    cdsOSImp_OticaVLR_ENTRADA: TFloatField;
    cdsOSImp_OticaTP_SIMPLES: TStringField;
    cdsOSImp_OticaTP_ORCAMENTO: TStringField;
    cdsOSImp_OticaSOLICITANTE_NOME: TStringField;
    cdsOSImp_OticaSOLICITANTE_EMAIL: TStringField;
    cdsOSImp_OticaSOLICITANTE_FONE: TStringField;
    cdsOSImp_OticaOBS: TMemoField;
    cdsOSImp_OticaID_CONDPGTO: TIntegerField;
    cdsOSImp_OticaCOND_NOME: TStringField;
    cdsOSImp_OticaFIL_NOME: TStringField;
    cdsOSImp_OticaNOME_INTERNO: TStringField;
    cdsOSImp_OticaFIL_ENDERECO: TStringField;
    cdsOSImp_OticaFIL_NUM_END: TStringField;
    cdsOSImp_OticaFIL_COMPL_END: TStringField;
    cdsOSImp_OticaFIL_BAIRRO: TStringField;
    cdsOSImp_OticaFIL_CEP: TStringField;
    cdsOSImp_OticaFIL_CIDADE: TStringField;
    cdsOSImp_OticaFIL_UF: TStringField;
    cdsOSImp_OticaFIL_DDD1: TIntegerField;
    cdsOSImp_OticaFIL_FONE1: TStringField;
    cdsOSImp_OticaFIL_CNPJ: TStringField;
    cdsOSImp_OticaIE_FILIAL: TStringField;
    cdsOSImp_OticaENDLOGO: TStringField;
    cdsOSImp_OticaFIL_EMAIL: TStringField;
    cdsOSImp_OticaCLI_NOME: TStringField;
    cdsOSImp_OticaCLI_FANTASIA: TStringField;
    cdsOSImp_OticaCLI_ENDERECO: TStringField;
    cdsOSImp_OticaCLI_NUM_END: TStringField;
    cdsOSImp_OticaCLI_COMPL_END: TStringField;
    cdsOSImp_OticaEMAIL_PGTO: TStringField;
    cdsOSImp_OticaCLI_BAIRRO: TStringField;
    cdsOSImp_OticaCLI_CIDADE: TStringField;
    cdsOSImp_OticaCLI_UF: TStringField;
    cdsOSImp_OticaCLI_CEP: TStringField;
    cdsOSImp_OticaDDDFONE1: TIntegerField;
    cdsOSImp_OticaTELEFONE1: TStringField;
    cdsOSImp_OticaCLI_CNPJ: TStringField;
    cdsOSImp_OticaCLI_IE: TStringField;
    cdsOSImp_OticaCLI_CONTATO: TStringField;
    cdsOSImp_OticaLONGE_ESF_DIR: TFloatField;
    cdsOSImp_OticaLONGE_ESF_ESQ: TFloatField;
    cdsOSImp_OticaLONGE_CIL_DIR: TFloatField;
    cdsOSImp_OticaLONGE_CIL_ESQ: TFloatField;
    cdsOSImp_OticaLONGE_FIXO_DIR: TIntegerField;
    cdsOSImp_OticaLONGE_FIXO_ESQ: TIntegerField;
    cdsOSImp_OticaLONGE_PRISMA_DIR: TStringField;
    cdsOSImp_OticaLONGE_PRISMA_ESQ: TStringField;
    cdsOSImp_OticaLONGE_BASE_DIR: TStringField;
    cdsOSImp_OticaLONGE_BASE_ESQ: TStringField;
    cdsOSImp_OticaLONGE_DNP: TFloatField;
    cdsOSImp_OticaLONGE_MM: TFloatField;
    cdsOSImp_OticaPERTO_ADICAO: TStringField;
    cdsOSImp_OticaPERTO_ESF_DIR: TFloatField;
    cdsOSImp_OticaPERTO_ESF_ESQ: TFloatField;
    cdsOSImp_OticaPERTO_CIL_DIR: TFloatField;
    cdsOSImp_OticaPERTO_CIL_ESQ: TFloatField;
    cdsOSImp_OticaPERTO_FIXO_DIR: TIntegerField;
    cdsOSImp_OticaPERTO_FIXO_ESQ: TIntegerField;
    cdsOSImp_OticaPERTO_PRISMA_DIR: TStringField;
    cdsOSImp_OticaPERTO_PRISMA_ESQ: TStringField;
    cdsOSImp_OticaPERTO_DNP: TFloatField;
    cdsOSImp_OticaPERTO_MM: TFloatField;
    cdsOSImp_OticaPERTO_BASE_DIR: TStringField;
    cdsOSImp_OticaPERTO_BASE_ESQ: TStringField;
    cdsOSImp_OticaNOME_LENTE: TStringField;
    cdsOSImp_OticaREFERENCIA_LENTE: TStringField;
    cdsOSImp_OticaNOME_ARMACAO: TStringField;
    cdsOSImp_OticaREFERENCIA_ARMACAO: TStringField;
    cdsOSImp_OticaALT_SEG: TStringField;
    cdsOSImp_OticaTAM_ARMACAO: TStringField;
    cdsOSImp_OticaNOME_DOUTOR: TStringField;
    cdsOSImp_OticaNOME_COR: TStringField;
    cdsOSImp_OticaVLR_RESTANTE: TFloatField;
    frxDBDataset8: TfrxDBDataset;
    cdsOSImp_OticaNOME_CONDPGTO: TStringField;
    qParametros_SerMOSTRAR_SERIE_TROCA: TStringField;
    qProduto_SerieNUM_SERIE: TStringField;
    qProduto_SerieNUM_SERIE_SEQ: TIntegerField;
    sdsProduto_SerieID: TIntegerField;
    sdsProduto_SerieNUM_SERIE: TStringField;
    sdsProduto_SerieDTCADASTRO: TDateField;
    sdsProduto_SerieINATIVO: TStringField;
    sdsProduto_SerieNUM_SERIE_SEQ: TIntegerField;
    cdsProduto_SerieID: TIntegerField;
    cdsProduto_SerieNUM_SERIE: TStringField;
    cdsProduto_SerieDTCADASTRO: TDateField;
    cdsProduto_SerieINATIVO: TStringField;
    cdsProduto_SerieNUM_SERIE_SEQ: TIntegerField;
    sdsProduto_SerieITEM: TIntegerField;
    cdsProduto_SerieITEM: TIntegerField;
    sdsOrdemServicoSTATUS: TStringField;
    cdsOrdemServicoSTATUS: TStringField;
    sdsOrdemServico_Itens: TSQLDataSet;
    sdsOrdemServico_ItensSTATUS: TStringField;
    cdsOrdemServico_ItensSTATUS: TStringField;
    qParametros_SerMOSTRAR_STATUS: TStringField;
    cdsOrdemServico_ConsultaSTATUS: TStringField;
    cdsOrdemServico_ConsultaDESC_STATUS: TStringField;
    sdsOrdemServico_ItensDTENTREGA: TDateField;
    sdsOrdemServico_ItensHRENTREGA: TTimeField;
    cdsOrdemServico_ItensDTENTREGA: TDateField;
    cdsOrdemServico_ItensHRENTREGA: TTimeField;
    qParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField;
    qParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField;
    qParametros_SerMOSTRA_OS_ACESSORIOS: TStringField;
    frxOrdemServico_Itens: TfrxDBDataset;
    frxmOS_Mat: TfrxDBDataset;
    frxmOS_Serv: TfrxDBDataset;
    sdsOrdemServicoFANTASIA: TStringField;
    cdsOrdemServicoFANTASIA: TStringField;
    cdsOSImpCLI_PESSOA: TStringField;
    mOS_Mat: TClientDataSet;
    mOS_MatReferencia: TStringField;
    mOS_MatNome_Produto: TStringField;
    mOS_MatQtd: TFloatField;
    mOS_MatVlrTotal: TFloatField;
    mOS_MatVlr_Unitario: TFloatField;
    dsmOS_Mat: TDataSource;
    mOS_Serv: TClientDataSet;
    mOS_ServNome_Servico: TStringField;
    mOS_ServQtd: TIntegerField;
    mOS_ServVlrTotal: TFloatField;
    mOS_ServNome_Tecnico: TStringField;
    dsmOS_Serv: TDataSource;
    mOS_MatItem: TStringField;
    mOS_ServItem: TStringField;
    sdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField;
    cdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField;
    sdsOrdemServicoBAIRRO: TStringField;
    cdsOrdemServicoBAIRRO: TStringField;
    sdsOrdemServico_ServFATURADO: TStringField;
    cdsOrdemServico_ServFATURADO: TStringField;
    sdsOrdemServicoCEP: TStringField;
    cdsOrdemServicoCEP: TStringField;
    sdsConsultaMat2: TSQLDataSet;
    dspConsultaMat2: TDataSetProvider;
    cdsConsultaMat2: TClientDataSet;
    dsConsultaMat2: TDataSource;
    cdsConsultaMat2NOME_CLIENTE: TStringField;
    cdsConsultaMat2NUM_OS: TIntegerField;
    cdsConsultaMat2DTEMISSAO: TDateField;
    cdsConsultaMat2DTENTREGA: TDateField;
    cdsConsultaMat2ID_CLIENTE: TIntegerField;
    cdsConsultaMat2ID_OS: TIntegerField;
    cdsConsultaMat2ID_PRODUTO: TIntegerField;
    cdsConsultaMat2NOME_PRODUTO: TStringField;
    cdsConsultaMat2MARCA: TStringField;
    cdsConsultaMat2MODELO: TStringField;
    cdsConsultaMat2NUM_SERIE: TStringField;
    cdsConsultaMat2CONCLUIDO: TStringField;
    cdsConsultaMat2DTCONCLUIDO: TDateField;
    cdsConsultaMat2TIPO_GARANTIA: TStringField;
    cdsConsultaMat2ITEM_MAT: TIntegerField;
    cdsConsultaMat2ID_PECA_USADA: TIntegerField;
    cdsConsultaMat2NOME_PECA: TStringField;
    cdsConsultaMat2QTD_MAT: TFloatField;
    cdsConsultaMat2VLR_UNITARIO_MAT: TFloatField;
    cdsConsultaMat2VLR_TOTAL_MAT: TFloatField;
    cdsConsultaMat2TIPO_APROV: TStringField;
    frxConsultaMat2: TfrxDBDataset;
    cdsOSImpQTD_ITENS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOrdemServicoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsOrdemServicoNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_ItensNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_ItensBeforePost(DataSet: TDataSet);
    procedure cdsOrdemServico_SimplesCalcFields(DataSet: TDataSet);
    procedure frxReport1Preview(Sender: TObject);
    procedure cdsOrdemServico_MatNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_SimplesNewRecord(DataSet: TDataSet);
    procedure cdsCsmOsMotorNewRecord(DataSet: TDataSet);
    procedure cdsCsmOsTransformadorNewRecord(DataSet: TDataSet);
    procedure cdsCsmOsMotorBobinagemNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_ServNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgOS: String;
    ctCommand: String;
    ctConsulta: String;
    ctConsulta_Itens: String;
    ctHistProduto: String;
    ctCliente: String;
    ctConsulta_Mat: String;
    ctConsulta_Mat21: String;
    ctConsulta_Mat22: String;
    ctOSItem_Imp: String;
    ctCsmOsMotorServ: String;

    vMSGNotaGerada: String;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Otica : Boolean = False);
    procedure prc_Gravar(Otica : Boolean = False);
    procedure prc_Excluir;
    procedure prc_Abrir_cdsCliente;

    procedure prc_Inserir_Itens;
    procedure prc_Inserir_Simples;
    procedure prc_Excluir_Itens;
    procedure prc_Excluir_Simples;

    procedure prc_Inserir_Mat;
    procedure prc_Inserir_Serv;
    procedure prc_Inserir_Exec;
    function fnc_Existe_Serie(Num_Serie: String): Boolean;
    function fnc_Gravar_Produto_Serie: String;

    function fnc_Existe_NumOS(Num_OS, ID : Integer) : Boolean; 
  end;

var
  DMCadOrdemServico: TDMCadOrdemServico;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadOrdemServico.prc_Inserir(Otica : Boolean = False);
var
  vAux: Integer;
begin
  if not cdsOrdemServico.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ORDEMSERVICO',0);

  cdsOrdemServico.Insert;
  cdsOrdemServicoID.AsInteger := vAux;
  cdsOrdemServicoDTEMISSAO.AsDateTime   := Date;
  cdsOrdemServicoTP_ORCAMENTO.AsInteger := 1;

  if Otica then
  begin
    cdsOrdemServico_Otica.Close;
    sdsOrdemServico_Otica.ParamByName('ID').AsInteger := vAux;
    cdsOrdemServico_Otica.Open;
    cdsOrdemServico_Otica.Insert;
    cdsOrdemServico_OticaID.AsInteger := vAux;
  end;
end;

procedure TDMCadOrdemServico.prc_Excluir;
begin
  if not(cdsOrdemServico.Active) or (cdsOrdemServico.IsEmpty) then
    exit;
  cdsOrdemServico_Itens.First;
  while not cdsOrdemServico_Itens.Eof do
    prc_Excluir_Itens;
  while not cdsOrdemServico_Simples.IsEmpty do
    prc_Excluir_Simples;
  if (cdsOrdemServico_Otica.Active) and not(cdsOrdemServico_Otica.IsEmpty) then
  begin
    cdsOrdemServico_Otica.Delete;
    cdsOrdemServico_Otica.ApplyUpdates(0);
  end;
  cdsOrdemServico.Delete;
  cdsOrdemServico.ApplyUpdates(0);
end;

procedure TDMCadOrdemServico.prc_Gravar(Otica : Boolean = False);
var
  ID: TTransactionDesc;
begin
  vMsgOS := '';
  if cdsOrdemServicoDTEMISSAO.AsDateTime <= 10 then
    vMsgOS := vMsgOS + #13 + '*** Data de emissão não informada!';
  if (cdsOrdemServicoTP_SIMPLES.AsString = 'S') and not(Otica) then
  begin
    if cdsOrdemServicoSOLICITANTE_NOME.AsString = '' then
      vMsgOS := vMsgOS + #13 + '*** Solicitante não informado!';
    if cdsOrdemServicoSOLICITANTE_FONE.AsString = '' then
      vMsgOS := vMsgOS + #13 + '*** Telefone do solicitante não informado!';
    if cdsOrdemServicoDTENTREGA.AsDateTime <= 10 then
      vMsgOS := vMsgOS + #13 + '*** Data de entrega não informada!';
    if cdsOrdemServico_Simples.IsEmpty then
      vMsgOS := vMsgOS + #13 + '*** Não foi informado nenhum serviço para essa ordem!';
  end
  else
  if (Otica) then
  begin
    if cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
      vMsgOS := vMsgOS + #13 + '*** Cliente não informado!';
    if (cdsOrdemServico_Itens.IsEmpty) and not(Otica) then
       vMsgOS := vMsgOS + #13 + '*** Não foi informado nenhum produto para serviço!';
    if cdsOrdemServicoDTENTREGA.AsDateTime < 10 then
      vMsgOS := vMsgOS + #13 + '*** Data "Prometido Para" não preenchida!';
  end;

  if vMsgOS <> '' then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    cdsOrdemServico.Post;
    cdsOrdemServico.ApplyUpdates(0);
    if Otica then
    begin
      cdsOrdemServico_Otica.Post;
      cdsOrdemServico_Otica.ApplyUpdates(0);
    end;
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

end;

procedure TDMCadOrdemServico.prc_Localizar(ID: Integer);
begin
  cdsOrdemServico.Close;
  sdsOrdemServico.CommandText := ctCommand;
  if ID <> 0 then
    sdsOrdemServico.CommandText := sdsOrdemServico.CommandText + ' WHERE OS.ID = ' + IntToStr(ID);
  cdsOrdemServico.Open;
end;

procedure TDMCadOrdemServico.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand        := sdsOrdemServico.CommandText;
  ctConsulta       := sdsOrdemServico_Consulta.CommandText;
  ctConsulta_Itens := sdsConsulta_Itens.CommandText;
  ctHistProduto    := sdsHistProduto.CommandText;
  ctCliente        := sdsCliente.CommandText;
  ctConsulta_Mat   := sdsConsulta_Mat.CommandText;
  ctOsItem_Imp     := sdsOS_ItemImp.CommandText;
  ctCsmOsMotorServ := sdsCsmOsMotorServ.CommandText;

  ctConsulta_Mat21  := 'SELECT CLI.NOME NOME_CLIENTE, OS.NUM_OS, OS.DTEMISSAO, OS.DTENTREGA, OS.ID_CLIENTE, OS.ID ID_OS, ' +
                       'IT.ID_PRODUTO, IT.NOME_PRODUTO, IT.MARCA, IT.MODELO, IT.NUM_SERIE, ' +
                       'IT.CONCLUIDO, IT.DTCONCLUIDO, IT.TIPO_GARANTIA, ' +
                       'MAT.ITEM_MAT, MAT.ID_PRODUTO ID_PECA_USADA, P_MAT.NOME NOME_PECA, ' +
                       'MAT.QTD QTD_MAT, MAT.VLR_UNITARIO VLR_UNITARIO_MAT, ' +
                       'MAT.VLR_TOTAL VLR_TOTAL_MAT, ' +
                       ' CASE IT.TIPO_APROV ' +
                       '   WHEN ''A'' THEN ''Aprovado'' ' +
                       '   WHEN ''R'' THEN ''Reprovado'' ' +
                       '   ELSE '''' ' +
                       ' END AS TIPO_APROV, ''M'' TIPO ' +
                       'FROM ORDEMSERVICO OS ' +
                       'INNER JOIN ORDEMSERVICO_ITENS IT ON (OS.ID = IT.ID) ' +
                       'INNER JOIN ORDEMSERVICO_MAT MAT ON (IT.ID = MAT.ID AND IT.ITEM = MAT.ITEM) ' +
                       'INNER JOIN PRODUTO P_MAT ON (MAT.ID_PRODUTO = P_MAT.ID) ' +
                       'INNER JOIN PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO) ';

  ctConsulta_Mat22  := 'SELECT CLI.NOME NOME_CLIENTE, OS.NUM_OS, OS.DTEMISSAO, OS.DTENTREGA, OS.ID_CLIENTE, OS.ID ID_OS, ' +
                       'IT.ID_PRODUTO, IT.NOME_PRODUTO, IT.MARCA, IT.MODELO, IT.NUM_SERIE, ' +
                       'IT.CONCLUIDO, IT.DTCONCLUIDO, IT.TIPO_GARANTIA, ' +
                       'OSS.ITEM_SERV ITEM_MAT, OSS.ID_SERVICO_INT ID_PECA_USADA, SI.NOME NOME_PECA, ' +
                       'OSS.TEMPO_TOTAL QTD_MAT, OSS.VLR_UNITARIO VLR_UNITARIO_MAT, ' +
                       'OSS.VLR_TOTAL VLR_TOTAL_MAT, ' +
                       ' CASE IT.TIPO_APROV' +
                       '   WHEN ''A'' THEN ''Aprovado'' ' +
                       '   WHEN ''R'' THEN ''Reprovado'' ' +
                       '   ELSE '''' ' +
                       ' END AS TIPO_APROV, ''S'' TIPO ' +
                       'FROM ORDEMSERVICO OS ' +
                       'INNER JOIN ORDEMSERVICO_ITENS IT ON (OS.ID = IT.ID) ' +
                       'INNER JOIN ORDEMSERVICO_SERV OSS ON (IT.ID = OSS.ID AND IT.ITEM = OSS.ITEM) ' +
                       'INNER JOIN SERVICO_INT SI ON (OSS.ID_SERVICO_INT = SI.ID) ' +
                       'INNER JOIN PESSOA CLI ON (OS.ID_CLIENTE = CLI.CODIGO) ';

  cdsFilial.Open;
  cdsServico_Int.Open;
  cdsProduto.Open;
  cdsFuncionario.Open;
  cdsCondPgto.Open;
  qParametros.Close;
  qParametros.Open;
  cdsOSParametros.Open;
  cdsVendedor.Open;
  qParametros_Ser.Open;
                     
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

procedure TDMCadOrdemServico.dspOrdemServicoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOrdemServico.prc_Abrir_cdsCliente;
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente +  ' WHERE PES.INATIVO = ' + QuotedStr('N');
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND PES.TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

procedure TDMCadOrdemServico.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Itens.Last;
  vItemAux := cdsOrdemServico_ItensITEM.AsInteger;

  cdsOrdemServico_Itens.Insert;
  cdsOrdemServico_ItensID.AsInteger    := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_ItensITEM.AsInteger  := vItemAux + 1;
  cdsOrdemServico_ItensSTATUS.AsString := '1';
end;

procedure TDMCadOrdemServico.prc_Excluir_Itens;
begin
  cdsOrdemServico_Itens.Delete;
end;

procedure TDMCadOrdemServico.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadOrdemServico.cdsOrdemServicoNewRecord(DataSet: TDataSet);
begin
  cdsOrdemServicoENTREGUE.AsString    := 'N';
  cdsOrdemServicoCONCLUIDO.AsString   := 'N';
  cdsOrdemServicoDTEMISSAO.AsDateTime := Date;
  cdsOrdemServicoHREMISSAO.AsDateTime := Now;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ItensNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_ItensCONCLUIDO.AsString     := 'N';
  cdsOrdemServico_ItensTIPO_GARANTIA.AsString := 'N';
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ItensBeforePost(
  DataSet: TDataSet);
begin
  if cdsOrdemServico_ItensID_PRODUTO.AsInteger <= 0 then
    cdsOrdemServico_ItensID_PRODUTO.Clear;
  if cdsOrdemServico_ItensID_TECNICO.AsInteger <= 0 then
    cdsOrdemServico_ItensID_TECNICO.Clear;
end;

procedure TDMCadOrdemServico.prc_Inserir_Mat;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Mat.Last;
  vItemAux := cdsOrdemServico_MatITEM_MAT.AsInteger;

  cdsOrdemServico_Mat.Insert;
  cdsOrdemServico_MatID.AsInteger       := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_MatITEM.AsInteger     := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_MatITEM_MAT.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.prc_Inserir_Serv;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Serv.Last;
  vItemAux := cdsOrdemServico_ServITEM_SERV.AsInteger;

  cdsOrdemServico_Serv.Insert;
  cdsOrdemServico_ServID.AsInteger        := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_ServITEM.AsInteger      := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_ServITEM_SERV.AsInteger := vItemAux + 1;
end;

function TDMCadOrdemServico.fnc_Existe_Serie(Num_Serie: String): Boolean;
var
  sds: TSQLDataSet;
  vAux: Integer;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    vAux := StrToInt(Num_Serie);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT COUNT(1) FROM PRODUTO_SERIE ' +
                       'WHERE NUM_SERIE = ' + IntToStr(vAux);
    sds.Open;
    Result := (sds.FieldByName('COUNT').AsInteger > 0);
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

function TDMCadOrdemServico.fnc_Gravar_Produto_Serie: String;
var
  vAux: Integer;
  vItemAux : Integer;
begin
  qProximaSerie.Close;
  qProximaSerie.Open;
  vAux := qProximaSerieNUM_SERIE.AsInteger;
  vAux := vAux + 1;
  if not cdsProduto_Serie.Active then
  begin
    cdsProduto_Serie.Close;
    sdsProduto_Serie.ParamByName('ID').AsInteger := cdsOrdemServico_ItensID_PRODUTO.AsInteger;
    cdsProduto_Serie.Open;
  end;
  cdsProduto_Serie.Last;
  vItemAux := cdsProduto_SerieITEM.AsInteger;
  cdsProduto_Serie.Insert;
  cdsProduto_SerieID.AsInteger          := cdsOrdemServico_ItensID_PRODUTO.AsInteger;
  cdsProduto_SerieITEM.AsInteger        := vItemAux + 1;
  cdsProduto_SerieNUM_SERIE.AsInteger   := vAux;
  cdsProduto_SerieDTCADASTRO.AsDateTime := Date;
  cdsProduto_SerieINATIVO.AsString      := 'N';
  cdsProduto_Serie.Post;
  Result := cdsProduto_SerieNUM_SERIE.AsString;
  cdsProduto_Serie.ApplyUpdates(0);
end;

procedure TDMCadOrdemServico.prc_Inserir_Simples;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Simples.Last;
  vItemAux := cdsOrdemServico_SimplesITEM.AsInteger;

  cdsOrdemServico_Simples.Insert;
  cdsOrdemServico_SimplesID.AsInteger   := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_SimplesITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_SimplesCalcFields(
  DataSet: TDataSet);
begin
  qServico.Close;
  qServico.ParamByName('I1').AsInteger := cdsOrdemServico_SimplesID_SERVICO.AsInteger;
  qServico.Open;
  cdsOrdemServico_SimplesclNomeServico.AsString := qServicoID.AsString + ' - ' + qServicoNOME.AsString;
end;

procedure TDMCadOrdemServico.frxReport1Preview(Sender: TObject);
var
  i: Byte;
begin
{  if (FileExists(cdsOSImpENDLOGO.AsString) and (frxReport1.FindComponent('Picture1')<> nil )) then
  begin
    TfrxPictureView(frxReport1.FindComponent('Picture1')).Picture.LoadFromFile(cdsOSImpENDLOGO.AsString);
  end;

  cdsFuncionario.IndexFieldNames := 'CODIGO';
  for i := 1 to 4 do
  begin
    TfrxMemoView(frxReport1.FindComponent('OS_IMPAGENTE' + IntToStr(i))).Text := '';
    if cdsOSImp.FieldByName('AGENTE' + IntToStr(i)).AsString <> '' then
    begin
      cdsFuncionario.FindKey([cdsOSImp.FieldByName('AGENTE' + IntToStr(i)).AsInteger]);
      TfrxMemoView(frxReport1.FindComponent('OS_IMPAGENTE' + IntToStr(i))).Text := cdsFuncionarioNOME.AsString;
    end;
  end;}
end;

procedure TDMCadOrdemServico.prc_Excluir_Simples;
begin
  cdsOrdemServico_Simples.Delete;
end;

procedure TDMCadOrdemServico.prc_Inserir_Exec;
var
  vItemAux: Integer;
begin
  cdsOS_Exec.Close;
  cdsOS_Exec.Open;

  cdsOS_Exec.Last;
  vItemAux := cdsOS_ExecITEM_EXEC.AsInteger;

  cdsOS_Exec.Insert;
  cdsOS_ExecID.AsInteger   := cdsOrdemServicoID.AsInteger;
  cdsOS_ExecITEM.AsInteger := cdsOrdemServico_SimplesITEM.AsInteger;
  cdsOS_ExecITEM_EXEC.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_MatNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_MatFATURAR.AsString := 'S';
end;

procedure TDMCadOrdemServico.cdsOrdemServico_SimplesNewRecord(DataSet: TDataSet);
begin
  cdsOrdemServico_SimplesFATURADO.AsString := 'N';
end;

procedure TDMCadOrdemServico.cdsCsmOsMotorNewRecord(DataSet: TDataSet);
begin
  cdsCsmOsMotorID.AsInteger           := cdsOrdemServicoID.AsInteger;
  cdsCsmOsMotorALTERACAO.AsString     := 'N';
  cdsCsmOsMotorREBOBINAGEM.AsString   := 'N';
  cdsCsmOsMotorORCAMENTO.AsString     := 'N';
  cdsCsmOsMotorMODIFICACAO.AsString   := 'N';
  cdsCsmOsMotorTESTE.AsString         := 'N';
  cdsCsmOsMotorPLANO_PINTURA.AsString := 'N';
end;

procedure TDMCadOrdemServico.cdsCsmOsTransformadorNewRecord(DataSet: TDataSet);
begin
  cdsCsmOsTransformadorID.AsInteger := cdsOrdemServicoID.AsInteger;
end;

procedure TDMCadOrdemServico.cdsCsmOsMotorBobinagemNewRecord(
  DataSet: TDataSet);
begin
  cdsCsmOsMotorBobinagemID.AsInteger := cdsOrdemServicoID.AsInteger;
end;

function TDMCadOrdemServico.fnc_Existe_NumOS(Num_OS, ID: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(1)CONTADOR FROM ORDEMSERVICO OS '
                     + ' WHERE OS.NUM_OS = :NUM_OS '
                     + ' AND OS.tp_orcamento = ' + QuotedStr('1')
                     + ' AND OS.ID <> :ID ';
    sds.ParamByName('NUM_OS').AsInteger := Num_OS;
    sds.ParamByName('ID').AsInteger     := ID;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
    begin
      vMsgOS := '*** A OS ' + IntToStr(Num_OS) + ', já está cadastrada em outro registro!';
      Result := True;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ServNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_ServFATURADO.AsString := 'N';
end;

end.
