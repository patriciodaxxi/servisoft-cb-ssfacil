unit UDMConsEstoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMConsEstoque = class(TDataModule)
    sdsEstoque: TSQLDataSet;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsEstoqueID: TIntegerField;
    cdsEstoqueNOMEPRODUTO: TStringField;
    cdsEstoqueREFERENCIA: TStringField;
    cdsEstoquePRECO_CUSTO: TFloatField;
    cdsEstoquePRECO_VENDA: TFloatField;
    cdsEstoqueQTD: TFMTBCDField;
    cdsEstoqueQTDGERAL: TFMTBCDField;
    sdsEstoque_Mov: TSQLDataSet;
    dspEstoque_Mov: TDataSetProvider;
    cdsEstoque_Mov: TClientDataSet;
    dsEstoque_Mov: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    dsProduto: TDataSource;
    cdsEstoque_MovID: TIntegerField;
    cdsEstoque_MovFILIAL: TIntegerField;
    cdsEstoque_MovID_PRODUTO: TIntegerField;
    cdsEstoque_MovID_COR: TIntegerField;
    cdsEstoque_MovDTMOVIMENTO: TDateField;
    cdsEstoque_MovTIPO_ES: TStringField;
    cdsEstoque_MovTIPO_MOV: TStringField;
    cdsEstoque_MovNUMNOTA: TIntegerField;
    cdsEstoque_MovID_PESSOA: TIntegerField;
    cdsEstoque_MovVLR_UNITARIO: TFloatField;
    cdsEstoque_MovQTD: TFloatField;
    cdsEstoque_MovPERC_ICMS: TFloatField;
    cdsEstoque_MovPERC_IPI: TFloatField;
    cdsEstoque_MovVLR_DESCONTO: TFloatField;
    cdsEstoque_MovUNIDADE: TStringField;
    cdsEstoque_MovQTD2: TFloatField;
    cdsEstoque_MovTAMANHO: TStringField;
    cdsEstoque_MovPERC_TRIBUTACAO: TFloatField;
    cdsEstoque_MovVLR_FRETE: TFloatField;
    cdsEstoque_MovID_CFOP: TIntegerField;
    cdsEstoque_MovID_NOTA: TIntegerField;
    cdsEstoque_MovSERIE: TStringField;
    cdsEstoque_MovUNIDADE_ORIG: TStringField;
    cdsEstoque_MovVLR_UNITARIOORIG: TFloatField;
    cdsEstoque_MovQTD_ORIG: TFloatField;
    cdsEstoque_MovVLR_DESCONTOORIG: TFloatField;
    cdsEstoque_MovMERCADO: TStringField;
    cdsEstoque_MovNOMEPESSOA: TStringField;
    cdsEstoque_MovNOMEPRODUTO: TStringField;
    cdsEstoque_MovREFERENCIA: TStringField;
    cdsProdutoTIPO_REG: TStringField;
    sdsGrupo: TSQLDataSet;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    dsGrupo: TDataSource;
    sdsSubGrupo: TSQLDataSet;
    dspSubGrupo: TDataSetProvider;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoID: TIntegerField;
    cdsSubGrupoNOME: TStringField;
    dsSubGrupo: TDataSource;
    sdsMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    cdsMarcaID: TIntegerField;
    cdsMarcaNOME: TStringField;
    dsMarca: TDataSource;
    cdsEstoqueID_MARCA: TIntegerField;
    cdsEstoqueID_GRUPO: TIntegerField;
    cdsEstoqueNOMEMARCA: TStringField;
    cdsEstoqueNOMEGRUPO: TStringField;
    cdsEstoqueclTotal_Custo: TFloatField;
    cdsEstoqueclTotal_Venda: TFloatField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    sdsEstoque_Acum: TSQLDataSet;
    dspEstoque_Acum: TDataSetProvider;
    cdsEstoque_Acum: TClientDataSet;
    dsEstoque_Acum: TDataSource;
    cdsEstoque_AcumID_PRODUTO: TIntegerField;
    cdsEstoque_AcumNOMEPRODUTO: TStringField;
    cdsEstoque_AcumREFERENCIA: TStringField;
    cdsEstoque_AcumQTD_ENT: TFloatField;
    cdsEstoque_AcumQTD_SAI: TFloatField;
    cdsEstoque_AcumSALDO: TFloatField;
    cdsEstoque_MovQTD_ENT: TFloatField;
    cdsEstoque_MovQTD_SAI: TFloatField;
    cdsEstoque_MovCNPJ_CPF: TStringField;
    cdsEstoque_AcumVLR_ENTRADA: TFloatField;
    cdsEstoque_AcumVLR_SAIDA: TFloatField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosATUALIZAR_PRECO_DOC: TStringField;
    qParametrosBAIXAR_REQ_AUTOMATICO: TStringField;
    qParametrosUSA_GRADE: TStringField;
    cdsEstoqueINATIVO: TStringField;
    sdsEstoque_Cli: TSQLDataSet;
    dspEstoque_Cli: TDataSetProvider;
    cdsEstoque_Cli: TClientDataSet;
    dsEstoque_Cli: TDataSource;
    cdsEstoque_CliID_PRODUTO: TIntegerField;
    cdsEstoque_CliNOMEPRODUTO: TStringField;
    cdsEstoque_CliREFERENCIA: TStringField;
    cdsEstoque_CliQTD_ENT: TFloatField;
    cdsEstoque_CliQTD_SAI: TFloatField;
    cdsEstoque_CliSALDO: TFloatField;
    cdsEstoque_CliVLR_ENTRADA: TFloatField;
    cdsEstoque_CliVLR_SAIDA: TFloatField;
    cdsEstoque_CliID_PESSOA: TIntegerField;
    cdsEstoque_CliNOME_PESSOA: TStringField;
    cdsEstoque_CliclVlr_Saldo: TFloatField;
    cdsEstoque_CliclQtd_Saldo: TFloatField;
    cdsEstoqueTAMPRODUTO: TStringField;
    sdsBalanco: TSQLDataSet;
    dspBalanco: TDataSetProvider;
    cdsBalanco: TClientDataSet;
    dsBalanco: TDataSource;
    cdsBalancoID_PRODUTO: TIntegerField;
    cdsBalancoTAMANHO: TStringField;
    cdsBalancoQTD_ESTOQUE: TFloatField;
    cdsBalancoREFERENCIA: TStringField;
    cdsBalancoNOME_PRODUTO: TStringField;
    cdsBalancoUNIDADE: TStringField;
    cdsBalancoVLR_ENTRADA: TFloatField;
    cdsBalancoclPreco_Medio: TFloatField;
    cdsBalancoclVlr_Total: TFloatField;
    cdsBalancoQTD_ENTRADA: TFloatField;
    qSaldo_Ant: TSQLQuery;
    qSaldo_AntQTD: TFloatField;
    cdsEstoque_MovCODCFOP: TStringField;
    cdsGrupoTIPO: TStringField;
    cdsGrupoCODIGO: TStringField;
    cdsGrupoNIVEL: TIntegerField;
    cdsGrupoSUPERIOR: TStringField;
    cdsGrupoCOD_PRINCIPAL: TIntegerField;
    cdsGrupoNOME_AUX: TStringField;
    cdsEstoque_MovNOME_GRUPO: TStringField;
    cdsEstoqueNOME_COR: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    cdsEstoque_MovNOME_COR: TStringField;
    cdsBalancoID_COR: TIntegerField;
    cdsBalancoNOME_COMBINACAO: TStringField;
    cdsEstoqueLOCALIZACAO: TStringField;
    cdsEstoqueID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField;
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
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    cdsEstoqueNOME_LOCAL: TStringField;
    cdsEstoqueCOD_LOCAL: TIntegerField;
    cdsEstoque_MovNOME_LOCAL: TStringField;
    cdsEstoque_MovCOD_LOCAL: TIntegerField;
    sdsEstoque_Local: TSQLDataSet;
    dspEstoque_Local: TDataSetProvider;
    cdsEstoque_Local: TClientDataSet;
    dsEstoque_Local: TDataSource;
    cdsEstoque_LocalID_PRODUTO: TIntegerField;
    cdsEstoque_LocalID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_LocalNOMEPRODUTO: TStringField;
    cdsEstoque_LocalREFERENCIA: TStringField;
    cdsEstoque_LocalCOD_LOCAL: TIntegerField;
    cdsEstoque_LocalNOME_LOCAL: TStringField;
    cdsEstoque_LocalQTD_ENT: TFloatField;
    cdsEstoque_LocalQTD_SAI: TFloatField;
    cdsEstoque_LocalSALDO: TFloatField;
    cdsEstoque_LocalVLR_ENTRADA: TFloatField;
    cdsEstoque_LocalVLR_SAIDA: TFloatField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    sdsEstoque_Producao: TSQLDataSet;
    dspEstoque_Producao: TDataSetProvider;
    cdsEstoque_Producao: TClientDataSet;
    dsEstoque_Producao: TDataSource;
    cdsEstoque_ProducaoID_PRODUTO: TIntegerField;
    cdsEstoque_ProducaoNOME_PRODUTO: TStringField;
    cdsEstoque_ProducaoQTD_ESTOQUE_MIN: TFloatField;
    cdsEstoque_ProducaoREFERENCIA: TStringField;
    cdsEstoque_ProducaoID_MARCA: TIntegerField;
    cdsEstoque_ProducaoNOME_MARCA: TStringField;
    cdsEstoque_ProducaoQTD_ESTOQUE: TFMTBCDField;
    cdsEstoque_ProducaoQTD_PEDIDO: TFloatField;
    cdsEstoque_ProducaoRESULTADO: TFloatField;
    cdsEstoque_ProducaoQTD_APRODUZIR: TFloatField;
    cdsEstoque_ProducaoQTD_SALDO: TFloatField;
    frxDBDataset2: TfrxDBDataset;
    cdsEstoque_ProducaoQTD_PRODUCAO: TFloatField;
    sdsEstoque_Lote: TSQLDataSet;
    dspEstoque_Lote: TDataSetProvider;
    cdsEstoque_Lote: TClientDataSet;
    dsEstoque_Lote: TDataSource;
    cdsEstoque_LoteFILIAL: TIntegerField;
    cdsEstoque_LoteID_PRODUTO: TIntegerField;
    cdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_LoteQTD: TFMTBCDField;
    cdsEstoque_LoteREFERENCIA: TStringField;
    cdsEstoque_LoteNOME_PRODUTO: TStringField;
    cdsEstoque_LoteCOD_LOCAL: TIntegerField;
    cdsEstoque_LoteNOME_LOCAL: TStringField;
    cdsEstoque_ProducaoQTD_PEND_APROVACAO: TFloatField;
    cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
    cdsEstoque_ProducaoQTD_EMBALAGEM: TFMTBCDField;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstUSA_RESERVA: TStringField;
    cdsEstoqueQTD_RESERVA: TFloatField;
    sdsEstoque_Mov_Res: TSQLDataSet;
    dspEstoque_Mov_Res: TDataSetProvider;
    cdsEstoque_Mov_Res: TClientDataSet;
    dsEstoque_Mov_Res: TDataSource;
    cdsEstoque_Mov_ResID: TIntegerField;
    cdsEstoque_Mov_ResID_PRODUTO: TIntegerField;
    cdsEstoque_Mov_ResID_COR: TIntegerField;
    cdsEstoque_Mov_ResTAMANHO: TStringField;
    cdsEstoque_Mov_ResNUM_ORDEM: TIntegerField;
    cdsEstoque_Mov_ResQTD: TFloatField;
    cdsEstoque_Mov_ResDATA: TDateField;
    cdsEstoque_Mov_ResTIPO_ES: TStringField;
    cdsEstoque_Mov_ResTIPO_MOV: TStringField;
    cdsEstoque_Mov_ResFILIAL: TIntegerField;
    cdsEstoque_Mov_ResQTD2: TFloatField;
    cdsEstoque_Mov_ResNOME_PRODUTO: TStringField;
    cdsEstoque_Mov_ResNOME_COR: TStringField;
    cdsEstoque_Mov_ResREFERENCIA: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioALT_ESTOQUE_MOV: TStringField;
    sdsVeiculo: TSQLDataSet;
    dspVeiculo: TDataSetProvider;
    cdsVeiculo: TClientDataSet;
    dsVeiculo: TDataSource;
    cdsVeiculoID: TIntegerField;
    cdsVeiculoPLACA: TStringField;
    cdsVeiculoNUM_CHASSI: TStringField;
    cdsVeiculoNUM_RENAVAM: TStringField;
    cdsVeiculoCOD_COR: TIntegerField;
    cdsVeiculoNOME_COR: TStringField;
    cdsVeiculoANO_FAB: TIntegerField;
    cdsVeiculoANO_MOD: TIntegerField;
    cdsVeiculoMOTORIZACAO: TStringField;
    cdsVeiculoMARCA: TStringField;
    cdsVeiculoMODELO: TStringField;
    cdsVeiculoCOMBUSTIVEL: TStringField;
    cdsVeiculoESPECIE: TStringField;
    cdsVeiculoDT_ENTRADA: TDateField;
    cdsVeiculoDT_VENDA: TDateField;
    sdsEstoque_Mov_Vei: TSQLDataSet;
    dspEstoque_Mov_Vei: TDataSetProvider;
    cdsEstoque_Mov_Vei: TClientDataSet;
    dsEstoque_Mov_Vei: TDataSource;
    cdsEstoque_Mov_VeiID: TIntegerField;
    cdsEstoque_Mov_VeiFILIAL: TIntegerField;
    cdsEstoque_Mov_VeiID_PRODUTO: TIntegerField;
    cdsEstoque_Mov_VeiID_COR: TIntegerField;
    cdsEstoque_Mov_VeiDTMOVIMENTO: TDateField;
    cdsEstoque_Mov_VeiTIPO_ES: TStringField;
    cdsEstoque_Mov_VeiTIPO_MOV: TStringField;
    cdsEstoque_Mov_VeiNUMNOTA: TIntegerField;
    cdsEstoque_Mov_VeiID_PESSOA: TIntegerField;
    cdsEstoque_Mov_VeiVLR_UNITARIO: TFloatField;
    cdsEstoque_Mov_VeiQTD: TFloatField;
    cdsEstoque_Mov_VeiPERC_ICMS: TFloatField;
    cdsEstoque_Mov_VeiPERC_IPI: TFloatField;
    cdsEstoque_Mov_VeiVLR_DESCONTO: TFloatField;
    cdsEstoque_Mov_VeiUNIDADE: TStringField;
    cdsEstoque_Mov_VeiQTD2: TFloatField;
    cdsEstoque_Mov_VeiTAMANHO: TStringField;
    cdsEstoque_Mov_VeiPERC_TRIBUTACAO: TFloatField;
    cdsEstoque_Mov_VeiVLR_FRETE: TFloatField;
    cdsEstoque_Mov_VeiID_CFOP: TIntegerField;
    cdsEstoque_Mov_VeiID_NOTA: TIntegerField;
    cdsEstoque_Mov_VeiSERIE: TStringField;
    cdsEstoque_Mov_VeiUNIDADE_ORIG: TStringField;
    cdsEstoque_Mov_VeiVLR_UNITARIOORIG: TFloatField;
    cdsEstoque_Mov_VeiQTD_ORIG: TFloatField;
    cdsEstoque_Mov_VeiVLR_DESCONTOORIG: TFloatField;
    cdsEstoque_Mov_VeiMERCADO: TStringField;
    cdsEstoque_Mov_VeiID_CENTROCUSTO: TIntegerField;
    cdsEstoque_Mov_VeiQTD_ENT: TFloatField;
    cdsEstoque_Mov_VeiQTD_SAI: TFloatField;
    cdsEstoque_Mov_VeiTESTE: TStringField;
    cdsEstoque_Mov_VeiID_CUPOM: TIntegerField;
    cdsEstoque_Mov_VeiID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_Mov_VeiNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_Mov_VeiGERAR_CUSTO: TStringField;
    cdsEstoque_Mov_VeiNOMEPESSOA: TStringField;
    cdsEstoque_Mov_VeiNOMEPRODUTO: TStringField;
    cdsEstoque_Mov_VeiREFERENCIA: TStringField;
    cdsEstoque_Mov_VeiCNPJ_CPF: TStringField;
    cdsEstoque_Mov_VeiCODCFOP: TStringField;
    cdsEstoque_Mov_VeiPLACA: TStringField;
    cdsEstoque_Mov_VeiNUM_CHASSI: TStringField;
    cdsEstoque_Mov_VeiNUM_RENAVAM: TStringField;
    cdsEstoque_Mov_VeiNOME_COR: TStringField;
    cdsEstoque_Mov_VeiANO_FAB: TIntegerField;
    cdsEstoque_Mov_VeiANO_MOD: TIntegerField;
    cdsEstoque_Mov_VeiMOTORIZACAO: TStringField;
    cdsEstoque_Mov_VeiMARCA: TStringField;
    cdsEstoque_Mov_VeiMODELO: TStringField;
    cdsEstoque_Mov_VeiCOMBUSTIVEL: TStringField;
    cdsEstoque_Mov_VeiESPECIE: TStringField;
    cdsEstoque_Mov_VeiTIPO_ES_DESC: TStringField;
    cdsEstoque_Mov_VeiDADOS_VEICULO: TStringField;
    frxDBDataset3: TfrxDBDataset;
    cdsEstoque_Mov_VeiDADOS_PESSOA: TStringField;
    sdsMaterial_Sem_Mov: TSQLDataSet;
    dspMaterial_Sem_Mov: TDataSetProvider;
    cdsMaterial_Sem_Mov: TClientDataSet;
    dsMaterial_Sem_Mov: TDataSource;
    cdsMaterial_Sem_MovID_PRODUTO: TIntegerField;
    cdsMaterial_Sem_MovREFERENCIA: TStringField;
    cdsMaterial_Sem_MovNOME: TStringField;
    cdsMaterial_Sem_MovDTEMISSAO: TDateField;
    frxDBDataset4: TfrxDBDataset;
    sdsBalanco_Vei: TSQLDataSet;
    dspBalanco_Vei: TDataSetProvider;
    cdsBalanco_Vei: TClientDataSet;
    dsBalanco_Vei: TDataSource;
    cdsBalanco_VeiID_PRODUTO: TIntegerField;
    cdsBalanco_VeiQTD_ESTOQUE: TFloatField;
    cdsBalanco_VeiREFERENCIA: TStringField;
    cdsBalanco_VeiNOME_PRODUTO: TStringField;
    cdsBalanco_VeiUNIDADE: TStringField;
    cdsBalanco_VeiVLR_ENTRADA: TFloatField;
    cdsBalanco_VeiQTD_ENTRADA: TFloatField;
    cdsBalanco_VeiCODIGO: TIntegerField;
    cdsBalanco_VeiNOME: TStringField;
    cdsBalanco_VeiCNPJ_CPF: TStringField;
    cdsBalanco_VeiDADOS_VEICULO: TStringField;
    frxDBDataset5: TfrxDBDataset;
    cdsBalanco_VeiclPreco_Medio: TFloatField;
    cdsBalanco_VeiclVlr_Total: TFloatField;
    mAuxEst_Acum: TClientDataSet;
    dsmAuxEst_Acum: TDataSource;
    mAuxEst_AcumID_Produto: TIntegerField;
    mAuxEst_AcumReferencia: TStringField;
    mAuxEst_AcumNomeProduto: TStringField;
    mAuxEst_AcumQtd_Ant: TFloatField;
    mAuxEst_AcumQtd_Ent: TFloatField;
    mAuxEst_AcumQtd_Sai: TFloatField;
    mAuxEst_AcumSaldo: TFloatField;
    mAuxEst_AcumVlr_Entrada: TFloatField;
    mAuxEst_AcumVlr_Saida: TFloatField;
    mAuxEst_AcumSaldo_Periodo: TFloatField;
    sdsEstoque_Ant: TSQLDataSet;
    dspEstoque_Ant: TDataSetProvider;
    cdsEstoque_Ant: TClientDataSet;
    dsEstoque_Ant: TDataSource;
    cdsEstoque_AntID_PRODUTO: TIntegerField;
    cdsEstoque_AntNOMEPRODUTO: TStringField;
    cdsEstoque_AntREFERENCIA: TStringField;
    cdsEstoque_AntSALDO: TFloatField;
    sdsEstoque_Med: TSQLDataSet;
    dspEstoque_Med: TDataSetProvider;
    cdsEstoque_Med: TClientDataSet;
    dsEstoque_Med: TDataSource;
    cdsEstoque_MedQTD: TFloatField;
    cdsEstoque_MedNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_MedID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_MedNOME_LOCAL_ESTOQUE: TStringField;
    frxDBDataset6: TfrxDBDataset;
    mEstoque_Med: TClientDataSet;
    dsmEstoque_Med: TDataSource;
    mEstoque_MedNum_Lote_Controle: TStringField;
    mEstoque_MedMedida: TStringField;
    mEstoque_MedQtd_Estoque: TFloatField;
    mEstoque_MedQtd_Producao: TFloatField;
    mEstoque_MedQtd_Total: TFloatField;
    cdsEstoque_MedPRINCIPAL: TStringField;
    mEstoque_MedTipo: TStringField;
    mEstoque_MedDesc_Num_Lote_Controle: TStringField;
    mEstoque_Med_Prod: TClientDataSet;
    dsmEstoque_Med_Prod: TDataSource;
    mEstoque_Med_ProdNum_Lote_Controle: TStringField;
    mEstoque_Med_ProdTipo_Prod: TStringField;
    mEstoque_Med_ProdQtd_Estoque: TFloatField;
    mEstoque_Med_ProdQtd_Producao: TFloatField;
    mEstoque_Med_ProdQtd_Total: TFloatField;
    mEstoque_Med_ProdTipo: TStringField;
    mEstoque_Med_ProdNome_Produto: TStringField;
    mEstoque_Med_ProdID_Produto: TIntegerField;
    cdsEstoque_MedTIPO_REG: TStringField;
    cdsEstoque_MedID_PRODUTO: TIntegerField;
    cdsEstoque_MedREFERENCIA: TStringField;
    cdsEstoque_MedNOME_PRODUTO: TStringField;
    mEstoque_Med_ProdReferencia: TStringField;
    mEstoque_Med_ProdQtd_Material: TFloatField;
    sdsEstoque_Med_Semi: TSQLDataSet;
    dspEstoque_Med_Semi: TDataSetProvider;
    cdsEstoque_Med_Semi: TClientDataSet;
    cdsEstoque_Med_SemiQTD: TFloatField;
    cdsEstoque_Med_SemiNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_Med_SemiID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_Med_SemiREFERENCIA: TStringField;
    cdsEstoque_Med_SemiID_PRODUTO: TIntegerField;
    cdsEstoque_Med_SemiNOME_PRODUTO: TStringField;
    cdsEstoqueQTD_ESTOQUE_MIN: TFloatField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    cdsEstoque_MovGERAR_CUSTO: TStringField;
    mBalanco_Ver: TClientDataSet;
    mBalanco_VerID_Produto: TIntegerField;
    mBalanco_VerPreco_Menor: TFloatField;
    mBalanco_VerPreco_Maior: TFloatField;
    mBalanco_VerDtPreco_Menor: TDateField;
    mBalanco_VerDtPreco_Maior: TDateField;
    mBalanco_VerPerc_Diferenca: TFloatField;
    dsmBalanco_Ver: TDataSource;
    mBalanco_VerReferencia: TStringField;
    mBalanco_VerNome_Produto: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    mBalanco_VerPossui_Unid_dif: TStringField;
    mBalanco_VerUnidade: TStringField;
    cdsEstoqueQTD_SALDO_OC: TFloatField;
    cdsEstoqueNUM_LOTE_CONTROLE: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    cdsEstoque_MovPRECO_CUSTO: TFloatField;
    qParametros_EstMOSTRAR_PCUSTO_MOV: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralID: TIntegerField;
    qParametros_GeralENDGRIDS: TStringField;
    qParametros_EstUSA_QTD_INI: TStringField;
    cdsEstoque_MovPRECO_CUSTO_TOTAL: TFloatField;
    qParametros_EstMOSTRAR_PCUSTO_TOTAL_MOV: TStringField;
    mProduto_Marca: TClientDataSet;
    mProduto_MarcaID: TIntegerField;
    mProduto_MarcaNome_Produto: TStringField;
    mProduto_MarcaID_Marca: TIntegerField;
    mProduto_MarcaNome_Marca: TStringField;
    mProduto_MarcaReferencia: TStringField;
    mProduto_MarcaUnidade: TStringField;
    mProduto_MarcaQtde_Embalagem: TFloatField;
    mProduto_MarcaQtde_Peca_Embalagem: TFloatField;
    dsmProduto_Marca: TDataSource;
    frxProdutoMarca: TfrxDBDataset;
    cdsEstoqueUNIDADE: TStringField;
    cdsEstoqueQTD_EMBALAGEM: TFloatField;
    cdsEstoqueQTD_PECA_EMB: TIntegerField;
    mProduto_MarcaQtde_Estoque: TFloatField;
    mProduto_MarcaID_Grupo: TIntegerField;
    mProduto_MarcaNome_Grupo: TStringField;
    qConsulta_Produto_Lote: TSQLQuery;
    qConsulta_Produto_LoteFILIAL: TIntegerField;
    qConsulta_Produto_LoteID_PRODUTO: TIntegerField;
    qConsulta_Produto_LoteID_LOCAL_ESTOQUE: TIntegerField;
    qConsulta_Produto_LoteNUM_LOTE_CONTROLE: TStringField;
    qConsulta_Produto_LoteQTD: TFMTBCDField;
    frxProduto_Lote: TfrxDBDataset;
    sdsEstoque_Res: TSQLDataSet;
    dspEstoque_Res: TDataSetProvider;
    cdsEstoque_Res: TClientDataSet;
    dsEstoque_Res: TDataSource;
    cdsEstoque_ResID_PRODUTO: TIntegerField;
    cdsEstoque_ResID_COR: TIntegerField;
    cdsEstoque_ResTAMANHO: TStringField;
    cdsEstoque_ResQTD: TFloatField;
    cdsEstoque_ResNOME_PRODUTO: TStringField;
    cdsEstoque_ResREFERENCIA: TStringField;
    cdsEstoque_ResUNIDADE: TStringField;
    cdsEstoque_ResNOME_COMBINACAO: TStringField;
    frxEstoque_Res: TfrxDBDataset;
    sdsEstoque_Res_Ord: TSQLDataSet;
    dspEstoque_Res_Ord: TDataSetProvider;
    cdsEstoque_Res_Ord: TClientDataSet;
    dsEstoque_Res_Ord: TDataSource;
    cdsEstoque_Res_OrdID_PRODUTO: TIntegerField;
    cdsEstoque_Res_OrdID_COR: TIntegerField;
    cdsEstoque_Res_OrdTAMANHO: TStringField;
    cdsEstoque_Res_OrdNUM_ORDEM: TIntegerField;
    cdsEstoque_Res_OrdFILIAL: TIntegerField;
    cdsEstoque_Res_OrdQTD_RESERVA: TFloatField;
    cdsEstoque_Res_OrdNOME_PRODUTO: TStringField;
    cdsEstoque_Res_OrdREFERENCIA: TStringField;
    cdsEstoque_Res_OrdNOME_COMBINACAO: TStringField;
    frxEstoque_Res_Ord: TfrxDBDataset;
    frxmBalanco_Ver: TfrxDBDataset;
    qParametros_EstUSA_RESERVA_PROD: TStringField;
    sdsEstoque_Atual: TSQLDataSet;
    dspEstoque_Atual: TDataSetProvider;
    cdsEstoque_Atual: TClientDataSet;
    dsEstoque_Atual: TDataSource;
    cdsEstoque_AtualQTD: TFMTBCDField;
    cdsEstoque_AtualID_COR: TIntegerField;
    cdsEstoque_AtualTAMANHO: TStringField;
    cdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_AtualNOME_PRODUTO: TStringField;
    cdsEstoque_AtualREFERENCIA: TStringField;
    cdsEstoque_AtualNOME_COMBINACAO: TStringField;
    cdsEstoque_AtualID: TIntegerField;
    cdsEstoque_AtualLOCALIZACAO: TStringField;
    cdsEstoque_AtualQTD_RESERVA: TFloatField;
    cdsEstoque_AtualQTD_ESTOQUE_MIN: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEstoqueUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsEstoqueCalcFields(DataSet: TDataSet);
    procedure cdsEstoque_CliCalcFields(DataSet: TDataSet);
    procedure cdsBalancoCalcFields(DataSet: TDataSet);
    procedure cdsBalanco_VeiCalcFields(DataSet: TDataSet);
    procedure frxProdutoMarcaNext(Sender: TObject);
    procedure frxProdutoMarcaFirst(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ctEstoque, ctEstoque_Mov, ctEstoque_Acum, ctEstoque_Cli, ctEstoque_Local, ctEstoque_Ant: String;
    ctEstoque_Med: String;
    ctEstoque_Atual : String;
    ctProduto: String;
    ctEstoque_Producao: String;
    ctEstoque_Lote: String;
    ctEstoque_Mov_Res: String;
    ctEstoque_Mov_Vei: String;
    ctVeiculo: String;
    ctqProduto: String;
    ctEstoque_Res: String;
    ctEstoque_Res_Ord: String;
    vDescOpcao_Rel: String;
    vOpcao_ProdMat: String;
    procedure prc_Abrir_Produto(Inativo: String);
    procedure prc_Abrir_Veiculo(Inativo: String);
    procedure prc_Abrir_Produto_Lote(ID: Integer);

    procedure prc_Posiciona_Pesssoa(Codigo: Integer);
    procedure prc_Posiciona_Produto(ID: Integer; Referencia: String);

    function fnc_Saldo_Ant(ID_Produto, Filial: Integer; Tamanho: String; Data: TDateTime; ID_COR: Integer = 0): Real;

  end;

var
  DMConsEstoque: TDMConsEstoque;

implementation

uses DmdDatabase, SyncObjs, uUtilPadrao;

{$R *.dfm}

procedure TDMConsEstoque.DataModuleCreate(Sender: TObject);
begin
  ctEstoque          := sdsEstoque.CommandText;
  ctEstoque_Mov      := sdsEstoque_Mov.CommandText;
  ctEstoque_Acum     := sdsEstoque_Acum.CommandText;
  ctEstoque_Cli      := sdsEstoque_Cli.CommandText;
  ctProduto          := sdsProduto.CommandText;
  ctEstoque_Local    := sdsEstoque_Local.CommandText;
  ctEstoque_Producao := sdsEstoque_Producao.CommandText;
  ctEstoque_Lote     := sdsEstoque_Lote.CommandText;
  ctEstoque_Mov_Res  := sdsEstoque_Mov_Res.CommandText;
  ctVeiculo          := sdsVeiculo.CommandText;
  ctEstoque_Mov_Vei  := sdsEstoque_Mov_Vei.CommandText;
  ctEstoque_Ant      := sdsEstoque_Ant.CommandText;
  ctEstoque_Med      := sdsEstoque_Med.CommandText;
  ctqProduto         := qProduto.SQL.Text;
  ctEstoque_Res      := sdsEstoque_Res.CommandText;
  ctEstoque_Res_Ord  := sdsEstoque_Res_Ord.CommandText;
  ctEstoque_Atual    := sdsEstoque_Atual.CommandText;
  cdsFilial.Open;
  cdsMarca.Open;
  cdsGrupo.Open;
  cdsSubGrupo.Open;
  //cdsPessoa.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Est.Close;
  qParametros_Est.Open;
  cdsLocal_Estoque.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  qParametros_Prod.Open;
  qParametros_Geral.Open;
  //prc_Abrir_Produto('N');
end;

procedure TDMConsEstoque.dspEstoqueUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMConsEstoque.cdsEstoqueCalcFields(DataSet: TDataSet);
begin
  cdsEstoqueclTotal_Custo.AsFloat := 0;
  cdsEstoqueclTotal_Venda.AsFloat := 0;
  if (StrToFloat(FormatFloat('0.00000',cdsEstoquePRECO_CUSTO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',cdsEstoqueQTD.AsFloat)) > 0) then
    cdsEstoqueclTotal_Custo.AsFloat := StrToFloat(FormatFloat('0.00',cdsEstoquePRECO_CUSTO.AsFloat * cdsEstoqueQTD.AsFloat));
  if (StrToFloat(FormatFloat('0.00000',cdsEstoquePRECO_VENDA.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',cdsEstoqueQTD.AsFloat)) > 0) then
    cdsEstoqueclTotal_Venda.AsFloat := StrToFloat(FormatFloat('0.00',cdsEstoquePRECO_VENDA.AsFloat * cdsEstoqueQTD.AsFloat));
end;

procedure TDMConsEstoque.prc_Abrir_Produto(Inativo: String);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  if Inativo = 'N' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE INATIVO = ' + QuotedStr('N');
  cdsProduto.Open;
end;

procedure TDMConsEstoque.cdsEstoque_CliCalcFields(DataSet: TDataSet);
begin
  cdsEstoque_CliclVlr_Saldo.AsFloat := StrToFloat(FormatFloat('0.00',cdsEstoque_CliVLR_SAIDA.AsFloat - cdsEstoque_CliVLR_ENTRADA.AsFloat));
  cdsEstoque_CliclQtd_Saldo.AsFloat := StrToFloat(FormatFloat('0.00',cdsEstoque_CliQTD_SAI.AsFloat - cdsEstoque_CliQTD_ENT.AsFloat));
end;

procedure TDMConsEstoque.cdsBalancoCalcFields(DataSet: TDataSet);
begin
  if (StrToFloat(FormatFloat('0.00000',cdsBalancoVLR_ENTRADA.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',cdsBalancoQTD_ENTRADA.AsFloat)) > 0) then
  begin
    cdsBalancoclPreco_Medio.AsFloat := StrToFloat(FormatFloat('0.00000',cdsBalancoVLR_ENTRADA.AsFloat / cdsBalancoQTD_ENTRADA.AsFloat));
    cdsBalancoclVlr_Total.AsFloat   := StrToFloat(FormatFloat('0.00',cdsBalancoclPreco_Medio.AsFloat * cdsBalancoQTD_ESTOQUE.AsFloat));
  end
  else
  begin
    cdsBalancoclPreco_Medio.AsFloat := StrToFloat(FormatFloat('0.00000',0));
    cdsBalancoclVlr_Total.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  end;
end;

function TDMConsEstoque.fnc_Saldo_Ant(ID_Produto, Filial: Integer; Tamanho: String ;
 Data: TDateTime; ID_COR: Integer = 0): Real;
var
  vComando: String;
begin
  vComando := ' WHERE EM.ID_PRODUTO = ' + IntToStr(ID_Produto)
            + ' AND EM.FILIAL = ' + IntToStr(Filial)
            + ' AND EM.DTMOVIMENTO < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Data));
  if trim(Tamanho) <> '' then
    vComando := vComando + ' AND EM.TAMANHO = ' + QuotedStr(Tamanho);
  vComando := vComando + ' AND EM.ID_COR = ' + FormatFloat('0',ID_COR);
  qSaldo_Ant.Close;
  qSaldo_Ant.SQL.Text := 'SELECT SUM(EM.qtd2) QTD  FROM ESTOQUE_MOV EM '
                       + vComando;
  qSaldo_Ant.Open;
  Result := StrToFloat(FormatFloat('0.000000',qSaldo_AntQTD.AsFloat));
end;

procedure TDMConsEstoque.prc_Abrir_Veiculo(Inativo: String);
begin
  cdsVeiculo.Close;
  sdsVeiculo.CommandText := ctVeiculo;
  if Inativo = 'N' then
    sdsVeiculo.CommandText := sdsVeiculo.CommandText + ' AND P.INATIVO = ' + QuotedStr('N');
  cdsVeiculo.Open;
end;

procedure TDMConsEstoque.cdsBalanco_VeiCalcFields(DataSet: TDataSet);
begin
  if (StrToFloat(FormatFloat('0.00000',cdsBalanco_VeiVLR_ENTRADA.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',cdsBalanco_VeiQTD_ENTRADA.AsFloat)) > 0) then
  begin
    cdsBalanco_VeiclPreco_Medio.AsFloat := StrToFloat(FormatFloat('0.00000',cdsBalanco_VeiVLR_ENTRADA.AsFloat / cdsBalanco_VeiQTD_ENTRADA.AsFloat));
    cdsBalanco_VeiclVlr_Total.AsFloat   := StrToFloat(FormatFloat('0.00',cdsBalanco_VeiclPreco_Medio.AsFloat * cdsBalanco_VeiQTD_ESTOQUE.AsFloat));
  end
  else
  begin
    cdsBalanco_VeiclPreco_Medio.AsFloat := StrToFloat(FormatFloat('0.00000',0));
    cdsBalanco_VeiclVlr_Total.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  end;
end;

procedure TDMConsEstoque.prc_Posiciona_Pesssoa(Codigo: Integer);
begin
  qPessoa.Close;
  qPessoa.ParamByName('CODIGO').AsInteger := Codigo;
  qPessoa.Open;
end;

procedure TDMConsEstoque.prc_Posiciona_Produto(ID: Integer; Referencia: String);
begin
  qProduto.Close;
  qProduto.SQL.Text := ctqProduto;
  if (ID > 0) or (trim(Referencia) <> '') then
  begin
    if ID > 0 then
      qProduto.SQL.Text := qProduto.SQL.Text + ' WHERE ID = ' + IntToStr(ID)
    else
    if trim(Referencia) <> '' then
      qProduto.SQL.Text := qProduto.SQL.Text + ' WHERE REFERENCIA = ' + QuotedStr(Referencia);
    qProduto.Open;
  end;
end;

procedure TDMConsEstoque.prc_Abrir_Produto_Lote(ID: Integer);
begin
  qConsulta_Produto_Lote.Close;
  qConsulta_Produto_Lote.ParamByName('ID_PRODUTO').AsInteger := ID;
  qConsulta_Produto_Lote.Open;
end;

procedure TDMConsEstoque.frxProdutoMarcaNext(Sender: TObject);
begin
  prc_Abrir_Produto_Lote(mProduto_MarcaID.AsInteger);
end;

procedure TDMConsEstoque.frxProdutoMarcaFirst(Sender: TObject);
begin
  prc_Abrir_Produto_Lote(mProduto_MarcaID.AsInteger);
end;

end.
