unit UDMBaixaPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMEstoque, LogTypes;

type
  TDMBaixaPedido = class(TDataModule)
    sdsPedido_Item: TSQLDataSet;
    dspPedido_Item: TDataSetProvider;
    cdsPedido_Item: TClientDataSet;
    dsPedido_Item: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsClienteCODIGO: TIntegerField;
    sdsClienteNOME: TStringField;
    sdsClienteFANTASIA: TStringField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosSERIENORMAL: TStringField;
    qParametrosSERIECONTINGENCIA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosNFEPRODUCAO: TStringField;
    qParametrosANEXARDANFE: TStringField;
    qParametrosVERSAONFE: TStringField;
    qParametrosVERSAOEMISSAONFE: TStringField;
    qParametrosTIPOLOGONFE: TStringField;
    qParametrosAPLICARDESCONTONOICMS: TStringField;
    qParametrosAPLICARDESCONTONOIPI: TStringField;
    qParametrosSOMARNOPROD_FRETE: TStringField;
    qParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    qParametrosSOMARNOPROD_SEGURO: TStringField;
    qParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    qParametrosINFNUMNOTAMANUAL: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    qParametrosOBS_SIMPLES: TStringField;
    qParametrosIMP_OBSSIMPLES: TStringField;
    qParametrosIMP_REFERENCIANANOTA: TStringField;
    qParametrosENVIARNOTABENEF_NANFE: TStringField;
    qParametrosESPECIE_NOTA: TStringField;
    qParametrosMARCA_NOTA: TStringField;
    qParametrosVERSAO_BANCO: TIntegerField;
    qParametrosUSA_QTDPACOTE_NTE: TStringField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    dsPedido_Item_Mestre: TDataSource;
    sdsPedido_Nota: TSQLDataSet;
    dsPedido_Nota: TDataSource;
    cdsPedido_Nota: TClientDataSet;
    sdsPedido_NotaID_NOTA: TIntegerField;
    sdsPedido_NotaITEM_NOTA: TIntegerField;
    sdsPedido_NotaQTD: TFloatField;
    sdsPedido_NotaNUMNOTA: TIntegerField;
    sdsPedido_NotaDTEMISSAO: TDateField;
    sdsPedido_NotaSERIE: TStringField;
    cdsPedido_NotaID_NOTA: TIntegerField;
    cdsPedido_NotaITEM_NOTA: TIntegerField;
    cdsPedido_NotaQTD: TFloatField;
    cdsPedido_NotaNUMNOTA: TIntegerField;
    cdsPedido_NotaDTEMISSAO: TDateField;
    cdsPedido_NotaSERIE: TStringField;
    sdsPedido_ItemID_CLIENTE: TIntegerField;
    sdsPedido_ItemID: TIntegerField;
    sdsPedido_ItemPEDIDO_CLIENTE: TStringField;
    sdsPedido_ItemDTEMISSAO: TDateField;
    sdsPedido_ItemDTENTREGA_PED: TDateField;
    sdsPedido_ItemNUM_PEDIDO: TIntegerField;
    sdsPedido_ItemID_VENDEDOR: TIntegerField;
    sdsPedido_ItemFILIAL: TIntegerField;
    sdsPedido_ItemNOME_FILIAL: TStringField;
    sdsPedido_ItemNOME_FILIAL_INT: TStringField;
    sdsPedido_ItemNOME_CLIENTE: TStringField;
    sdsPedido_ItemNOME_PRODUTO: TStringField;
    sdsPedido_ItemREFERENCIA: TStringField;
    sdsPedido_ItemITEM: TIntegerField;
    sdsPedido_ItemID_PRODUTO: TIntegerField;
    sdsPedido_ItemDTENTREGA_ITEM: TDateField;
    sdsPedido_ItemQTD: TFloatField;
    sdsPedido_ItemQTD_FATURADO: TFloatField;
    sdsPedido_ItemQTD_RESTANTE: TFloatField;
    sdsPedido_ItemQTD_CANCELADO: TFloatField;
    sdsPedido_ItemVLR_UNITARIO: TFloatField;
    sdsPedido_ItemVLR_DESCONTO: TFloatField;
    sdsPedido_ItemVLR_TOTAL: TFloatField;
    sdsPedido_ItemVLR_RESTANTE: TFloatField;
    sdsPedido_ItemVLR_FATURADO: TFloatField;
    sdsPedido_ItemVLR_CANCELADO: TFloatField;
    cdsPedido_ItemID_CLIENTE: TIntegerField;
    cdsPedido_ItemID: TIntegerField;
    cdsPedido_ItemPEDIDO_CLIENTE: TStringField;
    cdsPedido_ItemDTEMISSAO: TDateField;
    cdsPedido_ItemDTENTREGA_PED: TDateField;
    cdsPedido_ItemNUM_PEDIDO: TIntegerField;
    cdsPedido_ItemID_VENDEDOR: TIntegerField;
    cdsPedido_ItemFILIAL: TIntegerField;
    cdsPedido_ItemNOME_FILIAL: TStringField;
    cdsPedido_ItemNOME_FILIAL_INT: TStringField;
    cdsPedido_ItemNOME_CLIENTE: TStringField;
    cdsPedido_ItemNOME_PRODUTO: TStringField;
    cdsPedido_ItemREFERENCIA: TStringField;
    cdsPedido_ItemITEM: TIntegerField;
    cdsPedido_ItemID_PRODUTO: TIntegerField;
    cdsPedido_ItemDTENTREGA_ITEM: TDateField;
    cdsPedido_ItemQTD: TFloatField;
    cdsPedido_ItemQTD_FATURADO: TFloatField;
    cdsPedido_ItemQTD_RESTANTE: TFloatField;
    cdsPedido_ItemQTD_CANCELADO: TFloatField;
    cdsPedido_ItemVLR_UNITARIO: TFloatField;
    cdsPedido_ItemVLR_DESCONTO: TFloatField;
    cdsPedido_ItemVLR_TOTAL: TFloatField;
    cdsPedido_ItemVLR_RESTANTE: TFloatField;
    cdsPedido_ItemVLR_FATURADO: TFloatField;
    cdsPedido_ItemVLR_CANCELADO: TFloatField;
    cdsPedido_ItemsdsPedido_Nota: TDataSetField;
    sdsPedido_ItemQTD_AFATURAR: TFloatField;
    cdsPedido_ItemQTD_AFATURAR: TFloatField;
    sdsBaixa_Pedido: TSQLDataSet;
    dspBaixa_Pedido: TDataSetProvider;
    cdsBaixa_Pedido: TClientDataSet;
    dsBaixa_Pedido: TDataSource;
    sdsBaixa_PedidoID: TIntegerField;
    sdsBaixa_PedidoID_PEDIDO: TIntegerField;
    sdsBaixa_PedidoITEM_PEDIDO: TIntegerField;
    sdsBaixa_PedidoDTBAIXA: TDateField;
    cdsBaixa_PedidoID: TIntegerField;
    cdsBaixa_PedidoID_PEDIDO: TIntegerField;
    cdsBaixa_PedidoITEM_PEDIDO: TIntegerField;
    cdsBaixa_PedidoDTBAIXA: TDateField;
    sdsBaixa_PedidoQTD: TFloatField;
    cdsBaixa_PedidoQTD: TFloatField;
    sdsBaixa_PedidoNUM_PEDIDO: TIntegerField;
    sdsBaixa_PedidoPEDIDO_CLIENTE: TStringField;
    sdsBaixa_PedidoID_MOVESTOQUE: TIntegerField;
    cdsBaixa_PedidoNUM_PEDIDO: TIntegerField;
    cdsBaixa_PedidoPEDIDO_CLIENTE: TStringField;
    cdsBaixa_PedidoID_MOVESTOQUE: TIntegerField;
    sdsPedido_ItemID_CFOP: TIntegerField;
    cdsPedido_ItemID_CFOP: TIntegerField;
    sdsPedido_ItemUNIDADE: TStringField;
    cdsPedido_ItemUNIDADE: TStringField;
    sdsPedido_ItemPERC_ICMS: TFloatField;
    sdsPedido_ItemPERC_IPI: TFloatField;
    sdsPedido_ItemPERC_TRIBICMS: TFloatField;
    cdsPedido_ItemPERC_ICMS: TFloatField;
    cdsPedido_ItemPERC_IPI: TFloatField;
    cdsPedido_ItemPERC_TRIBICMS: TFloatField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    sdsBaixa_PedidoTIPO_REG: TStringField;
    cdsBaixa_PedidoTIPO_REG: TStringField;
    sdsPedido_ItemQTD_PRODUZIDA: TFloatField;
    sdsPedido_ItemQTD_LIBERADA: TFloatField;
    cdsPedido_ItemQTD_PRODUZIDA: TFloatField;
    cdsPedido_ItemQTD_LIBERADA: TFloatField;
    cdsPedido_ItemclQtd_Restante: TFloatField;
    sdsBaixa_PedidoTIPO_MOV: TStringField;
    cdsBaixa_PedidoTIPO_MOV: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    sdsLote_Talao: TSQLDataSet;
    dspLote_Talao: TDataSetProvider;
    cdsLote_Talao: TClientDataSet;
    dsLote_Talao: TDataSource;
    sdsLote_TalaoDTEMISSAO: TDateField;
    sdsLote_TalaoNUM_LOTE: TIntegerField;
    sdsLote_TalaoFILIAL: TIntegerField;
    sdsLote_TalaoHREMISSAO: TTimeField;
    sdsLote_TalaoDTENTREGA: TDateField;
    sdsLote_TalaoQTD_TALOES: TIntegerField;
    sdsLote_TalaoID: TIntegerField;
    sdsLote_TalaoNUM_TALAO: TIntegerField;
    sdsLote_TalaoID_PRODUTO: TIntegerField;
    sdsLote_TalaoTAMANHO: TStringField;
    sdsLote_TalaoQTD: TFloatField;
    sdsLote_TalaoQTD_PRODUZIDO: TFloatField;
    sdsLote_TalaoQTD_PENDENTE: TFloatField;
    sdsLote_TalaoDTBAIXA: TDateField;
    sdsLote_TalaoHRBAIXA: TTimeField;
    sdsLote_TalaoIMPRESSO: TStringField;
    sdsLote_TalaoREFERENCIA: TStringField;
    sdsLote_TalaoNOME_PRODUTO: TStringField;
    sdsLote_TalaoUNIDADE: TStringField;
    sdsLote_TalaoNOME_FILIAL: TStringField;
    cdsLote_TalaoDTEMISSAO: TDateField;
    cdsLote_TalaoNUM_LOTE: TIntegerField;
    cdsLote_TalaoFILIAL: TIntegerField;
    cdsLote_TalaoHREMISSAO: TTimeField;
    cdsLote_TalaoDTENTREGA: TDateField;
    cdsLote_TalaoQTD_TALOES: TIntegerField;
    cdsLote_TalaoID: TIntegerField;
    cdsLote_TalaoNUM_TALAO: TIntegerField;
    cdsLote_TalaoID_PRODUTO: TIntegerField;
    cdsLote_TalaoTAMANHO: TStringField;
    cdsLote_TalaoQTD: TFloatField;
    cdsLote_TalaoQTD_PRODUZIDO: TFloatField;
    cdsLote_TalaoQTD_PENDENTE: TFloatField;
    cdsLote_TalaoDTBAIXA: TDateField;
    cdsLote_TalaoHRBAIXA: TTimeField;
    cdsLote_TalaoIMPRESSO: TStringField;
    cdsLote_TalaoREFERENCIA: TStringField;
    cdsLote_TalaoNOME_PRODUTO: TStringField;
    cdsLote_TalaoUNIDADE: TStringField;
    cdsLote_TalaoNOME_FILIAL: TStringField;
    sdsTalao_Ped: TSQLDataSet;
    dspTalao_Ped: TDataSetProvider;
    cdsTalao_Ped: TClientDataSet;
    dsTalao_Ped: TDataSource;
    sdsTalao_PedID: TIntegerField;
    sdsTalao_PedNUM_TALAO: TIntegerField;
    sdsTalao_PedID_PEDIDO: TIntegerField;
    sdsTalao_PedITEM_PEDIDO: TIntegerField;
    sdsTalao_PedQTD: TFloatField;
    cdsTalao_PedID: TIntegerField;
    cdsTalao_PedNUM_TALAO: TIntegerField;
    cdsTalao_PedID_PEDIDO: TIntegerField;
    cdsTalao_PedITEM_PEDIDO: TIntegerField;
    cdsTalao_PedQTD: TFloatField;
    sdsPedido_ItemTAMANHO: TStringField;
    cdsPedido_ItemTAMANHO: TStringField;
    sdsBaixa_Talao: TSQLDataSet;
    dspBaixa_Talao: TDataSetProvider;
    cdsBaixa_Talao: TClientDataSet;
    dsBaixa_Talao: TDataSource;
    sdsTalao: TSQLDataSet;
    dspTalao: TDataSetProvider;
    cdsTalao: TClientDataSet;
    sdsTalaoID: TIntegerField;
    sdsTalaoNUM_TALAO: TIntegerField;
    sdsTalaoID_PRODUTO: TIntegerField;
    sdsTalaoTAMANHO: TStringField;
    sdsTalaoQTD: TFloatField;
    sdsTalaoQTD_PRODUZIDO: TFloatField;
    sdsTalaoQTD_PENDENTE: TFloatField;
    sdsTalaoDTBAIXA: TDateField;
    sdsTalaoHRBAIXA: TTimeField;
    sdsTalaoIMPRESSO: TStringField;
    cdsTalaoID: TIntegerField;
    cdsTalaoNUM_TALAO: TIntegerField;
    cdsTalaoID_PRODUTO: TIntegerField;
    cdsTalaoTAMANHO: TStringField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoQTD_PRODUZIDO: TFloatField;
    cdsTalaoQTD_PENDENTE: TFloatField;
    cdsTalaoDTBAIXA: TDateField;
    cdsTalaoHRBAIXA: TTimeField;
    cdsTalaoIMPRESSO: TStringField;
    sdsBaixa_TalaoID: TIntegerField;
    sdsBaixa_TalaoNUM_TALAO: TIntegerField;
    sdsBaixa_TalaoNUM_LOTE: TIntegerField;
    sdsBaixa_TalaoQTD: TFloatField;
    sdsBaixa_TalaoDTBAIXA: TDateField;
    sdsBaixa_TalaoHRBAIXA: TTimeField;
    sdsBaixa_TalaoID_BAIXA_PEDIDO: TIntegerField;
    sdsBaixa_TalaoID_LOTE: TIntegerField;
    cdsBaixa_TalaoID: TIntegerField;
    cdsBaixa_TalaoNUM_TALAO: TIntegerField;
    cdsBaixa_TalaoNUM_LOTE: TIntegerField;
    cdsBaixa_TalaoQTD: TFloatField;
    cdsBaixa_TalaoDTBAIXA: TDateField;
    cdsBaixa_TalaoHRBAIXA: TTimeField;
    cdsBaixa_TalaoID_BAIXA_PEDIDO: TIntegerField;
    cdsBaixa_TalaoID_LOTE: TIntegerField;
    sdsPedido_ItemNUM_TALAO: TStringField;
    cdsPedido_ItemNUM_TALAO: TStringField;
    qParametrosEMPRESA_NAVALHA: TStringField;
    sdsPedido_ItemFANTASIA: TStringField;
    sdsPedido_ItemCIDADE: TStringField;
    cdsPedido_ItemFANTASIA: TStringField;
    cdsPedido_ItemCIDADE: TStringField;
    sdsPedido_ItemNUMOS: TStringField;
    sdsPedido_ItemNUM_DOC: TIntegerField;
    cdsPedido_ItemNUMOS: TStringField;
    cdsPedido_ItemNUM_DOC: TIntegerField;
    sdsProduto_Consumo: TSQLDataSet;
    dspProduto_Consumo: TDataSetProvider;
    cdsProduto_Consumo: TClientDataSet;
    dsProduto_Consumo: TDataSource;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    sdsProduto_Consumo_Tam: TSQLDataSet;
    dspProduto_Consumo_Tam: TDataSetProvider;
    cdsProduto_Consumo_Tam: TClientDataSet;
    dsProduto_Consumo_Tam: TDataSource;
    cdsProduto_Consumo_TamID: TIntegerField;
    cdsProduto_Consumo_TamITEM: TIntegerField;
    cdsProduto_Consumo_TamTAMANHO: TStringField;
    cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialREFERENCIA: TStringField;
    qMaterialNOME: TStringField;
    qMaterialPERC_IPI: TFloatField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPRECO_VENDA: TFloatField;
    qMaterialPOSSE_MATERIAL: TStringField;
    qMaterialESTOQUE: TStringField;
    qMaterialID_NCM: TIntegerField;
    qMaterialORIGEM_PROD: TStringField;
    qMaterialCODSITCF: TStringField;
    qMaterialPERC_REDUCAOICMS: TFloatField;
    qMaterialUNIDADE: TStringField;
    qMaterialUSA_GRADE: TStringField;
    qMaterialID_GRADE: TIntegerField;
    dsBaixa_Pedido_Mestre: TDataSource;
    sdsBaixa_Pedido_MP: TSQLDataSet;
    cdsBaixa_Pedido_MP: TClientDataSet;
    dsBaixa_Pedido_MP: TDataSource;
    sdsBaixa_Pedido_MPID: TIntegerField;
    sdsBaixa_Pedido_MPITEM: TIntegerField;
    sdsBaixa_Pedido_MPID_MATERIAL: TIntegerField;
    sdsBaixa_Pedido_MPTAMANHO: TStringField;
    sdsBaixa_Pedido_MPQTD: TFloatField;
    sdsBaixa_Pedido_MPID_MOVESTOQUE: TIntegerField;
    cdsBaixa_PedidosdsBaixa_Pedido_MP: TDataSetField;
    cdsBaixa_Pedido_MPID: TIntegerField;
    cdsBaixa_Pedido_MPITEM: TIntegerField;
    cdsBaixa_Pedido_MPID_MATERIAL: TIntegerField;
    cdsBaixa_Pedido_MPTAMANHO: TStringField;
    cdsBaixa_Pedido_MPQTD: TFloatField;
    cdsBaixa_Pedido_MPID_MOVESTOQUE: TIntegerField;
    qParametrosBAIXA_ESTOQUE_MP: TStringField;
    sdsBaixa_Pedido_MPQTD_CONSUMO: TFloatField;
    cdsBaixa_Pedido_MPQTD_CONSUMO: TFloatField;
    sdsPedido_ItemNOME_PRODUTO_PED: TStringField;
    cdsPedido_ItemNOME_PRODUTO_PED: TStringField;
    sdsTalao_Aux: TSQLDataSet;
    dspTalao_Aux: TDataSetProvider;
    cdsTalao_Aux: TClientDataSet;
    cdsTalao_AuxID: TIntegerField;
    cdsTalao_AuxITEM: TIntegerField;
    cdsTalao_AuxID_ATELIER: TIntegerField;
    cdsTalao_AuxID_SETOR: TIntegerField;
    cdsTalao_AuxID_PRODUTO: TIntegerField;
    cdsTalao_AuxID_COMBINACAO: TIntegerField;
    cdsTalao_AuxQTD: TFloatField;
    cdsTalao_AuxDTSAIDA: TDateField;
    cdsTalao_AuxDTRETORNO: TDateField;
    dsTalao_Aux: TDataSource;
    sdsTalao_AuxID: TIntegerField;
    sdsTalao_AuxITEM: TIntegerField;
    sdsTalao_AuxID_ATELIER: TIntegerField;
    sdsTalao_AuxID_SETOR: TIntegerField;
    sdsTalao_AuxID_PRODUTO: TIntegerField;
    sdsTalao_AuxID_COMBINACAO: TIntegerField;
    sdsTalao_AuxQTD: TFloatField;
    sdsTalao_AuxDTSAIDA: TDateField;
    sdsTalao_AuxDTRETORNO: TDateField;
    sdsTalao_AuxHRSAIDA: TTimeField;
    sdsTalao_AuxHRRETORNO: TTimeField;
    cdsTalao_AuxHRSAIDA: TTimeField;
    cdsTalao_AuxHRRETORNO: TTimeField;
    sdsAtelier_OP: TSQLDataSet;
    dspAtelier_OP: TDataSetProvider;
    cdsAtelier_OP: TClientDataSet;
    dsAtelier_OP: TDataSource;
    cdsAtelier_OPNUM_ORDEM: TIntegerField;
    cdsAtelier_OPNOME_ATELIER: TStringField;
    cdsAtelier_OPID_ATELIER: TIntegerField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsAtelierFANTASIA: TStringField;
    qParametrosID_ATELIER_ADEFINIR: TIntegerField;
    sdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    cdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    sdsPedido_Pend: TSQLDataSet;
    dspPedido_Pend: TDataSetProvider;
    cdsPedido_Pend: TClientDataSet;
    dsPedido_Pend: TDataSource;
    cdsPedido_PendID_CLIENTE: TIntegerField;
    cdsPedido_PendID: TIntegerField;
    cdsPedido_PendPEDIDO_CLIENTE: TStringField;
    cdsPedido_PendDTEMISSAO: TDateField;
    cdsPedido_PendDTENTREGA_PED: TDateField;
    cdsPedido_PendNUM_PEDIDO: TIntegerField;
    cdsPedido_PendID_VENDEDOR: TIntegerField;
    cdsPedido_PendFILIAL: TIntegerField;
    cdsPedido_PendNOME_FILIAL: TStringField;
    cdsPedido_PendNOME_FILIAL_INT: TStringField;
    cdsPedido_PendNOME_CLIENTE: TStringField;
    cdsPedido_PendCLIENTE_ESTOQUE: TStringField;
    cdsPedido_PendNOME_PRODUTO: TStringField;
    cdsPedido_PendREFERENCIA: TStringField;
    cdsPedido_PendITEM: TIntegerField;
    cdsPedido_PendID_PRODUTO: TIntegerField;
    cdsPedido_PendDTENTREGA_ITEM: TDateField;
    cdsPedido_PendQTD: TFloatField;
    cdsPedido_PendQTD_FATURADO: TFloatField;
    cdsPedido_PendQTD_RESTANTE: TFloatField;
    cdsPedido_PendQTD_CANCELADO: TFloatField;
    cdsPedido_PendNOME_VENDEDOR: TStringField;
    cdsPedido_PendVLR_UNITARIO: TFloatField;
    cdsPedido_PendVLR_DESCONTO: TFloatField;
    cdsPedido_PendVLR_TOTAL: TFloatField;
    cdsPedido_PendNUMOS: TStringField;
    cdsPedido_PendFANTASIA: TStringField;
    cdsPedido_PendNUM_DOC: TIntegerField;
    cdsPedido_PendNUM_TALAO: TStringField;
    cdsPedido_PendQTD_PECA: TIntegerField;
    cdsPedido_PendTIPO_REG: TStringField;
    cdsPedido_PendAPROVADO_ORC: TStringField;
    cdsPedido_PendPERC_COMISSAO: TFloatField;
    cdsPedido_PendID_COR: TFMTBCDField;
    cdsPedido_PendNOME_COR_COMBINACAO: TStringField;
    cdsPedido_PendTAMANHO: TStringField;
    cdsPedido_PendVLR_RESTANTE: TFloatField;
    cdsPedido_PendVLR_FATURADO: TFloatField;
    cdsPedido_PendVLR_CANCELADO: TFloatField;
    cdsPedido_PendclQtd_Restante: TFloatField;
    cdsPedido_PendQTD_PRODUZIDA: TFloatField;
    cdsPedido_PendQTD_AFATURAR: TFloatField;
    cdsPedido_PendNOME_PRODUTO_PED: TStringField;
    cdsPedido_PendID_CFOP: TIntegerField;
    cdsPedido_PendUNIDADE: TStringField;
    cdsPedido_PendPERC_ICMS: TFloatField;
    cdsPedido_PendPERC_IPI: TFloatField;
    cdsPedido_PendPERC_TRIBICMS: TFloatField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    cdsPedido_PendID_LOCAL_ESTOQUE: TIntegerField;
    sdsTalao_AuxDTSISTEMA: TDateField;
    sdsTalao_AuxHRSISTEMA: TTimeField;
    cdsTalao_AuxDTSISTEMA: TDateField;
    cdsTalao_AuxHRSISTEMA: TTimeField;
    sdsLote: TSQLDataSet;
    dspLote: TDataSetProvider;
    cdsLote: TClientDataSet;
    sdsLoteID: TIntegerField;
    sdsLoteNUM_LOTE: TIntegerField;
    sdsLoteQTD_TALOES: TIntegerField;
    sdsLoteDTEMISSAO: TDateField;
    sdsLoteHREMISSAO: TTimeField;
    sdsLoteFILIAL: TIntegerField;
    sdsLoteOBS: TMemoField;
    sdsLoteID_PRODUTO: TIntegerField;
    sdsLoteDTENTREGA: TDateField;
    sdsLoteQTD: TFloatField;
    sdsLoteNUM_ORDEM: TIntegerField;
    sdsLoteCARIMBO: TStringField;
    sdsLoteID_COMBINACAO: TIntegerField;
    sdsLoteNOME: TStringField;
    sdsLoteNUM_PEDIDO: TIntegerField;
    sdsLoteTALAO_AUX_GERADO: TStringField;
    sdsLoteDTENTRADA: TDateField;
    sdsLoteHRENTRADA: TTimeField;
    sdsLoteDTBAIXA: TDateField;
    sdsLoteHRBAIXA: TTimeField;
    cdsLoteID: TIntegerField;
    cdsLoteNUM_LOTE: TIntegerField;
    cdsLoteQTD_TALOES: TIntegerField;
    cdsLoteDTEMISSAO: TDateField;
    cdsLoteHREMISSAO: TTimeField;
    cdsLoteFILIAL: TIntegerField;
    cdsLoteOBS: TMemoField;
    cdsLoteID_PRODUTO: TIntegerField;
    cdsLoteDTENTREGA: TDateField;
    cdsLoteQTD: TFloatField;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteCARIMBO: TStringField;
    cdsLoteID_COMBINACAO: TIntegerField;
    cdsLoteNOME: TStringField;
    cdsLoteNUM_PEDIDO: TIntegerField;
    cdsLoteTALAO_AUX_GERADO: TStringField;
    cdsLoteDTENTRADA: TDateField;
    cdsLoteHRENTRADA: TTimeField;
    cdsLoteDTBAIXA: TDateField;
    cdsLoteHRBAIXA: TTimeField;
    qLote2: TSQLQuery;
    qLote2NUM_LOTE: TIntegerField;
    qLote2NUM_ORDEM: TIntegerField;
    qLote2ID: TIntegerField;
    sdsTalaoID_COMBINACAO: TIntegerField;
    sdsTalaoID_PROCESSO: TIntegerField;
    sdsTalaoDTENTRADA: TDateField;
    sdsTalaoHRENTRADA: TTimeField;
    cdsTalaoID_COMBINACAO: TIntegerField;
    cdsTalaoID_PROCESSO: TIntegerField;
    cdsTalaoDTENTRADA: TDateField;
    cdsTalaoHRENTRADA: TTimeField;
    sdsProcesso_Grupo: TSQLDataSet;
    dspProcesso_Grupo: TDataSetProvider;
    cdsProcesso_Grupo: TClientDataSet;
    dsProcesso_Grupo: TDataSource;
    cdsProcesso_GrupoID: TIntegerField;
    cdsProcesso_GrupoITEM: TIntegerField;
    cdsProcesso_GrupoID_PROCESSO: TIntegerField;
    cdsProcesso_GrupoNOME: TStringField;
    cdsProcesso_GrupoTIPO: TStringField;
    cdsAtelier_OPTIPO: TStringField;
    sdsProduto_CMat: TSQLDataSet;
    dspProduto_CMat: TDataSetProvider;
    cdsProduto_CMat: TClientDataSet;
    dsProduto_CMat: TDataSource;
    cdsProduto_CMatID: TIntegerField;
    cdsProduto_CMatITEM: TIntegerField;
    cdsProduto_CMatNOME_COMBINACAO: TStringField;
    cdsProduto_CMatID_MATERIAL: TIntegerField;
    cdsProduto_CMatMATERIAL: TStringField;
    cdsProduto_CMatID_SETOR: TIntegerField;
    cdsProduto_CMatNOME_POSICAO: TStringField;
    cdsProduto_CMatQTD_CONSUMO: TFloatField;
    cdsProduto_CMatNOME_SETOR: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    cdsProduto_CMatTIPO_CONSUMO: TStringField;
    cdsProduto_CMatITEM_CONSUMO: TIntegerField;
    sdsBaixa_Pedido_MPID_COR: TIntegerField;
    cdsBaixa_Pedido_MPID_COR: TIntegerField;
    cdsProduto_CMatID_COR_MAT: TFMTBCDField;
    cdsProduto_CMatNOME_COR_MAT: TStringField;
    qParametros_Est: TSQLQuery;
    qParametros_EstMARCAR_BAIXA_PEDIDO: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerLIB_QTD_PEDIDO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPedido_ItemCalcFields(DataSet: TDataSet);
    procedure cdsBaixa_PedidoNewRecord(DataSet: TDataSet);
    procedure cdsPedido_PendCalcFields(DataSet: TDataSet);
    procedure cdsBaixa_Pedido_MPBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vTipoDoc : String;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Abrir_Produto_Consumo(ID_Produto : Integer);
    procedure prc_Abrir_Produto_CMat(ID_Produto, ID_Cor : Integer);
    procedure prc_Gravar_Baixa_MP(Qtd, Qtd_Consumo : Real ; Tamanho : String ; ID_Cor : Integer);
    procedure prc_Le_Produto_Consumo(Qtd : Real);

  public
    { Public declarations }
    ctPedido_Item  : String;
    ctBaixa_Pedido : String;
    ctBaixa_Talao  : String;
    ctLote_Talao   : String;
    ctCliente      : String;
    ctPedido_Pend  : String;

    fDMEstoque : TDMEstoque;
    procedure prc_Abrir_Baixa_Pedido(ID : Integer);
    procedure prc_Gravar_Baixa(Tipo_Reg_Pedido, Estoque, Tipo_Mov : String ; DtBaixa : TDateTime);
    procedure prc_Abrir_Cliente(Tipo_Reg, Tipo_Baixa : String);
  end;

var
  DMBaixaPedido: TDMBaixaPedido;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}


procedure TDMBaixaPedido.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctPedido_Item  := sdsPedido_Item.CommandText;
  ctBaixa_Pedido := sdsBaixa_Pedido.CommandText;
  ctLote_Talao   := sdsLote_Talao.CommandText;
  ctBaixa_Talao  := sdsBaixa_Talao.CommandText;
  ctCliente      := sdsCliente.CommandText;
  ctPedido_Pend  := sdsPedido_Pend.CommandText;                                              
  cdsFilial.Open;
  cdsProduto.Open;
  qParametros.Open;
  qParametros_Est.Open;
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

procedure TDMBaixaPedido.prc_Abrir_Baixa_Pedido(ID: Integer);
begin
  cdsBaixa_Pedido.Close;
  sdsBaixa_Pedido.CommandText := ctBaixa_Pedido;
  if ID <> 0 then
    sdsBaixa_Pedido.CommandText := sdsBaixa_Pedido.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsBaixa_Pedido.Open;
  cdsBaixa_Pedido_MP.Close;
  cdsBaixa_Pedido_MP.Open;
end;

procedure TDMBaixaPedido.cdsPedido_ItemCalcFields(DataSet: TDataSet);
begin
  if vTipo_Baixa_Ped = 'PRO' then
    cdsPedido_ItemclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_ItemQTD.AsFloat - cdsPedido_ItemQTD_PRODUZIDA.AsFloat))
  else
    cdsPedido_ItemclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_ItemQTD_RESTANTE.AsFloat));
  if StrToFloat(FormatFloat('0.000000',cdsPedido_ItemclQtd_Restante.AsFloat)) <= 0 then
    cdsPedido_ItemclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',0));
end;

procedure TDMBaixaPedido.cdsBaixa_PedidoNewRecord(DataSet: TDataSet);
begin
  cdsBaixa_PedidoTIPO_MOV.AsString := 'P';
end;

procedure TDMBaixaPedido.prc_Gravar_Baixa(Tipo_Reg_Pedido, Estoque, Tipo_Mov : String ; DtBaixa : TDateTime);
var
  ID: TTransactionDesc;
  vAux : Integer;
  vID_Estoque : Integer;
  vES : String;
  vID_BaixaTalao : Integer;
  vQtd : Real;
begin
  vAux := dmDatabase.ProximaSequencia('BAIXA_PEDIDO',0);
  if not cdsBaixa_Pedido.Active then
    prc_Abrir_Baixa_Pedido(-1);

  if vTipo_Baixa_Ped = 'PRO' then
  begin
    vES      := 'E';
    vTipoDoc := 'PRD';
  end
  else
  if Tipo_Reg_Pedido = 'C' then
  begin
    vES      := 'E';
    vTipoDoc := 'OCF';
  end
  else
  begin
    vES      := 'S';
    vTipoDoc := 'PED';
  end;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if Tipo_Mov = 'T' then
      vQtd := cdsTalao_PedQTD.AsFloat
    else
      vQtd := cdsPedido_PendQTD_AFATURAR.AsFloat;
    cdsBaixa_Pedido.Insert;
    cdsBaixa_PedidoID.AsInteger := vAux;
    if vTipo_Baixa_Ped = 'PRO' then
      cdsBaixa_PedidoTIPO_REG.AsString       := 'PRO'
    else
      cdsBaixa_PedidoTIPO_REG.AsString       := 'FAT';
    cdsBaixa_PedidoID_PEDIDO.AsInteger     := cdsPedido_PendID.AsInteger;
    cdsBaixa_PedidoITEM_PEDIDO.AsInteger   := cdsPedido_PendITEM.AsInteger;
    cdsBaixa_PedidoDTBAIXA.AsDateTime      := DtBaixa;
    cdsBaixa_PedidoQTD.AsFloat             := vQtd;
    cdsBaixa_PedidoNUM_PEDIDO.AsInteger    := cdsPedido_PendNUM_PEDIDO.AsInteger;
    cdsBaixa_PedidoPEDIDO_CLIENTE.AsString := cdsPedido_PendPEDIDO_CLIENTE.AsString;
    cdsBaixa_PedidoID_MOVESTOQUE.AsInteger := 0;
    cdsBaixa_PedidoTIPO_MOV.AsString       := Tipo_Mov;
    cdsBaixa_Pedido.Post;

    //aqui 24/01/2014
    if Estoque = 'S' then
    begin
      if ((qParametrosBAIXA_ESTOQUE_MP.AsString = 'P') and (cdsBaixa_PedidoTIPO_REG.AsString = 'PRO')) or
         ((qParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and (cdsBaixa_PedidoTIPO_REG.AsString = 'FAT')) then
        prc_Le_Produto_Consumo(vQtd);
    end;

    if Tipo_Mov = 'T' then
    begin
      vID_BaixaTalao := dmDatabase.ProximaSequencia('BAIXA_TALAO',0);
      
      cdsBaixa_Talao.Insert;
      cdsBaixa_TalaoID.AsInteger              := vID_BaixaTalao;
      cdsBaixa_TalaoNUM_TALAO.AsInteger       := cdsLote_TalaoNUM_TALAO.AsInteger;
      cdsBaixa_TalaoNUM_LOTE.AsInteger        := cdsLote_TalaoNUM_LOTE.AsInteger;
      cdsBaixa_TalaoQTD.AsFloat               := cdsTalao_PedQTD.AsFloat;
      cdsBaixa_TalaoDTBAIXA.AsDateTime        := DtBaixa;
      cdsBaixa_TalaoHRBAIXA.AsDateTime        := Now;
      cdsBaixa_TalaoID_BAIXA_PEDIDO.AsInteger := cdsBaixa_PedidoID.AsInteger;
      cdsBaixa_TalaoID_LOTE.AsInteger         := cdsLote_TalaoID.AsInteger;
      cdsBaixa_Talao.Post;
    end;

    if Estoque = 'S' then
    begin
      vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                                 cdsPedido_PendFILIAL.AsInteger,
                                                 cdsPedido_PendID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                 cdsPedido_PendID_PRODUTO.AsInteger,
                                                 cdsPedido_PendNUM_PEDIDO.AsInteger,
                                                 cdsPedido_PendID_CLIENTE.AsInteger,
                                                 cdsPedido_PendID_CFOP.AsInteger,
                                                 cdsPedido_PendID.AsInteger,0,
                                                 vES,vTipoDoc,
                                                 cdsPedido_PendUNIDADE.AsString,
                                                 cdsPedido_PendUNIDADE.AsString,
                                                 '',
                                                 cdsPedido_PendTAMANHO.AsString,
                                                 cdsBaixa_PedidoDTBAIXA.AsDateTime,
                                                 cdsPedido_PendVLR_UNITARIO.AsFloat,
                                                 cdsBaixa_PedidoQTD.AsFloat,
                                                 cdsPedido_PendPERC_ICMS.AsFloat,
                                                 cdsPedido_PendPERC_IPI.AsFloat,
                                                 cdsPedido_PendVLR_DESCONTO.AsFloat,
                                                 cdsPedido_PendPERC_TRIBICMS.AsFloat,
                                                 0,
                                                 cdsBaixa_PedidoQTD.AsFloat,
                                                 cdsPedido_PendVLR_UNITARIO.AsFloat,
                                                 cdsPedido_PendVLR_DESCONTO.AsFloat,0,'',
                                                 cdsPedido_PendID_COR.AsInteger,
                                                 '','N',0); //ver aqui sobre Lote Controle  04/11/2015
      cdsBaixa_Pedido.Edit;
      cdsBaixa_PedidoID_MOVESTOQUE.AsInteger := vID_Estoque;
      cdsBaixa_Pedido.Post;
    end;

    cdsBaixa_Pedido.ApplyUpdates(0);
    if Tipo_Mov = 'T' then
      cdsBaixa_Talao.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TDMBaixaPedido.prc_Abrir_Cliente(Tipo_Reg, Tipo_Baixa: String);
var
  vComando : String;
begin
  cdsCliente.Close;
  vComando := '';
  if Tipo_Reg = 'C' then
    vComando := ' WHERE TP_FORNECEDOR = ' + QuotedStr('S')
  else
  begin
    vComando := ' WHERE TP_CLIENTE = ' + QuotedStr('S');
    if Tipo_Baixa = 'FAT' then
      vComando := vComando + ' AND CLIENTE_ESTOQUE = ' + QuotedStr('N');
  end;
  sdsCliente.CommandText := ctCliente + vComando;
  cdsCliente.Open;
end;

procedure TDMBaixaPedido.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMBaixaPedido.prc_Le_Produto_Consumo(Qtd : Real);
begin
  if qParametrosINFORMAR_COR_PROD.AsString = 'B' then
  begin
    prc_Abrir_Produto_CMat(cdsPedido_PendID_PRODUTO.AsInteger,cdsPedido_PendID_COR.AsInteger);
    cdsProduto_CMat.First;
    while not cdsProduto_CMat.Eof do
    begin
      if (cdsProduto_CMatTIPO_CONSUMO.AsString = 'T') and (trim(cdsPedido_PendTAMANHO.AsString) <> '') then
      begin
        cdsProduto_Consumo_Tam.Close;
        sdsProduto_Consumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_CMatID.AsInteger;
        sdsProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_CMatITEM_CONSUMO.AsInteger;
        sdsProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := cdsPedido_PendTAMANHO.AsString;
        cdsProduto_Consumo_Tam.Open;
        if not cdsProduto_Consumo_Tam.IsEmpty then
          prc_Gravar_Baixa_MP(Qtd,cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat,'',cdsProduto_CMatID_COR_MAT.AsInteger);
      end
      else
      begin
        prc_Gravar_Baixa_MP(Qtd,cdsProduto_CMatQTD_CONSUMO.AsFloat,'',cdsProduto_CMatID_COR_MAT.AsInteger);
      end;
      cdsProduto_CMat.Next;
    end;
  end
  else
  begin
    prc_Abrir_Produto_Consumo(cdsPedido_PendID_PRODUTO.AsInteger);
    cdsProduto_Consumo.First;
    while not cdsProduto_Consumo.Eof do
    begin
      if (cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T') and (trim(cdsPedido_PendTAMANHO.AsString) <> '') then
      begin
        cdsProduto_Consumo_Tam.Close;
        sdsProduto_Consumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_ConsumoID.AsInteger;
        sdsProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_ConsumoITEM.AsInteger;
        sdsProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := cdsPedido_PendTAMANHO.AsString;
        cdsProduto_Consumo_Tam.Open;
        if not cdsProduto_Consumo_Tam.IsEmpty then
          prc_Gravar_Baixa_MP(Qtd,cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat,'',0);
      end
      else
      begin
        prc_Gravar_Baixa_MP(Qtd,cdsProduto_ConsumoQTD_CONSUMO.AsFloat,'',0);
      end;
      cdsProduto_Consumo.Next;
    end;
  end;
end;

procedure TDMBaixaPedido.prc_Abrir_Produto_Consumo(ID_Produto: Integer);
begin
  cdsProduto_Consumo.Close;
  sdsProduto_Consumo.ParamByName('ID').AsInteger := ID_Produto;
  cdsProduto_Consumo.Open;
end;

procedure TDMBaixaPedido.prc_Gravar_Baixa_MP(Qtd, Qtd_Consumo : Real ; Tamanho : String ; ID_Cor : Integer);
var
  vItem : Integer;
  vID_Estoque : Integer;
begin
  cdsBaixa_Pedido_MP.Last;
  vItem := cdsBaixa_Pedido_MPITEM.AsInteger + 1;

  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := cdsProduto_ConsumoID_MATERIAL.AsInteger;
  qMaterial.Open;

  cdsBaixa_Pedido_MP.Insert;
  cdsBaixa_Pedido_MPID.AsInteger            := cdsBaixa_PedidoID.AsInteger;
  cdsBaixa_Pedido_MPITEM.AsInteger          := vItem;
  cdsBaixa_Pedido_MPID_MATERIAL.AsInteger   := qMaterialID.AsInteger;
  if qMaterialUSA_GRADE.AsString = 'S' then
    cdsBaixa_Pedido_MPTAMANHO.AsString        := cdsPedido_PendTAMANHO.AsString
  else
    cdsBaixa_Pedido_MPTAMANHO.AsString        := '';
  cdsBaixa_Pedido_MPQTD_CONSUMO.AsFloat     := Qtd_Consumo;
  cdsBaixa_Pedido_MPQTD.AsFloat             := StrToFloat(FormatFloat('0.00000',cdsBaixa_Pedido_MPQTD_CONSUMO.AsFloat * Qtd));
  cdsBaixa_Pedido_MPID_COR.AsInteger        := ID_Cor;
  if cdsBaixa_Pedido_MPID_COR.AsInteger <= 0 then
    cdsBaixa_Pedido_MPID_COR.AsInteger := 0;
  cdsBaixa_Pedido_MPID_MOVESTOQUE.AsInteger := 0;
  cdsBaixa_Pedido_MP.Post;

  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                             cdsPedido_PendFILIAL.AsInteger,
                                             cdsPedido_PendID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                             cdsBaixa_Pedido_MPID_MATERIAL.AsInteger,
                                             cdsPedido_PendNUM_PEDIDO.AsInteger,
                                             cdsPedido_PendID_CLIENTE.AsInteger,
                                             cdsPedido_PendID_CFOP.AsInteger,
                                             cdsPedido_PendID.AsInteger,0,
                                             'S',vTipoDoc,
                                             cdsProduto_ConsumoUNIDADE.AsString,
                                             cdsProduto_ConsumoUNIDADE.AsString,
                                             '',
                                             Tamanho,
                                             cdsBaixa_PedidoDTBAIXA.AsDateTime,
                                             qMaterialPRECO_CUSTO.AsFloat,
                                             cdsBaixa_Pedido_MPQTD.AsFloat,
                                             cdsPedido_PendPERC_ICMS.AsFloat,
                                             0,
                                             0,
                                             cdsPedido_PendPERC_TRIBICMS.AsFloat,
                                             0,
                                             cdsBaixa_Pedido_MPQTD.AsFloat,
                                             qMaterialPRECO_CUSTO.AsFloat,
                                             0,0,'',
                                             cdsBaixa_Pedido_MPID_COR.AsInteger,
                                             '','N',0); //ver aqui sobre Lote Controle  04/11/2015
  cdsBaixa_Pedido_MP.Edit;
  cdsBaixa_Pedido_MPID_MOVESTOQUE.AsInteger := vID_Estoque;
  cdsBaixa_Pedido_MP.Post;
end;

procedure TDMBaixaPedido.cdsPedido_PendCalcFields(DataSet: TDataSet);
begin
  if vTipo_Baixa_Ped = 'PRO' then
    cdsPedido_PendclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_PendQTD.AsFloat - cdsPedido_PendQTD_PRODUZIDA.AsFloat))
  else
    cdsPedido_PendclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_PendQTD_RESTANTE.AsFloat));
  if StrToFloat(FormatFloat('0.000000',cdsPedido_PendclQtd_Restante.AsFloat)) <= 0 then
    cdsPedido_PendclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',0));
end;

procedure TDMBaixaPedido.prc_Abrir_Produto_CMat(ID_Produto, ID_Cor: Integer);
begin
  cdsProduto_CMat.Close;
  sdsProduto_CMat.ParamByName('ID').AsInteger                := ID_Produto;
  sdsProduto_CMat.ParamByName('ID_COR_COMBINACAO').AsInteger := ID_Cor;
  cdsProduto_CMat.Open;
end;

procedure TDMBaixaPedido.cdsBaixa_Pedido_MPBeforePost(DataSet: TDataSet);
begin
  if (cdsBaixa_Pedido_MPID_COR.IsNull) or (cdsBaixa_Pedido_MPID_COR.AsInteger <= 0) then
    cdsBaixa_Pedido_MPID_COR.AsInteger := 0;
end;

end.
