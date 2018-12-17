unit UDMCadLote;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Variants, LogTypes,
  frxClass, frxDBSet, frxExportPDF;

type
  TDMCadLote = class(TDataModule)
    sdsLote: TSQLDataSet;
    dspLote: TDataSetProvider;
    cdsLote: TClientDataSet;
    dsLote: TDataSource;
    sdsLoteID: TIntegerField;
    sdsLoteNUM_LOTE: TIntegerField;
    sdsLoteQTD_TALOES: TIntegerField;
    sdsLoteDTEMISSAO: TDateField;
    sdsLoteHREMISSAO: TTimeField;
    cdsLoteID: TIntegerField;
    cdsLoteNUM_LOTE: TIntegerField;
    cdsLoteQTD_TALOES: TIntegerField;
    cdsLoteDTEMISSAO: TDateField;
    cdsLoteHREMISSAO: TTimeField;
    dsLote_Mestre: TDataSource;
    sdsTalao: TSQLDataSet;
    cdsTalao: TClientDataSet;
    dsTalao: TDataSource;
    sdsTalaoID: TIntegerField;
    sdsTalaoNUM_TALAO: TIntegerField;
    sdsTalaoID_PRODUTO: TIntegerField;
    sdsTalaoTAMANHO: TStringField;
    sdsTalaoQTD: TFloatField;
    sdsTalaoQTD_PRODUZIDO: TFloatField;
    sdsTalaoQTD_PENDENTE: TFloatField;
    sdsTalaoDTBAIXA: TDateField;
    sdsTalaoHRBAIXA: TTimeField;
    cdsLotesdsTalao: TDataSetField;
    cdsTalaoID: TIntegerField;
    cdsTalaoNUM_TALAO: TIntegerField;
    cdsTalaoID_PRODUTO: TIntegerField;
    cdsTalaoTAMANHO: TStringField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoQTD_PRODUZIDO: TFloatField;
    cdsTalaoQTD_PENDENTE: TFloatField;
    cdsTalaoDTBAIXA: TDateField;
    cdsTalaoHRBAIXA: TTimeField;
    dsTalao_Mestre: TDataSource;
    sdsTalao_Ped: TSQLDataSet;
    cdsTalao_Ped: TClientDataSet;
    dsTalao_Ped: TDataSource;
    cdsTalaosdsTalao_Ped: TDataSetField;
    cdsTalao_PedID: TIntegerField;
    cdsTalao_PedNUM_TALAO: TIntegerField;
    cdsTalao_PedID_PEDIDO: TIntegerField;
    cdsTalao_PedITEM_PEDIDO: TIntegerField;
    cdsTalao_PedQTD: TFloatField;
    cdsTalao_PedID_CLIENTE: TIntegerField;
    qProximo_Lote: TSQLQuery;
    qProximo_LoteNUM_LOTE: TIntegerField;
    sdsPendente: TSQLDataSet;
    dspPendente: TDataSetProvider;
    cdsPendente: TClientDataSet;
    dsPendente: TDataSource;
    cdsPendenteNUM_PEDIDO: TIntegerField;
    cdsPendentePEDIDO_CLIENTE: TStringField;
    cdsPendenteID_CLIENTE: TIntegerField;
    cdsPendenteDTEMISSAO: TDateField;
    cdsPendenteID: TIntegerField;
    cdsPendenteFILIAL: TIntegerField;
    cdsPendenteITEM: TIntegerField;
    cdsPendenteID_PRODUTO: TIntegerField;
    cdsPendenteTAMANHO: TStringField;
    cdsPendenteDTENTREGA: TDateField;
    cdsPendenteNUMOS: TStringField;
    cdsPendenteNOMEPRODUTO: TStringField;
    cdsPendenteREFERENCIA: TStringField;
    cdsPendenteNOME_CLIENTE: TStringField;
    cdsPendenteFANTASIA: TStringField;
    cdsTalao_PedBAIXADO: TStringField;
    sdsConsulta_Lote: TSQLDataSet;
    dspConsulta_Lote: TDataSetProvider;
    cdsConsulta_Lote: TClientDataSet;
    dsConsulta_Lote: TDataSource;
    cdsConsulta_LoteDTEMISSAO: TDateField;
    cdsConsulta_LoteNUM_LOTE: TIntegerField;
    cdsConsulta_LoteFILIAL: TIntegerField;
    cdsConsulta_LoteHREMISSAO: TTimeField;
    cdsConsulta_LoteID: TIntegerField;
    cdsConsulta_LoteNUM_TALAO: TIntegerField;
    cdsConsulta_LoteID_PRODUTO: TIntegerField;
    cdsConsulta_LoteTAMANHO: TStringField;
    cdsConsulta_LoteQTD: TFloatField;
    cdsConsulta_LoteQTD_PRODUZIDO: TFloatField;
    cdsConsulta_LoteQTD_PENDENTE: TFloatField;
    cdsConsulta_LoteDTBAIXA: TDateField;
    cdsConsulta_LoteHRBAIXA: TTimeField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsConsulta_LoteNOME_PRODUTO: TStringField;
    sdsLoteFILIAL: TIntegerField;
    sdsLoteOBS: TMemoField;
    sdsLoteID_PRODUTO: TIntegerField;
    cdsLoteFILIAL: TIntegerField;
    cdsLoteOBS: TMemoField;
    cdsLoteID_PRODUTO: TIntegerField;
    mLote: TClientDataSet;
    mLoteID_Produto: TIntegerField;
    mLoteDtEntrega: TDateField;
    mLoteQtd_Taloes: TIntegerField;
    mLoteQtd: TFloatField;
    mLoteFilial: TIntegerField;
    mTalao: TClientDataSet;
    mTalaoTamanho: TStringField;
    mTalaoQtd: TFloatField;
    sdsLoteQTD: TFloatField;
    cdsLoteQTD: TFloatField;
    sdsLoteDTENTREGA: TDateField;
    cdsLoteDTENTREGA: TDateField;
    cdsConsulta_LoteIMPRESSO: TStringField;
    cdsConsulta_LoteDTENTREGA: TDateField;
    mLoteReferencia: TStringField;
    mLoteNome_Produto: TStringField;
    mLoteDtEmissao: TDateField;
    mLoteNum_Lote: TIntegerField;
    mLoteNum_Talao: TIntegerField;
    mTalaoNum_Lote: TIntegerField;
    mTalaoNum_Talao: TIntegerField;
    cdsConsulta_LoteQTD_TALOES: TIntegerField;
    dsmLote: TDataSource;
    dsmTalao: TDataSource;
    cdsConsulta_LoteNOME_FILIAL: TStringField;
    mLoteNome_Filial: TStringField;
    mLoteUnidade: TStringField;
    cdsConsulta_LoteUNIDADE: TStringField;
    sdsBusca_Ped: TSQLDataSet;
    dspBusca_Ped: TDataSetProvider;
    cdsBusca_Ped: TClientDataSet;
    mLoteID_Lote: TIntegerField;
    cdsBusca_PedID: TIntegerField;
    cdsBusca_PedID_PEDIDO: TIntegerField;
    cdsBusca_PedNUM_PEDIDO: TIntegerField;
    cdsBusca_PedPEDIDO_CLIENTE: TStringField;
    mLoteTamanho: TStringField;
    qProxima_Ordem: TSQLQuery;
    qProxima_OrdemNUM_ORDEM: TIntegerField;
    sdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsConsulta_LoteNUM_ORDEM: TIntegerField;
    qVerificaExclusao: TSQLQuery;
    qVerificaExclusaoCOUNT: TIntegerField;
    sdsLoteCARIMBO: TStringField;
    cdsLoteCARIMBO: TStringField;
    cdsPendenteCARIMBO: TStringField;
    sdsProduto_Consumo: TSQLDataSet;
    dspProduto_Consumo: TDataSetProvider;
    cdsProduto_Consumo: TClientDataSet;
    dsProduto_Consumo: TDataSource;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    cdsProduto_ConsumoNOME_MATERIAL: TStringField;
    qParametros: TSQLQuery;
    qParametrosMOSTRAR_MAT_LOTE: TStringField;
    cdsProduto_ConsumoID_GRADE: TIntegerField;
    mLoteCarimbo: TStringField;
    cdsConsulta_LoteCARIMBO: TStringField;
    qParametrosUSA_CARIMBO: TStringField;
    mLoteID_Grade: TIntegerField;
    cdsConsulta_LoteID_GRADE: TIntegerField;
    mTamanho: TClientDataSet;
    mTamanhoTamanho: TStringField;
    mTamanhoQtd: TFloatField;
    dsmTamanho: TDataSource;
    cdsProduto_ConsumoREF_MATERIAL: TStringField;
    mLoteNum_Ordem: TIntegerField;
    mAuxiliar_Talao: TClientDataSet;
    mAuxiliar_TalaoID_Produto: TIntegerField;
    mAuxiliar_TalaoTamanho: TStringField;
    mAuxiliar_TalaoNum_Talao: TIntegerField;
    cdsProdutoPERC_QUEBRAMAT: TFloatField;
    cdsProdutoCAVIDADE_MOLDE: TFloatField;
    cdsProdutoCAVIDADE_PECA: TFloatField;
    cdsProdutoCICLO: TFloatField;
    cdsProdutoQTD_TALAO: TIntegerField;
    cdsProdutoTEMPO_TROCA_MATRIZ: TFloatField;
    cdsProdutoTEMPO_TROCA_COR: TFloatField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteFANTASIA: TStringField;
    sdsPedido_Talao: TSQLDataSet;
    dspPedido_Talao: TDataSetProvider;
    cdsPedido_Talao: TClientDataSet;
    cdsPedido_TalaoID_PEDIDO: TIntegerField;
    cdsPedido_TalaoNUM_PEDIDO: TIntegerField;
    cdsPedido_TalaoPEDIDO_CLIENTE: TStringField;
    cdsPedido_TalaoNOME_CLIENTE: TStringField;
    cdsPedido_TalaoFANTASIA: TStringField;
    cdsPedido_TalaoNUMOS: TStringField;
    cdsPedido_TalaoID_CLIENTE_TRIANGULAR: TIntegerField;
    cdsPedido_TalaoNOME_TRIANGULAR: TStringField;
    cdsConsulta_LoteACABAMENTO: TStringField;
    cdsConsulta_LoteCOR_ACABAMENTO: TStringField;
    mLoteAcabamento: TStringField;
    mLoteCor_Acabamento: TStringField;
    qProduto_Consumo: TSQLQuery;
    qProduto_ConsumoID: TIntegerField;
    qProduto_ConsumoID_MATERIAL: TIntegerField;
    qProduto_ConsumoNOME_MATERIAL: TStringField;
    cdsConsulta_LoteID_TIPO_MATRIZ: TIntegerField;
    mLoteNome_TipoMatriz: TStringField;
    cdsConsulta_LoteNOME_TIPOMATRIZ: TStringField;
    mPendente: TClientDataSet;
    mPendenteNUM_PEDIDO: TIntegerField;
    mPendentePEDIDO_CLIENTE: TStringField;
    mPendenteID_CLIENTE: TIntegerField;
    mPendenteDTEMISSAO: TDateField;
    mPendenteID: TIntegerField;
    mPendenteFILIAL: TIntegerField;
    mPendenteID_PRODUTO: TIntegerField;
    mPendenteID_COR: TIntegerField;
    mPendenteDTENTREGA: TDateField;
    mPendenteQTD_RESTANTE: TFloatField;
    mPendenteNUMOS: TStringField;
    mPendenteNOMEPRODUTO: TStringField;
    mPendenteREFERENCIA: TStringField;
    mPendenteNOME_CLIENTE: TStringField;
    mPendenteFANTASIA: TStringField;
    mPendenteCARIMBO: TStringField;
    dsmPendente: TDataSource;
    mPendente_Tam: TClientDataSet;
    mPendente_TamNUM_PEDIDO: TIntegerField;
    mPendente_TamID_PRODUTO: TIntegerField;
    mPendente_TamTAMANHO: TStringField;
    mPendente_TamQTD_RESTANTE: TFloatField;
    dsmPendente_Tam: TDataSource;
    mLoteSelecionado: TStringField;
    cdsProduto_ConsumoIMP_ROTULO: TStringField;
    cdsProduto_ConsumoIMP_TALAO: TStringField;
    cdsProduto_ConsumoIMP_TALAO_POS: TStringField;
    qParametrosALTURA_ETIQ_ROT: TIntegerField;
    qProduto_Consumo_Tam: TSQLQuery;
    qProduto_Consumo_TamID: TIntegerField;
    qProduto_Consumo_TamITEM: TIntegerField;
    qProduto_Consumo_TamTAMANHO: TStringField;
    qProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    sdsPedido_PorTalao: TSQLDataSet;
    dspPedido_PorTalao: TDataSetProvider;
    cdsPedido_PorTalao: TClientDataSet;
    dsPedido_PorTalao: TDataSource;
    cdsPedido_PorTalaoDTEMISSAO: TDateField;
    cdsPedido_PorTalaoID: TIntegerField;
    cdsPedido_PorTalaoNUM_PEDIDO: TIntegerField;
    cdsPedido_PorTalaoPEDIDO_CLIENTE: TStringField;
    cdsPedido_PorTalaoNUM_LOTE: TIntegerField;
    cdsPedido_PorTalaoNUM_ORDEM: TIntegerField;
    cdsPedido_PorTalaoID_CLIENTE: TIntegerField;
    cdsPedido_PorTalaoNOME_CLIENTE: TStringField;
    cdsProduto_ConsumoNOME_POSICAO: TStringField;
    cdsProduto_ConsumoIMP_MATERIAL: TStringField;
    cdsProduto_ConsumoIMP_AGRUPADO_MATERIAL: TStringField;
    cdsProduto_ConsumoNOME_COR: TStringField;
    qParametrosIMP_NOME_POSICAO: TStringField;
    cdsProduto_ConsumoID_COR: TIntegerField;
    cdsPendenteID_COR: TFMTBCDField;
    sdsLoteID_COMBINACAO: TIntegerField;
    cdsLoteID_COMBINACAO: TIntegerField;
    sdsTalaoID_COMBINACAO: TIntegerField;
    cdsTalaoID_COMBINACAO: TIntegerField;
    mLoteNome_Combinacao: TStringField;
    mLoteID_Combinacao: TIntegerField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosMOSTRAR_LINHA_PROD: TStringField;
    qParametrosMOSTRAR_EMBALAGEM: TStringField;
    qParametrosUSA_SETOR_CONSUMO: TStringField;
    qParametrosMOSTRAR_ATELIER_PROD: TStringField;
    cdsConsulta_LoteID_COMBINACAO: TIntegerField;
    cdsPendenteNOME_COMBINACAO: TStringField;
    mAuxiliar_TalaoCarimbo: TStringField;
    mAuxiliar_TalaoID_Combinacao: TIntegerField;
    sdsTalao_Aux: TSQLDataSet;
    sdsTalao_AuxID: TIntegerField;
    sdsTalao_AuxITEM: TIntegerField;
    sdsTalao_AuxID_ATELIER: TIntegerField;
    sdsTalao_AuxID_SETOR: TIntegerField;
    sdsTalao_AuxID_PRODUTO: TIntegerField;
    sdsTalao_AuxID_COMBINACAO: TIntegerField;
    sdsTalao_AuxQTD: TFloatField;
    sdsTalao_AuxDTSAIDA: TDateField;
    sdsTalao_AuxHRSAIDA: TTimeField;
    sdsTalao_AuxDTRETORNO: TDateField;
    sdsTalao_AuxHRRETORNO: TTimeField;
    cdsTalao_Aux: TClientDataSet;
    cdsLotesdsTalao_Aux: TDataSetField;
    dsTalao_Aux: TDataSource;
    dsTalao_Aux_Mestre: TDataSource;
    cdsTalao_AuxID: TIntegerField;
    cdsTalao_AuxITEM: TIntegerField;
    cdsTalao_AuxID_ATELIER: TIntegerField;
    cdsTalao_AuxID_SETOR: TIntegerField;
    cdsTalao_AuxID_PRODUTO: TIntegerField;
    cdsTalao_AuxID_COMBINACAO: TIntegerField;
    cdsTalao_AuxQTD: TFloatField;
    cdsTalao_AuxDTSAIDA: TDateField;
    cdsTalao_AuxHRSAIDA: TTimeField;
    cdsTalao_AuxDTRETORNO: TDateField;
    cdsTalao_AuxHRRETORNO: TTimeField;
    sdsTalao_Aux_Tam: TSQLDataSet;
    sdsTalao_Aux_TamID: TIntegerField;
    sdsTalao_Aux_TamITEM: TIntegerField;
    sdsTalao_Aux_TamITEM_TAM: TIntegerField;
    sdsTalao_Aux_TamTAMANHO: TStringField;
    sdsTalao_Aux_TamQTD: TFloatField;
    cdsTalao_AuxsdsTalao_Aux_Tam: TDataSetField;
    cdsTalao_Aux_Tam: TClientDataSet;
    cdsTalao_Aux_TamID: TIntegerField;
    cdsTalao_Aux_TamITEM: TIntegerField;
    cdsTalao_Aux_TamITEM_TAM: TIntegerField;
    cdsTalao_Aux_TamTAMANHO: TStringField;
    cdsTalao_Aux_TamQTD: TFloatField;
    dsTalao_Aux_Tam: TDataSource;
    qCombinacao: TSQLQuery;
    qCombinacaoID: TFMTBCDField;
    qCombinacaoID_PRODUTO: TIntegerField;
    qCombinacaoITEM_COMBINACAO: TIntegerField;
    qCombinacaoID_COR: TIntegerField;
    qCombinacaoNOME: TStringField;
    qProduto_Emb: TSQLQuery;
    qProduto_EmbID: TIntegerField;
    qProduto_EmbITEM: TIntegerField;
    qProduto_EmbID_MATERIAL: TIntegerField;
    qProduto_EmbQTD_EMB: TFloatField;
    qProduto_EmbNOME_MATERIAL: TStringField;
    qProduto_Comb: TSQLQuery;
    qProduto_CombID: TIntegerField;
    qProduto_CombID_COR_COMBINACAO: TIntegerField;
    qProduto_CombNOME: TStringField;
    qProduto_CombID_MATERIAL: TIntegerField;
    qProduto_CombID_COR: TIntegerField;
    qProduto_CombID_POSICAO: TIntegerField;
    qProduto_Atelier: TSQLQuery;
    qProduto_AtelierID: TIntegerField;
    qProduto_AtelierITEM: TIntegerField;
    qProduto_AtelierID_ATELIER: TIntegerField;
    qProduto_AtelierID_SETOR: TIntegerField;
    qProduto_AtelierVLR_PAR: TFloatField;
    qProduto_AtelierNOME_ATELIER: TStringField;
    qProduto_AtelierNOME_SETOR: TStringField;
    qParametrosGERAR_TALAO_AUXILIAR: TStringField;
    qProduto_AtelierLIMITE_POR_TALAO: TStringField;
    qProduto_AtelierQTD_LIMITE_POR_TALAO: TIntegerField;
    qProduto_AtelierGERAR_TALAO: TStringField;
    sdsConsulta_Talao_Aux: TSQLDataSet;
    dspConsulta_Talao_Aux: TDataSetProvider;
    cdsConsulta_Talao_Aux: TClientDataSet;
    dsConsulta_Talao_Aux: TDataSource;
    cdsConsulta_Talao_AuxID_TALAO: TIntegerField;
    cdsConsulta_Talao_AuxITEM: TIntegerField;
    cdsConsulta_Talao_AuxID_ATELIER: TIntegerField;
    cdsConsulta_Talao_AuxID_SETOR: TIntegerField;
    cdsConsulta_Talao_AuxID_PRODUTO: TIntegerField;
    cdsConsulta_Talao_AuxID_COMBINACAO: TIntegerField;
    cdsConsulta_Talao_AuxQTD_TALAO: TFloatField;
    cdsConsulta_Talao_AuxDTSAIDA: TDateField;
    cdsConsulta_Talao_AuxHRSAIDA: TTimeField;
    cdsConsulta_Talao_AuxDTRETORNO: TDateField;
    cdsConsulta_Talao_AuxHRRETORNO: TTimeField;
    cdsConsulta_Talao_AuxNOME_ATELIER: TStringField;
    cdsConsulta_Talao_AuxNOME_SETOR: TStringField;
    cdsConsulta_Talao_AuxREFERENCIA: TStringField;
    cdsConsulta_Talao_AuxNOME_PRODUTO: TStringField;
    cdsConsulta_Talao_AuxNOME_COMBINACAO: TStringField;
    cdsConsulta_Talao_AuxNUM_LOTE: TIntegerField;
    cdsConsulta_Talao_AuxNUM_ORDEM: TIntegerField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsAtelierCNPJ_CPF: TStringField;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    mLoteAux: TClientDataSet;
    mLoteAuxID: TIntegerField;
    mLoteAuxQtd: TIntegerField;
    mTalaoAux: TClientDataSet;
    mTalaoAuxID: TIntegerField;
    mTalaoAuxTamanho: TStringField;
    mTalaoAuxQtd: TIntegerField;
    dsmLoteAux: TDataSource;
    sdsConsulta_Talao_Aux_Tam: TSQLDataSet;
    dspConsulta_Talao_Aux_Tam: TDataSetProvider;
    cdsConsulta_Talao_Aux_Tam: TClientDataSet;
    dsConsulta_Talao_Aux_Tam: TDataSource;
    cdsConsulta_Talao_Aux_TamID: TIntegerField;
    cdsConsulta_Talao_Aux_TamITEM: TIntegerField;
    cdsConsulta_Talao_Aux_TamITEM_TAM: TIntegerField;
    cdsConsulta_Talao_Aux_TamTAMANHO: TStringField;
    cdsConsulta_Talao_Aux_TamQTD: TFloatField;
    cdsConsulta_Talao_AuxFILIAL: TIntegerField;
    cdsConsulta_Talao_AuxNOME_FILIAL: TStringField;
    mImpTalao_Aux: TClientDataSet;
    mImpTalao_AuxID: TIntegerField;
    mImpTalao_AuxItem: TIntegerField;
    dsImpTalao_Aux: TDataSource;
    cdsConsulta_Talao_AuxCARIMBO: TStringField;
    cdsConsulta_Talao_AuxENDLOGO: TStringField;
    qParametrosUSA_POSICAO_CONSUMO: TStringField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialID_GRADE: TIntegerField;
    qMaterialNOME: TStringField;
    qMaterialID_FORNECEDOR: TIntegerField;
    qMaterialNOME_FORNECEDOR: TStringField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPERC_IPI: TFloatField;
    qMaterialREFERENCIA: TStringField;
    qMaterialID_NCM: TIntegerField;
    sdsProduto_Consumo_Setor: TSQLDataSet;
    dspProduto_Consumo_Setor: TDataSetProvider;
    cdsProduto_Consumo_Setor: TClientDataSet;
    dsProduto_Consumo_Setor: TDataSource;
    cdsProduto_Consumo_SetorID: TIntegerField;
    cdsProduto_Consumo_SetorITEM: TIntegerField;
    cdsProduto_Consumo_SetorID_MATERIAL: TIntegerField;
    cdsProduto_Consumo_SetorQTD_CONSUMO: TFloatField;
    cdsProduto_Consumo_SetorQTD_UNIDADE: TFloatField;
    cdsProduto_Consumo_SetorUNIDADE: TStringField;
    cdsProduto_Consumo_SetorID_POSICAO: TIntegerField;
    cdsProduto_Consumo_SetorTIPO_CONSUMO: TStringField;
    cdsProduto_Consumo_SetorIMP_ROTULO: TStringField;
    cdsProduto_Consumo_SetorIMP_TALAO: TStringField;
    cdsProduto_Consumo_SetorID_SETOR: TIntegerField;
    cdsProduto_Consumo_SetorIMP_TALAO_POS: TStringField;
    cdsProduto_Consumo_SetorNOME_MATERIAL: TStringField;
    cdsProduto_Consumo_SetorID_GRADE: TIntegerField;
    cdsProduto_Consumo_SetorREF_MATERIAL: TStringField;
    cdsProduto_Consumo_SetorNOME_POSICAO: TStringField;
    sdsLoteNOME: TStringField;
    cdsLoteNOME: TStringField;
    mLoteAuxPercentual: TFloatField;
    qProduto_CombNOME_COR_MATERIAL: TStringField;
    sdsLoteNUM_PEDIDO: TIntegerField;
    cdsLoteNUM_PEDIDO: TIntegerField;
    mLoteAuxQtdAux: TIntegerField;
    cdsConsulta_LoteNOME_COMBINACAO: TStringField;
    qConsumo_Tam: TSQLQuery;
    qConsumo_TamQTD_CONSUMO: TFloatField;
    sdsLote_Mat: TSQLDataSet;
    dspLote_Mat: TDataSetProvider;
    cdsLote_Mat: TClientDataSet;
    dsLote_Mat: TDataSource;
    sdsLote_MatNUM_ORDEM: TIntegerField;
    sdsLote_MatITEM: TIntegerField;
    sdsLote_MatID_MATERIAL: TIntegerField;
    sdsLote_MatID_COR: TIntegerField;
    sdsLote_MatCARIMBO: TStringField;
    sdsLote_MatTAMANHO: TStringField;
    sdsLote_MatQTD_CONSUMO: TFloatField;
    sdsLote_MatQTD_PRODUTO: TFloatField;
    cdsLote_MatNUM_ORDEM: TIntegerField;
    cdsLote_MatITEM: TIntegerField;
    cdsLote_MatID_MATERIAL: TIntegerField;
    cdsLote_MatID_COR: TIntegerField;
    cdsLote_MatCARIMBO: TStringField;
    cdsLote_MatTAMANHO: TStringField;
    cdsLote_MatQTD_CONSUMO: TFloatField;
    cdsLote_MatQTD_PRODUTO: TFloatField;
    sdsLote_MatCARIMBOAUX: TStringField;
    cdsLote_MatCARIMBOAUX: TStringField;
    sdsConsumo: TSQLDataSet;
    dspConsumo: TDataSetProvider;
    cdsConsumo: TClientDataSet;
    cdsConsumoID: TIntegerField;
    cdsConsumoREFERENCIA: TStringField;
    cdsConsumoNOME_PRODUTO: TStringField;
    cdsConsumoID_COR_COMBINACAO: TIntegerField;
    cdsConsumoNOME_COMBINACAO: TStringField;
    cdsConsumoID_MATERIAL: TIntegerField;
    cdsConsumoQTD_CONSUMO: TFloatField;
    cdsConsumoTIPO_CONSUMO: TStringField;
    cdsConsumoITEM_CONSUMO: TIntegerField;
    cdsConsumoNOME_MATERIAL: TStringField;
    cdsConsumoTRANSFER: TStringField;
    cdsConsumoID_GRADE_MAT: TIntegerField;
    cdsConsumoID_COR_MAT: TIntegerField;
    cdsConsumoNOME_COR: TStringField;
    sdsLote_MatID_OC: TIntegerField;
    sdsLote_MatITEM_OC: TIntegerField;
    sdsLote_MatNUM_OC: TIntegerField;
    sdsLote_MatID_FORNECEDOR: TIntegerField;
    cdsLote_MatID_OC: TIntegerField;
    cdsLote_MatITEM_OC: TIntegerField;
    cdsLote_MatNUM_OC: TIntegerField;
    cdsLote_MatID_FORNECEDOR: TIntegerField;
    cdsConsumoID_FORNECEDOR: TIntegerField;
    qVerificaExclusao2: TSQLQuery;
    qVerificaExclusao2CONTADOR: TIntegerField;
    cdsPendenteQTD_RESTANTE: TFloatField;
    sdsPedido_Ord: TSQLDataSet;
    dspPedido_Ord: TDataSetProvider;
    cdsPedido_Ord: TClientDataSet;
    cdsPedido_OrdID_PEDIDO: TIntegerField;
    cdsPedido_OrdNUM_PEDIDO: TIntegerField;
    cdsPedido_OrdPEDIDO_CLIENTE: TStringField;
    cdsPedido_OrdNOME_CLIENTE: TStringField;
    cdsPedido_OrdFANTASIA: TStringField;
    cdsPedido_OrdNUM_ORDEM: TIntegerField;
    dsPedido_Ord: TDataSource;
    sdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    cdsTalao_AuxID_ATELIER_ORIG: TIntegerField;
    sdsLoteTALAO_AUX_GERADO: TStringField;
    cdsLoteTALAO_AUX_GERADO: TStringField;
    mLoteTalao_Aux_Gerado: TStringField;
    cdsConsulta_LoteTALAO_AUX_GERADO: TStringField;
    cdsPendenteITEM_ORIGINAL: TIntegerField;
    mLoteNome_Lote: TStringField;
    cdsConsulta_LoteNOME_LOTE: TStringField;
    cdsConsulta_Talao_AuxNOME_LOTE: TStringField;
    cdsConsulta_Talao_AuxTALAO_COD_BARRA: TStringField;
    qParametrosUSA_ROTULO2: TStringField;
    mGerarAux: TClientDataSet;
    mGerarAuxTamanho: TStringField;
    mGerarAuxQtd: TFloatField;
    sdsLote_MatQTD_OC_FAT: TFloatField;
    cdsLote_MatQTD_OC_FAT: TFloatField;
    sdsLote_MatGERADO: TStringField;
    cdsLote_MatGERADO: TStringField;
    sdsTalao_AuxDTSISTEMA: TDateField;
    sdsTalao_AuxHRSISTEMA: TTimeField;
    sdsTalao_AuxDTPAGAMENTO: TDateField;
    sdsTalao_AuxSELECIONADO: TStringField;
    cdsTalao_AuxDTSISTEMA: TDateField;
    cdsTalao_AuxHRSISTEMA: TTimeField;
    cdsTalao_AuxDTPAGAMENTO: TDateField;
    cdsTalao_AuxSELECIONADO: TStringField;
    cdsPendenteSELECIONADO: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    cdsConsumoUSA_CARIMBO_OC: TStringField;
    qProduto_Processo: TSQLQuery;
    qProduto_ProcessoID: TIntegerField;
    qProduto_ProcessoITEM: TIntegerField;
    qProduto_ProcessoID_PROCESSO: TIntegerField;
    qProduto_ProcessoID_SETOR: TIntegerField;
    qProduto_ProcessoNOME_PROCESSO: TStringField;
    qProduto_ProcessoNOME_SETOR: TStringField;
    qProduto_ProcessoLIMITE_POR_TALAO: TStringField;
    qProduto_ProcessoQTD_LIMITE_POR_TALAO: TIntegerField;
    mPedTalao: TClientDataSet;
    mPedTalaoID_Lote: TIntegerField;
    mPedTalaoID_Pedido: TIntegerField;
    mPedTalaoItem_Ped: TIntegerField;
    mPedTalaoQtd: TFloatField;
    sdsTalaoID_PROCESSO: TIntegerField;
    cdsTalaoID_PROCESSO: TIntegerField;
    sdsTalaoIMPRESSO: TStringField;
    cdsTalaoIMPRESSO: TStringField;
    mPedTalaoID_Cliente: TIntegerField;
    sdsTalaoDTENTRADA: TDateField;
    sdsTalaoHRENTRADA: TTimeField;
    cdsTalaoDTENTRADA: TDateField;
    cdsTalaoHRENTRADA: TTimeField;
    qParametrosUSA_GRADE: TStringField;
    mLoteID_Processo: TIntegerField;
    mLoteNome_Processo: TStringField;
    qProduto_ProcessoAGRUPAR_PEDIDOS: TStringField;
    sdsTalao_Processo: TSQLDataSet;
    cdsTalaosdsTalao_Processo: TDataSetField;
    cdsTalao_Processo: TClientDataSet;
    dsTalao_Processo: TDataSource;
    sdsTalao_PedID: TIntegerField;
    sdsTalao_PedNUM_TALAO: TIntegerField;
    sdsTalao_PedID_PEDIDO: TIntegerField;
    sdsTalao_PedITEM_PEDIDO: TIntegerField;
    sdsTalao_PedQTD: TFloatField;
    sdsTalao_PedID_CLIENTE: TIntegerField;
    sdsTalao_PedNUM_LOTE: TIntegerField;
    sdsTalao_PedBAIXADO: TStringField;
    sdsTalao_ProcessoID: TIntegerField;
    sdsTalao_ProcessoNUM_TALAO: TIntegerField;
    sdsTalao_ProcessoITEM: TIntegerField;
    sdsTalao_ProcessoID_PROCESSO: TIntegerField;
    sdsTalao_ProcessoDTENTRADA: TDateField;
    sdsTalao_ProcessoHRENTRADA: TTimeField;
    sdsTalao_ProcessoDTBAIXA: TDateField;
    sdsTalao_ProcessoHRBAIXA: TTimeField;
    sdsTalao_ProcessoQTD: TFloatField;
    sdsTalao_ProcessoQTD_PRODUZIDO: TFloatField;
    cdsTalao_ProcessoID: TIntegerField;
    cdsTalao_ProcessoNUM_TALAO: TIntegerField;
    cdsTalao_ProcessoITEM: TIntegerField;
    cdsTalao_ProcessoID_PROCESSO: TIntegerField;
    cdsTalao_ProcessoDTENTRADA: TDateField;
    cdsTalao_ProcessoHRENTRADA: TTimeField;
    cdsTalao_ProcessoDTBAIXA: TDateField;
    cdsTalao_ProcessoHRBAIXA: TTimeField;
    cdsTalao_ProcessoQTD: TFloatField;
    cdsTalao_ProcessoQTD_PRODUZIDO: TFloatField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_POR_PEDIDO: TStringField;
    sdsLoteID_PEDIDO: TIntegerField;
    cdsLoteID_PEDIDO: TIntegerField;
    sdsPendente_Ped: TSQLDataSet;
    dspPendente_Ped: TDataSetProvider;
    cdsPendente_Ped: TClientDataSet;
    dsPendente_Ped: TDataSource;
    sdsPendente_PedNUM_PEDIDO: TIntegerField;
    sdsPendente_PedPEDIDO_CLIENTE: TStringField;
    sdsPendente_PedID_CLIENTE: TIntegerField;
    sdsPendente_PedDTEMISSAO: TDateField;
    sdsPendente_PedID: TIntegerField;
    sdsPendente_PedFILIAL: TIntegerField;
    sdsPendente_PedNOME_CLIENTE: TStringField;
    sdsPendente_PedFANTASIA: TStringField;
    cdsPendente_PedNUM_PEDIDO: TIntegerField;
    cdsPendente_PedPEDIDO_CLIENTE: TStringField;
    cdsPendente_PedID_CLIENTE: TIntegerField;
    cdsPendente_PedDTEMISSAO: TDateField;
    cdsPendente_PedID: TIntegerField;
    cdsPendente_PedFILIAL: TIntegerField;
    cdsPendente_PedNOME_CLIENTE: TStringField;
    cdsPendente_PedFANTASIA: TStringField;
    sdsPendente_PedSELECIONADO: TStringField;
    cdsPendente_PedSELECIONADO: TStringField;
    sdsTalaoITEM_PEDIDO: TIntegerField;
    sdsTalaoID_PEDIDO: TIntegerField;
    cdsTalaoITEM_PEDIDO: TIntegerField;
    cdsTalaoID_PEDIDO: TIntegerField;
    qMaterialTIPO_REG: TStringField;
    mLoteTipo_Lote: TStringField;
    mLoteDescricao_Tipo: TStringField;
    cdsConsulta_LoteITEM_PEDIDO: TIntegerField;
    cdsConsulta_LoteID_PEDIDO: TIntegerField;
    cdsConsulta_LoteNUM_PEDIDO: TIntegerField;
    cdsConsulta_LotePEDIDO_CLIENTE: TStringField;
    cdsConsulta_LoteNOME_CLIENTE: TStringField;
    mLotePedido_Cliente: TStringField;
    mLoteNum_Pedido: TIntegerField;
    mLoteNome_Cliente: TStringField;
    sdsLoteTIPO_LOTE: TStringField;
    cdsLoteTIPO_LOTE: TStringField;
    cdsConsulta_LoteTIPO_LOTE: TStringField;
    mMaterial: TClientDataSet;
    mMaterialID_Material: TIntegerField;
    mMaterialNome_Material: TStringField;
    mMaterialQtd_Consumo: TFloatField;
    mMaterialReferencia_Mat: TStringField;
    dsmMaterial: TDataSource;
    mMaterial_Tam: TClientDataSet;
    mMaterial_TamID_Material: TIntegerField;
    mMaterial_TamTamanho: TStringField;
    mMaterial_TamQtd: TFloatField;
    dsmMaterial_Tam: TDataSource;
    mMaterialUnidade: TStringField;
    mMaterialID_Fornecedor: TIntegerField;
    mMaterialID_Cor: TIntegerField;
    mMaterialQtd_Produto: TIntegerField;
    cdsConsumoUNIDADE: TStringField;
    cdsConsumoREFERENCIA_MAT: TStringField;
    sdsLoteREFERENCIA: TStringField;
    cdsLoteREFERENCIA: TStringField;
    sdsTalaoREFERENCIA: TStringField;
    cdsTalaoREFERENCIA: TStringField;
    qProcesso_Ope: TSQLQuery;
    qProcesso_OpeID_PROCESSO: TIntegerField;
    qProcesso_OpeTIPO_MAT: TStringField;
    qProcesso_OpeNOME: TStringField;
    qProcesso_OpeTIPO_PROCESSO: TStringField;
    cdsPendenteID_COR_PROD: TIntegerField;
    cdsPendenteNOME_COR_PROD: TStringField;
    cdsConsumoTIPO_REG_MAT: TStringField;
    cdsPendenteTIPO_MAT: TStringField;
    sdsLoteUNIDADE: TStringField;
    cdsLoteUNIDADE: TStringField;
    sdsTalaoUNIDADE: TStringField;
    cdsTalaoUNIDADE: TStringField;
    cdsConsulta_LoteUNIDADE_TALAO: TStringField;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    cdsConsulta_LoteREFERENCIA: TStringField;
    cdsConsulta_LoteNOME_PROCESSO: TStringField;
    cdsConsulta_LoteID_PROCESSO: TIntegerField;
    cdsLote_Ped: TClientDataSet;
    sdsLote_Ped: TSQLDataSet;
    sdsLote_PedID: TIntegerField;
    sdsLote_PedID_PEDIDO: TIntegerField;
    sdsLote_PedITEM_PEDIDO: TIntegerField;
    sdsLote_PedQTD: TFloatField;
    sdsLote_PedID_CLIENTE: TIntegerField;
    sdsLote_PedNUM_LOTE: TIntegerField;
    sdsLote_PedBAIXADO: TStringField;
    dsLote_Ped: TDataSource;
    cdsLotesdsLote_Ped: TDataSetField;
    cdsLote_PedID: TIntegerField;
    cdsLote_PedID_PEDIDO: TIntegerField;
    cdsLote_PedITEM_PEDIDO: TIntegerField;
    cdsLote_PedQTD: TFloatField;
    cdsLote_PedID_CLIENTE: TIntegerField;
    cdsLote_PedNUM_LOTE: TIntegerField;
    cdsLote_PedBAIXADO: TStringField;
    sdsLoteDTENTRADA: TDateField;
    sdsLoteHRENTRADA: TTimeField;
    sdsLoteDTBAIXA: TDateField;
    sdsLoteHRBAIXA: TTimeField;
    sdsLoteQTD_PENDENTE: TFloatField;
    sdsLoteQTD_PRODUZIDO: TFloatField;
    cdsLoteDTENTRADA: TDateField;
    cdsLoteHRENTRADA: TTimeField;
    cdsLoteDTBAIXA: TDateField;
    cdsLoteHRBAIXA: TTimeField;
    cdsLoteQTD_PENDENTE: TFloatField;
    cdsLoteQTD_PRODUZIDO: TFloatField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralEMPRESA_CALCADOS: TStringField;
    mLoteID_Forma: TIntegerField;
    mLoteNome_Forma: TStringField;
    cdsConsulta_LoteID_FORMA: TIntegerField;
    cdsConsulta_LoteNOME_FORMA: TStringField;
    sdsLote_MatID_MOVESTOQUE_RES: TIntegerField;
    cdsLote_MatID_MOVESTOQUE_RES: TIntegerField;
    qParametros_LoteUSA_GEROU_LOTE_PROD: TStringField;
    qParametros_LoteQTD_DIAS_DTEMISSAO: TIntegerField;
    sdsEmbalagem: TSQLDataSet;
    dspEmbalagem: TDataSetProvider;
    cdsEmbalagem: TClientDataSet;
    mProdAux: TClientDataSet;
    mProdAuxID_Produto: TIntegerField;
    cdsEmbalagemID: TIntegerField;
    cdsEmbalagemREFERENCIA: TStringField;
    cdsEmbalagemNOME_PRODUTO: TStringField;
    cdsEmbalagemID_COR_COMBINACAO: TIntegerField;
    cdsEmbalagemTIPO_REG_MAT: TStringField;
    cdsEmbalagemID_MATERIAL: TIntegerField;
    cdsEmbalagemQTD_CONSUMO: TFloatField;
    cdsEmbalagemITEM_CONSUMO: TIntegerField;
    cdsEmbalagemNOME_MATERIAL: TStringField;
    cdsEmbalagemTRANSFER: TStringField;
    cdsEmbalagemID_GRADE_MAT: TIntegerField;
    cdsEmbalagemID_FORNECEDOR: TIntegerField;
    cdsEmbalagemUSA_CARIMBO_OC: TStringField;
    cdsEmbalagemUNIDADE: TStringField;
    cdsEmbalagemREFERENCIA_MAT: TStringField;
    cdsEmbalagemID_COR_MAT: TIntegerField;
    cdsEmbalagemTIPO_EMB: TStringField;
    mProdAuxQtd: TFloatField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedPERMITE_ALT_NOMEPROD: TStringField;
    sdsLoteNOME_PRODUTO: TStringField;
    cdsLoteNOME_PRODUTO: TStringField;
    qParametros_LoteIMP_CLIENTE_LOTE: TStringField;
    qTalaoPed: TSQLQuery;
    qTalaoPedID_CLIENTE: TIntegerField;
    qTalaoPedNOME: TStringField;
    qTalaoPedFANTASIA: TStringField;
    qTalaoPedNOME_CIDADE: TStringField;
    qTalaoPedUF: TStringField;
    mLoteCidade: TStringField;
    mLoteUF: TStringField;
    frxReport1: TfrxReport;
    frxLote: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    qParametros_LoteLOTE_CALCADO_NOVO: TStringField;
    qParametros_LoteGRAVAR_OBS_LOTE: TStringField;
    cdsPendenteOBS_LOTE: TMemoField;
    mLoteOBS: TMemoField;
    cdsConsulta_LoteOBS_LOTE: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspLoteUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsTalao_AuxBeforePost(DataSet: TDataSet);
    procedure cdsConsulta_Talao_AuxAfterScroll(DataSet: TDataSet);
    procedure mLoteAuxNewRecord(DataSet: TDataSet);
    procedure cdsLoteNewRecord(DataSet: TDataSet);
    procedure frxLoteFirst(Sender: TObject);
    procedure frxLoteNext(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctOrdem_Prod: String;
    ctConsulta_Lote: String;
    ctPedido_PorTalao: String;
    ctConsulta_Talao_Aux: String;
    ctProduto_Comb: String;
    ctPendente: String;
    ctPendente_Ped: String;
    ctPedido_Ord: String;
    vAltura_Etiq_Rot: Integer;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Excluir;

    procedure prc_Gravar_mLote(Tipo: String);
    procedure prc_Abrir_Produto_Comb;

    procedure prc_Inserir_Talao;
    function fnc_Buscar_NumPedido(NumLote: Integer): String;
    function fnc_Somar_Consumo: Real;    
    function fnc_Somar_Consumo_Talao: Real;    
    function fnc_Somar_Consumo_Aux: Real;    

  end;

var
  DMCadLote: TDMCadLote;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadLote}

procedure TDMCadLote.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsLote.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('LOTE',0);

  cdsLote.Insert;
  cdsLoteID.AsInteger := vAux;
end;

procedure TDMCadLote.prc_Excluir;
begin
  if not(cdsLote.Active) or (cdsLote.IsEmpty) then
    exit;
  cdsLote.Delete;
  cdsLote.ApplyUpdates(0);
end;

{procedure TDMCadLote.prc_Gravar;
begin
  vMsgErro := '';
  if cdsOrdem_ProdQTD_LOTE.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Lote não informado!';
  if trim(vMsgErro) <> '' then
    exit;

  cdsLote.Post;
  cdsLote.ApplyUpdates(0);
end;
}

procedure TDMCadLote.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsLote.Close;
  sdsLote.CommandText := ctCommand;
  if ID <> 0 then
    sdsLote.CommandText := sdsLote.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsLote.Open;

end;

procedure TDMCadLote.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand            := sdsLote.CommandText;
  ctConsulta_Lote      := sdsConsulta_Lote.CommandText;
  ctPedido_PorTalao    := sdsPedido_PorTalao.CommandText;
  ctConsulta_Talao_Aux := sdsConsulta_Talao_Aux.CommandText;
  ctProduto_Comb       := qProduto_Comb.SQL.Text;
  ctPendente           := sdsPendente.CommandText;
  ctPendente_Ped       := sdsPendente_Ped.CommandText;
  ctPedido_Ord         := sdsPedido_Ord.CommandText;
  cdsProduto.Close;
  cdsProduto.Open;
  qParametros.Open;
  qParametros_Lote.Open;
  qParametros_Geral.Open;
  qParametros_Ped.Open;

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

procedure TDMCadLote.prc_Inserir_Talao;
var
  vItemAux: Integer;
begin
  cdsTalao.First;
  cdsTalao.Last;
  vItemAux := cdsTalaoNUM_TALAO.AsInteger;
  cdsTalao.Insert;
  cdsTalaoID.AsInteger          := cdsLoteID.AsInteger;
  cdsTalaoNUM_TALAO.AsInteger   := vItemAux + 1;
  cdsTalaoQTD.AsFloat           := 0;
  cdsTalaoQTD_PRODUZIDO.AsFloat := 0;
  cdsTalaoQTD_PENDENTE.AsFloat  := 0;
  cdsTalaoDTBAIXA.Clear;
  cdsTalaoHRBAIXA.Clear;
end;

procedure TDMCadLote.dspLoteUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

function TDMCadLote.fnc_Buscar_NumPedido(NumLote: Integer): String;
var
  vTexto: String;
begin
  cdsBusca_Ped.Close;
  sdsBusca_Ped.ParamByName('ID').AsInteger := NumLote;
  cdsBusca_Ped.Open;
  //cdsBusca_Ped.IndexFieldNames := 'NUM_PEDIDO';
  cdsBusca_Ped.IndexFieldNames := 'PEDIDO_CLIENTE';

  vTexto:= 'Pedido(s): ';
  cdsBusca_Ped.First;
  while not cdsBusca_Ped.Eof do
  begin
    //07/01/2014 foi trocado para imprimir o número do pedido do cliente (OC)
    //vTexto := vTexto + '(' + cdsBusca_PedNUM_PEDIDO.AsString + ')';
    vTexto := vTexto + '(' + cdsBusca_PedPEDIDO_CLIENTE.AsString + ')';
    cdsBusca_Ped.Next;
  end;
  Result := vTexto;
end;

procedure TDMCadLote.prc_Gravar_mLote(Tipo: String);
var
  vTalaoAux: Integer;
  vID_CorAux: Integer;
begin
  if Tipo = 'L' then
    vTalaoAux := 0
  else
    vTalaoAux := cdsConsulta_LoteNUM_TALAO.AsInteger;
  vID_CorAux := 0;
  if cdsConsulta_LoteID_COMBINACAO.AsInteger > 0 then
    vID_CorAux := cdsConsulta_LoteID_COMBINACAO.AsInteger;
  if mLote.Locate('Num_Lote;Num_Talao;ID_Combinacao',VarArrayOf([cdsConsulta_LoteNUM_LOTE.AsInteger,vTalaoAux,vID_CorAux]),[locaseinsensitive]) then
    mLote.Edit
  else
  begin
    mLote.Insert;
    mLoteID_Lote.AsInteger        := cdsConsulta_LoteID.AsInteger;
    mLoteNum_Lote.AsInteger       := cdsConsulta_LoteNUM_LOTE.AsInteger;
    mLoteNum_Talao.AsInteger      := vTalaoAux;
    mLoteID_Combinacao.AsInteger  := vID_CorAux;
    mLoteNome_Combinacao.AsString := cdsConsulta_LoteNOME_COMBINACAO.AsString;
    mLoteID_Produto.AsInteger     := cdsConsulta_LoteID_PRODUTO.AsInteger;
    mLoteReferencia.AsString      := cdsConsulta_LoteREFERENCIA.AsString;
    mLoteNome_Produto.AsString    := cdsConsulta_LoteNOME_PRODUTO.AsString;
    mLoteDtEntrega.AsDateTime     := cdsConsulta_LoteDTENTREGA.AsDateTime;
    mLoteQtd_Taloes.AsInteger     := cdsConsulta_LoteQTD_TALOES.AsInteger;
    mLoteFilial.AsInteger         := cdsConsulta_LoteFILIAL.AsInteger;
    mLoteNome_Filial.AsString     := cdsConsulta_LoteNOME_FILIAL.AsString;
    mLoteDtEmissao.AsDateTime     := cdsConsulta_LoteDTEMISSAO.AsDateTime;
    mLoteID_Forma.AsInteger       := cdsConsulta_LoteID_FORMA.AsInteger;
    mLoteNome_Forma.AsString      := cdsConsulta_LoteNOME_FORMA.AsString;
    if trim(cdsConsulta_LoteUNIDADE_TALAO.AsString) <> '' then
      mLoteUnidade.AsString        := cdsConsulta_LoteUNIDADE_TALAO.AsString
    else
      mLoteUnidade.AsString        := cdsConsulta_LoteUNIDADE.AsString;
    mLoteTamanho.AsString        := cdsConsulta_LoteTAMANHO.AsString;
    mLoteCarimbo.AsString        := cdsConsulta_LoteCARIMBO.AsString;
    mLoteID_Grade.AsInteger      := cdsConsulta_LoteID_GRADE.AsInteger;
    mLoteNum_Ordem.AsInteger     := cdsConsulta_LoteNUM_ORDEM.AsInteger;
    mLoteNome_Lote.AsString      := cdsConsulta_LoteNOME_LOTE.AsString;
    mLoteID_Processo.AsInteger   := cdsConsulta_LoteID_PROCESSO.AsInteger;
    mLoteNome_Processo.AsString  := cdsConsulta_LoteNOME_PROCESSO.AsString;
    mLoteTipo_Lote.AsString      := cdsConsulta_LoteTIPO_LOTE.AsString;
    if mLoteTipo_Lote.AsString = 'S' then
      mLoteDescricao_Tipo.AsString := 'Semi Acabado'
    else
    if mLoteTipo_Lote.AsString = 'L' then
      mLoteDescricao_Tipo.AsString := 'Produto';
    if cdsConsulta_LoteACABAMENTO.AsString = 'P' then
      mLoteAcabamento.AsString := 'Pintado'
    else
    if cdsConsulta_LoteACABAMENTO.AsString = 'F' then
      mLoteAcabamento.AsString := 'Forrado'
    else
      mLoteAcabamento.AsString := '';
    mLoteCor_Acabamento.AsString := cdsConsulta_LoteCOR_ACABAMENTO.AsString;
    mLoteOBS.AsString            := cdsConsulta_LoteOBS_LOTE.AsString;
  end;
  mLoteNome_TipoMatriz.AsString := cdsConsulta_LoteNOME_TIPOMATRIZ.AsString;
  mLoteQtd.AsFloat := mLoteQtd.AsFloat + cdsConsulta_LoteQTD.AsFloat;
  mLoteTalao_Aux_Gerado.AsString := cdsConsulta_LoteTALAO_AUX_GERADO.AsString;
  mLotePedido_Cliente.AsString := cdsConsulta_LotePEDIDO_CLIENTE.AsString;
  mLoteNum_Pedido.AsInteger    := cdsConsulta_LoteNUM_PEDIDO.AsInteger;
  mLoteNome_Cliente.AsString   := cdsConsulta_LoteNOME_CLIENTE.AsString;
  //10/09/2018
  if qParametros_LoteIMP_CLIENTE_LOTE.AsString = 'S' then
  begin
    qTalaoPed.Close;
    qTalaoPed.ParamByName('ID').AsInteger        := cdsConsulta_LoteID.AsInteger;
    qTalaoPed.ParamByName('NUM_TALAO').AsInteger := cdsConsulta_LoteNUM_TALAO.AsInteger;
    qTalaoPed.Open;
    if trim(qTalaoPedFANTASIA.AsString) <> '' then
      mLoteNome_Cliente.AsString := qTalaoPedFANTASIA.AsString
    else
      mLoteNome_Cliente.AsString := qTalaoPedNOME.AsString;
    mLoteCidade.AsString := qTalaoPedNOME_CIDADE.AsString;
    mLoteUF.AsString     := qTalaoPedUF.AsString;
  end;
//aqui
  mLote.Post;
  if ((Tipo = 'L') and (trim(cdsConsulta_LoteTAMANHO.AsString) = '')) or (Tipo = 'T') then
    exit;
  if mTalao.Locate('Num_Lote;Tamanho',VarArrayOf([cdsConsulta_LoteNUM_LOTE.AsInteger,cdsConsulta_LoteTAMANHO.AsString]),[locaseinsensitive]) then
    mTalao.Edit
  else
  begin
    mTalao.Insert;
    mTalaoNum_Lote.AsInteger  := cdsConsulta_LoteNUM_LOTE.AsInteger;
    mTalaoNum_Talao.AsInteger := 0;
    mTalaoTamanho.AsString    := cdsConsulta_LoteTAMANHO.AsString;
  end;
  mTalaoQtd.AsFloat := mTalaoQtd.AsFloat + cdsConsulta_LoteQTD.AsFloat;
  mTalao.Post;

  if mTamanho.Locate('TAMANHO',cdsConsulta_LoteTAMANHO.AsString,[loCaseInsensitive]) then
    mTamanho.Edit
  else
  begin
    mTamanho.Insert;
    mTamanhoTamanho.AsString := cdsConsulta_LoteTAMANHO.AsString;
  end;
  mTamanhoQtd.AsFloat := mTamanhoQtd.AsFloat + cdsConsulta_LoteQTD.AsFloat;
  mTamanho.Post;
end;

function TDMCadLote.fnc_Somar_Consumo: Real;
var
  vConsumo_Aux: Real;
  vAux: Real;
begin
  vConsumo_Aux := 0;
  try
    mTalao.First;
    while not mTalao.Eof do
    begin
      qProduto_Consumo_Tam.Close;
      qProduto_Consumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_ConsumoID.AsInteger;
      qProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_ConsumoITEM.AsInteger;
      qProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := mTalaoTamanho.AsString;
      qProduto_Consumo_Tam.Open;
      vAux := StrToFloat(FormatFloat('0.00000',qProduto_Consumo_TamQTD_CONSUMO.AsFloat * mTalaoQtd.AsFloat));
      vConsumo_Aux := vConsumo_Aux + vAux;
      mTalao.Next;
    end;
  finally
  end;
  Result := vConsumo_Aux;
end;

function TDMCadLote.fnc_Somar_Consumo_Talao: Real;
begin
  qProduto_Consumo_Tam.Close;
  qProduto_Consumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_ConsumoID.AsInteger;
  qProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_ConsumoITEM.AsInteger;
  qProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := mLoteTamanho.AsString;
  qProduto_Consumo_Tam.Open;
  Result := StrToFloat(FormatFloat('0.00000',qProduto_Consumo_TamQTD_CONSUMO.AsFloat * mLoteQtd.AsFloat));
end;

procedure TDMCadLote.cdsTalao_AuxBeforePost(DataSet: TDataSet);
begin
  if cdsTalao_AuxDTRETORNO.AsDateTime <= 10 then
  begin
    cdsTalao_AuxDTRETORNO.Clear;
    cdsTalao_AuxHRRETORNO.Clear;
  end;
  if cdsTalao_AuxDTSAIDA.AsDateTime <= 10 then
  begin
    cdsTalao_AuxDTSAIDA.Clear;
    cdsTalao_AuxHRSAIDA.Clear;
  end;
end;

procedure TDMCadLote.cdsConsulta_Talao_AuxAfterScroll(DataSet: TDataSet);
begin
  cdsConsulta_Talao_Aux_Tam.Close;
  sdsConsulta_Talao_Aux_Tam.ParamByName('ID').AsInteger   := cdsConsulta_Talao_AuxID_TALAO.AsInteger;
  sdsConsulta_Talao_Aux_Tam.ParamByName('ITEM').AsInteger := cdsConsulta_Talao_AuxITEM.AsInteger;
  cdsConsulta_Talao_Aux_Tam.Open;
end;

procedure TDMCadLote.prc_Abrir_Produto_Comb;
begin
  qProduto_Comb.Close;
  qProduto_Comb.SQL.Text := ctProduto_Comb;
  if (qParametrosUSA_POSICAO_CONSUMO.AsString = 'S') and (cdsProduto_Consumo_SetorID_POSICAO.AsInteger > 0) then
    //qProduto_Comb.SQL.Add(' AND M.ID_POSICAO = ' + IntToStr(cdsProduto_Consumo_SetorID_POSICAO.AsInteger));
    qProduto_Comb.SQL.Add(' AND M.ID_MATERIAL = ' + IntToStr(cdsProduto_Consumo_SetorID_MATERIAL.AsInteger));
  qProduto_Comb.ParamByName('ID').AsInteger                := cdsProduto_Consumo_SetorID.AsInteger;
  //qProduto_Comb.ParamByName('ITEM').AsInteger := cdsConsulta_Talao_AuxID_COMBINACAO.AsInteger;
  qProduto_Comb.ParamByName('ID_COR_COMBINACAO').AsInteger := cdsConsulta_Talao_AuxID_COMBINACAO.AsInteger;
  qProduto_Comb.Open;
end;

function TDMCadLote.fnc_Somar_Consumo_Aux: Real;
var
  vConsumo_Aux: Real;
  vAux: Real;
begin
  vConsumo_Aux := 0;
  try
    cdsConsulta_Talao_Aux_Tam.First;
    while not cdsConsulta_Talao_Aux_Tam.Eof do
    begin
      qProduto_Consumo_Tam.Close;
      qProduto_Consumo_Tam.ParamByName('ID').AsInteger     := cdsProduto_ConsumoID.AsInteger;
      qProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := cdsProduto_ConsumoITEM.AsInteger;
      qProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := cdsConsulta_Talao_Aux_TamTAMANHO.AsString;
      qProduto_Consumo_Tam.Open;
      vAux := StrToFloat(FormatFloat('0.00000',qProduto_Consumo_TamQTD_CONSUMO.AsFloat * cdsConsulta_Talao_Aux_TamQTD.AsFloat));
      vConsumo_Aux := vConsumo_Aux + vAux;
      cdsConsulta_Talao_Aux_Tam.Next;
    end;
  finally
  end;
  Result := vConsumo_Aux;
end;

procedure TDMCadLote.mLoteAuxNewRecord(DataSet: TDataSet);
begin
  mLoteAuxQtdAux.AsInteger := 0;
end;

procedure TDMCadLote.cdsLoteNewRecord(DataSet: TDataSet);
begin
  cdsLoteTALAO_AUX_GERADO.AsString := 'N';
  cdsLoteTIPO_LOTE.AsString        := 'N';
end;

procedure TDMCadLote.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadLote.frxLoteFirst(Sender: TObject);
var
  vTexto : String;
begin
    vTexto := fnc_Buscar_NumPedido(mLoteID_Lote.AsInteger);
    frxReport1.Variables['NumPedido'] := QuotedStr(vTexto);
    vTexto := '9' + FormatFloat('000000',mLoteNum_Lote.AsInteger);
    frxReport1.Variables['CodigoBarra'] := QuotedStr(vTexto);
end;

procedure TDMCadLote.frxLoteNext(Sender: TObject);
var
  vTexto : String;
begin
    vTexto := fnc_Buscar_NumPedido(mLoteID_Lote.AsInteger);
    frxReport1.Variables['NumPedido'] := QuotedStr(vTexto);
    vTexto := '9' + FormatFloat('000000',mLoteNum_Lote.AsInteger);
    frxReport1.Variables['CodigoBarra'] := QuotedStr(vTexto);
end;

end.
