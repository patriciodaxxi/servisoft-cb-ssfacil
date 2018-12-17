unit uDmCupomFiscal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, UDMCadExtComissao, UDMGravarFinanceiro, StdConvs, StrUtils,
  Printers, logTypes, uUtilPadrao, Graphics, ACBrBarCode, frxClass, frxDBSet, frxBarcode, Windows, Messages, ACBrBase, ACBrBAL,
  ACBrDevice, Dialogs, ExtCtrls;

type
  TdmCupomFiscal = class(TDataModule)
    sdsCupomFiscal: TSQLDataSet;
    sdsCupomFiscalID: TIntegerField;
    sdsCupomFiscalNUMCUPOM: TIntegerField;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalHREMISSAO: TTimeField;
    sdsCupomFiscalID_CLIENTE: TIntegerField;
    sdsCupomFiscalTIPO_PGTO: TStringField;
    sdsCupomFiscalID_CONDPGTO: TIntegerField;
    sdsCupomFiscalID_VENDEDOR: TIntegerField;
    sdsCupomFiscalPERC_VENDEDOR: TFloatField;
    sdsCupomFiscalBASE_ICMS: TFloatField;
    sdsCupomFiscalVLR_ICMS: TFloatField;
    sdsCupomFiscalVLR_PRODUTOS: TFloatField;
    sdsCupomFiscalVLR_DESCONTO: TFloatField;
    sdsCupomFiscalVLR_TOTAL: TFloatField;
    sdsCupomFiscalCANCELADO: TStringField;
    sdsCupomFiscalVLR_RECEBIDO: TFloatField;
    sdsCupomFiscalVLR_TROCO: TFloatField;
    sdsCupomFiscalID_CONTA: TIntegerField;
    sdsCupomFiscalFILIAL: TIntegerField;
    sdsCupomFiscalID_TIPOCOBRANCA: TIntegerField;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    cdsCupomFiscalID: TIntegerField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalHREMISSAO: TTimeField;
    cdsCupomFiscalID_CLIENTE: TIntegerField;
    cdsCupomFiscalTIPO_PGTO: TStringField;
    cdsCupomFiscalID_CONDPGTO: TIntegerField;
    cdsCupomFiscalID_VENDEDOR: TIntegerField;
    cdsCupomFiscalPERC_VENDEDOR: TFloatField;
    cdsCupomFiscalBASE_ICMS: TFloatField;
    cdsCupomFiscalVLR_ICMS: TFloatField;
    cdsCupomFiscalVLR_PRODUTOS: TFloatField;
    cdsCupomFiscalVLR_DESCONTO: TFloatField;
    cdsCupomFiscalVLR_TOTAL: TFloatField;
    cdsCupomFiscalCANCELADO: TStringField;
    cdsCupomFiscalVLR_RECEBIDO: TFloatField;
    cdsCupomFiscalVLR_TROCO: TFloatField;
    cdsCupomFiscalID_CONTA: TIntegerField;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalID_TIPOCOBRANCA: TIntegerField;
    cdsCupomFiscalsdsCupom_Parc: TDataSetField;
    cdsCupomFiscalsdsCupom_Itens: TDataSetField;
    dsCupomFiscal: TDataSource;
    dsmCupomFiscal: TDataSource;
    sdsCupom_Itens: TSQLDataSet;
    sdsCupom_ItensID: TIntegerField;
    sdsCupom_ItensITEM: TIntegerField;
    sdsCupom_ItensID_PRODUTO: TIntegerField;
    sdsCupom_ItensQTD: TFloatField;
    sdsCupom_ItensPERC_ICMS: TFloatField;
    sdsCupom_ItensVLR_UNITARIO: TFloatField;
    sdsCupom_ItensPERC_DESCONTO: TFloatField;
    sdsCupom_ItensVLR_DESCONTO: TFloatField;
    sdsCupom_ItensBASE_ICMS: TFloatField;
    sdsCupom_ItensVLR_ICMS: TFloatField;
    sdsCupom_ItensVLR_TOTAL: TFloatField;
    sdsCupom_ItensID_CFOP: TIntegerField;
    sdsCupom_ItensID_MOVESTOQUE: TIntegerField;
    sdsCupom_ItensUNIDADE: TStringField;
    sdsCupom_ItensCANCELADO: TStringField;
    sdsCupom_ItensSITTRIB: TStringField;
    sdsCupom_ItensNOMEPRODUTO: TStringField;
    sdsCupom_ItensTAMANHO: TStringField;
    sdsCupom_ItensID_MOVIMENTO: TIntegerField;
    sdsCupom_ItensREFERENCIA: TStringField;
    cdsCupom_Itens: TClientDataSet;
    cdsCupom_ItensID: TIntegerField;
    cdsCupom_ItensITEM: TIntegerField;
    cdsCupom_ItensID_PRODUTO: TIntegerField;
    cdsCupom_ItensQTD: TFloatField;
    cdsCupom_ItensPERC_ICMS: TFloatField;
    cdsCupom_ItensVLR_UNITARIO: TFloatField;
    cdsCupom_ItensPERC_DESCONTO: TFloatField;
    cdsCupom_ItensVLR_DESCONTO: TFloatField;
    cdsCupom_ItensBASE_ICMS: TFloatField;
    cdsCupom_ItensVLR_ICMS: TFloatField;
    cdsCupom_ItensVLR_TOTAL: TFloatField;
    cdsCupom_ItensID_CFOP: TIntegerField;
    cdsCupom_ItensID_MOVESTOQUE: TIntegerField;
    cdsCupom_ItensUNIDADE: TStringField;
    cdsCupom_ItensCANCELADO: TStringField;
    cdsCupom_ItensSITTRIB: TStringField;
    cdsCupom_ItensNOMEPRODUTO: TStringField;
    cdsCupom_ItensTAMANHO: TStringField;
    cdsCupom_ItensID_MOVIMENTO: TIntegerField;
    cdsCupom_ItensREFERENCIA: TStringField;
    dsCupom_Itens: TDataSource;
    sdsCupom_Parc: TSQLDataSet;
    sdsCupom_ParcID: TIntegerField;
    sdsCupom_ParcPARCELA: TIntegerField;
    sdsCupom_ParcDTVENCIMENTO: TDateField;
    sdsCupom_ParcVLR_VENCIMENTO: TFloatField;
    cdsCupom_Parc: TClientDataSet;
    cdsCupom_ParcID: TIntegerField;
    cdsCupom_ParcPARCELA: TIntegerField;
    cdsCupom_ParcDTVENCIMENTO: TDateField;
    cdsCupom_ParcVLR_VENCIMENTO: TFloatField;
    dsCupom_Parc: TDataSource;
    sdsCupom_Cons: TSQLDataSet;
    dspCupom_Cons: TDataSetProvider;
    cdsCupom_Cons: TClientDataSet;
    dsCupom_Cons: TDataSource;
    cdsCupom_ConsID: TIntegerField;
    cdsCupom_ConsNUMCUPOM: TIntegerField;
    cdsCupom_ConsDTEMISSAO: TDateField;
    cdsCupom_ConsVLR_TOTAL: TFloatField;
    cdsCupom_ConsCANCELADO: TStringField;
    cdsCupom_ConsFILIAL: TIntegerField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    cdsParametrosID: TIntegerField;
    cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    cdsParametrosIMPRESSORA_FISCAL: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoID_GRUPO: TIntegerField;
    cdsProdutoID_SUBGRUPO: TIntegerField;
    cdsProdutoID_MARCA: TIntegerField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProdutoCOD_ANT: TStringField;
    dsProduto: TDataSource;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    cdsCondPgtosdsCondPgto_Dia: TDataSetField;
    dsCondPgto: TDataSource;
    sdsCondPgto_Dia: TSQLDataSet;
    sdsCondPgto_DiaID: TIntegerField;
    sdsCondPgto_DiaITEM: TIntegerField;
    sdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsCondPgto_Dia: TClientDataSet;
    cdsCondPgto_DiaID: TIntegerField;
    cdsCondPgto_DiaITEM: TIntegerField;
    cdsCondPgto_DiaQTDDIAS: TIntegerField;
    dsCondPgto_Dia: TDataSource;
    dsmCondPgto: TDataSource;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    dsContas: TDataSource;
    sdsEstoqueMov: TSQLDataSet;
    sdsEstoqueMovID: TIntegerField;
    sdsEstoqueMovFILIAL: TIntegerField;
    sdsEstoqueMovID_PRODUTO: TIntegerField;
    sdsEstoqueMovID_COR: TIntegerField;
    sdsEstoqueMovDTMOVIMENTO: TDateField;
    sdsEstoqueMovTIPO_ES: TStringField;
    sdsEstoqueMovTIPO_MOV: TStringField;
    sdsEstoqueMovNUMNOTA: TIntegerField;
    sdsEstoqueMovID_PESSOA: TIntegerField;
    sdsEstoqueMovVLR_UNITARIO: TFloatField;
    sdsEstoqueMovQTD: TFloatField;
    sdsEstoqueMovPERC_ICMS: TFloatField;
    sdsEstoqueMovPERC_IPI: TFloatField;
    sdsEstoqueMovVLR_DESCONTO: TFloatField;
    sdsEstoqueMovUNIDADE: TStringField;
    sdsEstoqueMovQTD2: TFloatField;
    sdsEstoqueMovTAMANHO: TStringField;
    sdsEstoqueMovPERC_TRIBUTACAO: TFloatField;
    sdsEstoqueMovVLR_FRETE: TFloatField;
    sdsEstoqueMovID_CFOP: TIntegerField;
    sdsEstoqueMovID_NOTA: TIntegerField;
    sdsEstoqueMovSERIE: TStringField;
    sdsEstoqueMovUNIDADE_ORIG: TStringField;
    sdsEstoqueMovVLR_UNITARIOORIG: TFloatField;
    sdsEstoqueMovQTD_ORIG: TFloatField;
    sdsEstoqueMovVLR_DESCONTOORIG: TFloatField;
    sdsEstoqueMovMERCADO: TStringField;
    dspEstoqueMov: TDataSetProvider;
    cdsEstoqueMov: TClientDataSet;
    cdsEstoqueMovID: TIntegerField;
    cdsEstoqueMovFILIAL: TIntegerField;
    cdsEstoqueMovID_PRODUTO: TIntegerField;
    cdsEstoqueMovID_COR: TIntegerField;
    cdsEstoqueMovDTMOVIMENTO: TDateField;
    cdsEstoqueMovTIPO_ES: TStringField;
    cdsEstoqueMovTIPO_MOV: TStringField;
    cdsEstoqueMovNUMNOTA: TIntegerField;
    cdsEstoqueMovID_PESSOA: TIntegerField;
    cdsEstoqueMovVLR_UNITARIO: TFloatField;
    cdsEstoqueMovQTD: TFloatField;
    cdsEstoqueMovPERC_ICMS: TFloatField;
    cdsEstoqueMovPERC_IPI: TFloatField;
    cdsEstoqueMovVLR_DESCONTO: TFloatField;
    cdsEstoqueMovUNIDADE: TStringField;
    cdsEstoqueMovQTD2: TFloatField;
    cdsEstoqueMovTAMANHO: TStringField;
    cdsEstoqueMovPERC_TRIBUTACAO: TFloatField;
    cdsEstoqueMovVLR_FRETE: TFloatField;
    cdsEstoqueMovID_CFOP: TIntegerField;
    cdsEstoqueMovID_NOTA: TIntegerField;
    cdsEstoqueMovSERIE: TStringField;
    cdsEstoqueMovUNIDADE_ORIG: TStringField;
    cdsEstoqueMovVLR_UNITARIOORIG: TFloatField;
    cdsEstoqueMovQTD_ORIG: TFloatField;
    cdsEstoqueMovVLR_DESCONTOORIG: TFloatField;
    cdsEstoqueMovMERCADO: TStringField;
    dsEstoqueMov: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
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
    cdsFilialCALCULAR_IPI: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    cdsFilialID_REGIME_TRIB: TIntegerField;
    cdsFilialID_PIS: TIntegerField;
    cdsFilialID_COFINS: TIntegerField;
    cdsFilialTIPO_PIS: TStringField;
    cdsFilialTIPO_COFINS: TStringField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialID_CSTICMS: TIntegerField;
    cdsFilialID_CSTIPI: TIntegerField;
    cdsFilialEMAIL_NFE: TStringField;
    cdsFilialDTESTOQUE: TDateField;
    qUltimo: TSQLQuery;
    qUltimoULT: TIntegerField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    cdsTipoCobrancaMOSTRARNOCUPOM: TStringField;
    sdsCupomParametros: TSQLDataSet;
    dspCupomParametros: TDataSetProvider;
    cdsCupomParametros: TClientDataSet;
    cdsCupomParametrosID: TIntegerField;
    cdsCupomParametrosUSA_IPI: TStringField;
    sdsSitTribCF: TSQLDataSet;
    dspSitTribCF: TDataSetProvider;
    cdsSitTribCF: TClientDataSet;
    dsSitTribCF: TDataSource;
    sdsSitTribCFID: TIntegerField;
    sdsSitTribCFCODIGO: TStringField;
    sdsSitTribCFPERCENTUAL: TFloatField;
    cdsSitTribCFID: TIntegerField;
    cdsSitTribCFCODIGO: TStringField;
    cdsSitTribCFPERCENTUAL: TFloatField;
    cdsCupomParametrosSIT_TRIB_ID: TIntegerField;
    cdsCupomParametrosUSA_DESCONTO: TStringField;
    sdsDuplicata: TSQLDataSet;
    sdsDuplicataID: TIntegerField;
    sdsDuplicataTIPO_ES: TStringField;
    sdsDuplicataFILIAL: TIntegerField;
    sdsDuplicataID_NOTA: TIntegerField;
    sdsDuplicataPARCELA: TIntegerField;
    sdsDuplicataNUMDUPLICATA: TStringField;
    sdsDuplicataNUMNOTA: TIntegerField;
    sdsDuplicataSERIE: TStringField;
    sdsDuplicataDTVENCIMENTO: TDateField;
    sdsDuplicataVLR_PARCELA: TFloatField;
    sdsDuplicataVLR_RESTANTE: TFloatField;
    sdsDuplicataVLR_PAGO: TFloatField;
    sdsDuplicataVLR_DEVOLUCAO: TFloatField;
    sdsDuplicataVLR_DESPESAS: TFloatField;
    sdsDuplicataVLR_DESCONTO: TFloatField;
    sdsDuplicataVLR_JUROSPAGOS: TFloatField;
    sdsDuplicataVLR_COMISSAO: TFloatField;
    sdsDuplicataPERC_COMISSAO: TFloatField;
    sdsDuplicataDTULTPAGAMENTO: TDateField;
    sdsDuplicataID_PESSOA: TIntegerField;
    sdsDuplicataID_CONTA: TIntegerField;
    sdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    sdsDuplicataID_VENDEDOR: TIntegerField;
    sdsDuplicataID_CONTA_BOLETO: TIntegerField;
    sdsDuplicataID_COMISSAO: TIntegerField;
    sdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    sdsDuplicataDTEMISSAO: TDateField;
    sdsDuplicataTIPO_LANCAMENTO: TStringField;
    sdsDuplicataDTFINANCEIRO: TDateField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    cdsDuplicataID: TIntegerField;
    cdsDuplicataTIPO_ES: TStringField;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataID_NOTA: TIntegerField;
    cdsDuplicataPARCELA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataVLR_DEVOLUCAO: TFloatField;
    cdsDuplicataVLR_DESPESAS: TFloatField;
    cdsDuplicataVLR_DESCONTO: TFloatField;
    cdsDuplicataVLR_JUROSPAGOS: TFloatField;
    cdsDuplicataVLR_COMISSAO: TFloatField;
    cdsDuplicataPERC_COMISSAO: TFloatField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataID_CONTA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_VENDEDOR: TIntegerField;
    cdsDuplicataID_CONTA_BOLETO: TIntegerField;
    cdsDuplicataID_COMISSAO: TIntegerField;
    cdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicatasdsDuplicata_Hist: TDataSetField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    dsDuplicata_Mestre: TDataSource;
    sdsDuplicata_Hist: TSQLDataSet;
    sdsDuplicata_HistID: TIntegerField;
    sdsDuplicata_HistITEM: TIntegerField;
    sdsDuplicata_HistID_HISTORICO: TIntegerField;
    sdsDuplicata_HistCOMPLEMENTO: TStringField;
    sdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    sdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    sdsDuplicata_HistVLR_DESPESAS: TFloatField;
    sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    sdsDuplicata_HistNUMCHEQUE: TIntegerField;
    sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    sdsDuplicata_HistID_CONTA: TIntegerField;
    sdsDuplicata_HistID_COMISSAO: TIntegerField;
    sdsDuplicata_HistTIPO_ES: TStringField;
    sdsDuplicata_HistTIPO_HISTORICO: TStringField;
    sdsDuplicata_HistDTHISTORICO: TDateField;
    sdsDuplicata_HistDTLANCAMENTO: TDateField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_Hist: TClientDataSet;
    cdsDuplicata_HistID: TIntegerField;
    cdsDuplicata_HistITEM: TIntegerField;
    cdsDuplicata_HistID_HISTORICO: TIntegerField;
    cdsDuplicata_HistCOMPLEMENTO: TStringField;
    cdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    cdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    cdsDuplicata_HistVLR_DESPESAS: TFloatField;
    cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    cdsDuplicata_HistNUMCHEQUE: TIntegerField;
    cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    cdsDuplicata_HistID_CONTA: TIntegerField;
    cdsDuplicata_HistID_COMISSAO: TIntegerField;
    cdsDuplicata_HistTIPO_ES: TStringField;
    cdsDuplicata_HistTIPO_HISTORICO: TStringField;
    cdsDuplicata_HistDTHISTORICO: TDateField;
    cdsDuplicata_HistDTLANCAMENTO: TDateField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    sdsDuplicataID_CUPOM: TIntegerField;
    cdsDuplicataID_CUPOM: TIntegerField;
    dsCupomParametros: TDataSource;
    cdsParametrosQUITAR_AVISTA_AUT: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    dsVendedor: TDataSource;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    dsParametros: TDataSource;
    cdsPessoaPESSOA: TStringField;
    cdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField;
    cdsCupomParametrosACBR_MODELO: TStringField;
    sdsCupomFiscalTIPO: TStringField;
    cdsCupomFiscalTIPO: TStringField;
    cdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField;
    sdsCupomFiscalTERMINAL_ID: TSmallintField;
    cdsCupomFiscalTERMINAL_ID: TSmallintField;
    sdsCupomFiscalCONDPGTO: TStringField;
    sdsCupomFiscalFORMAPGTO: TStringField;
    cdsCupomFiscalCONDPGTO: TStringField;
    cdsCupomFiscalFORMAPGTO: TStringField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    sdsDuplicataID_FECHAMENTO: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_FECHAMENTO: TIntegerField;
    sdsDuplicataQTD_DIASATRASO: TIntegerField;
    sdsDuplicataPAGO_CARTORIO: TStringField;
    sdsDuplicataPROTESTADO: TStringField;
    sdsDuplicataARQUIVO_GERADO: TStringField;
    sdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    sdsDuplicataNOSSONUMERO: TStringField;
    sdsDuplicataNUMCHEQUE: TIntegerField;
    sdsDuplicataACEITE: TStringField;
    cdsDuplicataQTD_DIASATRASO: TIntegerField;
    cdsDuplicataPAGO_CARTORIO: TStringField;
    cdsDuplicataPROTESTADO: TStringField;
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    sdsCupom_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsCupom_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsCupom_ParcTIPO_COBRANCA: TStringField;
    cdsCupom_ParcTIPO_COBRANCA: TStringField;
    cdsProdutoNCM_EX: TStringField;
    cdsProdutoID_SITTRIB_CF: TIntegerField;
    sdsCupom_ItensPERC_TRIBUTO: TFloatField;
    sdsCupom_ItensVLR_TRIBUTO: TFloatField;
    cdsCupom_ItensPERC_TRIBUTO: TFloatField;
    cdsCupom_ItensVLR_TRIBUTO: TFloatField;
    qIBPT: TSQLQuery;
    qIBPTPERC_NACIONAL: TFloatField;
    qIBPTPERC_IMPORTACAO: TFloatField;
    qIBPTNCM: TStringField;
    qIBPTID: TIntegerField;
    sdsCupom_ItensID_NCM: TIntegerField;
    cdsCupom_ItensID_NCM: TIntegerField;
    sdsCupom_ItensORIGEM_PROD: TStringField;
    cdsCupom_ItensORIGEM_PROD: TStringField;
    cdsProdutoORIGEM_PROD: TStringField;
    sdsCupomFiscalVLR_TRIBUTO: TFloatField;
    cdsCupomFiscalVLR_TRIBUTO: TFloatField;
    cdsParametrosARREDONDAR_5: TStringField;
    cdsTipoCobrancaCOD_IMP_FISCAL: TStringField;
    sdsCupomTerminal: TSQLDataSet;
    sdsCupomTerminalID: TSmallintField;
    sdsCupomTerminalNOME: TStringField;
    dspCupomTerminal: TDataSetProvider;
    cdsCupomTerminal: TClientDataSet;
    cdsCupomTerminalID: TSmallintField;
    cdsCupomTerminalNOME: TStringField;
    dsCupomTerminal: TDataSource;
    cdsCupomParametrosTERMINAL_ID: TSmallintField;
    cdsParametrosID_CONTA_FECHAMENTO: TIntegerField;
    cdsCupom_ConsCPF: TStringField;
    sdsCupomParametrosID: TIntegerField;
    sdsCupomParametrosTERMINAL_ID: TSmallintField;
    sdsCupomParametrosUSA_IPI: TStringField;
    sdsCupomParametrosSIT_TRIB_ID: TIntegerField;
    sdsCupomParametrosUSA_DESCONTO: TStringField;
    sdsCupomParametrosQTD_MULTIPLICADOR: TSmallintField;
    sdsCupomParametrosACBR_MODELO: TStringField;
    sdsCupomParametrosEXIGE_CAIXA_ABERTO: TStringField;
    sdsCupomParametrosCASAS_DECIMAIS: TSmallintField;
    sdsCupomParametrosPRIMEIRO_CAMPO: TSmallintField;
    sdsCupomParametrosPRODUTO_PADRAO: TIntegerField;
    cdsCupomParametrosCASAS_DECIMAIS: TSmallintField;
    cdsCupomParametrosPRIMEIRO_CAMPO: TSmallintField;
    cdsCupomParametrosPRODUTO_PADRAO: TIntegerField;
    sdsCupomParametrosQTD_PADRAO: TFMTBCDField;
    cdsCupomParametrosQTD_PADRAO: TFMTBCDField;
    cdsCupom_ConsID_TIPOCOBRANCA: TIntegerField;
    sdsComandaRel: TSQLDataSet;
    dspComandaRel: TDataSetProvider;
    cdsComandaRel: TClientDataSet;
    dsComandaRel: TDataSource;
    cdsComandaRelID: TIntegerField;
    cdsComandaRelNUMCUPOM: TIntegerField;
    cdsComandaRelDTEMISSAO: TDateField;
    cdsComandaRelFILIAL_NOME: TStringField;
    cdsComandaRelFILIAL_END: TStringField;
    cdsComandaRelFILIAL_FONE: TStringField;
    cdsComandaRelHOMEPAGE: TStringField;
    cdsComandaRelEMAIL: TStringField;
    sdsComandaItem_Rel: TSQLDataSet;
    dspComandaItem_Rel: TDataSetProvider;
    cdsComandaItem_Rel: TClientDataSet;
    dsComandaItem_Rel: TDataSource;
    cdsComandaItem_RelQTD: TFloatField;
    cdsComandaItem_RelPRODUTO_NOME: TStringField;
    cdsComandaItem_RelVLR_TOTAL: TFloatField;
    cdsComandaRelFILIAL_CIDADE_BAIRRO: TStringField;
    sdsCupomParametrosUSA_BALANCA: TStringField;
    cdsCupomParametrosUSA_BALANCA: TStringField;
    qIBPTPERC_ESTADUAL: TFloatField;
    qIBPTPERC_MUNICIPAL: TFloatField;
    qIBPTFONTE: TStringField;
    qIBPTVERSAO: TStringField;
    cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    sdsCupom_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    sdsCupom_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    sdsCupom_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    sdsCupom_ItensFONTE_TRIBUTO: TStringField;
    sdsCupom_ItensVERSAO_TRIBUTO: TStringField;
    sdsCupom_ItensVLR_TRIBUTO_FEDERAL: TFloatField;
    sdsCupom_ItensVLR_TRIBUTO_ESTADUAL: TFloatField;
    sdsCupom_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField;
    cdsCupom_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsCupom_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsCupom_ItensFONTE_TRIBUTO: TStringField;
    cdsCupom_ItensVERSAO_TRIBUTO: TStringField;
    cdsCupom_ItensVLR_TRIBUTO_FEDERAL: TFloatField;
    cdsCupom_ItensVLR_TRIBUTO_ESTADUAL: TFloatField;
    cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField;
    sdsCupomFiscalVLR_TRIBUTO_FEDERAL: TFloatField;
    sdsCupomFiscalVLR_TRIBUTO_ESTADUAL: TFloatField;
    sdsCupomFiscalVLR_TRIBUTO_MUNICIPAL: TFloatField;
    cdsCupomFiscalVLR_TRIBUTO_FEDERAL: TFloatField;
    cdsCupomFiscalVLR_TRIBUTO_ESTADUAL: TFloatField;
    cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL: TFloatField;
    sdsCupomFiscalNUM_CARTAO: TSmallintField;
    cdsCupomFiscalNUM_CARTAO: TSmallintField;
    sdsCupomFiscalNOME_CLIENTE_1: TStringField;
    cdsCupomFiscalNOME_CLIENTE_1: TStringField;
    cdsCupom_ConsNUM_CARTAO: TSmallintField;
    mCupomItens: TClientDataSet;
    dsmCupomItens: TDataSource;
    mCupomItensNOME_PRODUTO: TStringField;
    mCupomItensQTD: TFloatField;
    mCupomItensVLR_UNIT: TFloatField;
    mCupomItensVLR_TOTAL: TFloatField;
    mCupom: TClientDataSet;
    dsmCupom: TDataSource;
    mCupomCARTAO: TIntegerField;
    mCupomID_CUPOM: TIntegerField;
    mCupomVLR_TOTAL: TFloatField;
    sdsCupomFiscalNFEAMBIENTE: TStringField;
    sdsCupomFiscalNFECHAVEACESSO: TStringField;
    sdsCupomFiscalNFEPROTOCOLO: TStringField;
    sdsCupomFiscalNFERECIBO: TStringField;
    sdsCupomFiscalNFEVERSAO: TStringField;
    sdsCupomFiscalTIPO_ATENDIMENTO: TSmallintField;
    sdsCupomFiscalTIPO_IMPRESSAO_NFCE: TSmallintField;
    cdsCupomFiscalNFEAMBIENTE: TStringField;
    cdsCupomFiscalNFECHAVEACESSO: TStringField;
    cdsCupomFiscalNFEPROTOCOLO: TStringField;
    cdsCupomFiscalNFERECIBO: TStringField;
    cdsCupomFiscalNFEVERSAO: TStringField;
    cdsCupomFiscalTIPO_ATENDIMENTO: TSmallintField;
    cdsCupomFiscalTIPO_IMPRESSAO_NFCE: TSmallintField;
    sdsCupomFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    cdsCupomFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    sdsCupomFiscalID_CFOP: TIntegerField;
    cdsCupomFiscalID_CFOP: TIntegerField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPGERAR_TRIBUTO: TStringField;
    cdsCFOPGERAR_ESTOQUE_MP: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPID_OBS_LEI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPTIPO_IND_VEN: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPMAOOBRA: TStringField;
    cdsCFOPPERC_TRIBUTO: TFloatField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPGERAR_DESONERACAO_ICMS: TStringField;
    cdsCFOPGERAR_ESTOQUE: TStringField;
    cdsCFOPBAIXAR_FUT: TStringField;
    dsCFOP: TDataSource;
    cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField;
    cdsFilialUSA_NFCE: TStringField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    sdsCupom_ItensID_CSTICMS: TIntegerField;
    sdsCupom_ItensID_CSTIPI: TIntegerField;
    sdsCupom_ItensID_COFINS: TIntegerField;
    sdsCupom_ItensID_PIS: TIntegerField;
    sdsCupom_ItensPERC_TRIBICMS: TFloatField;
    cdsCupom_ItensID_CSTICMS: TIntegerField;
    cdsCupom_ItensID_CSTIPI: TIntegerField;
    cdsCupom_ItensID_COFINS: TIntegerField;
    cdsCupom_ItensID_PIS: TIntegerField;
    cdsCupom_ItensPERC_TRIBICMS: TFloatField;
    qRegra_CFOP: TSQLQuery;
    qRegra_CFOPID: TIntegerField;
    qRegra_CFOPITEM: TIntegerField;
    qRegra_CFOPID_CSTICMS: TIntegerField;
    qRegra_CFOPID_CSTIPI: TIntegerField;
    qRegra_CFOPID_PIS: TIntegerField;
    qRegra_CFOPID_COFINS: TIntegerField;
    qRegra_CFOPID_OPERACAO_NOTA: TIntegerField;
    qRegra_CFOPTIPO_EMPRESA: TStringField;
    qRegra_CFOPTIPO_CLIENTE: TStringField;
    qRegra_CFOPUF_CLIENTE: TStringField;
    qRegra_CFOPFINALIDADE: TStringField;
    qRegra_CFOPCONTROLAR_ICMS: TStringField;
    qRegra_CFOPCONTROLAR_REDUCAO: TStringField;
    qRegra_CFOPCONTROLAR_IPI: TStringField;
    qRegra_CFOPCONTROLAR_SUBSTICMS: TStringField;
    qRegra_CFOPCONTROLAR_DIFERIMENTO: TStringField;
    qRegra_CFOPNOME: TStringField;
    qRegra_CFOPPESSOA_CLIENTE: TStringField;
    qRegra_CFOPLEI: TMemoField;
    qRegra_CFOPPERC_TRIBUTO: TFloatField;
    qRegra_CFOPPERC_PIS: TFloatField;
    qRegra_CFOPPERC_COFINS: TFloatField;
    qRegra_CFOPTIPO_PIS: TStringField;
    qRegra_CFOPTIPO_COFINS: TStringField;
    qRegra_CFOPID_OBS_LEI: TIntegerField;
    sdsCupom_ItensID_VARIACAO: TIntegerField;
    cdsCupom_ItensID_VARIACAO: TIntegerField;
    mCupomItensID_PRODUTO: TIntegerField;
    qVariacao: TSQLQuery;
    qVariacaoID: TIntegerField;
    qVariacaoITEM: TIntegerField;
    qVariacaoID_CSTICMS: TIntegerField;
    qVariacaoID_CSTIPI: TIntegerField;
    qVariacaoID_PIS: TIntegerField;
    qVariacaoID_COFINS: TIntegerField;
    qVariacaoID_OPERACAO_NOTA: TIntegerField;
    qVariacaoTIPO_EMPRESA: TStringField;
    qVariacaoTIPO_CLIENTE: TStringField;
    qVariacaoUF_CLIENTE: TStringField;
    qVariacaoFINALIDADE: TStringField;
    qVariacaoCONTROLAR_ICMS: TStringField;
    qVariacaoCONTROLAR_REDUCAO: TStringField;
    qVariacaoCONTROLAR_IPI: TStringField;
    qVariacaoCONTROLAR_SUBSTICMS: TStringField;
    qVariacaoCONTROLAR_DIFERIMENTO: TStringField;
    qVariacaoNOME: TStringField;
    qVariacaoPESSOA_CLIENTE: TStringField;
    qVariacaoLEI: TMemoField;
    qVariacaoPERC_TRIBUTO: TFloatField;
    qVariacaoPERC_PIS: TFloatField;
    qVariacaoPERC_COFINS: TFloatField;
    qVariacaoTIPO_PIS: TStringField;
    qVariacaoTIPO_COFINS: TStringField;
    qVariacaoID_OBS_LEI: TIntegerField;
    mCupomItensCARTAO: TIntegerField;
    qUF: TSQLQuery;
    qUFUF: TStringField;
    qUFPERC_ICMS: TFloatField;
    qUFIDPAIS: TIntegerField;
    qUFCODUF: TStringField;
    qUFPERC_ICMS_INTERNO: TFloatField;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    cdsTab_CSTICMSCOD_DESONERACAO: TSmallintField;
    dsTab_CSTICMS: TDataSource;
    dsTab_CSTIPI: TDataSource;
    cdsTab_CSTIPI: TClientDataSet;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    dspTab_CSTIPI: TDataSetProvider;
    sdsTab_CSTIPI: TSQLDataSet;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    dspTab_Cofins: TDataSetProvider;
    sdsTab_Cofins: TSQLDataSet;
    cdsTab_Cofins: TClientDataSet;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsGERAR: TStringField;
    dsTab_Cofins: TDataSource;
    dsTab_Pis: TDataSource;
    cdsTab_Pis: TClientDataSet;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    cdsTab_PisGERAR: TStringField;
    cdsParametrosUSA_NFCE: TStringField;
    sdsCupom_ItensPERC_PIS: TFloatField;
    sdsCupom_ItensPERC_COFINS: TFloatField;
    sdsCupom_ItensPERC_IPI: TFloatField;
    cdsCupom_ItensPERC_PIS: TFloatField;
    cdsCupom_ItensPERC_COFINS: TFloatField;
    cdsCupom_ItensPERC_IPI: TFloatField;
    sdsCupom_ItensTIPO_PIS: TStringField;
    sdsCupom_ItensTIPO_COFINS: TStringField;
    cdsCupom_ItensTIPO_PIS: TStringField;
    cdsCupom_ItensTIPO_COFINS: TStringField;
    sdsCupom_ItensVLR_PIS: TFloatField;
    sdsCupom_ItensVLR_COFINS: TFloatField;
    cdsCupom_ItensVLR_PIS: TFloatField;
    cdsCupom_ItensVLR_COFINS: TFloatField;
    sdsOrigem_Prod: TSQLDataSet;
    dspOrigem_Prod: TDataSetProvider;
    cdsOrigem_Prod: TClientDataSet;
    cdsOrigem_ProdORIGEM: TStringField;
    cdsOrigem_ProdNOME: TStringField;
    dsOrigem_Prod: TDataSource;
    dsCFOP_Mestre: TDataSource;
    sdsCFOP_Variacao: TSQLDataSet;
    sdsCFOP_VariacaoID: TIntegerField;
    sdsCFOP_VariacaoITEM: TIntegerField;
    sdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    sdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    sdsCFOP_VariacaoID_PIS: TIntegerField;
    sdsCFOP_VariacaoID_COFINS: TIntegerField;
    sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    sdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    sdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    sdsCFOP_VariacaoUF_CLIENTE: TStringField;
    sdsCFOP_VariacaoFINALIDADE: TStringField;
    sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    sdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    sdsCFOP_VariacaoNOME: TStringField;
    sdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    sdsCFOP_VariacaoLEI: TMemoField;
    sdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    sdsCFOP_VariacaoPERC_PIS: TFloatField;
    sdsCFOP_VariacaoPERC_COFINS: TFloatField;
    sdsCFOP_VariacaoTIPO_PIS: TStringField;
    sdsCFOP_VariacaoTIPO_COFINS: TStringField;
    cdsCFOP_Variacao: TClientDataSet;
    cdsCFOP_VariacaoID: TIntegerField;
    cdsCFOP_VariacaoITEM: TIntegerField;
    cdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    cdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    cdsCFOP_VariacaoID_PIS: TIntegerField;
    cdsCFOP_VariacaoID_COFINS: TIntegerField;
    cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    cdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    cdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    cdsCFOP_VariacaoUF_CLIENTE: TStringField;
    cdsCFOP_VariacaoFINALIDADE: TStringField;
    cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    cdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    cdsCFOP_VariacaoNOME: TStringField;
    cdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    cdsCFOP_VariacaoLEI: TMemoField;
    cdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    cdsCFOP_VariacaoPERC_PIS: TFloatField;
    cdsCFOP_VariacaoPERC_COFINS: TFloatField;
    cdsCFOP_VariacaoTIPO_PIS: TStringField;
    cdsCFOP_VariacaoTIPO_COFINS: TStringField;
    dsCFOP_Variacao: TDataSource;
    cdsCFOPsdsCFOP_Variacao: TDataSetField;
    cdsPessoaUF: TStringField;
    sdsCupomFiscalTIPO_DESCONTO: TStringField;
    cdsCupomFiscalTIPO_DESCONTO: TStringField;
    sdsCupom_ItensVLR_IPI: TFloatField;
    cdsCupom_ItensVLR_IPI: TFloatField;
    cdsParametrosAPLICARDESCONTONOICMS: TStringField;
    sdsCupomFiscalVLR_IPI: TFloatField;
    cdsCupomFiscalVLR_IPI: TFloatField;
    sdsCupomFiscalVLR_PIS: TFloatField;
    sdsCupomFiscalVLR_COFINS: TFloatField;
    cdsCupomFiscalVLR_PIS: TFloatField;
    cdsCupomFiscalVLR_COFINS: TFloatField;
    cdsParametrosAPLICARDESCONTONOIPI: TStringField;
    qProximoCupom: TSQLQuery;
    qProximoCupomNUMCUPOM: TIntegerField;
    cdsParametrosENDXMLNFCE: TStringField;
    cdsParametrosENDPDFNFCE: TStringField;
    sdsCupomFiscalDADOS_ADICIONAIS: TMemoField;
    cdsCupomFiscalDADOS_ADICIONAIS: TMemoField;
    cdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField;
    sdsCupomFiscalFONTE_TRIBUTOS: TStringField;
    cdsCupomFiscalFONTE_TRIBUTOS: TStringField;
    cdsParametrosIMP_NFE_REF_PROD: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField;
    cdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField;
    sdsCupomFiscalNFEDENEGADA: TStringField;
    cdsCupomFiscalNFEDENEGADA: TStringField;
    sdsCupomFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    cdsCupomFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    cdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaINSC_SUFRAMA: TStringField;
    cdsPessoaINSC_MUNICIPAL: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    sdsCupomFiscalMOTIVO_CANCELADA: TStringField;
    cdsCupomFiscalMOTIVO_CANCELADA: TStringField;
    cdsParametrosIMP_TIPO_TRIBUTOS: TStringField;
    sdsTab_NCM: TSQLDataSet;
    dspTab_NCM: TDataSetProvider;
    cdsTab_NCM: TClientDataSet;
    cdsTab_NCMID: TIntegerField;
    cdsTab_NCMNCM: TStringField;
    cdsTab_NCMNOME: TStringField;
    cdsTab_NCMPERC_RED_STRIB: TFloatField;
    cdsTab_NCMGERAR_ST: TStringField;
    cdsTab_NCMUSAR_MVA_UF_DESTINO: TStringField;
    dsTab_NCM: TDataSource;
    cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField;
    cdsParametrosIMP_PERC_TRIB_ITENS: TStringField;
    sdsCupom_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsCupom_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsCupomFiscalNFEFINALIDADE: TStringField;
    cdsCupomFiscalNFEFINALIDADE: TStringField;
    cdsCupom_ConsTIPO: TStringField;
    qUltimo_NFCe: TSQLQuery;
    qUltimo_NFCeULT: TIntegerField;
    sdsCupomFiscalTIPO_ENVIONFE: TStringField;
    cdsCupomFiscalTIPO_ENVIONFE: TStringField;
    sdsCupomFiscalFORMAPGTO_CODIGO: TStringField;
    cdsCupomFiscalFORMAPGTO_CODIGO: TStringField;
    cdsCupom_ConsNFEAMBIENTE: TStringField;
    cdsCupom_ConsNFECHAVEACESSO: TStringField;
    cdsCupom_ConsNFEPROTOCOLO: TStringField;
    cdsCupom_ConsNFERECIBO: TStringField;
    cdsCupom_ConsNFEVERSAO: TStringField;
    cdsCupom_ConsTIPO_ATENDIMENTO: TSmallintField;
    cdsCupom_ConsTIPO_IMPRESSAO_NFCE: TSmallintField;
    cdsCupom_ConsTIPO_ENVIONFE: TStringField;
    cdsCupom_ConsNFEPROTOCOLO_CANCELADA: TStringField;
    cdsCupom_ConsNFEDENEGADA: TStringField;
    cdsCupom_ConsNFEFINALIDADE: TStringField;
    sdsCupomFiscalSERIE: TStringField;
    cdsCupomFiscalSERIE: TStringField;
    cdsFilialSERIE_NFCE: TStringField;
    cdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    cdsParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    cdsParametrosALERTA_VLR_ATRASO: TStringField;
    cdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    cdsParametrosUSA_LIMITE_CREDITO: TStringField;
    cdsParametrosSENHA_CREDITO: TStringField;
    sdsCupomParametrosABRIR_CUPOM: TStringField;
    cdsCupomParametrosABRIR_CUPOM: TStringField;
    sdsCupomParametrosUSA_COD_REF: TStringField;
    cdsCupomParametrosUSA_COD_REF: TStringField;
    cdsCupom_ConsSERIE: TStringField;
    sdsCupomParametrosMOSTRA_NOME_PRODUTO: TStringField;
    cdsCupomParametrosMOSTRA_NOME_PRODUTO: TStringField;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    dsProduto_Tam: TDataSource;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    sdsCupom_ItensNOME_PRODUTO: TStringField;
    cdsCupom_ItensNOME_PRODUTO: TStringField;
    sdsDuplicataUSUARIO: TStringField;
    cdsDuplicataUSUARIO: TStringField;
    cdsParametrosUSA_VENDEDOR: TStringField;
    sdsCupomFiscalMOTIVO_DENEGADO: TStringField;
    cdsCupomFiscalMOTIVO_DENEGADO: TStringField;
    sdsCupomFiscal_ProdPrincipal: TSQLDataSet;
    dspCupomFiscal_ProdPrincipal: TDataSetProvider;
    cdsCupomFiscal_ProdPrincipal: TClientDataSet;
    dsCupomFiscal_ProdPrincipal: TDataSource;
    sdsCupomFiscal_ProdPrincipalID: TIntegerField;
    sdsCupomFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField;
    sdsCupomFiscal_ProdPrincipalID_PRODUTO: TIntegerField;
    sdsCupomFiscal_ProdPrincipalVLR_PRODUTO: TFloatField;
    sdsCupomFiscal_ProdPrincipalQTD: TIntegerField;
    sdsCupomFiscal_ProdPrincipalVLR_TOTAL: TFloatField;
    cdsCupomFiscal_ProdPrincipalID: TIntegerField;
    cdsCupomFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField;
    cdsCupomFiscal_ProdPrincipalID_PRODUTO: TIntegerField;
    cdsCupomFiscal_ProdPrincipalVLR_PRODUTO: TFloatField;
    cdsCupomFiscal_ProdPrincipalQTD: TIntegerField;
    cdsCupomFiscal_ProdPrincipalVLR_TOTAL: TFloatField;
    cdsParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    sdsCupom_ItensITEM_ORIGINAL: TIntegerField;
    cdsCupom_ItensITEM_ORIGINAL: TIntegerField;
    sdsCupomParametrosUSA_COPIA_PEDIDO_CF: TStringField;
    cdsCupomParametrosUSA_COPIA_PEDIDO_CF: TStringField;
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoID: TIntegerField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoITEM: TIntegerField;
    cdsPedidoNOMECLIENTE: TStringField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoNOMEPRODUTO: TStringField;
    cdsPedidoQTD_FATURADO: TFloatField;
    cdsPedidoQTD_RESTANTE: TFloatField;
    cdsPedidoQTD_AFATURAR: TFloatField;
    cdsPedidoVLR_UNITARIO: TFloatField;
    cdsPedidoQTD: TFloatField;
    cdsPedidoID_PRODUTO: TIntegerField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoCNPJ_CPF: TStringField;
    cdsPedidoDTENTREGA: TDateField;
    cdsPedidoID_CFOP: TIntegerField;
    cdsPedidoID_NCM: TIntegerField;
    cdsPedidoUNIDADE: TStringField;
    cdsPedidoPERC_IPI: TFloatField;
    cdsPedidoOBS_COMPLEMENTAR: TStringField;
    cdsPedidoNUMOS: TStringField;
    cdsPedidoTIPO_FRETE: TStringField;
    cdsPedidoID_CONDPGTO: TIntegerField;
    cdsPedidoIMP_OC_NOTA: TStringField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedidoID_VARIACAO: TIntegerField;
    cdsPedidoQTD_LIBERADA: TFloatField;
    cdsPedidoQTD_PRODUZIDA: TFloatField;
    cdsPedidoclQtd_Restante: TFloatField;
    cdsPedidoclQtd_NaoLiberada: TFloatField;
    cdsPedidoTIPO_REG: TStringField;
    cdsPedidoTAMANHO: TStringField;
    cdsPedidoID_TRANSPORTADORA: TIntegerField;
    cdsPedidoID_NCM_PED: TIntegerField;
    cdsPedidoREFERENCIA: TStringField;
    cdsPedidoREFERENCIA_PRO: TStringField;
    cdsPedidoNUM_DOC: TIntegerField;
    cdsPedidoNUM_TALAO: TStringField;
    cdsPedidoVLR_DESCONTORATEIO: TFloatField;
    cdsPedidoITEM_CLIENTE: TIntegerField;
    cdsPedidoQTD_PECA: TIntegerField;
    cdsPedidoQTD_FUT: TFloatField;
    cdsPedidoID_COR: TFMTBCDField;
    cdsPedidoNOME_COR: TStringField;
    cdsPedidoID_MOVESTOQUE: TIntegerField;
    cdsPedidoTIPO_ACESSORIO: TStringField;
    cdsPedidoNOME_GRUPO: TStringField;
    cdsPedidoNOME_CONSUMIDOR: TStringField;
    cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField;
    dsPedido: TDataSource;
    sdsPedido_Tipo: TSQLDataSet;
    dspPedido_Tipo: TDataSetProvider;
    cdsPedido_Tipo: TClientDataSet;
    cdsPedido_TipoID: TIntegerField;
    cdsPedido_TipoITEM: TIntegerField;
    cdsPedido_TipoCOMPRIMENTO: TFloatField;
    cdsPedido_TipoLARGURA: TFloatField;
    cdsPedido_TipoALTURA: TFloatField;
    cdsPedido_TipoVLR_KG: TFloatField;
    cdsPedido_TipoQTD: TFloatField;
    cdsPedido_TipoVLR_UNITARIO: TFloatField;
    cdsPedido_TipoVLR_TOTAL: TFloatField;
    cdsPedido_TipoDIAMETRO: TFloatField;
    cdsPedido_TipoDIAMETRO_EXT: TFloatField;
    cdsPedido_TipoDIAMETRO_INT: TFloatField;
    cdsPedido_TipoPAREDE: TFloatField;
    cdsPedido_TipoPESO: TFloatField;
    cdsPedido_TipoCOMPLEMENTO_NOME: TStringField;
    cdsPedido_TipoTIPO_ORCAMENTO: TStringField;
    cdsPedido_TipoDESCRICAO_TIPO: TStringField;
    cdsPedido_TipoID_ACABAMENTO: TIntegerField;
    cdsPedido_TipoID_REDONDO_MOD: TIntegerField;
    cdsPedido_TipoID_CMOEDA: TIntegerField;
    cdsPedido_TipoID_FUROS: TIntegerField;
    cdsPedido_TipoID_FURACAO: TIntegerField;
    cdsPedido_TipoID_PERFIL: TIntegerField;
    cdsPedido_TipoID_VIDRO: TIntegerField;
    cdsPedido_TipoQTD_FUROS: TIntegerField;
    dsPedido_Tipo: TDataSource;
    cdsParametrosEMPRESA_SUCATA: TStringField;
    cdsParametrosEMPRESA_AMBIENTES: TStringField;
    cdsParametrosEMPRESA_NAVALHA: TStringField;
    cdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField;
    cdsParametrosUSA_PEDIDO_FUT: TStringField;
    sdsCupom_ItensID_PEDIDO: TIntegerField;
    sdsCupom_ItensITEM_PEDIDO: TIntegerField;
    sdsCupom_ItensNUM_PEDIDO: TIntegerField;
    sdsCupom_ItensITEM_CLIENTE: TIntegerField;
    sdsCupom_ItensNUMERO_OC: TStringField;
    sdsCupom_ItensNUMERO_OS: TStringField;
    cdsCupom_ItensID_PEDIDO: TIntegerField;
    cdsCupom_ItensITEM_PEDIDO: TIntegerField;
    cdsCupom_ItensNUM_PEDIDO: TIntegerField;
    cdsCupom_ItensITEM_CLIENTE: TIntegerField;
    cdsCupom_ItensNUMERO_OC: TStringField;
    cdsCupom_ItensNUMERO_OS: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    cdsParametrosUNIDADE_PECA: TStringField;
    cdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    sdsCupom_ItensID_ENQIPI: TIntegerField;
    cdsCupom_ItensID_ENQIPI: TIntegerField;
    cdsTab_NCMCOD_CEST: TStringField;
    sdsEnqIPI: TSQLDataSet;
    dspEnqIPI: TDataSetProvider;
    cdsEnqIPI: TClientDataSet;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    dsEnqIPI: TDataSource;
    sdsCupomParametrosTAMANHO_LINHA: TSmallintField;
    cdsCupomParametrosTAMANHO_LINHA: TSmallintField;
    cdsProdutoCOD_CEST: TStringField;
    sdsEstoqueMovGERAR_CUSTO: TStringField;
    cdsEstoqueMovGERAR_CUSTO: TStringField;
    qFilial: TSQLQuery;
    qFilialCONTADOR: TIntegerField;
    cdsTipoCobrancaGERAR_NFCE: TStringField;
    qUltimo_CNF: TSQLQuery;
    qUltimo_CNFULT: TIntegerField;
    cdsCupom_ConsDINHEIRO: TStringField;
    cdsCupom_ConsNOME_TIPOCOBRANCA: TStringField;
    sdsCupomParametrosMOSTRAR_BARRA_TOTAL: TStringField;
    sdsCupomParametrosMOSTRAR_CONDPGTO: TStringField;
    sdsCupomParametrosID_CONDPGTO_PADRAO: TIntegerField;
    cdsCupomParametrosMOSTRAR_BARRA_TOTAL: TStringField;
    cdsCupomParametrosMOSTRAR_CONDPGTO: TStringField;
    cdsCupomParametrosID_CONDPGTO_PADRAO: TIntegerField;
    sdsCupomParametrosUSA_QTD_PESSOA: TStringField;
    cdsCupomParametrosUSA_QTD_PESSOA: TStringField;
    sdsCupomFiscalQTD_PESSOA: TIntegerField;
    cdsCupomFiscalQTD_PESSOA: TIntegerField;
    cdsCupom_ConsQTD_PESSOA: TIntegerField;
    sdsCupomParametrosVENDA_TIPO_PRODUTO: TStringField;
    cdsCupomParametrosVENDA_TIPO_PRODUTO: TStringField;
    sdsCupomParametrosCAIXA_NUMERA_COMANDA: TStringField;
    cdsCupomParametrosCAIXA_NUMERA_COMANDA: TStringField;
    sdsCupomParametrosIMPRIME_NUM_NFISCAL: TStringField;
    cdsCupomParametrosIMPRIME_NUM_NFISCAL: TStringField;
    sdsCupomFiscalID_FECHAMENTO: TIntegerField;
    cdsCupomFiscalID_FECHAMENTO: TIntegerField;
    cdsCupom_ConsCONTADOR_ITENS: TIntegerField;
    cdsCupom_ConsID_FECHAMENTO: TIntegerField;
    SQLQuery1: TSQLQuery;
    cdsCupom_ConsDTFECHAMENTO: TDateField;
    sdsCupomParametrosBAIXAR_CONSUMO: TStringField;
    cdsCupomParametrosBAIXAR_CONSUMO: TStringField;
    sdsProduto_Consumo_Tam: TSQLDataSet;
    dspProduto_Consumo_Tam: TDataSetProvider;
    cdsProduto_Consumo_Tam: TClientDataSet;
    cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    cdsProduto_Consumo_TamTAMANHO: TStringField;
    cdsProduto_Consumo: TClientDataSet;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    dspProduto_Consumo: TDataSetProvider;
    sdsProduto_Consumo: TSQLDataSet;
    sdsCupomParametrosID_CONTAPERDAS: TIntegerField;
    cdsCupomParametrosID_CONTAPERDAS: TIntegerField;
    sdsCupomParametrosORDEM_CAMPOS: TSmallintField;
    cdsCupomParametrosORDEM_CAMPOS: TSmallintField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoMOSTRAR_NFCE: TStringField;
    cdsTipoCobrancaABRE_GAVETA: TStringField;
    cdsTipoCobrancaEXIGE_CLIENTE: TStringField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    sdsCupomParametrosIMPRIME_FISCAL_NFISCAL: TStringField;
    cdsCupomParametrosIMPRIME_FISCAL_NFISCAL: TStringField;
    sdsCupomParametrosETIQUETA_INFO: TStringField;
    cdsCupomParametrosETIQUETA_INFO: TStringField;
    sdsCupomParametrosUSA_COMANDA: TStringField;
    sdsCupomParametrosUSA_CARNE: TStringField;
    cdsCupomParametrosUSA_COMANDA: TStringField;
    cdsCupomParametrosUSA_CARNE: TStringField;
    sdsCupom_ParcID_DUPLICATA: TIntegerField;
    cdsCupom_ParcID_DUPLICATA: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    sdsCupomParametrosALTURA_SALTO_LINHA: TSmallintField;
    cdsCupomParametrosALTURA_SALTO_LINHA: TSmallintField;
    cdsTipoCobrancaIMPRIME_CARNE: TStringField;
    sdsCupomParametrosUSA_CARTAO_COMANDA: TStringField;
    sdsCupomParametrosUSA_ORCAMENTO: TStringField;
    sdsCupomParametrosUSA_PEDIDO: TStringField;
    cdsCupomParametrosUSA_CARTAO_COMANDA: TStringField;
    cdsCupomParametrosUSA_ORCAMENTO: TStringField;
    cdsCupomParametrosUSA_PEDIDO: TStringField;
    sdsCupomFiscalCLIENTE_NOME: TStringField;
    sdsCupomFiscalCLIENTE_FONE: TStringField;
    cdsCupomFiscalCLIENTE_NOME: TStringField;
    cdsCupom_ConsCLIENTE_NOME: TStringField;
    cdsCupom_ConsCLIENTE_FONE: TStringField;
    cdsCupom_ConsCLIENTE_ENDERECO: TStringField;
    cdsCupom_ConsCLIENTE_OBS: TStringField;
    sdsCupomFiscalCLIENTE_ENDERECO: TStringField;
    sdsCupomFiscalCLIENTE_OBS: TStringField;
    cdsCupomFiscalCLIENTE_ENDERECO: TStringField;
    cdsCupomFiscalCLIENTE_OBS: TStringField;
    sdsCupomParametrosEXIGE_CAMPO_DESCONTO: TStringField;
    cdsCupomParametrosEXIGE_CAMPO_DESCONTO: TStringField;
    cdsTipoCobrancaCREDITO_LOJA: TStringField;
    sdsCupom_ParcEDITADA: TStringField;
    cdsCupom_ParcEDITADA: TStringField;
    sdsCupomParametrosVIAS_CUPOM: TSmallintField;
    cdsCupomParametrosVIAS_CUPOM: TSmallintField;
    sdsCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField;
    cdsCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField;
    qCupomPed: TSQLQuery;
    qCupomPedID_PEDIDO: TIntegerField;
    sdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA: TStringField;
    cdsCupomParametrosIMPRIME_NFISCAL_CONFERENCIA: TStringField;
    sdsCupomParametrosID_PRODUTO_GENERICO: TIntegerField;
    cdsCupomParametrosID_PRODUTO_GENERICO: TIntegerField;
    sdsCupomFiscalCPF: TStringField;
    cdsCupomFiscalCPF: TStringField;
    sdsCupomParametrosEXIGE_VENDEDOR: TStringField;
    sdsCupomParametrosREPETE_VENDEDOR: TStringField;
    cdsCupomParametrosEXIGE_VENDEDOR: TStringField;
    cdsCupomParametrosREPETE_VENDEDOR: TStringField;
    cdsCupom_ConsHREMISSAO: TTimeField;
    qComissao: TSQLQuery;
    cdsPedidoPERC_DESCONTO: TFloatField;
    cdsPedidoID_TIPO_COBRANCA: TIntegerField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    cdsPedidoPERC_COMISSAO_PED: TFloatField;
    cdsPedidoPERC_COMISSAO_ITEM: TFloatField;
    sdsTransp: TSQLDataSet;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    dsTransp: TDataSource;
    cdsTranspCODIGO: TIntegerField;
    cdsTranspNOME: TStringField;
    cdsTranspENDERECO: TStringField;
    cdsTranspNUM_END: TStringField;
    cdsTranspCNPJ_CPF: TStringField;
    cdsTranspPESSOA: TStringField;
    cdsTranspUF: TStringField;
    cdsTranspID_CIDADE: TIntegerField;
    cdsTranspCOMPLEMENTO_END: TStringField;
    cdsTranspBAIRRO: TStringField;
    cdsTranspCEP: TStringField;
    cdsTranspTELEFONE1: TStringField;
    cdsTranspDDDFONE1: TIntegerField;
    cdsTranspINSCR_EST: TStringField;
    cdsTranspEMAIL_NFE: TStringField;
    cdsTranspCIDADE: TStringField;
    sdsCupomFiscalID_TRANSPORTADORA: TIntegerField;
    cdsCupomFiscalID_TRANSPORTADORA: TIntegerField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    sdsCupomFiscal_Cli: TSQLDataSet;
    cdsCupomFiscal_Cli: TClientDataSet;
    dsCupomFiscal_Cli: TDataSource;
    sdsCupomFiscal_CliID: TIntegerField;
    sdsCupomFiscal_CliENDERECO: TStringField;
    sdsCupomFiscal_CliNUM_END: TStringField;
    sdsCupomFiscal_CliCOMPLEMENTO: TStringField;
    sdsCupomFiscal_CliBAIRRO: TStringField;
    sdsCupomFiscal_CliID_CIDADE: TIntegerField;
    sdsCupomFiscal_CliDDD: TStringField;
    sdsCupomFiscal_CliFONE: TStringField;
    cdsCupomFiscalsdsCupomFiscal_Cli: TDataSetField;
    cdsCupomFiscal_CliID: TIntegerField;
    cdsCupomFiscal_CliENDERECO: TStringField;
    cdsCupomFiscal_CliNUM_END: TStringField;
    cdsCupomFiscal_CliCOMPLEMENTO: TStringField;
    cdsCupomFiscal_CliBAIRRO: TStringField;
    cdsCupomFiscal_CliID_CIDADE: TIntegerField;
    cdsCupomFiscal_CliDDD: TStringField;
    cdsCupomFiscal_CliFONE: TStringField;
    sdsCupomFiscal_CliID_TRANSPORTADORA: TIntegerField;
    sdsCupomFiscal_CliCEP: TStringField;
    cdsCupomFiscal_CliID_TRANSPORTADORA: TIntegerField;
    cdsCupomFiscal_CliCEP: TStringField;
    dspCidade: TDataSetProvider;
    sdsCidade: TSQLDataSet;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    qCidadeNOME: TStringField;
    qCidadeUF: TStringField;
    qCidadeCODMUNICIPIO: TStringField;
    qCidadeID_PROVEDOR: TIntegerField;
    qCidadeLINKNFSE: TStringField;
    qCidadeFONE_PREFEITURA: TStringField;
    qCidadeSITE_PREFEITURA: TStringField;
    qCidadeEND_LOGO_PREFEITURA: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeLINKNFSE: TStringField;
    cdsCidadeFONE_PREFEITURA: TStringField;
    cdsCidadeSITE_PREFEITURA: TStringField;
    cdsCidadeEND_LOGO_PREFEITURA: TStringField;
    sdsCupomFiscal_CliEMAIL: TStringField;
    cdsCupomFiscal_CliEMAIL: TStringField;
    sdsCupomFiscal_CliTIPO_CONTRIBUINTE: TSmallintField;
    cdsCupomFiscal_CliTIPO_CONTRIBUINTE: TSmallintField;
    sdsCupomFiscal_CliPLACA: TStringField;
    sdsCupomFiscal_CliUF_TRANSP: TStringField;
    cdsCupomFiscal_CliPLACA: TStringField;
    cdsCupomFiscal_CliUF_TRANSP: TStringField;
    sdsCupomFiscal_CliTIPO_FRETE: TStringField;
    cdsCupomFiscal_CliTIPO_FRETE: TStringField;
    mPedObs: TClientDataSet;
    IntegerField1: TIntegerField;
    mPedidoAuxOBS_Nota: TStringField;
    qPedido_Cupom: TSQLQuery;
    qPedido_CupomID: TIntegerField;
    qPedido_CupomENDERECO: TStringField;
    qPedido_CupomNUM_END: TStringField;
    qPedido_CupomBAIRRO: TStringField;
    qPedido_CupomID_CIDADE: TIntegerField;
    qPedido_CupomDDD: TStringField;
    qPedido_CupomFONE: TStringField;
    qPedido_CupomCEP: TStringField;
    qPedido_CupomEMAIL: TStringField;
    qPedido_CupomPLACA: TStringField;
    qPedido_CupomUFPLACA: TStringField;
    qPedido_CupomTIPO_FRETE: TStringField;
    qPedido_CupomCOMPLEMENTO: TStringField;
    cdsPedidoTIPO_ATENDIMENTO: TSmallintField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinCONTROLE_DIG_PRECO: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioALT_PRECO_PED: TStringField;
    sdsCupom_Cons_Parc: TSQLDataSet;
    dspCupom_Cons_Parc: TDataSetProvider;
    cdsCupom_Cons_Parc: TClientDataSet;
    cdsCupom_Cons_ParcVALOR: TFloatField;
    cdsCupom_Cons_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsCupom_Cons_ParcDINHEIRO: TStringField;
    cdsComandaItem_RelID_PRODUTO: TIntegerField;
    cdsComandaItem_RelVLR_UNITARIO: TFloatField;
    sdsCupomFiscalNOME_VENDEDOR: TStringField;
    cdsCupomFiscalNOME_VENDEDOR: TStringField;
    sdsCupomParametrosID_CONDPGTO_PRAZO: TIntegerField;
    cdsCupomParametrosID_CONDPGTO_PRAZO: TIntegerField;
    sdsCupomParametrosUSA_TABELA_PRECO: TStringField;
    cdsCupomParametrosUSA_TABELA_PRECO: TStringField;
    sdsCupomParametrosTAMANHO_COD_ETIQUETA: TSmallintField;
    cdsCupomParametrosTAMANHO_COD_ETIQUETA: TSmallintField;
    sdsCupomParametrosQTD_AUTO: TStringField;
    cdsCupomParametrosQTD_AUTO: TStringField;
    cdsCupom_ConsVENDEDOR: TStringField;
    sdsCupomParametrosUSA_PREVIEW_CARNE: TStringField;
    sdsCupomParametrosCARNE_RELATORIO: TStringField;
    cdsCupomParametrosUSA_PREVIEW_CARNE: TStringField;
    cdsCupomParametrosCARNE_RELATORIO: TStringField;
    sdsCupomParametrosFECHAMENTO: TStringField;
    cdsCupomParametrosFECHAMENTO: TStringField;
    sdsLocalEstoque: TSQLDataSet;
    dspLocalEstoque: TDataSetProvider;
    cdsLocalEstoque: TClientDataSet;
    dsLocalEstoque: TDataSource;
    cdsLocalEstoqueID: TIntegerField;
    cdsLocalEstoqueNOME: TStringField;
    sdsTerminal: TSQLDataSet;
    dspTerminal: TDataSetProvider;
    cdsTerminal: TClientDataSet;
    cdsTerminalID: TSmallintField;
    cdsTerminalNOME: TStringField;
    dsTerminal: TDataSource;
    qUnidade: TSQLQuery;
    qUnidadeFRACIONAVEL: TStringField;
    sdsCupomParametrosRACHAR_CONTA: TStringField;
    cdsCupomParametrosRACHAR_CONTA: TStringField;
    sdsCupomParametrosUSA_PRECO_AVISTA: TStringField;
    cdsCupomParametrosUSA_PRECO_AVISTA: TStringField;
    cdsProdutoPRECO_REVENDA: TFMTBCDField;
    cdsTipoCobrancaPRECO_AVISTA: TStringField;
    sdsCupomFiscalID_LOCALESTOQUE: TIntegerField;
    cdsCupomFiscalID_LOCALESTOQUE: TIntegerField;
    cdsTab_NCMID_PIS: TIntegerField;
    cdsTab_NCMID_COFINS: TIntegerField;
    cdsTab_NCMID_CST_ICMS: TIntegerField;
    cdsTab_NCMPERC_PIS: TFloatField;
    cdsTab_NCMPERC_COFINS: TFloatField;
    cdsTab_NCMPERC_BASE_ICMS: TFloatField;
    cdsTab_NCMID_OBS_LEI: TIntegerField;
    cdsTab_NCMID_CFOP: TIntegerField;
    cdsTab_NCMPERC_ICMS: TFloatField;
    sdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField;
    cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA: TStringField;
    cdsCupomFiscalCLIENTE_FONE: TStringField;
    qVer: TSQLQuery;
    qVerID: TIntegerField;
    qVerNFECHAVEACESSO: TStringField;
    sdsCupomFiscalESTOQUE_OK: TStringField;
    sdsCupomFiscalFINANCEIRO_OK: TStringField;
    cdsCupomFiscalESTOQUE_OK: TStringField;
    cdsCupomFiscalFINANCEIRO_OK: TStringField;
    cdsCupom_ConsESTOQUE_OK: TStringField;
    cdsCupom_ConsFINANCEIRO_OK: TStringField;
    sdsCupomParametrosUSA_COR_TAMANHO: TStringField;
    cdsCupomParametrosUSA_COR_TAMANHO: TStringField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    cdsCombinacaoID: TIntegerField;
    cdsCombinacaoITEM: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    dsCombinacao: TDataSource;
    dsTamanho: TDataSource;
    cdsTamanho: TClientDataSet;
    cdsTamanhoID: TIntegerField;
    cdsTamanhoTAMANHO: TStringField;
    dspTamanho: TDataSetProvider;
    sdsTamanho: TSQLDataSet;
    sdsCupom_ItensID_COR_COMBINACO: TIntegerField;
    cdsCupom_ItensID_COR_COMBINACO: TIntegerField;
    sdsParametrosID: TIntegerField;
    sdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    sdsParametrosIMPRESSORA_FISCAL: TStringField;
    sdsParametrosQUITAR_AVISTA_AUT: TStringField;
    sdsParametrosARREDONDAR_5: TStringField;
    sdsParametrosID_CONTA_FECHAMENTO: TIntegerField;
    sdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    sdsParametrosUSA_NFCE: TStringField;
    sdsParametrosAPLICARDESCONTONOICMS: TStringField;
    sdsParametrosAPLICARDESCONTONOIPI: TStringField;
    sdsParametrosENDXMLNFCE: TStringField;
    sdsParametrosENDPDFNFCE: TStringField;
    sdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField;
    sdsParametrosIMP_NFE_REF_PROD: TStringField;
    sdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField;
    sdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField;
    sdsParametrosIMP_TIPO_TRIBUTOS: TStringField;
    sdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField;
    sdsParametrosIMP_PERC_TRIB_ITENS: TStringField;
    sdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    sdsParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    sdsParametrosALERTA_VLR_ATRASO: TStringField;
    sdsParametrosUSA_LIMITE_CREDITO: TStringField;
    sdsParametrosSENHA_CREDITO: TStringField;
    sdsParametrosUSA_VENDEDOR: TStringField;
    sdsParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    sdsParametrosEMPRESA_SUCATA: TStringField;
    sdsParametrosEMPRESA_AMBIENTES: TStringField;
    sdsParametrosEMPRESA_NAVALHA: TStringField;
    sdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField;
    sdsParametrosUSA_PEDIDO_FUT: TStringField;
    sdsParametrosUNIDADE_PECA: TStringField;
    sdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    sdsParametrosGeral: TSQLDataSet;
    IntegerField2: TIntegerField;
    dspParametrosGeral: TDataSetProvider;
    cdsParametrosGeral: TClientDataSet;
    dsParametrosGeral: TDataSource;
    cdsParametrosGeralID: TIntegerField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralENDGRIDS: TStringField;
    sdsCupomFiscalDTORIGINAL: TDateField;
    cdsCupomFiscalDTORIGINAL: TDateField;
    cdsCupom_ConsDTORIGINAL: TDateField;
    sdsCupomParametrosJUROS_MES: TFloatField;
    cdsCupomParametrosJUROS_MES: TFloatField;
    cdsProdutoCOD_BARRA2: TStringField;
    cdsProdutoQTD_EMBALAGEM: TFloatField;
    cdsProdutoUNIDADE2: TStringField;
    sdsCupomParametrosAUTENTICA_VENDEDOR: TStringField;
    cdsCupomParametrosAUTENTICA_VENDEDOR: TStringField;
    cdsVendedorSENHA: TStringField;
    cdsTipoCobrancaFATURAMENTO_LIQUIDO: TStringField;
    cdsTipoCobrancaFATURAMENTO_BRUTO: TStringField;
    cdsTipoCobrancaDINHEIRO: TStringField;
    cdsCFOPID_PIS_SIMP: TIntegerField;
    cdsCFOPID_COFINS_SIMP: TIntegerField;
    sdsCupomParametrosUSA_MODO_SINCRONO: TStringField;
    cdsCupomParametrosUSA_MODO_SINCRONO: TStringField;
    qTipoDinheiro: TSQLQuery;
    qTipoDinheiroID: TIntegerField;
    qTipoDinheiroNOME: TStringField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    cdsTipoCobrancaPERC_JUROS: TFloatField;
    cdsProdutoID_CSTICMS: TIntegerField;
    sdsCupom_ItensVLR_ACRESCIMO: TFloatField;
    cdsCupom_ItensVLR_ACRESCIMO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mCupomBeforeDelete(DataSet: TDataSet);
    procedure cdsPedidoCalcFields(DataSet: TDataSet);
    procedure cdsCupomFiscalBeforePost(DataSet: TDataSet);
    procedure cdsCupomFiscalNewRecord(DataSet: TDataSet);
    procedure cdsParametrosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    ctCupomFiscal: String;
    f: TextFile;

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Gravar_Financeiro(Tipo: String);//ENT=Entrada   AVI= Avista
  public
    { Public declarations }
    ctCondPgto, ctProduto: String;
    ctCupomFiscal_ProdPrincipal: String;
    ctPedido, ctDuplicata: String;
    vPgtoEditado: Boolean;
    vSacolaSelecionada: Boolean;
    vVlrEntrada, vSomaParcelas: Currency;

    //27/07/2016
    vID_Fechamento: Integer;

    vClienteID: Integer;
    vID_Cupom_Pos, vLinha, vPosicao: Integer;
    vTipoCupom: String;
    vNumCartao: Integer;//para comanda restaurante
    vEncerrado, vCancelar: Boolean;
    vNome_Consumidor: String;
    ctqIBPT: String;
    vClienteConfirmado: Boolean;
    //NFCe
    vID_CFOP, vID_Variacao: Integer;
    vID_Pis, vID_Cofins: Integer;
    vTipo_Pis, vTipo_Cofins: String;
    vPerc_Pis, vPerc_Cofins: Real;
    vVlr_Pis, vVlr_Cofins: Real;
    vID_CSTICMS, vID_CSTIPI: Integer;
    vID_NCM : Integer;
    vPerc_ICMS, vPerc_IPI, vPerc_TribICMS: Real;
    vMotivoCancelamento: String;
    vDescricao_Operacao: String;
    vSair_Tela: Boolean;
    
    vIdCombinacao: Integer;
    vTamanho, vCombinacao: String;
    //***

    procedure prcInserir(vId, vClienteId: Integer);
    procedure prcExcluir;
    procedure prcNumNaoFiscal;
    procedure prcLocalizar(vId: Integer);
    function Gravar_Duplicata(Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = ''): Integer;
                                                 //Tipo  P= Contas a Pagar   R= Contas a Receber
                                                 //Prazo = ENT=Entrada  AVI=Avista
    procedure Gravar_Dupicata_Hist(Tipo: String);
    procedure Abrir_cdsDuplicata(ID: Integer);
    procedure prc_Gravar_Comissao(Prazo: String = '');
    procedure prc_Gravar_Financeiro_Cupom(vParc: Byte; vValor: Currency);

    procedure prc_Excluir_Financeiro;
    procedure prc_Excluir_Movimento;
    procedure Excluir_Duplicata;
    procedure Excluir_ExtComissao;

    procedure ImpNaoFiscalC(vTipo: String; vCod, vProd, vQtd, vVlrUnit, vVlrTot, vVlrDesc: String);
    procedure ImpNaoFiscalW(vTipo: String; vCod, vProd, vQtd, vVlrUnit, vVlrTot, vVlrDesc: String);
    procedure ChamaNaoFiscal(vId: Integer; vModelo: String);
    procedure SetDefaultPrinter(PrinterName: String);

    procedure ImpCarne(vTipo: String);

    function fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
    procedure prc_Mover_CST;

    procedure prc_Calcular_Tributos_Transparencia;
    procedure prc_Abrir_CSTICMS(Tipo: String);

    procedure Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso: String; Finalidade, Ambiente,CodigoErro: Integer; DadosAdicionais: WideString);

    procedure prc_Abrir_CondPgto;

    procedure prc_Abrir_Cupom_ProdPrincipal(ID, Item: Integer);
    procedure prc_Abrir_Produto(vTipoCod, vCodigo: String);
    procedure prc_Excluir_CupomFiscal_MP;

    function fnc_IncrementaCartao(vTerminal: Integer): Integer;
    procedure prcGravaTransacao;

    procedure prc_Busca_IBPT;

  end;

  //Funções Balança Urano
  function _AbrePortaSerial(Canal: String): Integer; stdcall; external 'LePeso.dll';
  function _FechaPortaSerial(): Integer; stdcall; external 'LePeso.dll';
  function _AlteraModeloBalanca(Modelo: Integer): Integer; stdcall; external 'LePeso.dll';
  function _AlteraModoOperacao(Modo: Integer): Integer; stdcall; external 'LePeso.dll';
  function _LePeso(): Pchar; stdcall; external 'LePeso.dll';

var
  dmCupomFiscal: TdmCupomFiscal;
  cAvanco: Word; //25

const
  IPula   = #13;       //Pula 1 linha
  IEspac1 = #27#48;    //Define espaçamento entre linhas de 1/8"
  IEspac2 = #27#49;    //Define espaçamento entre linhas de 7/72"
  IEspac3 = #27#50;    //Define espaçamento entre linhas de 1/6"
  IEject  = #12;       //Ejeta página
  I80car  = #27#80#18; //Imprime com 80 colunas
  I96car  = #27#77#18; //Imprime com 96 colunas
  I137car = #27#80#15; //Imprime com 137 colunas
  I160car = #27#77#15; //Imprime com 160 colunas
  IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
  IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
  IDuploC = #27#20;    //Cancela largura dupla
  INegAti = #27#71;    //Imprime em negrito
  INegDes = #27#72;    //Cancela modo negrito
  IItaAti = #27#52;    //Imprime em Itálico
  IItaDes = #27#53;    //Cancela modo Itálico

implementation

uses DmdDatabase, uImpFiscal_Bematech, uImpFiscal_Daruma, uUtilDaruma, uUtilBematech, LogProvider;

{$R *.dfm}

{ TdmCupomFiscal }

procedure TdmCupomFiscal.prcInserir(vId, vClienteId: Integer);
var
  vAux: Integer;
begin
  if not cdsCupomFiscal.Active then
    prcLocalizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUPOMFISCAL',0);

  cdsCupomFiscal.Insert;
  cdsCupomFiscalID.AsInteger          := vAux;
  cdsCupomFiscalDTEMISSAO.AsDateTime  := Date;
  cdsCupomFiscalHREMISSAO.AsDateTime  := Now;
  cdsCupomFiscalCANCELADO.AsString    := 'N';
  cdsCupomFiscalBASE_ICMS.AsFloat     := 0;
  cdsCupomFiscalVLR_ICMS.AsFloat      := 0;
  cdsCupomFiscalVLR_PIS.AsFloat       := 0;
  cdsCupomFiscalVLR_COFINS.AsFloat    := 0;
  cdsCupomFiscalVLR_PRODUTOS.AsFloat  := 0;
  cdsCupomFiscalVLR_DESCONTO.AsFloat  := 0;
  cdsCupomFiscalVLR_TOTAL.AsFloat     := 0;
  cdsCupomFiscalVLR_RECEBIDO.AsFloat  := 0;
  cdsCupomFiscalVLR_TROCO.AsFloat     := 0;
  cdsCupomFiscalID_CONDPGTO.AsInteger := 0;
  cdsCupomFiscalID_CONTA.AsInteger    := cdsParametrosID_CONTA_FECHAMENTO.AsInteger;
  cdsCupomFiscalFILIAL.AsInteger      := cdsFilialID.AsInteger;
  cdsCupomFiscalTIPO_PGTO.AsString    := 'V';
  cdsCupomFiscalID_CLIENTE.AsInteger  := vClienteId;
  cdsCupomFiscalQTD_PESSOA.AsInteger  := 1;
  cdsCupomFiscalTERMINAL_ID.AsInteger := vTerminal;
  cdsCupomFiscalID_LOCALESTOQUE.AsInteger := vLocalEstoque;
  cdsCupomFiscalNUMCUPOM.AsInteger    := 0;
  if vID_Fechamento > 0 then
    cdsCupomFiscalID_FECHAMENTO.AsInteger := vID_Fechamento;

  cdsPessoa.IndexFieldNames := 'CODIGO';
  cdsPessoa.FindKey([vClienteID]);
  cdsCupomFiscalCLIENTE_NOME.AsString := cdsPessoaNOME.AsString;
  if not(cdsPessoaENDERECO.IsNull) and (trim(cdsPessoaENDERECO.AsString) <> '') then
  begin
    cdsCupomFiscalCLIENTE_ENDERECO.AsString := cdsPessoaENDERECO.AsString + ', ' + cdsPessoaNUM_END.AsString + ' - ' +
                                               cdsPessoaCOMPLEMENTO_END.AsString + ' - ' + cdsPessoaBAIRRO.AsString + ' - ' +
                                               cdsPessoaID_CIDADE.AsString;
  end;
  if not cdsPessoaTELEFONE1.IsNull then
   cdsCupomFiscalCLIENTE_FONE.AsString := cdsPessoaDDDFONE1.AsString + ' ' + cdsPessoaTELEFONE1.AsString;

  if cdsCupomParametrosREPETE_VENDEDOR.AsString = 'S' then
    cdsCupomFiscalID_VENDEDOR.AsInteger := vId_Vendedor;

  case cdsParametrosIMPRESSORA_FISCAL.AsInteger of
    1: ;//cdsCupomFiscalNUMCUPOM.AsInteger := fnc_Busca_Ultimo_Cupom_Daruma;
    2: ;//cdsCupomFiscalNUMCUPOM.AsInteger := fnc_UltimoCupom_Daruma;
    3: ;//cdsCupomFiscalNUMCUPOM.AsInteger := fnc_Bematech_UltimoCupom;
  end;
  if cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
    prc_Abrir_Cupom_ProdPrincipal(cdsCupomFiscalID.AsInteger,0);
end;

procedure TdmCupomFiscal.prcLocalizar(vId: Integer);
begin
  cdsCupomFiscal.Close;
  sdsCupomFiscal.CommandText := ctCupomFiscal;
  if vId <> 0 then
    sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' WHERE CF.ID = ' + IntToStr(vId);
  prc_Abrir_CSTICMS(cdsFilialSIMPLES.AsString);
  cdsCupomFiscal.Open;
  cdsCupom_Itens.Close;
  cdsCupom_Itens.Open;
end;

procedure TdmCupomFiscal.DataModuleCreate(Sender: TObject);
var
  i, x: Word;
  vIndices: string;
  aIndices: array of string;
begin
  ctCupomFiscal := sdsCupomFiscal.CommandText;
  ctCupomFiscal_ProdPrincipal := sdsCupomFiscal_ProdPrincipal.CommandText;;
  ctCondPgto    := sdsCondPgto.CommandText;
  ctPedido      := sdsPedido.CommandText;
  ctqIBPT       := qIBPT.SQL.Text;
  ctProduto     := sdsProduto.CommandText;
  ctDuplicata   := sdsDuplicata.CommandText;

  cdsFilial.Open;
  cdsTipoCobranca.Open;
  cdsParametros.Open;
  cdsCupomParametros.Open;
  prc_Abrir_CondPgto;
  cdsSitTribCF.Open;
  cdsEnqIPI.Open;
  cdsTransp.Open;

  qParametros_Fin.Close;
  qParametros_Fin.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;

  cAvanco := cdsCupomParametrosALTURA_SALTO_LINHA.AsInteger;
  if (cdsParametrosUSA_NFCE.AsString = 'S') then
  begin
    cdsTab_Cofins.Open;
    cdsTab_Pis.Open;
    cdsTab_CSTIPI.Open;
    cdsTab_CSTICMS.Open;

    cdsCFOP.Open;
    cdsCFOP_Variacao.Close;
    cdsCFOP_Variacao.Open;
    cdsCFOP_Variacao.First;
    cdsOrigem_Prod.Open;
    cdsTab_NCM.Open;
  end;

  if cdsCupomParametrosUSA_BALANCA.AsString = 'S' then
  begin
    if vBalanca = 'ACBR' then
    begin
    end;
  end;

//*** Logs Implantado na versão
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

procedure TdmCupomFiscal.Gravar_Dupicata_Hist(Tipo: String);
var
  vItemAux: Integer;
begin
  cdsDuplicata_Hist.Last;
  vItemAux := cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;  
                          
  cdsDuplicata_Hist.Insert;
  cdsDuplicata_HistID.AsInteger               := cdsDuplicataID.AsInteger;
  cdsDuplicata_HistITEM.AsInteger             := vItemAux;
  cdsDuplicata_HistTIPO_HISTORICO.AsString    := 'ENT';
  cdsDuplicata_HistID_HISTORICO.AsInteger     := 0;
  cdsDuplicata_HistVLR_LANCAMENTO.AsFloat     := cdsDuplicataVLR_PARCELA.AsFloat;
  cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESCONTOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESPESAS.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if Tipo = 'ENT' then
  begin
    cdsDuplicata_HistCOMPLEMENTO.AsString  := 'ENTRADA DO TÍTULO';
    cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end
  else
  if Tipo = 'PAG' then
  begin
    cdsDuplicata_HistTIPO_HISTORICO.AsString      := 'PAG';
    cdsDuplicata_HistCOMPLEMENTO.AsString         := 'PAGAMENTO DO TÍTULO';
    cdsDuplicata_HistVLR_PAGAMENTO.AsFloat        := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_PARCELA.AsFloat));
    cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  end;
  cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  cdsDuplicata_HistDTLANCAMENTO.AsDateTime := cdsDuplicataDTEMISSAO.AsDateTime;
  cdsDuplicata_HistNUMCHEQUE.AsInteger     := 0;
  cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  if cdsDuplicataID_CONTA.AsInteger > 0 then
    cdsDuplicata_HistID_CONTA.AsInteger  := cdsDuplicataID_CONTA.AsInteger;
  cdsDuplicata_HistID_COMISSAO.AsInteger := 0;
  cdsDuplicata_HistTIPO_ES.AsString      := cdsDuplicataTIPO_ES.AsString;
  cdsDuplicata_Hist.Post;

  if Tipo = 'PAG' then
  begin
    if cdsCupomFiscalTIPO_PGTO.AsString = 'V' then
    begin
      prc_Gravar_Comissao('AVI');
      prc_Gravar_Financeiro('AVI');
    end
    else
    begin
      prc_Gravar_Comissao('ENT');
      prc_Gravar_Financeiro('ENT');
    end
  end;
end;

function TdmCupomFiscal.Gravar_Duplicata(Tipo, TransfICMS: String;
  Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String): Integer;
var
  vAux: Integer;
begin
  if not cdsDuplicata.Active then
    Abrir_cdsDuplicata(0);

  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);
  if Parcela = 0 then
    Prazo := 'ENT';

  cdsDuplicata.Insert;
  cdsDuplicataID.AsInteger := vAux;
  Result := cdsDuplicataID.AsInteger;
  if Tipo = 'R' then
    cdsDuplicataTIPO_ES.AsString := 'E'
  else
    cdsDuplicataTIPO_ES.AsString := 'S';
  cdsDuplicataFILIAL.AsInteger      := cdsCupomFiscalFILIAL.AsInteger;
  cdsDuplicataID_NOTA.AsInteger     := 0;
  cdsDuplicataID_CUPOM.AsInteger    := cdsCupomFiscalID.AsInteger;
  cdsDuplicataPARCELA.AsInteger     := Parcela;
  cdsDuplicataNUMDUPLICATA.AsString := cdsCupomFiscalNUMCUPOM.AsString;
  cdsDuplicataNUMNOTA.AsInteger     := cdsCupomFiscalNUMCUPOM.AsInteger;
  if cdsCupomFiscalTIPO.AsString = 'CNF' then
    cdsDuplicataSERIE.AsString := 'CNF'
  else
    cdsDuplicataSERIE.AsString := cdsCupomFiscalSERIE.AsString;
  cdsDuplicataDTVENCIMENTO.AsDateTime := Data;
  cdsDuplicataVLR_PARCELA.AsFloat     := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_RESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_PAGO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESPESAS.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_JUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_COMISSAO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',cdsCupomFiscalPERC_VENDEDOR.AsFloat));
  cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataDTULTPAGAMENTO.Clear;
  cdsDuplicataID_PESSOA.AsInteger     := cdsCupomFiscalID_CLIENTE.AsInteger;
  if cdsCupomFiscalID_VENDEDOR.AsInteger > 0 then
    cdsDuplicataID_VENDEDOR.AsInteger := cdsCupomFiscalID_VENDEDOR.AsInteger;
  cdsDuplicataPerc_Comissao.AsFloat   := cdsCupomFiscalPerc_Vendedor.AsFloat; 
  //if (Prazo = 'ENT') or ((Prazo = 'AVI') and (cdsParametrosQUITAR_AVISTA_AUT.AsString = 'S'))  then
  if ((Prazo = 'AVI') and (cdsParametrosQUITAR_AVISTA_AUT.AsString = 'S'))  then
  begin
    if cdsCupomFiscalID_CONTA.AsInteger > 0 then
    begin
      cdsDuplicataID_CONTA.AsInteger        := cdsCupomFiscalID_CONTA.AsInteger;
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsCupomFiscalID_CONTA.AsInteger;
    end;

    if cdsCupom_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsCupom_ParcID_TIPOCOBRANCA.AsInteger;
    cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',0));
    cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',Valor));
  end
  else
  begin
    if cdsCupomFiscalID_CONTA.AsInteger > 0 then
    begin
      cdsDuplicataID_CONTA.AsInteger        := cdsCupomFiscalID_CONTA.AsInteger;
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsCupomFiscalID_CONTA.AsInteger;
    end;
    if cdsCupom_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsCupom_ParcID_TIPOCOBRANCA.AsInteger;
    if (Prazo = 'ENT') then
    begin
      cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
      cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',0));
      cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',Valor));
    end;
  end;
  cdsDuplicataID_COMISSAO.AsInteger       := 0;
  cdsDuplicataQTD_DIASATRASO.AsInteger    := 0;
  cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  cdsDuplicataDTEMISSAO.AsDateTime        := cdsCupomFiscalDTEMISSAO.AsDateTime;
  cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  cdsDuplicataPROTESTADO.AsString         := 'N';
  cdsDuplicataTIPO_LANCAMENTO.AsString    := 'CFI';
  cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  cdsDuplicataTRANSFERENCIA_ICMS.AsString := 'N';
  cdsDuplicataNOSSONUMERO.AsString        := '';
  cdsDuplicataDTFINANCEIRO.Clear;
  cdsDuplicataNUMCHEQUE.AsInteger         := 0;
  cdsDuplicataACEITE.AsString             := '';
  cdsDuplicataID_TERMINAL.AsInteger       := vTerminal;
  cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  cdsDuplicataUSUARIO.AsString            := vUsuario;
  cdsDuplicata.Post;

  Gravar_Dupicata_Hist('ENT');
  if (Prazo = 'ENT') or ((Prazo = 'AVI') and (cdsParametrosQUITAR_AVISTA_AUT.AsString = 'S')) then
    Gravar_Dupicata_Hist('PAG');

  cdsDuplicata.ApplyUpdates(0);
end;

procedure TdmCupomFiscal.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TdmCupomFiscal.prc_Excluir_Financeiro;
var
  sds: TSQLDataSet;
begin
  if cdsCupomFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM FINANCEIRO WHERE ID_CUPOM = ' + IntToStr(cdsCupomFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TdmCupomFiscal.prc_Gravar_Comissao(Prazo: String);
var
  fDMCadExtComissao: TDMCadExtComissao;
  vAux: Integer;
  vVlrBase: Real;
  vID_Duplicata: Integer;
  vItem_Hist: Integer;
  vID_Nota: Integer;
  vParcela: Integer;
  vID_Cupom: Integer;
begin
  if (cdsCupomFiscalID_VENDEDOR.AsInteger > 0) and (cdsCupomFiscalPERC_VENDEDOR.AsCurrency = 0) then
  begin
    cdsVendedor.IndexFieldNames := 'CODIGO';
    cdsVendedor.FindKey([cdsCupomFiscalID_VENDEDOR.AsInteger]);
    cdsCupomFiscal.Edit;
    cdsCupomFiscalPERC_VENDEDOR.AsFloat := StrToFloat(FormatFloat('0.00',cdsVendedorPERC_COMISSAO_VEND.AsFloat));
    cdsCupomFiscal.Post;
    cdsCupomFiscal.ApplyUpdates(0);
  end;

  if (StrToFloat(FormatFloat('0.00',cdsCupomFiscalPERC_VENDEDOR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.00',cdsCupomFiscalVLR_TOTAL.AsFloat)) > 0) then
    exit;

  if (cdsCupomFiscalID_VENDEDOR.AsInteger <= 0) or (cdsCupomFiscalID_VENDEDOR.IsNull) then
    exit;

  if not cdsVendedor.Locate('CODIGO',cdsCupomFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    exit;

  if Prazo <> 'AVI' then
  begin
    if ((cdsVendedorTIPO_COMISSAO.AsString <> 'N') and (Prazo = '')) then
      exit;
    if (cdsVendedorTIPO_COMISSAO.AsString <> 'N') then
      exit;
  end;

  if (cdsVendedorTIPO_COMISSAO.AsString = 'N') or (Prazo = 'AVI') then
  begin
    vID_Nota      := 0;
    vID_Cupom     := cdsCupomFiscalID.AsInteger;
    vID_Duplicata := 0;
    vParcela      := 0;
    vItem_Hist    := 0;
    vVlrBase      := cdsCupomFiscalVLR_TOTAL.AsFloat;
  end
  else
  if (cdsVendedorTIPO_COMISSAO.AsString = 'D') then
  begin
    vID_Nota      := 0;
    vID_Cupom     := 0;
    vID_Duplicata := cdsDuplicataID.AsInteger;
    vParcela      := cdsDuplicataPARCELA.AsInteger;
    vItem_Hist    := cdsDuplicata_HistITEM.AsInteger;
    vVlrBase      := cdsDuplicataVLR_PARCELA.AsFloat;
  end;

  fDMCadExtComissao := TDMCadExtComissao.Create(Self);

  try
    vAux := fDMCadExtComissao.fnc_Mover_Comissao('ENT','CFI','',0,cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                   cdsCupomFiscalFILIAL.AsInteger,cdsCupomFiscalID_VENDEDOR.AsInteger,
                                                   vID_Nota,vID_Duplicata,vItem_Hist,cdsCupomFiscalNUMCUPOM.AsInteger,
                                                   cdsCupomFiscalID_CLIENTE.AsInteger,vParcela,0,0,vID_Cupom,
                                                   StrToFloat(FormatFloat('0.00',vVlrBase)),0,
                                                   StrToFloat(FormatFloat('0.00',cdsCupomFiscalPerc_Vendedor.AsFloat)),0,0);
  finally
    FreeAndNil(fDMCadExtComissao);
  end;
end;

procedure TdmCupomFiscal.prc_Gravar_Financeiro(Tipo: String);
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  cdsPessoa.Locate('CODIGO',cdsDuplicataID_PESSOA.AsInteger,([Locaseinsensitive]));

  fDMGravarFinanceiro.vTipo_ES := 'E';
  if Tipo = 'ENT' then
  begin
    fDmGravarFinanceiro.vAutoQuitado     := 'S';
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.Entrada CF nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                            ' de ' +  cdsPessoaNOME.AsString;
  end
  else
  if Tipo = 'AVI' then
  begin
    fDmGravarFinanceiro.vAutoQuitado     := 'S';
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.A Vista CF nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                            ' de ' + cdsPessoaNOME.AsString;
  end;

  fDMGravarFinanceiro.vID_Conta           := cdsDuplicataID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := cdsDuplicataID.AsInteger;
  fDMGravarFinanceiro.vItem_MovDuplicata  := cdsDuplicata_HistITEM.AsInteger;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := cdsDuplicataID_PESSOA.AsInteger;
  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;
  fDMGravarFinanceiro.vDtMovimento        := cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
  fDMGravarFinanceiro.vID_Conta_Orcamento := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;

  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TdmCupomFiscal.prc_Gravar_Financeiro_Cupom(vParc: Byte; vValor: Currency);
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
  vNome: String;
  vID_Conta_Orcamento: Integer;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  vNome := '';
  vID_Conta_Orcamento := 0;
  if cdsPessoa.Locate('CODIGO',cdsCupomFiscalID_CLIENTE.AsInteger,([Locaseinsensitive])) then
  begin
    vNome := cdsPessoaNOME.AsString;
    vID_Conta_Orcamento := cdsPessoaCLIENTE_CONTA_ID.AsInteger;
  end;
  fDMGravarFinanceiro.vTipo_ES := 'E';
  fDMGravarFinanceiro.vHistorico_Compl := 'Recto. CF nº ' + cdsCupomFiscalNUMCUPOM.AsString;
  if cdsCupom_ParcPARCELA.AsInteger > 0 then
    fDMGravarFinanceiro.vHistorico_Compl := fDMGravarFinanceiro.vHistorico_Compl +
                                            '/' + cdsCupom_ParcPARCELA.AsString;
  fDMGravarFinanceiro.vHistorico_Compl := fDMGravarFinanceiro.vHistorico_Compl +
                                          ' de ' + cdsPessoaNOME.AsString;

  if cdsCupomFiscalID_CONTA.AsInteger <= 0 then
    fDMGravarFinanceiro.vID_Conta := 1
  else
    fDMGravarFinanceiro.vID_Conta := cdsCupomFiscalID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := 0;
  fDMGravarFinanceiro.vItem_MovDuplicata  := 0;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := cdsCupomFiscalID_CLIENTE.AsInteger;

  cdsTipoCobranca.IndexFieldNames := 'ID';
  cdsTipoCobranca.FindKey([cdsCupomFiscalID_TIPOCOBRANCA.AsInteger]);
  if cdsTipoCobrancaFATURAMENTO_BRUTO.AsString = 'N' then
    fDMGravarFinanceiro.vID_Conta := cdsCupomParametrosID_CONTAPERDAS.AsInteger;

  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsCupom_ParcID_TIPOCOBRANCA.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;
  fDMGravarFinanceiro.vDtMovimento        := cdsCupomFiscalDTEMISSAO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsCupom_ParcVLR_VENCIMENTO.AsFloat));
  fDMGravarFinanceiro.vID_Conta_Orcamento := vID_Conta_Orcamento;
  fDMGravarFinanceiro.vID_Cupom           := cdsCupomFiscalID.AsInteger;
  fDMGravarFinanceiro.vID_Fechamento      := cdsCupomFiscalID_FECHAMENTO.AsInteger;
  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TdmCupomFiscal.Excluir_Duplicata;
var
  sds: TSQLDataSet;
begin
  if cdsCupomFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM DUPLICATA WHERE ID_CUPOM = ' + IntToStr(cdsCupomFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TdmCupomFiscal.Excluir_ExtComissao;
var
  sds: TSQLDataSet;
begin
  if cdsCupomFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM EXTCOMISSAO WHERE ID_CUPOM = ' + IntToStr(cdsCupomFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TdmCupomFiscal.prc_Excluir_Movimento;
var
  sds: TSQLDataSet;
begin
  if cdsCupomFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE ID_CUPOMFISCAL = ' + IntToStr(cdsCupomFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TdmCupomFiscal.ImpNaoFiscalC(vTipo: String; vCod, vProd, vQtd, vVlrUnit, vVlrTot, vVlrDesc: String);
var
  vTexto, vTexto2: String;
  i: Word;
//  vLogo: TImage;
begin
  case AnsiIndexStr(vTipo,['Cabecalho','VendeItem','CancelaItem','Pagamento','Fechamento','Cancelamento','Cliente']) of
    0: begin
//         SetDefaultPrinter(vPorta);

         Printer.BeginDoc;
         Printer.Canvas.Font.Name  := 'Lucida Console';

//         if cdsFilialENDLOGO.AsString <> '' then
//         begin
//           vLogo := TImage.Create(Self);
//           vLogo.Picture.LoadFromFile(cdsFilialENDLOGO.AsString);
//         Printer.Canvas.StretchDraw(Rect(0,100,852,354),vLogo.Picture.Graphic);
//         Printer.Canvas.Rectangle(1,1,2000,3000);
//         end;

         vLinha   := 0;
         vPosicao := 0;
         Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics
         vTexto := cdsFilialNOME_INTERNO.AsString + #13;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         Printer.Canvas.Font.Style := [];
         vLinha := vLinha + cAvanco;
         vTexto := cdsFilialENDERECO.AsString + ', ' + cdsFilialNUM_END.AsString + ' - ' + cdsFilialCOMPLEMENTO_END.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := 'FONE: ' + cdsFilialFONE.AsString;
         for i := 1 to 20 - Length(vTexto) do
           vTexto := vTexto + ' ';
         vTexto := vTexto + cdsFilialCIDADE.AsString + ' ' + cdsFilialUF.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := cdsFilialCNPJ_CPF.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '==========================================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         vTexto := FormatDateTime('dd/mm/yyyy',cdsCupomFiscalDTEMISSAO.AsDateTime) + ' ' +
                   FormatDateTime('hh:mm',cdsCupomFiscalHREMISSAO.AsDateTime);
         vTexto2 := 'NC: ' + vCod;
         for i := 1 to 40 - Length(vTexto2 + vTexto) do
           vTexto2 := ' ' + vTexto2;
         Printer.Canvas.TextOut(0,vLinha,vTexto + vTexto2);
         vLinha := vLinha + cAvanco;

         Printer.Canvas.Font.Size  := 9;
         Printer.Canvas.Font.Style := [fsBold];

         if cdsCupomFiscalTIPO.AsString = 'ORC' then
           vTexto := 'ORÇAMENTO'
         else
         if cdsCupomFiscalTIPO.AsString = 'PED' then
           vTexto := 'PEDIDO'
         else
           vTexto := 'CUPOM DE VENDA';

         for i := 1 to ((34 - Length(vTexto)) Div 2) do
           vTexto := ' ' + vTexto;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         Printer.Canvas.Font.Size  := 8;
         printer.Canvas.Font.Style := [];

         vTexto := 'CÓD  DESCRIÇÃO               QTD  VL.ITEM';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         vTexto := '------------------------------------------';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
       end;

    1: begin //'VendeItem
         vPosicao := 1;
         vCod := Copy(vCod,Length(vCod)-4,4);
         for i := 1 to 4 - Length(vCod) do
           vCod := vCod + ' ';

         vProd := Copy(vProd,1,21);
         for i := 1 to 22 - Length(vProd) do
           vProd := vProd + ' ';

         for i := 1 to 5 - Length(vQtd) do
           vQtd := ' ' + vQtd;

         for i := 1 to 7 - Length(vVlrTot) do
           vVlrTot := ' ' + vVlrTot;

         vTexto := vCod + ' ' + vProd + ' ' + vQtd + ' ' + vVlrTot;//'VendeItem
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
       end;

    2: ;//'CancelaItem

    3: begin//Pagamento
         vPosicao := 3;
         vTexto := '------------------------------------------';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

//         Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics
         vTexto := 'TOTAL: ' + vVlrTot;
         for i := 1 to 41 - Length(vTexto) do
           vTexto := ' ' + vTexto;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         Printer.Canvas.Font.Style := []; //Declarar Graphics

         if vVlrDesc <> 'R$ 0,00' then
         begin
           vTexto := 'DESCONTO: ' + vVlrDesc;
           for i := 1 to 41 - Length(vTexto) do
             vTexto := ' ' + vTexto;
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;

         if vQtd <> 'R$ 0,00' then
         begin
           vTexto := 'VLR. PAGO: ' + vQtd;
           for i := 1 to 41 - Length(vTexto) do
             vTexto := ' ' + vTexto;
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;

         vTexto := '';
         if vVlrUnit <> '' then
         begin
           vTexto := 'TROCO: ' + vVlrUnit;
           for i := 1 to 41 - Length(vTexto) do
             vTexto := ' ' + vTexto;
         end;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         if vProd <> '' then
         begin
           if not cdsTipoCobranca.Active then
             cdsTipoCobranca.Open;
           cdsTipoCobranca.IndexFieldNames := 'ID';
           cdsTipoCobranca.FindKey([StrToInt(vProd)]);

           if not cdsCondPgto.Active then
             cdsCondPgto.Open;
           cdsCondPgto.IndexFieldNames := 'ID';
           cdsCondPgto.FindKey([cdsCupomFiscalID_CONDPGTO.AsInteger]);
           vTexto := 'FORMA: ' + cdsTipoCobrancaNOME.AsString + ' ' + cdsCondPgtoNOME.AsString;
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
//------------------------------
           if not cdsCupom_Parc.IsEmpty then
           begin
             vTexto := '------------------------------------------';
             Printer.Canvas.TextOut(0,vLinha,vTexto);
             vLinha := vLinha + cAvanco;
             cdsCupom_Parc.First;
             while not cdsCupom_Parc.Eof do
             begin
               vTexto := 'Parc. ' + cdsCupom_ParcPARCELA.AsString + '  ' +
                         FormatDateTime('DD/MM/YYYY',cdsCupom_ParcDTVENCIMENTO.AsDateTime) + '  R$ ' +
                         FormatFloat('0.00',cdsCupom_ParcVLR_VENCIMENTO.AsCurrency);
               if cdsCupom_ParcPARCELA.AsInteger = 0 then
                 vTexto := vTexto + ' (ENTR.)';
               Printer.Canvas.TextOut(0,vLinha,vTexto);
               vLinha := vLinha + cAvanco;
               cdsCupom_Parc.Next;
             end;
             vTexto := '------------------------------------------';
             Printer.Canvas.TextOut(0,vLinha,vTexto);
             vLinha := vLinha + cAvanco;
           end;
//------------------------------
           vTexto := 'TERMINAL: ' + cdsCupomFiscalTERMINAL_ID.AsString;
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;
       end;

    4: begin //Fechamento
         vPosicao := 4;
         vTexto := '------------------------------------------';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         vTexto := vCod;
         while Trim(vTexto) <> '' do
         begin
           Printer.Canvas.TextOut(0,vLinha,Copy(vTexto,1,40));
           Delete(vTexto,1,40);
           vLinha := vLinha + cAvanco;
         end;
         for i := 1 to 3 do
         begin
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;

         Printer.EndDoc;
//          CloseFile(F);
       end;
    5: begin  //Cancelamento
         try
           Printer.EndDoc;
         except
         end;
         Printer.BeginDoc;
         vTexto := '==============CANCELAMENTO================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := 'NUMERO DO CUPOM CANCELADO: ' + vCod;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         Printer.EndDoc;
       end;
    6: begin  //Dados do cliente //vCod, vProd, vQtd
         vPosicao := 6;
         vTexto := '==========================================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         Printer.Canvas.TextOut(0,vLinha,'');
         vLinha := vLinha + cAvanco;

         vTexto := ' CLIENTE: ' + vCod;
         while Trim(vTexto) <> '' do
         begin
           Printer.Canvas.TextOut(0,vLinha,Copy(vTexto,1,40));
           vLinha := vLinha + cAvanco;
           Delete(vTexto,1,40);
         end;
         vTexto := '    FONE: ' + vQtd;
         while Trim(vTexto) <> '' do
         begin
           Printer.Canvas.TextOut(0,vLinha,Copy(vTexto,1,40));
           vLinha := vLinha + cAvanco;
           Delete(vTexto,1,40);
         end;
         vTexto := 'ENDERECO: ' + vProd;
         while Trim(vTexto) <> '' do
         begin
           Printer.Canvas.TextOut(0,vLinha,Copy(vTexto,1,40));
           vLinha := vLinha + cAvanco;
           Delete(vTexto,1,40);
         end;
         vTexto := '    OBS.: ' + vVlrUnit;
         while Trim(vTexto) <> '' do
         begin
           Printer.Canvas.TextOut(0,vLinha,Copy(vTexto,1,40));
           vLinha := vLinha + cAvanco;
           Delete(vTexto,1,40);
         end;

         Printer.Canvas.TextOut(0,vLinha,'');
         vLinha := vLinha + cAvanco;
       end;
    else
    begin
      Printer.EndDoc;
    end;
  end;
end;

procedure TdmCupomFiscal.prcNumNaoFiscal;
begin
  cdsCupomFiscalNUMCUPOM.AsInteger := dmDatabase.ProximaSequencia('CUPOMNAOFISCAL',0) + 1;
end;

procedure TdmCupomFiscal.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TdmCupomFiscal.ImpCarne(vTipo: String);
var
  vTexto: String;
  i: Word;
begin
  case AnsiIndexStr(vTipo,['Cabecalho','Venda','Parcela','Fechamento']) of
    0: begin
         Printer.BeginDoc;
         Printer.Canvas.Font.Name  := 'Lucida Console';

         vLinha   := 0;
         vPosicao := 0;
         Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics
         vTexto := cdsFilialNOME_INTERNO.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         vTexto := cdsFilialNOME.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         Printer.Canvas.Font.Style := [];
         vLinha := vLinha + cAvanco;

         vTexto := cdsFilialENDERECO.AsString + ', ' + cdsFilialNUM_END.AsString + ' - ' + cdsFilialCOMPLEMENTO_END.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := 'FONE: ' + cdsFilialFONE.AsString;
         for i := 1 to 20 - Length(vTexto) do
           vTexto := vTexto + ' ';
         vTexto := vTexto + cdsFilialCIDADE.AsString + ' ' + cdsFilialUF.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := cdsFilialCNPJ_CPF.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '==========================================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
       end;
    1: begin
         for i := 1 to 2 do
         begin
           vTexto := '';
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;
         vTexto := '  Número Cupom: ' + cdsCupomFiscalNUMCUPOM.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := ' Data da Venda: ' + cdsCupomFiscalDTEMISSAO.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '       Cliente: ' + cdsCupomFiscalCLIENTE_NOME.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := 'Total da Venda: ' + FormatFloat('R$ 0.00',cdsCupomFiscalVLR_TOTAL.AsCurrency);
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := 'Condição: ' + cdsCupomFiscalFORMAPGTO.AsString + ' - ' + cdsCupomFiscalCONDPGTO.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         for i := 1 to 2 do
         begin
           vTexto := '';
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;
         vTexto := '==========================================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
       end;
    2: begin
         for i := 1 to 2 do
         begin
           vTexto := '';
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;
         vTexto := ' Núm. financeiro: ' + cdsCupom_ParcPARCELA.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '         Parcela: ' + cdsCupom_ParcPARCELA.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '    Data Vencto.: ' + cdsCupom_ParcDTVENCIMENTO.AsString;
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
         vTexto := '           Valor: ' + FormatFloat('R$ 0.00',cdsCupom_ParcVLR_VENCIMENTO.AsCurrency);
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;

         for i := 1 to 2 do
         begin
           vTexto := '';
           Printer.Canvas.TextOut(0,vLinha,vTexto);
           vLinha := vLinha + cAvanco;
         end;
         vTexto := '==========================================';
         Printer.Canvas.TextOut(0,vLinha,vTexto);
         vLinha := vLinha + cAvanco;
       end;
    3: begin
         Printer.EndDoc;
       end;
  end;
end;

procedure TdmCupomFiscal.prc_Calcular_Tributos_Transparencia;
var
  vAux: Real;
begin
  cdsCupom_ItensVLR_TRIBUTO.AsFloat           := 0;
  cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat   := 0;
  cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat  := 0;
  cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;

  if (StrToFloat(FormatFloat('0.00',cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) > 0) then
  begin
    if cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat) / 100));
    cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  end;
  if (StrToFloat(FormatFloat('0.00',cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) > 0) then
  begin
    if cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat) / 100));
    cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  end;
  if (StrToFloat(FormatFloat('0.00',cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) > 0) then
  begin
    if cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(cdsCupom_ItensVLR_TOTAL.AsFloat * cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat) / 100));
    cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  end;
  cdsCupom_ItensVLR_TRIBUTO.AsFloat := cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat +
                                       cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat +
                                       cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat;
end;

procedure TdmCupomFiscal.mCupomBeforeDelete(DataSet: TDataSet);
begin
  mCupomItens.First;
  while not mCupomItens.Eof do
  begin
    if mCupomItensCARTAO.AsInteger = mCupomCARTAO.AsInteger then
      mCupomItens.Delete
    else
      mCupomItens.Next;
  end;
end;

function TdmCupomFiscal.fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
var
  vTipo_Empresa: String;
  vTipo_Cliente: String;
  vUF_ClienteAux: String;
begin
  vTipo_Cliente := 'S';
  if cdsFilialID.AsInteger <> cdsCupomFiscalFILIAL.AsInteger then
    cdsFilial.Locate('ID',cdsCupomFiscalFILIAL.AsInteger,[loCaseInsensitive]);

  //Tirei na NFCe 23/04/2015, deixar fico o tipo Simples para o cliente por enquanto  
  {if fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.qRegime_Trib.Close;
    fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadNotaFiscal.qRegime_Trib.Open;
    if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger < 3 then
      vTipo_Cliente := 'S';
  end;}
  {if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    vUF_ClienteAux := 'D'
  else
  if fDMCadNotaFiscal.cdsClienteUF.AsString = 'EX' then
    vUF_ClienteAux := 'E'
  else
    vUF_ClienteAux := 'F';}
  vUF_ClienteAux := 'D';
  if cdsFilialSIMPLES.AsString = 'S' then
    vTipo_Empresa := 'S'
  else
    vTipo_Empresa := 'G';
  qRegra_CFOP.Close;
  qRegra_CFOP.ParamByName('ID').AsInteger            := ID_CFOP;
  qRegra_CFOP.ParamByName('TIPO_EMPRESA').AsString   := vTipo_Empresa;
  qRegra_CFOP.ParamByName('TIPO_CLIENTE').AsString   := vTipo_Cliente;
  qRegra_CFOP.ParamByName('UF_CLIENTE').AsString     := vUF_ClienteAux;
  qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString := 'F';
  qRegra_CFOP.Open;
  if not qRegra_CFOP.IsEmpty then
    Result := qRegra_CFOPITEM.AsInteger
  else
    Result := 0;
end;

procedure TdmCupomFiscal.prc_Mover_CST;
begin
  if (vID_CFOP > 0) and (vID_CFOP <> cdsCFOPID.AsInteger) then
    cdsCFOP.Locate('ID',vID_CFOP,[loCaseInsensitive]);

  qVariacao.Close;
  qVariacao.ParamByName('ID').AsInteger   := vID_CFOP;
  qVariacao.ParamByName('ITEM').AsInteger := vID_Variacao;
  qVariacao.Open;
  if qVariacao.IsEmpty then
    exit;

  if qVariacaoID_COFINS.AsInteger > 0 then
    vID_Cofins := qVariacaoID_COFINS.AsInteger;
  if qVariacaoID_PIS.AsInteger > 0 then
    vID_Pis := qVariacaoID_PIS.AsInteger;
  if qVariacaoID_CSTICMS.AsInteger > 0 then
    vID_CSTICMS := qVariacaoID_CSTICMS.AsInteger;
  //08/07/2016
  //if qVariacaoID_CSTIPI.AsInteger > 0 then
  //  vID_CSTIPI := qVariacaoID_CSTIPI.AsInteger;
  if cdsFilialSIMPLES.AsString = 'S' then
  begin
    vPerc_ICMS     := 0;
    vPerc_TribICMS := 0;
  end
  else
  begin
    qUF.Close;
    qUF.ParamByName('UF').AsString := cdsFilialUF.AsString;
    qUF.Open;
    vPerc_ICMS := qUFPERC_ICMS.AsFloat;
    if cdsTab_CSTICMS.Locate('ID',vID_CSTICMS,[loCaseInsensitive]) then
      vPerc_TribICMS := StrToFloat(FormatFloat('0.0000',cdsTab_CSTICMSPERCENTUAL.AsFloat));
  end;
  if (cdsCFOPGERAR_IPI.AsString <> 'S') then
    vPerc_IPI := 0
  else
    vPerc_IPI := StrToFloat(FormatFloat('0.0000',cdsProdutoPERC_IPI.AsFloat));

  vPerc_Cofins := StrToFloat(FormatFloat('0.0000',qVariacaoPERC_COFINS.AsFloat));
  vPerc_Pis    := StrToFloat(FormatFloat('0.0000',qVariacaoPERC_PIS.AsFloat));
  vTipo_Cofins := qVariacaoTIPO_COFINS.AsString;
  vTipo_Pis    := qVariacaoTIPO_PIS.AsString;
  if cdsTab_NCMID.AsInteger <> vID_NCM then
    cdsTab_NCM.Locate('ID',vID_NCM,[loCaseInsensitive]);
  if cdsTab_NCMID_CFOP.AsInteger > 0 then
    vID_CFOP := cdsTab_NCMID_CFOP.AsInteger;

  if cdsTab_NCMID_PIS.AsInteger > 0 then
  begin
    vID_Pis      := cdsTab_NCMID_PIS.AsInteger;
    vID_Cofins   := cdsTab_NCMID_COFINS.AsInteger;
    vPerc_Pis    := cdsTab_NCMPERC_PIS.AsFloat;
    vPerc_Cofins := cdsTab_NCMPERC_COFINS.AsFloat;
  end
  else
  if ((cdsFilialSIMPLES.AsString = 'N') or (cdsFilialSIMPLES.AsString = '2')) and (cdsCFOPID_PIS.AsInteger > 0) then
  begin
    vID_Pis      := cdsCFOPID_PIS.AsInteger;
    vID_Cofins   := cdsCFOPID_COFINS.AsInteger;
    vPerc_Pis    := cdsCFOPPERC_PIS.AsFloat;
    vPerc_Cofins := cdsCFOPPERC_COFINS.AsFloat;
  end
  else
  if (cdsFilialSIMPLES.AsString = 'S') and (cdsCFOPID_PIS_SIMP.AsInteger > 0) then
  begin
    vID_Pis      := cdsCFOPID_PIS_SIMP.AsInteger;
    vID_Cofins   := cdsCFOPID_COFINS_SIMP.AsInteger;
    vPerc_Pis    := 0;
    vPerc_Cofins := 0;
  end;

  if cdsFilialSIMPLES.AsString <> 'S' then
  begin
    if StrToFloat(FormatFloat('0.00',cdsTab_NCMPERC_ICMS.AsFloat)) > 0 then
      vPerc_ICMS := StrToFloat(FormatFloat('0.00',cdsTab_NCMPERC_ICMS.AsFloat));

    //07/12/2018  
    if cdsProdutoID_CSTICMS.AsInteger > 0 then
    begin
      vID_CSTICMS := cdsTab_NCMID_CST_ICMS.AsInteger;
      cdsTab_CSTICMS.Locate('ID',vID_CSTICMS,[loCaseInsensitive]);
    end;
    if (cdsTab_NCMID_CST_ICMS.AsInteger > 0) and (cdsProdutoID_CSTICMS.AsInteger <= 0) then
    begin
      vID_CSTICMS    := cdsTab_NCMID_CST_ICMS.AsInteger;
      vPerc_TribICMS := cdsTab_NCMPERC_BASE_ICMS.AsFloat;
    end;
    if StrToFloat(FormatFloat('0.0000',vPerc_TribICMS)) <= 0 then
      vPerc_ICMS := 0;
  end;
end;

procedure TdmCupomFiscal.prc_Abrir_CSTICMS(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
  sdsTab_CSTICMS.CommandText := 'SELECT * FROM TAB_CSTICMS ';
  if (trim(Tipo) <> '') and (Tipo <> '2') then
    sdsTab_CSTICMS.CommandText := sdsTab_CSTICMS.CommandText + ' WHERE TIPO = ' + QuotedStr(Tipo);
  cdsTab_CSTICMS.Open;
end;

procedure TdmCupomFiscal.Gravar_Envio_Nota(Recibo, NroProtocolo,
  ChaveAcesso: String; Finalidade, Ambiente, CodigoErro: Integer;
  DadosAdicionais: WideString);
begin
  cdsCupomFiscal.Edit;
  cdsCupomFiscalNFERECIBO.AsString      := Recibo;
  cdsCupomFiscalNFEPROTOCOLO.AsString   := NroProtocolo;
  cdsCupomFiscalNFECHAVEACESSO.AsString := ChaveAcesso;
  cdsCupomFiscalNFEFINALIDADE.AsString  := IntToStr(Finalidade);
  cdsCupomFiscalNFEAMBIENTE.AsString    := IntToStr(Ambiente);
  if (CodigoErro = 301) or (CodigoErro = 302) then
    cdsCupomFiscalNFEDENEGADA.AsString := 'S'
  else
    cdsCupomFiscalNFEDENEGADA.AsString := 'N';
  if CodigoErro = 301 then
    cdsCupomFiscalMOTIVO_DENEGADO.AsString := 'Irregularidade do Emitente'
  else
  if CodigoErro = 302 then
    cdsCupomFiscalMOTIVO_DENEGADO.AsString := 'Irregularidade do Destinatário';
  cdsCupomFiscalDADOS_ADICIONAIS.Value := DadosAdicionais;
  cdsCupomFiscalHREMISSAO.AsDateTime   := vHrEmissaoNFe;
  cdsCupomFiscal.Post;
  cdsCupomFiscal.ApplyUpdates(0);
end;

procedure TdmCupomFiscal.prcExcluir;
var
  sds: TSQLDataSet;
begin
  cdsCupom_Itens.First;
  while not cdsCupom_Itens.Eof do
  begin
    if (cdsCupomParametrosUSA_COPIA_PEDIDO_CF.AsString = 'S') and (cdsCupom_ItensID_PEDIDO.AsInteger > 0) then
    begin
      if not mPedidoAux.Locate('ID_Pedido',cdsCupom_ItensID_PEDIDO.AsInteger,[loCaseInsensitive]) then
      begin
        mPedidoAux.Insert;
        mPedidoAuxID_Pedido.AsInteger := cdsCupom_ItensID_PEDIDO.AsInteger;
        mPedidoAux.Post;
      end;
    end;
    cdsCupom_Itens.Delete;
  end;
  cdsCupom_Parc.First;
  while not cdsCupom_Parc.Eof do
    cdsCupom_Parc.Delete;

  if not cdsCupomFiscal_Cli.IsEmpty then
    cdsCupomFiscal_Cli.Delete;

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'DELETE FROM CUPOMFISCAL_PRODPRINCIPAL WHERE ID = ' + IntToStr(cdsCupomFiscalID.AsInteger);
    sds.ExecSQL;

    sds.CommandText   := 'DELETE FROM CUPOMFISCAL_MP WHERE ID = ' + IntToStr(cdsCupomFiscalID.AsInteger);
    sds.ExecSQL;

    FreeAndNil(sds);
  finally
    FreeAndNil(sds);
  end;

  cdsCupomFiscal.Delete;
  cdsCupomFiscal.ApplyUpdates(0);

  if cdsCupomParametrosUSA_COPIA_PEDIDO_CF.AsString = 'S' then
  begin
    mPedidoAux.First;
    while not mPedidoAux.Eof do
    begin
      sdsPrc_Atualiza_Status_Ped.Close;
      sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := mPedidoAuxID_Pedido.AsInteger;
      sdsPrc_Atualiza_Status_Ped.ExecSQL;
      mPedidoAux.Delete;
    end;
  end;
end;

procedure TdmCupomFiscal.prc_Abrir_CondPgto;
begin
  cdsCondPgto.Close;
  sdsCondPgto.CommandText := ctCondPgto;
  sdsCondPgto.CommandText := sdsCondPgto.CommandText + ' WHERE MOSTRAR_NFCE = ' + QuotedStr('S');
  cdsCondPgto.Open;
end;

procedure TdmCupomFiscal.prc_Abrir_Cupom_ProdPrincipal(ID, Item: Integer);
begin
  cdsCupomFiscal_ProdPrincipal.Close;
  sdsCupomFiscal_ProdPrincipal.CommandText := ctCupomFiscal_ProdPrincipal;
  if Item > 0 then
  begin
    sdsCupomFiscal_ProdPrincipal.CommandText := sdsCupomFiscal_ProdPrincipal.CommandText + ' AND ITEM_ORIGINAL = :ITEM_ORIGINAL';
    sdsCupomFiscal_ProdPrincipal.ParamByName('ITEM_ORIGINAL').AsInteger := Item;
  end;
  sdsCupomFiscal_ProdPrincipal.ParamByName('ID').AsInteger := ID;
  cdsCupomFiscal_ProdPrincipal.Open;
end;

procedure TdmCupomFiscal.cdsPedidoCalcFields(DataSet: TDataSet);
begin
  if cdsPedidoTIPO_REG.AsString = 'P' then
  begin
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat - cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',0));
  end
  else
    cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
end;

procedure TdmCupomFiscal.prc_Abrir_Produto(vTipoCod, vCodigo: String);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  case AnsiIndexStr(vTipoCod,['ID','REF','CB']) of
    0: sdsProduto.CommandText := sdsProduto.CommandText + ' AND ID = ' + IntToStr(StrToInt(vCodigo));
    1: sdsProduto.CommandText := sdsProduto.CommandText + ' AND REFERENCIA = ' + QuotedStr(vCodigo);
    2: sdsProduto.CommandText := sdsProduto.CommandText + ' AND COD_BARRA = ' + QuotedStr(vCodigo);
  end;
  case AnsiIndexStr(cdsCupomParametrosVENDA_TIPO_PRODUTO.AsString,['P','M','A']) of
    0: sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ''P''';
    1: sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ''M''';
    2: ;
  end;
  sdsProduto.CommandText := sdsProduto.CommandText + ' ORDER BY NOME';
  cdsProduto.Open;
end;                      

procedure TdmCupomFiscal.ImpNaoFiscalW(vTipo, vCod, vProd, vQtd, vVlrUnit, vVlrTot, vVlrDesc: String);
var
  vTexto, vTexto2: String;
  i: Word;
begin
  case AnsiIndexStr(vTipo,['Cabecalho','VendeItem','CancelaItem','Pagamento','Fechamento','Cancelamento']) of
    0: begin
       AssignFile(f,vPorta);
         ReWrite(f);
         vTexto := cdsFilialNOME_INTERNO.AsString;
         WriteLn(f,INegAti + vTexto + iNegDes);
         vTexto := cdsFilialENDERECO.AsString + ', ' + cdsFilialNUM_END.AsString + ' - ' + cdsFilialCOMPLEMENTO_END.AsString;
         WriteLn(f,vTexto);
         vTexto := 'FONE: ' + cdsFilialFONE.AsString;
         for i := 1 to 20 - Length(vTexto) do
           vTexto := vTexto + ' ';
         vTexto := vTexto + cdsFilialCIDADE.AsString + ' ' + cdsFilialUF.AsString;
         WriteLn(f,vTexto);
         vTexto := cdsFilialCNPJ_CPF.AsString;
         WriteLn(f,vTexto);
         vTexto := '==========================================';
         WriteLn(f,vTexto);

         vTexto := FormatDateTime('dd/mm/yyyy',cdsCupomFiscalDTEMISSAO.AsDateTime) + ' ' +
                   FormatDateTime('hh:mm',cdsCupomFiscalHREMISSAO.AsDateTime);
         vTexto2 := INegAti + 'NC: ' + vCod + INegDes;
         for i := 1 to 40 - Length(vTexto2 + vTexto) do
           vTexto2 := ' ' + vTexto2;
         WriteLn(f,vTexto + vTexto2);

         vTexto := INegAti;
         if cdsCupomFiscalTIPO.AsString = 'ORC' then
           vTexto := vTexto + 'ORÇAMENTO'
         else
         if cdsCupomFiscalTIPO.AsString = 'PED' then
           vTexto := vTexto + 'PEDIDO'
         else
           vTexto := vTexto + 'CUPOM DE VENDA';
         vTexto := vTexto + iNegDes;

         for i := 1 to ((40 - Length(vTexto)) Div 2) do
           vTexto := ' ' + vTexto;
         WriteLn(f,vTexto);

         vTexto := 'COD  DESCRICAO                QTD  VL.ITEM';
         WriteLn(f,vTexto);

         vTexto := '------------------------------------------';
         WriteLn(f,vTexto);
       end;

    1: begin //'VendeItem
         vPosicao := 1;
         vCod := Copy(vCod,1,4);
         for i := 1 to 4 - Length(Copy(vCod,Length(vCod)-4,4)) do
           vCod := vCod + ' ';

         //Passado para 21   25/01/2016
         //vProd := Copy(vProd,1,23);
//         vProd := Copy(vProd,1,22);
         vProd := Copy(vProd,1,22);
         for i := 1 to 23 - Length(vProd) do
           vProd := vProd + ' ';

         for i := 1 to 5 - Length(vQtd) do
           vQtd := ' ' + vQtd;

         for i := 1 to 7 - Length(vVlrTot) do
           vVlrTot := ' ' + vVlrTot;

         vTexto := vCod + ' ' + vProd + ' ' + vQtd + ' ' + vVlrTot;//'VendeItem
         WriteLn(f,vTexto);
       end;

    2: ;//'CancelaItem

    3: begin//Pagamento
         vPosicao := 3;
         vTexto := '==========================================';
         WriteLn(f,vTexto);
         vTexto := 'TOTAL: ' + vVlrTot;
         for i := 1 to 42 - Length(vTexto) do
           vTexto := ' ' + vTexto;
         WriteLn(f,vTexto);

         if vVlrDesc <> 'R$ 0,00' then
         begin
           vTexto := 'DESCONTO: ' + vVlrDesc;
           for i := 1 to 42 - Length(vTexto) do
             vTexto := ' ' + vTexto;
           WriteLn(f,vTexto);
         end;

         if vQtd <> 'R$ 0,00' then
         begin
           vTexto := 'VLR. PAGO: ' + vQtd;
           for i := 1 to 42 - Length(vTexto) do
             vTexto := ' ' + vTexto;
           WriteLn(f,vTexto);
         end;

         vTexto := '';
         if vVlrUnit <> '' then
         begin
           vTexto := 'TROCO: ' + vVlrUnit;
           for i := 1 to 42 - Length(vTexto) do
             vTexto := ' ' + vTexto;
         end;
         WriteLn(f,vTexto);
       end;

    4: begin //Fechamento
         vPosicao := 4;
         vTexto := '------------------------------------------';
         WriteLn(f,vTexto);

         vTexto := vCod;
         while Trim(vTexto) <> '' do
         begin
           WriteLn(f,Copy('CLIENTE: ' + vTexto,1,40));
           Delete(vTexto,1,40);
         end;
         for i := 1 to 5 do
           WriteLn(f);
         CloseFile(f);
       end;
    5: begin  //Cancelamento
         try
           CloseFile(f);
         except
         end;
           AssignFile(f,'c:\$Servisoft\Cupom.txt');
       //  AssignPrn(f);
           ReWrite(f);

         //Passado para 41   16/09/2015
         //vTexto := '=============CANCELAMENTO=================';
         vTexto := '==============CANCELAMENTO================';
         WriteLn(f,vTexto);
         vTexto := 'NUMERO DO CUPOM CANCELADO: ' + vCod;
         WriteLn(f,vTexto);
         WriteLn(f);
         WriteLn(f);

         CloseFile(f);
       end;
    else
    begin
      CloseFile(f);
    end;
  end;
end;

procedure TdmCupomFiscal.ChamaNaoFiscal(vId: Integer; vModelo: String);
var
  vCodRef: String;
begin
  prcLocalizar(vId);
  if vModelo = 'modCanvas' then
  begin
    case cdsCupomParametrosIMPRIME_NUM_NFISCAL.AsInteger of
      1: ImpNaoFiscalC('Cabecalho',cdsCupomFiscalNUMCUPOM.AsString,'','','','','');
      2: ImpNaoFiscalC('Cabecalho',cdsCupomFiscalNUM_CARTAO.AsString,'','','','','');
    end;
  end;

  if vModelo = 'modWrite' then
  begin
    case cdsCupomParametrosIMPRIME_NUM_NFISCAL.AsInteger of
      1: ImpNaoFiscalW('Cabecalho',cdsCupomFiscalNUMCUPOM.AsString,'','','','','');
      2: ImpNaoFiscalW('Cabecalho',cdsCupomFiscalNUM_CARTAO.AsString,'','','','','');
    end;
  end;

  cdsCupom_Itens.First;
  while not cdsCupom_Itens.Eof do
  begin
    if cdsCupom_ItensCANCELADO.AsString = 'S' then
    begin
      cdsCupom_Itens.Next;
      Continue;
    end;
    if cdsCupomParametrosUSA_COD_REF.AsString = 'C' then
      vCodRef := cdsCupom_ItensID_PRODUTO.AsString
    else
      vCodRef := cdsCupom_ItensREFERENCIA.AsString;
    if vModelo = 'modCanvas' then
      ImpNaoFiscalC('VendeItem',vCodRef,
                   cdsCupom_ItensNOME_PRODUTO.AsString,
                   cdsCupom_ItensQTD.AsString,
                   FormatFloat('0.00',cdsCupom_ItensVLR_UNITARIO.AsCurrency),
                   FormatFloat('0.00',cdsCupom_ItensVLR_TOTAL.AsCurrency),'')
    else
      ImpNaoFiscalW('VendeItem',vCodRef,
                     cdsCupom_ItensNOME_PRODUTO.AsString,
                     cdsCupom_ItensQTD.AsString,
                     FormatFloat('0.00',cdsCupom_ItensVLR_UNITARIO.AsCurrency),
                     FormatFloat('0.00',cdsCupom_ItensVLR_TOTAL.AsCurrency),'');
    cdsCupom_Itens.Next;
  end;
  if vModelo = 'modCanvas' then
    ImpNaoFiscalC('Pagamento','',cdsCupomFiscalID_TIPOCOBRANCA.AsString,
                 FormatFloat('R$ 0.00',cdsCupomFiscalVLR_RECEBIDO.AsCurrency),
                 FormatFloat('R$ 0.00',cdsCupomFiscalVLR_TROCO.AsCurrency),
                 FormatFloat('R$ 0.00',cdsCupomFiscalVLR_TOTAL.AsCurrency),
                 FormatFloat('R$ 0.00',cdsCupomFiscalVLR_DESCONTO.AsCurrency))
  else
    ImpNaoFiscalW('Pagamento','',cdsCupomFiscalID_TIPOCOBRANCA.AsString,
                  FormatFloat('R$ 0.00',cdsCupomFiscalVLR_RECEBIDO.AsCurrency),
                  FormatFloat('R$ 0.00',cdsCupomFiscalVLR_TROCO.AsCurrency),
                  FormatFloat('R$ 0.00',cdsCupomFiscalVLR_TOTAL.AsCurrency),
                  FormatFloat('R$ 0.00',cdsCupomFiscalVLR_DESCONTO.AsCurrency));

  if vModelo = 'modCanvas' then
  begin
    if (cdsCupomFiscalCLIENTE_NOME.AsString <> '') and (cdsCupomFiscalCLIENTE_NOME.AsString <> 'CONSUMIDOR') then
      ImpNaoFiscalC('Cliente','(' + cdsCupomFiscalID_CLIENTE.AsString + ') ' + cdsCupomFiscalCLIENTE_NOME.AsString,
                                    cdsCupomFiscalCLIENTE_ENDERECO.AsString,cdsCupomFiscalCLIENTE_FONE.AsString,
                                    cdsCupomFiscalCLIENTE_OBS.AsString,'','');
    ImpNaoFiscalC('Fechamento','Obrigado, volte sempre!','','','','','');
  end
  else
    ImpNaoFiscalW('Fechamento','Obrigado, volte sempre!','','','','','');
end;

function TdmCupomFiscal.fnc_IncrementaCartao(vTerminal: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'SELECT NUM_COMANDA FROM FECHAMENTO ' +
                       'WHERE ID = (SELECT MAX(ID) ' +
                       'FROM FECHAMENTO WHERE TERMINAL_ID = ' +
                       IntToStr(vTerminal) + ')';
  sds.Open;
  iSeq := sds.fieldByName('NUM_COMANDA').AsInteger + 1;
  Result := iSeq;
  sds.Close;

  sds.CommandText := 'UPDATE FECHAMENTO SET NUM_COMANDA = ' + intToStr(iSeq) +
                     'WHERE ID = (SELECT MAX(ID) ' +
                     'FROM FECHAMENTO WHERE TERMINAL_ID = ' +
                     IntToStr(vTerminal) + ')';

  sds.ExecSQL();
end;

procedure TdmCupomFiscal.cdsCupomFiscalBeforePost(DataSet: TDataSet);
begin
  if cdsCupomFiscalID_FECHAMENTO.AsInteger = 0 then
    cdsCupomFiscalID_FECHAMENTO.Clear;
end;

procedure TdmCupomFiscal.prc_Excluir_CupomFiscal_MP;
var
  sds: TSQLDataSet;
begin
  if cdsCupomFiscalID.AsInteger <= 0 then
    Exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM CUPOMFISCAL_MP WHERE ID = ' + IntToStr(cdsCupomFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TdmCupomFiscal.SetDefaultPrinter(PrinterName: String);
//636 - Mudar Impressora padrão pelo nome
//Declarar Windows e Messages
var
  I: Integer;
  Device: PChar;
  Driver: Pchar;
  Port: Pchar;
  HdeviceMode: Thandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  getmem(Device, 255);
  getmem(Driver, 255);
  getmem(Port, 255);
  aPrinter := TPrinter.create;
  for I := 0 to Printer.printers.Count-1 do
  begin
    if Printer.printers[i] = PrinterName then
    begin
      aPrinter.PrinterIndex := i;
      aPrinter.GetPrinter(Device,Driver,Port,HDeviceMode);
      StrCat(Device,',');
      StrCat(Device,Driver);
      StrCat(Device,Port);
      WriteProfileString('Windows','Device',Device);
      StrCopy(Device,'Windows');
      SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
    end;
  end;
  Freemem(Device, 255);
  Freemem(Driver, 255);
  Freemem(Port, 255);
  aPrinter.Free;
end;

procedure TdmCupomFiscal.prcGravaTransacao;
begin

end;

procedure TdmCupomFiscal.prc_Busca_IBPT;
var
  vComandoAux: String;
begin
  if cdsCupom_ItensID_PRODUTO.AsInteger <> cdsProdutoID.AsInteger then
    cdsProduto.Locate('ID',cdsCupom_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsCupom_ItensFONTE_TRIBUTO.Clear;
  cdsCupom_ItensVERSAO_TRIBUTO.Clear;

  vComandoAux := '';
  qIBPT.Close;
  qIBPT.SQL.Text := ctqIBPT;
  if (cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') then
    vComandoAux := 'WHERE I.CODIGO = ' + QuotedStr('COMERCIO')
  else
    vComandoAux := 'WHERE  N.ID = ' + IntToStr(cdsCupom_ItensID_NCM.AsInteger)
                 + ' AND I.EX = ' + QuotedStr(cdsProdutoNCM_EX.AsString);
  if trim(vComandoAux) = '' then
    exit;
  qIBPT.SQL.Text := qIBPT.SQL.Text + ' ' + vComandoAux;
  qIBPT.Open;
  if not qIBPT.IsEmpty then
  begin
    if (cdsCupom_ItensORIGEM_PROD.AsString = '0') or (cdsCupom_ItensORIGEM_PROD.AsString = '3')
      or (cdsCupom_ItensORIGEM_PROD.AsString = '4') or (cdsCupom_ItensORIGEM_PROD.AsString = '5') then
      cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat := StrToFloat(FormatFloat('0.00',qIBPTPERC_NACIONAL.AsFloat))
    else
      cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat := StrToFloat(FormatFloat('0.00',qIBPTPERC_IMPORTACAO.AsFloat));
    cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',qIBPTPERC_ESTADUAL.AsFloat));
    cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',qIBPTPERC_MUNICIPAL.AsFloat));
    cdsCupom_ItensFONTE_TRIBUTO.AsString         := qIBPTFONTE.AsString;
    cdsCupom_ItensVERSAO_TRIBUTO.AsString        := qIBPTVERSAO.AsString;
  end;

  if cdsCupom_ItensID_PRODUTO.AsInteger <> cdsProdutoID.AsInteger then
    cdsProduto.Locate('ID',cdsCupom_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  cdsCupom_ItensPERC_TRIBUTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
end;

procedure TdmCupomFiscal.cdsCupomFiscalNewRecord(DataSet: TDataSet);
begin
  cdsCupomFiscalESTOQUE_OK.AsString    := 'N';
  cdsCupomFiscalFINANCEIRO_OK.AsString := 'N';
  cdsCupomFiscalDTORIGINAL.AsDateTime  := Date;
end;

procedure TdmCupomFiscal.cdsParametrosBeforePost(DataSet: TDataSet);
begin
  cdsParametrosGeral.Close;
  sdsParametrosGeral.ParamByName('ID').AsInteger := 1;
  cdsParametrosGeral.Open;

  if cdsParametrosGeral.IsEmpty then
  begin
    cdsParametrosGeral.Insert;
    cdsParametrosGeralID.AsInteger := 1;
    cdsParametrosGeral.Post;
    cdsParametrosGeral.ApplyUpdates(0);
  end;
end;

end.
