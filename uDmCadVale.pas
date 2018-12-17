unit UDMCadVale;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes, frxClass, frxDBSet, frxRich, frxExportMail,
  frxExportPDF;

type
  TDmCadVale = class(TDataModule)
    sdsVale: TSQLDataSet;
    dspVale: TDataSetProvider;
    cdsVale: TClientDataSet;
    dsVale: TDataSource;
    dsVale_Mestre: TDataSource;
    sdsValeItens: TSQLDataSet;
    cdsValeItens: TClientDataSet;
    dsValeItens: TDataSource;
    sdsValeID: TIntegerField;
    sdsValeNUM_VALE: TIntegerField;
    sdsValeDTEMISSAO: TDateField;
    sdsValeID_CLIENTE: TIntegerField;
    sdsValeVLR_TOTAL: TFloatField;
    sdsValeFILIAL: TIntegerField;
    sdsValeFATURADO: TStringField;
    cdsValeID: TIntegerField;
    cdsValeNUM_VALE: TIntegerField;
    cdsValeDTEMISSAO: TDateField;
    cdsValeID_CLIENTE: TIntegerField;
    cdsValeVLR_TOTAL: TFloatField;
    cdsValeFILIAL: TIntegerField;
    cdsValeFATURADO: TStringField;
    cdsValesdsValeItens: TDataSetField;
    sdsValeItensID: TIntegerField;
    sdsValeItensITEM: TIntegerField;
    sdsValeItensID_PRODUTO: TIntegerField;
    sdsValeItensTAMANHO: TStringField;
    sdsValeItensQTD: TFMTBCDField;
    sdsValeItensUNIDADE: TStringField;
    sdsValeItensVLR_UNITARIO: TFloatField;
    sdsValeItensID_PEDIDO: TIntegerField;
    sdsValeItensITEM_PEDIDO: TIntegerField;
    sdsValeItensPERC_IPI: TFloatField;
    sdsValeItensCALCULAR_ST: TStringField;
    sdsValeItensID_MOVESTOQUE: TIntegerField;
    sdsValeItensVLR_IPI: TFloatField;
    sdsValeItensVLR_ICMSSUBST: TFloatField;
    cdsValeItensID: TIntegerField;
    cdsValeItensITEM: TIntegerField;
    cdsValeItensID_PRODUTO: TIntegerField;
    cdsValeItensTAMANHO: TStringField;
    cdsValeItensQTD: TFMTBCDField;
    cdsValeItensUNIDADE: TStringField;
    cdsValeItensVLR_UNITARIO: TFloatField;
    cdsValeItensID_PEDIDO: TIntegerField;
    cdsValeItensITEM_PEDIDO: TIntegerField;
    cdsValeItensPERC_IPI: TFloatField;
    cdsValeItensCALCULAR_ST: TStringField;
    cdsValeItensID_MOVESTOQUE: TIntegerField;
    cdsValeItensVLR_IPI: TFloatField;
    cdsValeItensVLR_ICMSSUBST: TFloatField;
    sdsValePed: TSQLDataSet;
    cdsValePed: TClientDataSet;
    dsValePed: TDataSource;
    sdsValePedID: TIntegerField;
    sdsValePedITEM: TIntegerField;
    sdsValePedITEM_VALEPED: TIntegerField;
    sdsValePedID_PEDIDO: TIntegerField;
    sdsValePedITEM_PEDIDO: TIntegerField;
    sdsValePedQTD: TFloatField;
    sdsValePedNUM_PEDIDO: TIntegerField;
    cdsValePedID: TIntegerField;
    cdsValePedITEM: TIntegerField;
    cdsValePedITEM_VALEPED: TIntegerField;
    cdsValePedID_PEDIDO: TIntegerField;
    cdsValePedITEM_PEDIDO: TIntegerField;
    cdsValePedQTD: TFloatField;
    cdsValePedNUM_PEDIDO: TIntegerField;
    sdsValeCons: TSQLDataSet;
    dspValeCons: TDataSetProvider;
    cdsValeCons: TClientDataSet;
    dsValeCons: TDataSource;
    cdsValeConsNOME_PESSOA: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    dsPessoa: TDataSource;
    sdsFilial: TSQLDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    sdsFilialENDERECO: TStringField;
    sdsFilialCOMPLEMENTO_END: TStringField;
    sdsFilialNUM_END: TStringField;
    sdsFilialBAIRRO: TStringField;
    sdsFilialCEP: TStringField;
    sdsFilialID_CIDADE: TIntegerField;
    sdsFilialCIDADE: TStringField;
    sdsFilialUF: TStringField;
    sdsFilialDDD1: TIntegerField;
    sdsFilialFONE1: TStringField;
    sdsFilialDDD2: TIntegerField;
    sdsFilialFONE: TStringField;
    sdsFilialDDDFAX: TIntegerField;
    sdsFilialFAX: TStringField;
    sdsFilialPESSOA: TStringField;
    sdsFilialCNPJ_CPF: TStringField;
    sdsFilialINSCR_EST: TStringField;
    sdsFilialSIMPLES: TStringField;
    sdsFilialENDLOGO: TStringField;
    sdsFilialCALCULAR_IPI: TStringField;
    sdsFilialINATIVO: TStringField;
    sdsFilialINSCMUNICIPAL: TStringField;
    sdsFilialCNAE: TStringField;
    sdsFilialHOMEPAGE: TStringField;
    sdsFilialUSARICMSSIMPLES: TStringField;
    sdsFilialID_REGIME_TRIB: TIntegerField;
    sdsFilialID_PIS: TIntegerField;
    sdsFilialID_COFINS: TIntegerField;
    sdsFilialTIPO_PIS: TStringField;
    sdsFilialTIPO_COFINS: TStringField;
    sdsFilialPERC_PIS: TFloatField;
    sdsFilialPERC_COFINS: TFloatField;
    sdsFilialID_CSTICMS: TIntegerField;
    sdsFilialID_CSTIPI: TIntegerField;
    sdsFilialEMAIL_NFE: TStringField;
    sdsFilialDTESTOQUE: TDateField;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
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
    cdsFilialUSARICMSSIMPLES: TStringField;
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
    dsFilial: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    dsUnidade: TDataSource;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosATUALIZAR_PRECO_DOC: TStringField;
    qParametrosBAIXAR_REQ_AUTOMATICO: TStringField;
    cdsValeConsID: TIntegerField;
    cdsValeConsNUM_VALE: TIntegerField;
    cdsValeConsDTEMISSAO: TDateField;
    cdsValeConsID_CLIENTE: TIntegerField;
    cdsValeConsVLR_TOTAL: TFloatField;
    cdsValeConsFILIAL: TIntegerField;
    cdsValeConsFATURADO: TStringField;
    qParametrosUSA_GRADE: TStringField;
    qParametrosUSA_COD_BARRAS: TStringField;
    qParametrosUSA_ID_PRODUTO: TStringField;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    dsUF: TDataSource;
    cdsPessoaUF: TStringField;
    cdsPessoaID_TAB_PRECO: TIntegerField;
    sdsValeItensNOME_PRODUTO: TStringField;
    cdsValeItensNOME_PRODUTO: TStringField;
    qProximoVale: TSQLQuery;
    qProximoValeNUM_VALE: TIntegerField;
    sdsValeItensVLR_TOTAL: TFloatField;
    cdsValeItensVLR_TOTAL: TFloatField;
    sdsPedido: TSQLDataSet;
    sdsPedidoID: TIntegerField;
    sdsPedidoPEDIDO_CLIENTE: TStringField;
    sdsPedidoID_CLIENTE: TIntegerField;
    sdsPedidoDTEMISSAO: TDateField;
    sdsPedidoID_PRODUTO: TIntegerField;
    sdsPedidoID_CFOP: TIntegerField;
    sdsPedidoVLR_UNITARIO: TFloatField;
    sdsPedidoQTD: TFloatField;
    sdsPedidoQTD_FATURADO: TFloatField;
    sdsPedidoQTD_RESTANTE: TFloatField;
    sdsPedidoQTD_AFATURAR: TFloatField;
    sdsPedidoNOMECLIENTE: TStringField;
    sdsPedidoREFERENCIA: TStringField;
    sdsPedidoNOMEPRODUTO: TStringField;
    sdsPedidoCNPJ_CPF: TStringField;
    sdsPedidoDTENTREGA: TDateField;
    sdsPedidoITEM: TIntegerField;
    sdsPedidoVLR_DESCONTO: TFloatField;
    sdsPedidoID_NCM: TIntegerField;
    sdsPedidoUNIDADE: TStringField;
    sdsPedidoPERC_IPI: TFloatField;
    sdsPedidoOBS_COMPLEMENTAR: TStringField;
    sdsPedidoNUMOS: TStringField;
    sdsPedidoTIPO_FRETE: TStringField;
    sdsPedidoID_CONDPGTO: TIntegerField;
    sdsPedidoIMP_OC_NOTA: TStringField;
    sdsPedidoNUM_PEDIDO: TIntegerField;
    sdsPedidoID_VARIACAO: TIntegerField;
    sdsPedidoQTD_LIBERADA: TFloatField;
    sdsPedidoQTD_PRODUZIDA: TFloatField;
    sdsPedidoTIPO_REG: TStringField;
    sdsPedidoTAMANHO: TStringField;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoID: TIntegerField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoITEM: TIntegerField;
    cdsPedidoNOMECLIENTE: TStringField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoREFERENCIA: TStringField;
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
    dsPedido: TDataSource;
    qParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField;
    qParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsValeConsFATURADO_SERVICO: TStringField;
    cdsValeConsVLR_SERVICO: TFloatField;
    cdsValeConsVLR_PRODUTO: TFloatField;
    sdsValeImp: TSQLDataSet;
    dspValeImp: TDataSetProvider;
    cdsValeImp: TClientDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    dsValeImp: TDataSource;
    sdsValeImp_Itens: TSQLDataSet;
    dspValeImp_Itens: TDataSetProvider;
    cdsValeImp_Itens: TClientDataSet;
    dsValeImp_Itens: TDataSource;
    cdsValeImp_ItensID: TIntegerField;
    cdsValeImp_ItensITEM: TIntegerField;
    cdsValeImp_ItensID_PRODUTO: TIntegerField;
    cdsValeImp_ItensTAMANHO: TStringField;
    cdsValeImp_ItensQTD: TFMTBCDField;
    cdsValeImp_ItensUNIDADE: TStringField;
    cdsValeImp_ItensVLR_UNITARIO: TFloatField;
    cdsValeImp_ItensVLR_TOTAL: TFloatField;
    cdsValeImp_ItensPERC_IPI: TFloatField;
    cdsValeImp_ItensVLR_IPI: TFloatField;
    cdsValeImp_ItensVLR_ICMSSUBST: TFloatField;
    cdsValeImp_ItensREFERENCIA: TStringField;
    cdsValeImp_ItensNOME: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsValeImpNOME_FILIAL: TStringField;
    cdsValeImpENDERECO_FILIAL: TStringField;
    cdsValeImpCNPJ_CPF_FILIAL: TStringField;
    cdsValeImpNUM_END_FILIAL: TStringField;
    cdsValeImpBAIRRO_FILIAL: TStringField;
    cdsValeImpCIDADE_FILIAL: TStringField;
    cdsValeImpUF_FILIAL: TStringField;
    cdsValeImpCOMPLEMENTO_END_FILIAL: TStringField;
    cdsValeImpCEP_FILIAL: TStringField;
    cdsValeImpENDERECO_CLIENTE: TStringField;
    cdsValeImpCNPJ_CPF_CLIENTE: TStringField;
    cdsValeImpNUM_END_CLIENTE: TStringField;
    cdsValeImpBAIRRO_CLIENTE: TStringField;
    cdsValeImpCIDADE_CLIENTE: TStringField;
    cdsValeImpUF_CLIENTE: TStringField;
    cdsValeImpCOMPLEMENTO_END_CLIENTE: TStringField;
    cdsValeImpCEP_CLIENTE: TStringField;
    cdsValeImpNOME_INTERNO: TStringField;
    cdsValeImpINSCR_EST_FILIAL: TStringField;
    cdsValeImpINSCR_EST_CLIENTE: TStringField;
    cdsValeImpDDD_FILIAL: TIntegerField;
    cdsValeImpFONE_FILIAL: TStringField;
    cdsValeImpDDD_CLIENTE: TIntegerField;
    cdsValeImpFONE_CLIENTE: TStringField;
    sdsValeItensCOMPLEMENTO_PROD: TStringField;
    cdsValeItensCOMPLEMENTO_PROD: TStringField;
    sdsValeItensQTD_PECA: TIntegerField;
    cdsValeItensQTD_PECA: TIntegerField;
    qParametrosEMPRESA_SUCATA: TStringField;
    cdsValeImp_ItensCOMPLEMENTO_PROD: TStringField;
    cdsValeImp_ItensQTD_PECA: TIntegerField;
    cdsValeImpNUM_VALE: TIntegerField;
    sdsValeFATURADO_SERVICO: TStringField;
    sdsValeVLR_SERVICO: TFloatField;
    sdsValeVLR_PRODUTO: TFloatField;
    cdsValeFATURADO_SERVICO: TStringField;
    cdsValeVLR_SERVICO: TFloatField;
    cdsValeVLR_PRODUTO: TFloatField;
    sdsValeItensNUM_PEDIDO: TIntegerField;
    sdsValeItensNUMERO_OC: TStringField;
    sdsValeItensNUMERO_OS: TStringField;
    cdsValeItensNUMERO_OC: TStringField;
    cdsValeItensNUMERO_OS: TStringField;
    cdsValeItensNUM_PEDIDO: TIntegerField;
    qParametrosARREDONDAR_5: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    dsVale_Mestre_Item: TDataSource;
    cdsValeItenssdsValePed: TDataSetField;
    sdsValeImp_Ped: TSQLDataSet;
    dspValeImp_Ped: TDataSetProvider;
    cdsValeImp_Ped: TClientDataSet;
    dsValeImp_Ped: TDataSource;
    cdsValeImp_PedID: TIntegerField;
    cdsValeImp_PedID_PEDIDO: TIntegerField;
    cdsValeImp_PedITEM: TIntegerField;
    cdsValeImp_PedITEM_PEDIDO: TIntegerField;
    cdsValeImp_PedITEM_VALEPED: TIntegerField;
    cdsValeImp_PedNUM_PEDIDO: TIntegerField;
    cdsValeImp_PedQTD: TFloatField;
    cdsValeImp_PedPEDIDO_CLIENTE: TStringField;
    sdsValeItensFATURADO: TStringField;
    cdsValeItensFATURADO: TStringField;
    qParametrosSENHA_EXCLUIR_VALE: TStringField;
    sdsValeServico: TSQLDataSet;
    cdsValeServico: TClientDataSet;
    dsValeServico: TDataSource;
    sdsValeServicoID: TIntegerField;
    sdsValeServicoITEM: TIntegerField;
    sdsValeServicoID_SERVICO_INT: TIntegerField;
    sdsValeServicoNOME_SERVICO_INT: TStringField;
    sdsValeServicoQTD: TIntegerField;
    sdsValeServicoVLR_UNITARIO: TFloatField;
    sdsValeServicoVLR_TOTAL: TFloatField;
    cdsValesdsValeServico: TDataSetField;
    cdsValeServicoID: TIntegerField;
    cdsValeServicoITEM: TIntegerField;
    cdsValeServicoID_SERVICO_INT: TIntegerField;
    cdsValeServicoNOME_SERVICO_INT: TStringField;
    cdsValeServicoQTD: TIntegerField;
    cdsValeServicoVLR_UNITARIO: TFloatField;
    cdsValeServicoVLR_TOTAL: TFloatField;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    dsServico_Int: TDataSource;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    cdsServico_IntID_VENDEDOR: TIntegerField;
    cdsServico_IntPERC_COMISSAO: TFloatField;
    cdsServico_IntCODIGO_NBS: TStringField;
    sdsValeServicoCOMPLEMENTO_SERVICO: TStringField;
    cdsValeServicoCOMPLEMENTO_SERVICO: TStringField;
    sdsValeServicoUNIDADE: TStringField;
    cdsValeServicoUNIDADE: TStringField;
    sdsValeServicoFATURADO: TStringField;
    cdsValeServicoFATURADO: TStringField;
    sdsValeImp_Servico: TSQLDataSet;
    dspValeImp_Servico: TDataSetProvider;
    cdsValeImp_Servico: TClientDataSet;
    dsValeImp_Servico: TDataSource;
    cdsValeImp_ServicoID: TIntegerField;
    cdsValeImp_ServicoITEM: TIntegerField;
    cdsValeImp_ServicoID_SERVICO_INT: TIntegerField;
    cdsValeImp_ServicoNOME_SERVICO_INT: TStringField;
    cdsValeImp_ServicoQTD: TIntegerField;
    cdsValeImp_ServicoVLR_UNITARIO: TFloatField;
    cdsValeImp_ServicoVLR_TOTAL: TFloatField;
    cdsValeImp_ServicoCOMPLEMENTO_SERVICO: TStringField;
    cdsValeImp_ServicoUNIDADE: TStringField;
    cdsValeImp_ServicoFATURADO: TStringField;
    sdsValeItensGERAR_ESTOQUE: TStringField;
    cdsValeItensGERAR_ESTOQUE: TStringField;
    sdsPedidoID_MOVESTOQUE: TIntegerField;
    cdsPedidoID_MOVESTOQUE: TIntegerField;
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
    dsPedido_Tipo: TDataSource;
    sdsPedidoQTD_PECA: TIntegerField;
    cdsPedidoQTD_PECA: TIntegerField;
    sdsValeItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsValeItensQTD_LANCAR_ESTOQUE: TFloatField;
    sdsPedidoQTD_LANCAR_ESTOQUE: TFloatField;
    cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField;
    sdsValeID_LOCAL_ESTOQUE: TIntegerField;
    cdsValeID_LOCAL_ESTOQUE: TIntegerField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    cdsLocal_EstoqueID: TIntegerField;
    cdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    cdsLocal_EstoqueNOME: TStringField;
    cdsLocal_EstoqueENDERECO: TStringField;
    cdsLocal_EstoqueNUM_ENDERECO: TStringField;
    cdsLocal_EstoqueID_CIDADE: TIntegerField;
    cdsLocal_EstoqueUF: TStringField;
    cdsLocal_EstoqueBAIRRO: TStringField;
    cdsLocal_EstoqueCEP: TStringField;
    cdsLocal_EstoquePRINCIPAL: TStringField;
    cdsLocal_EstoqueINATIVO: TStringField;
    dsLocal_Estoque: TDataSource;
    qParametrosUSA_APROVACAO_PED: TStringField;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    dsVendedor: TDataSource;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_DESCONTO_VALE: TStringField;
    sdsValeItensPERC_DESCONTO: TFloatField;
    sdsValeItensVLR_DESCONTO: TFloatField;
    cdsValeItensPERC_DESCONTO: TFloatField;
    cdsValeItensVLR_DESCONTO: TFloatField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    cdsProdutoPERC_DESC_MAX: TFloatField;
    sdsValeVLR_DESCONTO: TFloatField;
    cdsValeVLR_DESCONTO: TFloatField;
    sdsPedidoVLR_DESCONTORATEIO: TFloatField;
    sdsPedidoPERC_DESCONTO: TFloatField;
    cdsPedidoVLR_DESCONTORATEIO: TFloatField;
    cdsPedidoPERC_DESCONTO: TFloatField;
    cdsValeImpVLR_DESCONTO: TFloatField;
    cdsValeImp_ItensVLR_DESCONTO: TFloatField;
    cdsValeImp_ItensPERC_DESCONTO: TFloatField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBValeCons: TfrxDBDataset;
    cdsValeConsDESCFATURADO: TStringField;
    cdsValeImp_ItensNUMERO_OC: TStringField;
    sdsVale_Fat: TSQLDataSet;
    dspVale_Fat: TDataSetProvider;
    cdsVale_Fat: TClientDataSet;
    DSVale_Fat: TDataSource;
    cdsVale_FatNUMNOTA: TIntegerField;
    cdsVale_FatDTEMISSAO: TDateField;
    cdsVale_FatID: TIntegerField;
    cdsVale_FatITEM: TIntegerField;
    cdsVale_FatID_VALE: TIntegerField;
    cdsVale_FatNUM_VALE: TIntegerField;
    cdsVale_FatITEM_VALE: TIntegerField;
    cdsVale_FatDESCRICAO_TIPO: TStringField;
    sdsValeUSUARIO: TStringField;
    sdsValeDTUSUARIO: TDateField;
    cdsValeUSUARIO: TStringField;
    cdsValeDTUSUARIO: TDateField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField;
    qParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    qParametros_PedUSA_OPERACAO_SERV: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosEMPRESA_AMBIENTES: TStringField;
    qParametros_PedIMP_ORDEM_ITEM_PED: TStringField;
    qParametros_NFeIMPRIMIR_TOTAL_VALE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspValeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPedidoCalcFields(DataSet: TDataSet);
    procedure cdsValeNewRecord(DataSet: TDataSet);
    procedure cdsValeItensNewRecord(DataSet: TDataSet);
    procedure cdsValeServicoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMSGErro: String;
    ctVale, ctConsulta, ctPessoa, ctPedido: String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    procedure prc_Inserir_Itens;
    procedure prc_Inserir_Servicos;
    function fnc_Existe_Num_Vale: Boolean;

    procedure prc_Calcular_Total;
  end;

var
  DmCadVale: TDmCadVale;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDmCadVale.prc_Inserir;
var
  vAux: Integer;
  sds: TSQLDataSet;
  vNumAux: Integer;
begin
  if not cdsVale.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('VALE',0);

  cdsVale.Insert;
  cdsValeID.AsInteger         := vAux;
  cdsValeFILIAL.AsInteger     := vFilial;
  cdsValeDTEMISSAO.AsDateTime := Date;
  cdsValeVLR_TOTAL.AsFloat    := 0;
end;

procedure TDmCadVale.prc_Excluir;
begin
  if not(cdsVale.Active) or (cdsVale.IsEmpty) then
    Exit;
  mPedidoAux.EmptyDataSet;
  cdsValeItens.First;
  while not cdsValeItens.Eof do
  begin
    cdsValePed.First;
    while not cdsValePed.Eof do
      cdsValePed.Delete;
    if (cdsValeItensID_PEDIDO.AsInteger > 0) and not(mPedidoAux.FindKey([cdsValeItensID_PEDIDO.AsInteger])) then
    begin
      mPedidoAux.Insert;
      mPedidoAuxID_Pedido.AsInteger := cdsValeItensID_PEDIDO.AsInteger;
      mPedidoAux.Post;
    end;
    cdsValeItens.Delete;
  end;
  cdsVale.Delete;
  cdsVale.ApplyUpdates(0);

  //Atualiza Status do pedido
  mPedidoAux.First;
  while not mPedidoAux.Eof do
  begin
    sdsPrc_Atualiza_Status_Ped.Close;
    sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := mPedidoAuxID_Pedido.AsInteger;
    sdsPrc_Atualiza_Status_Ped.ExecSQL;
    mPedidoAux.Next;
  end;
end;

procedure TDmCadVale.prc_Gravar;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vNumVale: Integer;
begin
  vMsgErro := '';
  if cdsValeDTEMISSAO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data não informada!';
  if cdsValeID_CLIENTE.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informado!';
  if cdsValeNUM_VALE.AsInteger < 1 then
  begin
    sds := TSQLDataSet.Create(nil);
    ID.TransactionID  := 1;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);

    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('VALE');
      sds.ExecSQL();

      qProximoVale.Close;
      qProximoVale.ParamByName('FILIAL').AsInteger := cdsValeFILIAL.AsInteger;
      qProximoVale.Open;
      vNumVale := qProximoValeNUM_VALE.AsInteger + 1;
      cdsValeNUM_VALE.AsInteger := vNumVale;

      if trim(vMsgErro) <> '' then
        Exit;

      cdsVale.Post;
      cdsVale.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);
    except
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;
    FreeAndNil(sds);
  end
  else
  begin
    if cdsValeNUM_VALE.AsInteger <= 0 then
      vMsgErro := vMsgErro + #13 + '*** Nº do vale não informado!';

    if trim(vMsgErro) <> '' then
      Exit;

    cdsVale.Post;
    cdsVale.ApplyUpdates(0);
  end;
end;

procedure TDmCadVale.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsVale.Close;
  sdsVale.CommandText := ctVale;
  if ID <> 0 then
    sdsVale.CommandText := sdsVale.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsVale.Open;
end;

procedure TDmCadVale.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctVale     := sdsVale.CommandText;
  ctConsulta := sdsValeCons.CommandText;
  ctPessoa   := sdsPessoa.CommandText;
  ctPedido   := sdsPedido.CommandText;
  cdsFilial.Open;
  cdsProduto.Open;
  cdsUnidade.Open;
  cdsPessoa.Open;
  cdsServico_Int.Open;
  cdsUF.Open;
  qParametros.Close;
  qParametros.Open;
  cdsLocal_Estoque.Open;
  qParametros_Ped.Open;
  qParametros_Fin.Open;
  qParametros_Prod.Open;
  qParametros_Geral.Open;
  qParametros_NFe.Open;
  cdsVendedor.Open;
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

procedure TDmCadVale.prc_Excluir_Item;
begin
  cdsValePed.First;
  while not cdsValePed.Eof do
    cdsValePed.Delete;
  cdsValeItens.Delete;
end;

procedure TDmCadVale.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsValeItens.Last;
  vItemAux := cdsValeItensITEM.AsInteger;

  cdsValeItens.Insert;
  cdsValeItensID.AsInteger   := cdsValeID.AsInteger;
  cdsValeItensITEM.AsInteger := vItemAux + 1;
end;

procedure TDmCadVale.dspValeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDmCadVale.cdsPedidoCalcFields(DataSet: TDataSet);
begin
  if cdsPedidoTIPO_REG.AsString = 'P' then
  begin
    if qParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
    if qParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat - cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',0));
  end
  else
    cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
end;

procedure TDmCadVale.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TDmCadVale.fnc_Existe_Num_Vale: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  if cdsValeNUM_VALE.AsInteger <= 0 then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := ' SELECT ID, NUM_VALE FROM VALE WHERE NUM_VALE = ' + IntToStr(cdsValeNUM_VALE.AsInteger);
  sds.Open;
  if not(sds.IsEmpty) and (sds.FieldByName('ID').AsInteger <> cdsValeNUM_VALE.AsInteger) then
    Result := True;
  sds.Close;
  FreeAndNil(sds);
end;

procedure TDmCadVale.cdsValeNewRecord(DataSet: TDataSet);
begin
  cdsValeFATURADO.AsString         := 'N';
  cdsValeFATURADO_SERVICO.AsString := 'N';
  cdsValeVLR_DESCONTO.AsFloat      := 0;
  cdsValeVLR_PRODUTO.AsFloat       := 0;
  cdsValeVLR_SERVICO.AsFloat       := 0;
  cdsValeVLR_TOTAL.AsFloat         := 0;
  cdsValeUSUARIO.AsString          := vUsuario;
  cdsValeDTUSUARIO.AsDateTime      := Date;
end;

procedure TDmCadVale.cdsValeItensNewRecord(DataSet: TDataSet);
begin
  cdsValeItensFATURADO.AsString            := 'N';
  cdsValeItensGERAR_ESTOQUE.AsString       := 'S';
  cdsValeItensCOMPLEMENTO_PROD.AsString    := '';
  cdsValeItensQTD_LANCAR_ESTOQUE.AsInteger := 0;
end;

procedure TDmCadVale.prc_Inserir_Servicos;
var
  vItemAux: Integer;
begin
  cdsValeServico.Last;
  vItemAux := cdsValeServicoITEM.AsInteger;

  cdsValeServico.Insert;
  cdsValeServicoID.AsInteger   := cdsValeID.AsInteger;
  cdsValeServicoITEM.AsInteger := vItemAux + 1;
end;

procedure TDmCadVale.cdsValeServicoNewRecord(DataSet: TDataSet);
begin
  cdsValeServicoFATURADO.AsString := 'N';
end;

procedure TDmCadVale.prc_Calcular_Total;
var
  vVlrTotal: Real;
  vVlrProduto, vVlrServico: Real;
  vVlrDesconto: Real;
begin
  vVlrTotal    := 0;
  vVlrProduto  := 0;
  vVlrServico  := 0;
  vVlrDesconto := 0;
  cdsValeItens.First;
  while not cdsValeItens.Eof do
  begin
    vVlrTotal    := vVlrTotal + cdsValeItensVLR_TOTAL.AsFloat;
    vVlrProduto  := vVlrProduto + cdsValeItensVLR_TOTAL.AsFloat + cdsValeItensVLR_DESCONTO.AsFloat;
    vVlrDesconto := vVlrDesconto + cdsValeItensVLR_DESCONTO.AsFloat;
    cdsValeItens.Next;
  end;

  cdsValeServico.First;
  while not cdsValeServico.Eof do
  begin
    vVlrTotal := vVlrTotal + cdsValeServicoVLR_TOTAL.AsCurrency;
    vVlrServico := vVlrServico + cdsValeServicoVLR_TOTAL.AsCurrency;
    cdsValeServico.Next;
  end;

  cdsValeVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrTotal));
  cdsValeVLR_PRODUTO.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrProduto));
  cdsValeVLR_SERVICO.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrServico));
  cdsValeVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrDesconto));
end;

end.
