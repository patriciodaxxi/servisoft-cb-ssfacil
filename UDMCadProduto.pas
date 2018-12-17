unit UDMCadProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes, dialogs, frxClass, frxDBSet, frxRich, Forms,
  frxExportMail, frxExportPDF;

type
  TdmCadProduto = class(TDataModule)
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoID_CSTIPI: TIntegerField;
    sdsProdutoPERC_IPI: TFloatField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoTIPO_REG: TStringField;
    sdsProdutoPOSSE_MATERIAL: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoMATERIAL_OUTROS: TStringField;
    sdsProdutoUSUARIO: TStringField;
    sdsProdutoDTCAD: TDateField;
    sdsProdutoHRCAD: TTimeField;
    sdsProdutoCA: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoORIGEM_PROD: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoCODSITCF: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    sdsCSTIPI: TSQLDataSet;
    dspCSTIPI: TDataSetProvider;
    cdsCSTIPI: TClientDataSet;
    dsCSTIPI: TDataSource;
    cdsCSTIPIID: TIntegerField;
    cdsCSTIPICOD_IPI: TStringField;
    cdsCSTIPINOME: TStringField;
    cdsCSTIPIGERAR_IPI: TStringField;
    sdsOrigem_Prod: TSQLDataSet;
    dspOrigem_Prod: TDataSetProvider;
    cdsOrigem_Prod: TClientDataSet;
    dsOrigem_Prod: TDataSource;
    cdsOrigem_ProdORIGEM: TStringField;
    cdsOrigem_ProdNOME: TStringField;
    sdsProdutoPERC_REDUCAOICMS: TFloatField;
    sdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    sdsProdutoPERC_MARGEMLUCRO: TFloatField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    qReferencia: TSQLQuery;
    qReferenciaREFERENCIA: TStringField;
    qReferenciaID: TIntegerField;
    sdsProdutoUNIDADE: TStringField;
    cdsProdutoUNIDADE: TStringField;
    dsProduto_Mestre: TDataSource;
    sdsProduto_Forn: TSQLDataSet;
    cdsProduto_Forn: TClientDataSet;
    dsProduto_Forn: TDataSource;
    sdsProduto_FornID: TIntegerField;
    sdsProduto_FornITEM: TIntegerField;
    sdsProduto_FornID_FORNECEDOR: TIntegerField;
    sdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    sdsProduto_FornTAMANHO: TStringField;
    sdsProduto_FornID_COR: TIntegerField;
    sdsProduto_FornCOD_BARRA: TStringField;
    cdsProdutosdsProduto_Forn: TDataSetField;
    cdsProduto_FornID: TIntegerField;
    cdsProduto_FornITEM: TIntegerField;
    cdsProduto_FornID_FORNECEDOR: TIntegerField;
    cdsProduto_FornCOD_MATERIAL_FORN: TStringField;
    cdsProduto_FornTAMANHO: TStringField;
    cdsProduto_FornID_COR: TIntegerField;
    cdsProduto_FornCOD_BARRA: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    sdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoDT_ALTPRECO: TDateField;
    sdsProduto_Consumo: TSQLDataSet;
    cdsProduto_Consumo: TClientDataSet;
    dsProduto_Consumo: TDataSource;
    sdsProduto_ConsumoID: TIntegerField;
    sdsProduto_ConsumoITEM: TIntegerField;
    sdsProduto_ConsumoID_MATERIAL: TIntegerField;
    sdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    sdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    sdsProduto_ConsumoUNIDADE: TStringField;
    cdsProdutosdsProduto_Consumo: TDataSetField;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsMaterialID: TIntegerField;
    cdsMaterialNOME: TStringField;
    cdsMaterialUNIDADE: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    cdsMaterialREFERENCIA: TStringField;
    sdsProdutoLOCALIZACAO: TStringField;
    cdsProdutoLOCALIZACAO: TStringField;
    sdsProdutoID_GRUPO: TIntegerField;
    sdsProdutoID_SUBGRUPO: TIntegerField;
    sdsProdutoID_MARCA: TIntegerField;
    cdsProdutoID_GRUPO: TIntegerField;
    cdsProdutoID_SUBGRUPO: TIntegerField;
    cdsProdutoID_MARCA: TIntegerField;
    sdsGrupo: TSQLDataSet;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    sdsMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    dsMarca: TDataSource;
    cdsMarcaID: TIntegerField;
    cdsMarcaNOME: TStringField;
    sdsProduto_Consulta: TSQLDataSet;
    dspProduto_Consulta: TDataSetProvider;
    cdsProduto_Consulta: TClientDataSet;
    dsProduto_Consulta: TDataSource;
    cdsProduto_ConsultaID: TIntegerField;
    cdsProduto_ConsultaREFERENCIA: TStringField;
    cdsProduto_ConsultaNOME: TStringField;
    cdsProduto_ConsultaINATIVO: TStringField;
    cdsProduto_ConsultaPRECO_CUSTO: TFloatField;
    cdsProduto_ConsultaPRECO_VENDA: TFloatField;
    cdsProduto_ConsultaTIPO_REG: TStringField;
    cdsProduto_ConsultaESTOQUE: TStringField;
    cdsProduto_ConsultaCA: TStringField;
    cdsProduto_ConsultaCOMPLEMENTO: TStringField;
    cdsProduto_ConsultaID_NCM: TIntegerField;
    cdsProduto_ConsultaORIGEM_PROD: TStringField;
    cdsProduto_ConsultaPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_ConsultaUNIDADE: TStringField;
    cdsProduto_ConsultaLOCALIZACAO: TStringField;
    cdsProduto_ConsultaID_GRUPO: TIntegerField;
    cdsProduto_ConsultaID_MARCA: TIntegerField;
    cdsProduto_ConsultaNCM: TStringField;
    cdsProduto_ConsultaNOMEMARCA: TStringField;
    sdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    cdsProduto_FornNOME_MATERIAL_FORN: TStringField;
    sdsProdutoID_FORNECEDOR: TIntegerField;
    cdsProdutoID_FORNECEDOR: TIntegerField;
    qParametrosCADASTRAR_REF_DUP: TStringField;
    qParametrosMOSTRAR_NO_CONSUMO: TStringField;
    sdsProdutoCOD_BARRA: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProduto_ConsultaCOD_BARRA: TStringField;
    qParametrosUSA_COD_BARRAS: TStringField;
    sdsProduto_Veiculo: TSQLDataSet;
    dspProduto_Veiculo: TDataSetProvider;
    cdsProduto_Veiculo: TClientDataSet;
    dsProduto_Veiculo: TDataSource;
    sdsProduto_VeiculoID: TIntegerField;
    sdsProduto_VeiculoPLACA: TStringField;
    sdsProduto_VeiculoNUM_CHASSI: TStringField;
    sdsProduto_VeiculoCOD_COR: TIntegerField;
    sdsProduto_VeiculoANO_FAB: TIntegerField;
    sdsProduto_VeiculoANO_MOD: TIntegerField;
    cdsProduto_VeiculoID: TIntegerField;
    cdsProduto_VeiculoPLACA: TStringField;
    cdsProduto_VeiculoNUM_CHASSI: TStringField;
    cdsProduto_VeiculoCOD_COR: TIntegerField;
    cdsProduto_VeiculoANO_FAB: TIntegerField;
    cdsProduto_VeiculoANO_MOD: TIntegerField;
    cdsProduto_VeiculoMOTORIZACAO: TStringField;
    qParametrosEMPRESA_VEICULO: TStringField;
    sdsProduto_VeiculoMOTORIZACAO: TStringField;
    sdsProduto_VeiculoNOME_COR: TStringField;
    cdsProduto_VeiculoNOME_COR: TStringField;
    sdsProduto_VeiculoMARCA: TStringField;
    sdsProduto_VeiculoMODELO: TStringField;
    sdsProduto_VeiculoCOMBUSTIVEL: TStringField;
    sdsProduto_VeiculoESPECIE: TStringField;
    cdsProduto_VeiculoMARCA: TStringField;
    cdsProduto_VeiculoMODELO: TStringField;
    cdsProduto_VeiculoCOMBUSTIVEL: TStringField;
    cdsProduto_VeiculoESPECIE: TStringField;
    cdsNCMNOME: TStringField;
    sdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProduto_ConsultaPLACA: TStringField;
    cdsProduto_ConsultaNUM_CHASSI: TStringField;
    cdsProduto_ConsultaNUM_RENAVAM: TStringField;
    cdsProduto_ConsultaANO_FAB: TIntegerField;
    cdsProduto_ConsultaANO_MOD: TIntegerField;
    cdsProduto_ConsultaMOTORIZACAO: TStringField;
    cdsProduto_ConsultaNOME_COR: TStringField;
    cdsProduto_ConsultaMARCA_VEICULO: TStringField;
    cdsProduto_ConsultaMODELO_VEICULO: TStringField;
    cdsProduto_ConsultaCOMBUSTIVEL: TStringField;
    cdsProduto_ConsultaESPECIE: TStringField;
    sdsProduto_VeiculoDT_ENTRADA: TDateField;
    sdsProduto_VeiculoDT_VENDA: TDateField;
    cdsProduto_VeiculoDT_ENTRADA: TDateField;
    cdsProduto_VeiculoDT_VENDA: TDateField;
    cdsProduto_ConsultaDT_ENTRADA: TDateField;
    cdsProduto_ConsultaDT_VENDA: TDateField;
    cdsProduto_ConsumoclVlr_Total: TFloatField;
    cdsMaterialPRECO_CUSTO: TFloatField;
    sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    sdsProdutoUSA_GRADE: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    qParametrosUSA_GRADE: TStringField;
    sdsProduto_Tam: TSQLDataSet;
    cdsProduto_Tam: TClientDataSet;
    dsProduto_Tam: TDataSource;
    sdsProduto_TamID: TIntegerField;
    sdsProduto_TamTAMANHO: TStringField;
    cdsProdutosdsProduto_Tam: TDataSetField;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    sdsGrade: TSQLDataSet;
    dspGrade: TDataSetProvider;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    sdsGradeID: TIntegerField;
    sdsGradeNOME: TStringField;
    cdsGradeID: TIntegerField;
    cdsGradeNOME: TStringField;
    qGrade_Itens: TSQLQuery;
    qGrade_ItensID: TIntegerField;
    qGrade_ItensTAMANHO: TStringField;
    sdsProdutoID_GRADE: TIntegerField;
    cdsProdutoID_GRADE: TIntegerField;
    sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    qParametrosMOSTRAR_NOME_ETIQUETA: TStringField;
    cdsProduto_ConsultaQTD_ESTOQUE: TFMTBCDField;
    sdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField;
    cdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField;
    sdsPosicao: TSQLDataSet;
    dspPosicao: TDataSetProvider;
    cdsPosicao: TClientDataSet;
    dsPosicao: TDataSource;
    cdsPosicaoID: TIntegerField;
    cdsPosicaoNOME: TStringField;
    cdsPosicaoIMP_TALAO: TStringField;
    qParametrosUSA_POSICAO_CONSUMO: TStringField;
    sdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    sdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    dsProduto_Consumo_Mestre: TDataSource;
    cdsProduto_ConsumosdsProduto_Consumo_Tam: TDataSetField;
    sdsProduto_Consumo_Tam: TSQLDataSet;
    sdsProduto_Consumo_TamID: TIntegerField;
    sdsProduto_Consumo_TamITEM: TIntegerField;
    sdsProduto_Consumo_TamTAMANHO: TStringField;
    sdsProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    cdsProduto_Consumo_Tam: TClientDataSet;
    cdsProduto_Consumo_TamID: TIntegerField;
    cdsProduto_Consumo_TamITEM: TIntegerField;
    cdsProduto_Consumo_TamTAMANHO: TStringField;
    cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    dsProduto_Consumo_Tam: TDataSource;
    sdsProdutoCARIMBO: TStringField;
    cdsProdutoCARIMBO: TStringField;
    cdsProduto_ConsultaNOMEGRUPO: TStringField;
    sdsProdutoPERC_QUEBRAMAT: TFloatField;
    cdsProdutoPERC_QUEBRAMAT: TFloatField;
    sdsProduto_Pcp: TSQLDataSet;
    dspProduto_Pcp: TDataSetProvider;
    cdsProduto_Pcp: TClientDataSet;
    dsProduto_Pcp: TDataSource;
    qParametrosEMPRESA_INJETADO: TStringField;
    sdsProduto_PcpID: TIntegerField;
    sdsProduto_PcpCAVIDADE_MOLDE: TFloatField;
    sdsProduto_PcpCAVIDADE_PECA: TFloatField;
    sdsProduto_PcpCICLO: TFloatField;
    sdsProduto_PcpQTD_TALAO: TIntegerField;
    cdsProduto_PcpID: TIntegerField;
    cdsProduto_PcpCAVIDADE_MOLDE: TFloatField;
    cdsProduto_PcpCAVIDADE_PECA: TFloatField;
    cdsProduto_PcpCICLO: TFloatField;
    cdsProduto_PcpQTD_TALAO: TIntegerField;
    sdsProduto_PcpTEMPO_TROCA_MATRIZ: TFloatField;
    sdsProduto_PcpTEMPO_TROCA_COR: TFloatField;
    cdsProduto_PcpTEMPO_TROCA_MATRIZ: TFloatField;
    cdsProduto_PcpTEMPO_TROCA_COR: TFloatField;
    sdsProduto_PcpID_TIPO_MATRIZ: TIntegerField;
    cdsProduto_PcpID_TIPO_MATRIZ: TIntegerField;
    sdsTipo_Matriz: TSQLDataSet;
    dspTipo_Matriz: TDataSetProvider;
    cdsTipo_Matriz: TClientDataSet;
    dsTipo_Matriz: TDataSource;
    cdsTipo_MatrizID: TIntegerField;
    cdsTipo_MatrizNOME: TStringField;
    sdsProduto_PcpACABAMENTO: TStringField;
    sdsProduto_PcpCOR_ACABAMENTO: TStringField;
    cdsProduto_PcpACABAMENTO: TStringField;
    cdsProduto_PcpCOR_ACABAMENTO: TStringField;
    sdsProduto_ConsumoIMP_ROTULO: TStringField;
    cdsProduto_ConsumoIMP_ROTULO: TStringField;
    qParametrosEMPRESA_CARTONAGEM: TStringField;
    sdsProduto_PcpFORMATO: TStringField;
    sdsProduto_PcpCOMPRIMENTO: TFloatField;
    sdsProduto_PcpLARGURA: TFloatField;
    cdsProduto_PcpFORMATO: TStringField;
    cdsProduto_PcpCOMPRIMENTO: TFloatField;
    cdsProduto_PcpLARGURA: TFloatField;
    sdsProduto_Serie: TSQLDataSet;
    dspProduto_Serie: TDataSetProvider;
    cdsProduto_Serie: TClientDataSet;
    dsProduto_Serie: TDataSource;
    qParametrosUSA_NUM_SERIE_PROD: TStringField;
    qParametrosPERC_IPI_PADRAO: TFloatField;
    qParametrosID_NCM_PADRAO: TIntegerField;
    sdsProduto_FornPRECO_CUSTO: TFloatField;
    cdsProduto_FornPRECO_CUSTO: TFloatField;
    sdsProduto_PcpGRAMATURA: TIntegerField;
    sdsProduto_PcpPRECO_CALCULO: TFloatField;
    cdsProduto_PcpGRAMATURA: TIntegerField;
    cdsProduto_PcpPRECO_CALCULO: TFloatField;
    sdsProduto_PcpFIBRA: TStringField;
    cdsProduto_PcpFIBRA: TStringField;
    sdsProduto_TamPESO_LIQUIDO: TFloatField;
    sdsProduto_TamPESO_BRUTO: TFloatField;
    cdsProduto_TamPESO_LIQUIDO: TFloatField;
    cdsProduto_TamPESO_BRUTO: TFloatField;
    qProximaSerie: TSQLQuery;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    cdsGrupoTIPO: TStringField;
    cdsGrupoNOME_AUX: TStringField;
    cdsGrupoCODIGO: TStringField;
    mGrupo: TClientDataSet;
    mGrupoID_Grupo: TIntegerField;
    mGrupoNome: TStringField;
    mGrupoCodigo: TStringField;
    dsmGrupo: TDataSource;
    mGrupo_Produto: TClientDataSet;
    mGrupo_ProdutoID_Produto: TIntegerField;
    mGrupo_ProdutoID_Grupo: TIntegerField;
    mGrupo_ProdutoCod_Grupo: TStringField;
    mGrupo_ProdutoReferencia: TStringField;
    mGrupo_ProdutoNome_Produto: TStringField;
    mGrupo_ProdutoNCM: TStringField;
    mGrupo_ProdutoUnidade: TStringField;
    mGrupo_ProdutoPreco_Custo: TFloatField;
    mGrupo_ProdutoPreco_Venda: TFloatField;
    mGrupo_ProdutoSaldo_Estoque: TFloatField;
    dsmGrupo_Produto: TDataSource;
    cdsProduto_ConsultaCOD_GRUPO: TStringField;
    mGrupoTipo: TStringField;
    qParametrosUSA_EDI: TStringField;
    sdsProduto_FornTAMANHO_CLIENTE: TStringField;
    cdsProduto_FornTAMANHO_CLIENTE: TStringField;
    sdsProduto_ConsumoIMP_TALAO: TStringField;
    cdsProduto_ConsumoIMP_TALAO: TStringField;
    sdsProduto_Ativo: TSQLDataSet;
    dspProduto_Ativo: TDataSetProvider;
    cdsProduto_Ativo: TClientDataSet;
    dsProduto_Ativo: TDataSource;
    sdsProduto_AtivoID: TIntegerField;
    sdsProduto_AtivoTIPO_ATIVO: TStringField;
    sdsProduto_AtivoNUM_PARCELA_BEM: TIntegerField;
    sdsProduto_AtivoID_PLANO_CONTAS: TIntegerField;
    sdsProduto_AtivoID_CENTRO_CUSTO: TIntegerField;
    sdsProduto_AtivoFUNCAO: TStringField;
    sdsProduto_AtivoVIDA_UTIL: TIntegerField;
    cdsProduto_AtivoID: TIntegerField;
    cdsProduto_AtivoTIPO_ATIVO: TStringField;
    cdsProduto_AtivoNUM_PARCELA_BEM: TIntegerField;
    cdsProduto_AtivoID_PLANO_CONTAS: TIntegerField;
    cdsProduto_AtivoID_CENTRO_CUSTO: TIntegerField;
    cdsProduto_AtivoFUNCAO: TStringField;
    cdsProduto_AtivoVIDA_UTIL: TIntegerField;
    qParametrosUSA_SPED: TStringField;
    sdsProdutoSPED_TIPO_ITEM: TStringField;
    cdsProdutoSPED_TIPO_ITEM: TStringField;
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    sdsProdutoQTD_ESTOQUE_MIN: TFloatField;
    cdsProdutoQTD_ESTOQUE_MIN: TFloatField;
    sdsProdutoPERC_PIS: TFloatField;
    sdsProdutoPERC_COFINS: TFloatField;
    cdsProdutoPERC_PIS: TFloatField;
    cdsProdutoPERC_COFINS: TFloatField;
    sdsProdutoPERC_ICMS_IMP: TFloatField;
    sdsProdutoPERC_IPI_IMP: TFloatField;
    cdsProdutoPERC_ICMS_IMP: TFloatField;
    cdsProdutoPERC_IPI_IMP: TFloatField;
    sdsConsumo_Imp: TSQLDataSet;
    cdsConsumo_Imp: TClientDataSet;
    dsConsumo_Imp: TDataSource;
    dspConsumo_Imp: TDataSetProvider;
    sdsConsumo_ImpID: TIntegerField;
    sdsConsumo_ImpITEM: TIntegerField;
    sdsConsumo_ImpID_MATERIAL: TIntegerField;
    sdsConsumo_ImpQTD_CONSUMO: TFloatField;
    sdsConsumo_ImpQTD_UNIDADE: TFloatField;
    sdsConsumo_ImpUNIDADE: TStringField;
    sdsConsumo_ImpID_POSICAO: TIntegerField;
    sdsConsumo_ImpTIPO_CONSUMO: TStringField;
    sdsConsumo_ImpIMP_ROTULO: TStringField;
    sdsConsumo_ImpIMP_TALAO: TStringField;
    sdsConsumo_ImpNOMEMATERIAL: TStringField;
    sdsConsumo_ImpREFERENCIA: TStringField;
    sdsConsumo_ImpPRECO_CUSTO: TFloatField;
    sdsConsumo_ImpNOME_POSICAO: TStringField;
    cdsConsumo_ImpID: TIntegerField;
    cdsConsumo_ImpITEM: TIntegerField;
    cdsConsumo_ImpID_MATERIAL: TIntegerField;
    cdsConsumo_ImpQTD_CONSUMO: TFloatField;
    cdsConsumo_ImpQTD_UNIDADE: TFloatField;
    cdsConsumo_ImpUNIDADE: TStringField;
    cdsConsumo_ImpNOMEMATERIAL: TStringField;
    cdsConsumo_ImpREFERENCIA: TStringField;
    cdsConsumo_ImpPRECO_CUSTO: TFloatField;
    cdsConsumo_ImpID_POSICAO: TIntegerField;
    cdsConsumo_ImpNOME_POSICAO: TStringField;
    cdsConsumo_ImpTIPO_CONSUMO: TStringField;
    cdsConsumo_ImpIMP_ROTULO: TStringField;
    cdsConsumo_ImpIMP_TALAO: TStringField;
    sdsConsumo_Imp_Tam: TSQLDataSet;
    cdsConsumo_Imp_Tam: TClientDataSet;
    dsConsumo_Imp_Tam: TDataSource;
    sdsConsumo_Imp_TamID: TIntegerField;
    sdsConsumo_Imp_TamITEM: TIntegerField;
    sdsConsumo_Imp_TamTAMANHO: TStringField;
    sdsConsumo_Imp_TamQTD_CONSUMO: TFloatField;
    dspConsumo_Imp_Tam: TDataSetProvider;
    cdsConsumo_Imp_TamID: TIntegerField;
    cdsConsumo_Imp_TamITEM: TIntegerField;
    cdsConsumo_Imp_TamTAMANHO: TStringField;
    cdsConsumo_Imp_TamQTD_CONSUMO: TFloatField;
    sdsPlano_Contas: TSQLDataSet;
    dspPlano_Contas: TDataSetProvider;
    cdsPlano_Contas: TClientDataSet;
    cdsPlano_ContasID: TIntegerField;
    cdsPlano_ContasCODIGO: TStringField;
    cdsPlano_ContasNOME: TStringField;
    cdsPlano_ContasDT_CADASTRO: TDateField;
    cdsPlano_ContasNIVEL: TIntegerField;
    cdsPlano_ContasTIPO_REG: TStringField;
    cdsPlano_ContasCOD_NATUREZA: TIntegerField;
    cdsPlano_ContasINATIVO: TStringField;
    cdsPlano_ContasSUPERIOR: TIntegerField;
    cdsPlano_ContasDT_INICIO_VALIDADE: TDateField;
    cdsPlano_ContasDT_FINAL_VALIDADE: TDateField;
    cdsPlano_ContasNOME_AUX: TStringField;
    dsPlano_Contas: TDataSource;
    sdsProduto_AtivoID_PRODUTO_PRINCIPAL: TIntegerField;
    cdsProduto_AtivoID_PRODUTO_PRINCIPAL: TIntegerField;
    sdsAtivoImob: TSQLDataSet;
    dspAtivoImob: TDataSetProvider;
    cdsAtivoImob: TClientDataSet;
    dsAtivoImob: TDataSource;
    cdsAtivoImobID: TIntegerField;
    cdsAtivoImobNOME: TStringField;
    cdsAtivoImobREFERENCIA: TStringField;
    sdsProduto_UF: TSQLDataSet;
    sdsProduto_UFID: TIntegerField;
    sdsProduto_UFUF: TStringField;
    sdsProduto_UFPERC_ICMS: TFloatField;
    sdsProduto_UFPERC_ICMS_INTERNO: TFloatField;
    sdsProduto_UFPERC_REDUCAO_ST: TFloatField;
    cdsProdutosdsProduto_UF: TDataSetField;
    cdsProduto_UF: TClientDataSet;
    cdsProduto_UFID: TIntegerField;
    cdsProduto_UFUF: TStringField;
    cdsProduto_UFPERC_ICMS: TFloatField;
    cdsProduto_UFPERC_ICMS_INTERNO: TFloatField;
    cdsProduto_UFPERC_REDUCAO_ST: TFloatField;
    dsProduto_UF: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    cdsProduto_ConsultaREFERENCIA_PADRAO: TStringField;
    cdsProduto_ConsultaSPED_TIPO_ITEM: TStringField;
    cdsProduto_ConsultaCOD_PRINCIPAL: TIntegerField;
    sdsProdutoREFERENCIA_PADRAO: TStringField;
    sdsProdutoNUM_FCI: TStringField;
    cdsProdutoREFERENCIA_PADRAO: TStringField;
    cdsProdutoNUM_FCI: TStringField;
    qParametrosUSA_FCI: TStringField;
    sdsProduto_FornNUM_FCI: TStringField;
    cdsProduto_FornNUM_FCI: TStringField;
    sdsProdutoPERC_USADO_FCI: TFloatField;
    cdsProdutoPERC_USADO_FCI: TFloatField;
    sdsProdutoNCM_EX: TStringField;
    cdsProdutoNCM_EX: TStringField;
    sdsProdutoID_SITTRIB_CF: TIntegerField;
    cdsProdutoID_SITTRIB_CF: TIntegerField;
    sdsSitTribCf: TSQLDataSet;
    dspSitTribCf: TDataSetProvider;
    cdsSitTribCf: TClientDataSet;
    dsSitTribCf: TDataSource;
    sdsSitTribCfID: TIntegerField;
    sdsSitTribCfCODIGO: TStringField;
    sdsSitTribCfPERCENTUAL: TFloatField;
    cdsSitTribCfID: TIntegerField;
    cdsSitTribCfCODIGO: TStringField;
    cdsSitTribCfPERCENTUAL: TFloatField;
    sdsProdutoID_CLIENTE: TIntegerField;
    cdsProdutoID_CLIENTE: TIntegerField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    qParametrosUSA_PRODUTO_CLIENTE: TStringField;
    sdsProduto_Uni: TSQLDataSet;
    cdsProduto_Uni: TClientDataSet;
    dsProduto_Uni: TDataSource;
    cdsProdutosdsProduto_Uni: TDataSetField;
    sdsUnidade_Conv: TSQLDataSet;
    dspUnidade_Conv: TDataSetProvider;
    cdsUnidade_Conv: TClientDataSet;
    dsUnidade_Conv: TDataSource;
    sdsProduto_UniID: TIntegerField;
    sdsProduto_UniITEM: TIntegerField;
    sdsProduto_UniUNIDADE: TStringField;
    sdsProduto_UniITEM_UNIDADE: TIntegerField;
    cdsProduto_UniID: TIntegerField;
    cdsProduto_UniITEM: TIntegerField;
    cdsProduto_UniUNIDADE: TStringField;
    cdsProduto_UniITEM_UNIDADE: TIntegerField;
    cdsProduto_UniclUnidade_Conv: TStringField;
    cdsProduto_UniclQtd_Conv: TFloatField;
    cdsUnidade_ConvUNIDADE: TStringField;
    cdsUnidade_ConvITEM: TIntegerField;
    cdsUnidade_ConvUNIDADE_CONV: TStringField;
    cdsUnidade_ConvNOME: TStringField;
    cdsUnidade_ConvQTD: TFloatField;
    qUnidade_Conv: TSQLQuery;
    qUnidade_ConvUNIDADE: TStringField;
    qUnidade_ConvITEM: TIntegerField;
    qUnidade_ConvUNIDADE_CONV: TStringField;
    qUnidade_ConvNOME: TStringField;
    qUnidade_ConvQTD: TFloatField;
    sdsProduto_FornITEM_UNIDADE: TIntegerField;
    cdsProduto_FornITEM_UNIDADE: TIntegerField;
    sdsProduto_FornUNIDADE_FORN: TStringField;
    cdsProduto_FornUNIDADE_FORN: TStringField;
    sdsProdutoPRECO_REVENDA: TFMTBCDField;
    sdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField;
    sdsProdutoPRECO_CONSUMO: TFMTBCDField;
    cdsProdutoPRECO_REVENDA: TFMTBCDField;
    cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField;
    cdsProdutoPRECO_CONSUMO: TFMTBCDField;
    sdsProdutoFOTO: TStringField;
    cdsProdutoFOTO: TStringField;
    qParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField;
    sdsProduto_VeiculoNUM_RENAVAM: TStringField;
    cdsProduto_VeiculoNUM_RENAVAM: TStringField;
    cdsProduto_TamclTamanho_USA: TStringField;
    cdsProduto_TamclTamanho_EUR: TStringField;
    qGradeMarcar: TSQLQuery;
    qGradeMarcarID: TIntegerField;
    qGradeMarcarTAMANHO: TStringField;
    qGradeMarcarTAMANHO_USA: TStringField;
    qGradeMarcarTAMANHO_EUR: TStringField;
    sdsProdutoREFERENCIA_SEQ: TIntegerField;
    cdsProdutoREFERENCIA_SEQ: TIntegerField;
    qParametrosTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioUSUARIO: TStringField;
    sdsProdutoID_COR: TIntegerField;
    cdsProdutoID_COR: TIntegerField;
    sdsCor: TSQLDataSet;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    dsCor: TDataSource;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosNUMERO_SERIE_INTERNO: TStringField;
    cdsProduto_FornNOMEFORNECEDOR: TStringField;
    qFornecedor: TSQLQuery;
    qFornecedorCODIGO: TIntegerField;
    qFornecedorNOME: TStringField;
    cdsProduto_ConsumoNOMEMATERIAL: TStringField;
    cdsProduto_ConsumoREFERENCIA: TStringField;
    cdsProduto_ConsumoPRECO_CUSTO: TFloatField;
    cdsProduto_ConsumoNOME_POSICAO: TStringField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialNOME: TStringField;
    qMaterialREFERENCIA: TStringField;
    qPosicao: TSQLQuery;
    qPosicaoID: TIntegerField;
    qPosicaoNOME: TStringField;
    cdsProdutoNCM: TStringField;
    qNCM: TSQLQuery;
    qNCMID: TIntegerField;
    qNCMNCM: TStringField;
    sdsProdutoCALCULAR_2_LADOS: TStringField;
    cdsProdutoCALCULAR_2_LADOS: TStringField;
    qParametrosEMPRESA_AMBIENTES: TStringField;
    sdsProduto_Matriz: TSQLDataSet;
    dspProduto_Matriz: TDataSetProvider;
    cdsProduto_Matriz: TClientDataSet;
    dsProduto_Matriz: TDataSource;
    sdsProduto_MatrizID: TIntegerField;
    sdsProduto_MatrizITEM: TIntegerField;
    sdsProduto_MatrizID_MATRIZ_PRECO: TIntegerField;
    sdsProduto_MatrizVLR_UNITARIO: TFloatField;
    cdsProduto_MatrizID: TIntegerField;
    cdsProduto_MatrizITEM: TIntegerField;
    cdsProduto_MatrizID_MATRIZ_PRECO: TIntegerField;
    cdsProduto_MatrizVLR_UNITARIO: TFloatField;
    cdsProduto_MatrizclNome_Matriz: TStringField;
    qMatriz_Preco: TSQLQuery;
    qMatriz_PrecoID: TIntegerField;
    qMatriz_PrecoNOME: TStringField;
    qMatriz_PrecoVLR_UNITARIO: TFloatField;
    sdsMatriz_Preco: TSQLDataSet;
    dspMatriz_Preco: TDataSetProvider;
    cdsMatriz_Preco: TClientDataSet;
    dsMatriz_Preco: TDataSource;
    cdsMatriz_PrecoID: TIntegerField;
    cdsMatriz_PrecoNOME: TStringField;
    cdsMatriz_PrecoTIPO_REG: TStringField;
    cdsMatriz_PrecoVLR_UNITARIO: TFloatField;
    cdsMatriz_PrecoTIPO_PRECO: TStringField;
    cdsProduto_MatrizclTipo_Reg: TStringField;
    qMatriz_PrecoTIPO_REG: TStringField;
    cdsGrupoTIPO_PROD: TStringField;
    sdsProdutoPERC_VIDRO: TFloatField;
    cdsProdutoPERC_VIDRO: TFloatField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    sdsProduto_Comb: TSQLDataSet;
    dspProduto_Comb: TDataSetProvider;
    cdsProduto_Comb: TClientDataSet;
    dsProduto_Comb: TDataSource;
    sdsProduto_CombID: TIntegerField;
    sdsProduto_CombITEM: TIntegerField;
    sdsProduto_CombID_COR: TIntegerField;
    sdsProduto_CombNOME: TStringField;
    sdsProduto_CombINATIVO: TStringField;
    sdsProduto_CombTIPO_REG: TStringField;
    sdsProduto_CombPRECO_CUSTO: TFloatField;
    sdsProduto_CombPRECO_VENDA: TFloatField;
    sdsProduto_CombPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_CombID: TIntegerField;
    cdsProduto_CombITEM: TIntegerField;
    cdsProduto_CombID_COR: TIntegerField;
    cdsProduto_CombNOME: TStringField;
    cdsProduto_CombINATIVO: TStringField;
    cdsProduto_CombTIPO_REG: TStringField;
    cdsProduto_CombPRECO_CUSTO: TFloatField;
    cdsProduto_CombPRECO_VENDA: TFloatField;
    cdsProduto_CombPERC_MARGEMLUCRO: TFloatField;
    sdsProduto_Cor: TSQLDataSet;
    dspProduto_Cor: TDataSetProvider;
    cdsProduto_Cor: TClientDataSet;
    dsProduto_Cor: TDataSource;
    sdsProduto_CorID: TIntegerField;
    sdsProduto_CorITEM: TIntegerField;
    sdsProduto_CorID_COR: TIntegerField;
    sdsProduto_CorNOME: TStringField;
    sdsProduto_CorINATIVO: TStringField;
    sdsProduto_CorTIPO_REG: TStringField;
    sdsProduto_CorPRECO_CUSTO: TFloatField;
    sdsProduto_CorPRECO_VENDA: TFloatField;
    sdsProduto_CorPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_CorID: TIntegerField;
    cdsProduto_CorITEM: TIntegerField;
    cdsProduto_CorID_COR: TIntegerField;
    cdsProduto_CorNOME: TStringField;
    cdsProduto_CorINATIVO: TStringField;
    cdsProduto_CorTIPO_REG: TStringField;
    cdsProduto_CorPRECO_CUSTO: TFloatField;
    cdsProduto_CorPRECO_VENDA: TFloatField;
    cdsProduto_CorPERC_MARGEMLUCRO: TFloatField;
    dsProduto_Comb_Mestre: TDataSource;
    sdsProduto_Comb_Mat: TSQLDataSet;
    cdsProduto_Comb_Mat: TClientDataSet;
    dsProduto_Comb_Mat: TDataSource;
    sdsProduto_Comb_MatID: TIntegerField;
    sdsProduto_Comb_MatITEM: TIntegerField;
    sdsProduto_Comb_MatITEM_MAT: TIntegerField;
    sdsProduto_Comb_MatID_POSICAO: TIntegerField;
    sdsProduto_Comb_MatID_MATERIAL: TIntegerField;
    sdsProduto_Comb_MatID_COR: TIntegerField;
    cdsProduto_CombsdsProduto_Comb_Mat: TDataSetField;
    cdsProduto_Comb_MatID: TIntegerField;
    cdsProduto_Comb_MatITEM: TIntegerField;
    cdsProduto_Comb_MatITEM_MAT: TIntegerField;
    cdsProduto_Comb_MatID_POSICAO: TIntegerField;
    cdsProduto_Comb_MatID_MATERIAL: TIntegerField;
    cdsProduto_Comb_MatID_COR: TIntegerField;
    cdsProduto_Comb_MatclNome_Material: TStringField;
    cdsProduto_Comb_MatclNome_Posicao: TStringField;
    sdsMaterial_Cor: TSQLDataSet;
    dspMaterial_Cor: TDataSetProvider;
    cdsMaterial_Cor: TClientDataSet;
    dsMaterial_Cor: TDataSource;
    mCombinacaoAux: TClientDataSet;
    mCombinacaoAuxID_Posicao: TIntegerField;
    mCombinacaoAuxID_Cor: TIntegerField;
    mCombinacaoAuxID_Material: TIntegerField;
    mCombinacaoAuxItem_Mat: TIntegerField;
    sdsProdutoID_LINHA: TIntegerField;
    cdsProdutoID_LINHA: TIntegerField;
    sdsLinha: TSQLDataSet;
    dspLinha: TDataSetProvider;
    cdsLinha: TClientDataSet;
    dsLinha: TDataSource;
    cdsLinhaID: TIntegerField;
    cdsLinhaCODIGO: TStringField;
    cdsLinhaNOME: TStringField;
    cdsLinhaUNIDADE: TStringField;
    cdsLinhaID_NCM: TIntegerField;
    qParametrosMOSTRAR_MARCAR_PROD: TStringField;
    qParametrosMOSTRAR_LINHA_PROD: TStringField;
    sdsProduto_Emb: TSQLDataSet;
    dspProduto_Emb: TDataSetProvider;
    cdsProduto_Emb: TClientDataSet;
    dsProduto_Emb: TDataSource;
    sdsProduto_EmbID: TIntegerField;
    sdsProduto_EmbITEM: TIntegerField;
    sdsProduto_EmbID_MATERIAL: TIntegerField;
    sdsProduto_EmbQTD_EMB: TFloatField;
    cdsProduto_EmbID: TIntegerField;
    cdsProduto_EmbITEM: TIntegerField;
    cdsProduto_EmbID_MATERIAL: TIntegerField;
    cdsProduto_EmbQTD_EMB: TFloatField;
    qParametrosMOSTRAR_EMBALAGEM: TStringField;
    cdsProduto_EmbclNome_Material: TStringField;
    sdsProduto_ConsumoID_SETOR: TIntegerField;
    cdsProduto_ConsumoID_SETOR: TIntegerField;
    qParametrosUSA_SETOR_CONSUMO: TStringField;
    cdsProduto_ConsumoNOME_SETOR: TStringField;
    qSetor: TSQLQuery;
    qSetorID: TIntegerField;
    qSetorNOME: TStringField;
    qSetorGERAR_TALAO: TStringField;
    qSetorLIMITE_POR_TALAO: TStringField;
    qSetorQTD_LIMITE_POR_TALAO: TIntegerField;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    cdsSetorDESPESA_RATEIO: TFloatField;
    cdsSetorGERAR_TALAO: TStringField;
    cdsSetorLIMITE_POR_TALAO: TStringField;
    cdsSetorQTD_LIMITE_POR_TALAO: TIntegerField;
    sdsProduto_Atelier: TSQLDataSet;
    dspProduto_Atelier: TDataSetProvider;
    cdsProduto_Atelier: TClientDataSet;
    dsProduto_Atelier: TDataSource;
    sdsProduto_AtelierID: TIntegerField;
    sdsProduto_AtelierITEM: TIntegerField;
    sdsProduto_AtelierID_ATELIER: TIntegerField;
    sdsProduto_AtelierID_SETOR: TIntegerField;
    sdsProduto_AtelierVLR_PAR: TFloatField;
    cdsProduto_AtelierID: TIntegerField;
    cdsProduto_AtelierITEM: TIntegerField;
    cdsProduto_AtelierID_ATELIER: TIntegerField;
    cdsProduto_AtelierID_SETOR: TIntegerField;
    cdsProduto_AtelierVLR_PAR: TFloatField;
    qParametrosMOSTRAR_ATELIER_PROD: TStringField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsProduto_AtelierNOME_ATELIER: TStringField;
    cdsProduto_AtelierNOME_SETOR: TStringField;
    mSetor: TClientDataSet;
    dsmSetor: TDataSource;
    mSetorID: TIntegerField;
    mSetorNome: TStringField;
    sdsCBarra2: TSQLDataSet;
    sdsCBarra2ID: TIntegerField;
    sdsCBarra2COD_BARRA: TStringField;
    sdsCBarra2ID_PRODUTO: TIntegerField;
    sdsCBarra2ID_COR: TIntegerField;
    sdsCBarra2TAMANHO: TStringField;
    sdsCBarra2COD_PRINCIPAL: TStringField;
    sdsCBarra2COD_SEQUENCIAL: TIntegerField;
    dspCBarra2: TDataSetProvider;
    cdsCBarra2: TClientDataSet;
    cdsCBarra2ID: TIntegerField;
    cdsCBarra2COD_BARRA: TStringField;
    cdsCBarra2ID_PRODUTO: TIntegerField;
    cdsCBarra2ID_COR: TIntegerField;
    cdsCBarra2TAMANHO: TStringField;
    cdsCBarra2COD_PRINCIPAL: TStringField;
    cdsCBarra2COD_SEQUENCIAL: TIntegerField;
    dsCBarra2: TDataSource;
    mProduto_CBarra: TClientDataSet;
    dsProduto_CBarra: TDataSource;
    mProduto_CBarraID_Produto: TIntegerField;
    mProduto_CBarraID_Combinacao: TIntegerField;
    mProduto_CBarraTamanho: TStringField;
    mProduto_CBarraReferencia: TStringField;
    mProduto_CBarraNome_Produto: TStringField;
    mProduto_CBarraNome_Combinacao: TStringField;
    mProduto_CBarraCod_Barra: TStringField;
    qProximoCbarra: TSQLQuery;
    qProximoCbarraSEQUENCIAL: TIntegerField;
    mProduto_CBarraFilial: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsProdutoCOD_ANT: TStringField;
    cdsProdutoCOD_ANT: TStringField;
    qParametrosUSA_COD_BARRAS_PROPRIO: TStringField;
    sdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    dsCFOP: TDataSource;
    qParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField;
    sdsProdutoUSA_PRECO_COR: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    qMaterialPRECO_CUSTO_MAT: TFloatField;
    qMaterialUSA_PRECO_COR: TStringField;
    qMaterialPRECO_CUSTO_COR: TFloatField;
    sdsProdutoUSA_COR: TStringField;
    cdsProdutoUSA_COR: TStringField;
    cdsProduto_ConsultaTIPO_REG_DESCRICAO: TStringField;
    sdsProduto_CorID_COR_COMBINACAO: TIntegerField;
    cdsProduto_CorID_COR_COMBINACAO: TIntegerField;
    cdsCorID: TFMTBCDField;
    cdsCorNOME: TStringField;
    sdsProduto_CombID_COR_COMBINACAO: TIntegerField;
    cdsProduto_CombID_COR_COMBINACAO: TIntegerField;
    cdsMaterial_CorID: TIntegerField;
    cdsMaterial_CorID_COR_COMBINACAO: TIntegerField;
    cdsMaterial_CorNOME_COR_COMBINACAO: TStringField;
    mCombinacaoAuxNome_Cor: TStringField;
    sdsProdutoTRANSFER: TStringField;
    cdsProdutoTRANSFER: TStringField;
    sdsProduto_EmbTIPO_EMB: TStringField;
    cdsProduto_EmbTIPO_EMB: TStringField;
    sdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    sdsCor_RZ: TSQLDataSet;
    dspCor_RZ: TDataSetProvider;
    cdsCor_RZ: TClientDataSet;
    dsCor_RZ: TDataSource;
    qParametrosINFORMAR_COR_MATERIAL_RZ: TStringField;
    cdsProduto_ConsumoclPreco_Venda: TFloatField;
    qMaterialPRECO_VENDA: TFloatField;
    qParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    qParametrosUSA_PRODUTO_FORNECEDOR: TStringField;
    qParametrosUSA_PRODUTO_LOCALIZACAO: TStringField;
    sdsProduto_Livro: TSQLDataSet;
    dspProduto_Livro: TDataSetProvider;
    cdsProduto_Livro: TClientDataSet;
    dsProduto_Livro: TDataSource;
    sdsProduto_LivroID: TIntegerField;
    sdsProduto_LivroAUTOR: TStringField;
    sdsProduto_LivroSELO: TStringField;
    sdsProduto_LivroPAGINA: TIntegerField;
    sdsProduto_LivroDTLANCAMENTO: TDateField;
    sdsProduto_LivroCICLO: TStringField;
    cdsProduto_LivroID: TIntegerField;
    cdsProduto_LivroAUTOR: TStringField;
    cdsProduto_LivroSELO: TStringField;
    cdsProduto_LivroPAGINA: TIntegerField;
    cdsProduto_LivroDTLANCAMENTO: TDateField;
    cdsProduto_LivroCICLO: TStringField;
    qParametrosEMPRESA_LIVRARIA: TStringField;
    cdsProduto_ConsultaAUTOR: TStringField;
    cdsProduto_ConsultaDTLANCAMENTO: TDateField;
    cdsProduto_ConsultaPAGINA: TIntegerField;
    cdsProduto_ConsultaSELO: TStringField;
    cdsProduto_ConsultaCICLO: TStringField;
    sdsProdutoID_CONTA_ORCAMENTO: TIntegerField;
    cdsProdutoID_CONTA_ORCAMENTO: TIntegerField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    sdsProdutoProcesso: TSQLDataSet;
    dspProdutoProcesso: TDataSetProvider;
    cdsProdutoProcesso: TClientDataSet;
    dsProdutoProcesso: TDataSource;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProdutoProcessoID: TIntegerField;
    cdsProdutoProcessoITEM: TIntegerField;
    cdsProdutoProcessoID_PROCESSO: TIntegerField;
    cdsProdutoProcessoID_SETOR: TIntegerField;
    cdsProdutoProcessoQTD: TFloatField;
    cdsProdutoProcessoUN: TStringField;
    cdsProdutoProcessoVLR_UNIT: TFloatField;
    cdsProdutoProcessoVLR_TOTAL: TFloatField;
    cdsProdutoProcessoOBS: TStringField;
    cdsProcessoNOME: TStringField;
    cdsProdutoProcessolkProcesso: TStringField;
    cdsProdutoProcessolkSetor: TStringField;
    cdsProduto_ConsumoclTIPO_REG: TStringField;
    qMaterialTIPO_REG: TStringField;
    sdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    cdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    cdsLocal_EstoqueID: TIntegerField;
    cdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    cdsLocal_EstoqueNOME: TStringField;
    dsLocal_Estoque: TDataSource;
    cdsLocal_EstoquePRINCIPAL: TStringField;
    cdsLocal_EstoqueINATIVO: TStringField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    qParametrosTIPO_COMISSAO_PROD: TStringField;
    sdsProduto_Comissao: TSQLDataSet;
    dspProduto_Comissao: TDataSetProvider;
    cdsProduto_Comissao: TClientDataSet;
    dsProduto_Comissao: TDataSource;
    sdsProduto_ComissaoID: TIntegerField;
    sdsProduto_ComissaoITEM: TIntegerField;
    sdsProduto_ComissaoID_CLIENTE: TIntegerField;
    sdsProduto_ComissaoPERC_COMISSAO: TFloatField;
    cdsProduto_ComissaoID: TIntegerField;
    cdsProduto_ComissaoITEM: TIntegerField;
    cdsProduto_ComissaoID_CLIENTE: TIntegerField;
    cdsProduto_ComissaoPERC_COMISSAO: TFloatField;
    sdsProduto_ComissaoNOME: TStringField;
    cdsProduto_ComissaoNOME: TStringField;
    qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField;
    cdsProduto_ConsultaCOD_ANT: TStringField;
    sdsProdutoPERC_COMISSAO: TFloatField;
    cdsProdutoPERC_COMISSAO: TFloatField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    sdsProduto_UFPERC_REDUCAO_ICMS: TFloatField;
    cdsProduto_UFPERC_REDUCAO_ICMS: TFloatField;
    qParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField;
    sdsProdutoID_ENQIPI: TIntegerField;
    cdsProdutoID_ENQIPI: TIntegerField;
    qEnqIPI: TSQLQuery;
    qEnqIPIID: TIntegerField;
    qEnqIPICODIGO: TStringField;
    qEnqIPITIPO: TStringField;
    qEnqIPIDESCRICAO: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    sdsProduto_Comissao_Vend: TSQLDataSet;
    dspProduto_Comissao_Vend: TDataSetProvider;
    cdsProduto_Comissao_Vend: TClientDataSet;
    dsProduto_Comissao_Vend: TDataSource;
    sdsProduto_Comissao_VendID: TIntegerField;
    sdsProduto_Comissao_VendITEM: TIntegerField;
    sdsProduto_Comissao_VendID_VENDEDOR: TIntegerField;
    sdsProduto_Comissao_VendPERC_COMISSAO: TFloatField;
    sdsProduto_Comissao_VendNOME: TStringField;
    cdsProduto_Comissao_VendID: TIntegerField;
    cdsProduto_Comissao_VendITEM: TIntegerField;
    cdsProduto_Comissao_VendID_VENDEDOR: TIntegerField;
    cdsProduto_Comissao_VendPERC_COMISSAO: TFloatField;
    cdsProduto_Comissao_VendNOME: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    sdsProdutoLANCA_LOTE_CONTROLE: TStringField;
    cdsProdutoLANCA_LOTE_CONTROLE: TStringField;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstGERAR_LOTE_AUT: TStringField;
    sdsProdutoCOD_CEST: TStringField;
    cdsProdutoCOD_CEST: TStringField;
    qCest: TSQLQuery;
    qCestCOD_CEST: TStringField;
    qCestNCM: TStringField;
    qCestDESCRICAO: TStringField;
    sdsProduto_TamTAM_MATRIZ: TStringField;
    cdsProduto_TamTAM_MATRIZ: TStringField;
    sdsProduto_Carimbo: TSQLDataSet;
    dspProduto_Carimbo: TDataSetProvider;
    cdsProduto_Carimbo: TClientDataSet;
    dsProduto_Carimbo: TDataSource;
    sdsProduto_CarimboID: TIntegerField;
    sdsProduto_CarimboITEM: TIntegerField;
    sdsProduto_CarimboID_CLIENTE: TIntegerField;
    sdsProduto_CarimboCARIMBO: TStringField;
    cdsProduto_CarimboID: TIntegerField;
    cdsProduto_CarimboITEM: TIntegerField;
    cdsProduto_CarimboID_CLIENTE: TIntegerField;
    cdsProduto_CarimboCARIMBO: TStringField;
    qParametrosUSA_CARIMBO: TStringField;
    cdsProduto_CarimboNOME_CLIENTE: TStringField;
    sdsProdutoPICTOGRAMA: TStringField;
    sdsProdutoPICTO_CABEDAL: TStringField;
    sdsProdutoPICTO_INTERIOR: TStringField;
    sdsProdutoPICTO_SOLA: TStringField;
    cdsProdutoPICTOGRAMA: TStringField;
    cdsProdutoPICTO_CABEDAL: TStringField;
    cdsProdutoPICTO_INTERIOR: TStringField;
    cdsProdutoPICTO_SOLA: TStringField;
    sdsProdutoCOD_PRODUTO_CLI: TStringField;
    cdsProdutoCOD_PRODUTO_CLI: TStringField;
    qParametrosIMP_NFE_REF_PROD: TStringField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeID: TIntegerField;
    qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_PRODUTO_FILIAL: TStringField;
    sdsProdutoFILIAL: TIntegerField;
    cdsProdutoFILIAL: TIntegerField;
    sdsProduto_Cad_Ant: TSQLDataSet;
    dspProduto_Cad_Ant: TDataSetProvider;
    cdsProduto_Cad_Ant: TClientDataSet;
    dsProduto_Cad_Ant: TDataSource;
    sdsProduto_Cad_AntID: TIntegerField;
    sdsProduto_Cad_AntITEM: TIntegerField;
    sdsProduto_Cad_AntDATA: TDateField;
    sdsProduto_Cad_AntNOME: TStringField;
    sdsProduto_Cad_AntREFERENCIA: TStringField;
    cdsProduto_Cad_AntID: TIntegerField;
    cdsProduto_Cad_AntITEM: TIntegerField;
    cdsProduto_Cad_AntDATA: TDateField;
    cdsProduto_Cad_AntNOME: TStringField;
    cdsProduto_Cad_AntREFERENCIA: TStringField;
    qParametros_ProdSENHA_ALT_PROD_MOV: TStringField;
    sdsProduto_Cad_AntHORA: TTimeField;
    cdsProduto_Cad_AntHORA: TTimeField;
    sdsProduto_Cad_AntUSUARIO: TStringField;
    cdsProduto_Cad_AntUSUARIO: TStringField;
    qParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField;
    cdsProduto_ConsultaOBS: TMemoField;
    sdsProdutoBAIXA_ESTOQUE_MAT: TStringField;
    cdsProdutoBAIXA_ESTOQUE_MAT: TStringField;
    qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField;
    cdsProduto_Comb_MatNOME_COR_COMBINACAO: TStringField;
    qCombinacao: TSQLQuery;
    qCombinacaoNOME: TStringField;
    sdsProduto_SerieID: TIntegerField;
    sdsProduto_SerieITEM: TIntegerField;
    sdsProduto_SerieNUM_SERIE: TStringField;
    sdsProduto_SerieDTCADASTRO: TDateField;
    sdsProduto_SerieINATIVO: TStringField;
    sdsProduto_SerieNUM_SERIE_SEQ: TIntegerField;
    cdsProduto_SerieID: TIntegerField;
    cdsProduto_SerieITEM: TIntegerField;
    cdsProduto_SerieNUM_SERIE: TStringField;
    cdsProduto_SerieDTCADASTRO: TDateField;
    cdsProduto_SerieINATIVO: TStringField;
    cdsProduto_SerieNUM_SERIE_SEQ: TIntegerField;
    qProximaSerieNUM_SERIE: TIntegerField;
    sdsProdutoNOME_ORIGINAL: TStringField;
    cdsProdutoNOME_ORIGINAL: TStringField;
    sdsProduto_Conv: TSQLDataSet;
    dspProduto_Conv: TDataSetProvider;
    cdsProduto_Conv: TClientDataSet;
    dsProduto_Conv: TDataSource;
    sdsProduto_ConvID: TIntegerField;
    sdsProduto_ConvTIPOPROD: TStringField;
    sdsProduto_ConvMODELO: TStringField;
    sdsProduto_ConvNOME_ORIGINAL: TStringField;
    sdsProduto_ConvSUBCODIGO: TStringField;
    sdsProduto_ConvCODIGOGERAL: TStringField;
    sdsProduto_ConvDESCRITIVO: TStringField;
    sdsProduto_ConvMEDIDA: TStringField;
    sdsProduto_ConvEMBALAGEM: TFloatField;
    sdsProduto_ConvMARGEMREAL: TFloatField;
    sdsProduto_ConvMVA: TFloatField;
    sdsProduto_ConvMARGEM_ORIGINAL: TFloatField;
    sdsProduto_ConvPRECOVENDA: TFloatField;
    sdsProduto_ConvMARGEM_MAP: TFloatField;
    sdsProduto_ConvVERCOMISSAO: TStringField;
    sdsProduto_ConvMUDAR_DESCRICAO: TStringField;
    cdsProduto_ConvID: TIntegerField;
    cdsProduto_ConvTIPOPROD: TStringField;
    cdsProduto_ConvMODELO: TStringField;
    cdsProduto_ConvNOME_ORIGINAL: TStringField;
    cdsProduto_ConvSUBCODIGO: TStringField;
    cdsProduto_ConvCODIGOGERAL: TStringField;
    cdsProduto_ConvDESCRITIVO: TStringField;
    cdsProduto_ConvMEDIDA: TStringField;
    cdsProduto_ConvEMBALAGEM: TFloatField;
    cdsProduto_ConvMARGEMREAL: TFloatField;
    cdsProduto_ConvMVA: TFloatField;
    cdsProduto_ConvMARGEM_ORIGINAL: TFloatField;
    cdsProduto_ConvPRECOVENDA: TFloatField;
    cdsProduto_ConvMARGEM_MAP: TFloatField;
    cdsProduto_ConvVERCOMISSAO: TStringField;
    cdsProduto_ConvMUDAR_DESCRICAO: TStringField;
    sdsProduto_ConvMARGEM_MAV: TFloatField;
    cdsProduto_ConvMARGEM_MAV: TFloatField;
    sdsProduto_ConvNOME_COR: TStringField;
    cdsProduto_ConvNOME_COR: TStringField;
    qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField;
    sdsProdutoIMP_ROTULO: TStringField;
    cdsProdutoIMP_ROTULO: TStringField;
    sdsProdutoNUM_MS: TStringField;
    cdsProdutoNUM_MS: TStringField;
    sdsProdutoIMP_CONSUMO_NFE: TStringField;
    cdsProdutoIMP_CONSUMO_NFE: TStringField;
    sdsProdutoGERAR_FCI: TStringField;
    cdsProdutoGERAR_FCI: TStringField;
    sdsProdutoMEDIDA: TStringField;
    cdsProdutoMEDIDA: TStringField;
    qParametros_ProdUSA_MEDIDA: TStringField;
    sdsProduto_UFID_CST_ICMS: TIntegerField;
    cdsProduto_UFID_CST_ICMS: TIntegerField;
    cdsProduto_UFCOD_CST_ICMS: TStringField;
    qCSTIcms: TSQLQuery;
    qCSTIcmsID: TIntegerField;
    qCSTIcmsCOD_CST: TStringField;
    qCSTIcmsCOD_DESONERACAO: TSmallintField;
    sdsCSTICMS: TSQLDataSet;
    dspCSTICMS: TDataSetProvider;
    cdsCSTICMS: TClientDataSet;
    dsCSTICMS: TDataSource;
    cdsCSTICMSID: TIntegerField;
    cdsCSTICMSCOD_CST: TStringField;
    cdsCSTICMSCOD_DESONERACAO: TSmallintField;
    cdsCSTICMSPERCENTUAL: TFloatField;
    sdsProduto_ConvLABORA: TStringField;
    cdsProduto_ConvLABORA: TStringField;
    sdsProduto_ConvFF: TStringField;
    sdsProduto_ConvESPECIFICA: TIntegerField;
    sdsProduto_ConvPREDIMAR: TStringField;
    sdsProduto_ConvCODREF: TStringField;
    sdsProduto_ConvVLRFUT: TFloatField;
    sdsProduto_ConvCRFUT: TStringField;
    sdsProduto_ConvFLFUT: TStringField;
    sdsProduto_ConvQTUNID: TFloatField;
    cdsProduto_ConvFF: TStringField;
    cdsProduto_ConvESPECIFICA: TIntegerField;
    cdsProduto_ConvPREDIMAR: TStringField;
    cdsProduto_ConvCODREF: TStringField;
    cdsProduto_ConvVLRFUT: TFloatField;
    cdsProduto_ConvCRFUT: TStringField;
    cdsProduto_ConvFLFUT: TStringField;
    cdsProduto_ConvQTUNID: TFloatField;
    sdsProdutoQTD_EMBALAGEM: TFloatField;
    cdsProdutoQTD_EMBALAGEM: TFloatField;
    qParametros_ProdUSA_QTD_EMBALAGEM: TStringField;
    qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField;
    sdsProdutoDT_ALT_PRECOCUSTO: TDateField;
    cdsProdutoDT_ALT_PRECOCUSTO: TDateField;
    sdsProduto_FornPRECO_CUSTO_TOTAL: TFloatField;
    cdsProduto_FornPRECO_CUSTO_TOTAL: TFloatField;
    sdsProdutoUSA_CARIMBO_OC: TStringField;
    cdsProdutoUSA_CARIMBO_OC: TStringField;
    sdsProduto_Balanca: TSQLDataSet;
    dspProduto_Balanca: TDataSetProvider;
    cdsProduto_Balanca: TClientDataSet;
    dsProduto_Balanca: TDataSource;
    sdsProduto_BalancaID: TIntegerField;
    sdsProduto_BalancaVALIDADE: TSmallintField;
    sdsProduto_BalancaTIPO_VALIDADE: TStringField;
    sdsProduto_BalancaPORCAO: TStringField;
    sdsProduto_BalancaCALORIAS: TStringField;
    sdsProduto_BalancaCARBOIDRATOS: TStringField;
    sdsProduto_BalancaPROTEINAS: TStringField;
    sdsProduto_BalancaGORD_TOTAIS: TStringField;
    sdsProduto_BalancaGORD_SATURADAS: TStringField;
    sdsProduto_BalancaGORD_TRANS: TStringField;
    sdsProduto_BalancaFIBRA_ALIMENTAR: TStringField;
    sdsProduto_BalancaSODIO: TStringField;
    sdsProduto_BalancaRECEITA11: TStringField;
    sdsProduto_BalancaRECEITA12: TStringField;
    sdsProduto_BalancaRECEITA13: TStringField;
    sdsProduto_BalancaRECEITA14: TStringField;
    sdsProduto_BalancaRECEITA15: TStringField;
    sdsProduto_BalancaRECEITA21: TStringField;
    sdsProduto_BalancaRECEITA22: TStringField;
    sdsProduto_BalancaRECEITA23: TStringField;
    sdsProduto_BalancaRECEITA24: TStringField;
    sdsProduto_BalancaRECEITA25: TStringField;
    sdsProduto_BalancaRECEITA31: TStringField;
    sdsProduto_BalancaRECEITA32: TStringField;
    sdsProduto_BalancaRECEITA33: TStringField;
    sdsProduto_BalancaRECEITA34: TStringField;
    sdsProduto_BalancaRECEITA35: TStringField;
    sdsProdutoUSA_NA_BALANCA: TStringField;
    cdsProdutoUSA_NA_BALANCA: TStringField;
    sdsProduto_BalancaTIPO_PRODUTO: TStringField;
    cdsProduto_BalancaID: TIntegerField;
    cdsProduto_BalancaVALIDADE: TSmallintField;
    cdsProduto_BalancaTIPO_VALIDADE: TStringField;
    cdsProduto_BalancaPORCAO: TStringField;
    cdsProduto_BalancaCALORIAS: TStringField;
    cdsProduto_BalancaCARBOIDRATOS: TStringField;
    cdsProduto_BalancaPROTEINAS: TStringField;
    cdsProduto_BalancaGORD_TOTAIS: TStringField;
    cdsProduto_BalancaGORD_SATURADAS: TStringField;
    cdsProduto_BalancaGORD_TRANS: TStringField;
    cdsProduto_BalancaFIBRA_ALIMENTAR: TStringField;
    cdsProduto_BalancaSODIO: TStringField;
    cdsProduto_BalancaRECEITA11: TStringField;
    cdsProduto_BalancaRECEITA12: TStringField;
    cdsProduto_BalancaRECEITA13: TStringField;
    cdsProduto_BalancaRECEITA14: TStringField;
    cdsProduto_BalancaRECEITA15: TStringField;
    cdsProduto_BalancaRECEITA21: TStringField;
    cdsProduto_BalancaRECEITA22: TStringField;
    cdsProduto_BalancaRECEITA23: TStringField;
    cdsProduto_BalancaRECEITA24: TStringField;
    cdsProduto_BalancaRECEITA25: TStringField;
    cdsProduto_BalancaRECEITA31: TStringField;
    cdsProduto_BalancaRECEITA32: TStringField;
    cdsProduto_BalancaRECEITA33: TStringField;
    cdsProduto_BalancaRECEITA34: TStringField;
    cdsProduto_BalancaRECEITA35: TStringField;
    cdsProduto_BalancaTIPO_PRODUTO: TStringField;
    qParametros_ProdOPCAO_PRECO_CONSUMO: TStringField;
    cdsMaterialPRECO_CUSTO_TOTAL: TFloatField;
    qMaterialPRECO_CUSTO_TOTAL: TFloatField;
    qParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField;
    cdsProduto_ConsultaPRECO_CUSTO_TOTAL: TFloatField;
    sdsProdutoMENSAGEM: TStringField;
    cdsProdutoMENSAGEM: TStringField;
    sdsProdutoPERC_DESC_MAX: TFloatField;
    cdsProdutoPERC_DESC_MAX: TFloatField;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    mTabPreco: TClientDataSet;
    mTabPrecoID_Tabela: TIntegerField;
    mTabPrecoID_Produto: TIntegerField;
    mTabPrecoVlr_Venda: TFloatField;
    dsmTabPreco: TDataSource;
    mTabPrecoNome_Tabela: TStringField;
    mTabPrecoVlr_Ant: TFloatField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralID: TIntegerField;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    sdsTab_Preco_Itens: TSQLDataSet;
    sdsTab_Preco_ItensID: TIntegerField;
    sdsTab_Preco_ItensITEM: TIntegerField;
    sdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    sdsTab_Preco_ItensVLR_VENDA: TFloatField;
    dspTab_Preco_Itens: TDataSetProvider;
    cdsTab_Preco_Itens: TClientDataSet;
    cdsTab_Preco_ItensID: TIntegerField;
    cdsTab_Preco_ItensITEM: TIntegerField;
    cdsTab_Preco_ItensID_PRODUTO: TIntegerField;
    cdsTab_Preco_ItensVLR_VENDA: TFloatField;
    mTabPrecoDtInicial: TDateField;
    mTabPrecoDtFinal: TDateField;
    mTabPrecoPromocao: TStringField;
    qProximoItem_TabPreco: TSQLQuery;
    qProximoItem_TabPrecoITEM: TIntegerField;
    sdsProdutoID_CSTICMS_BRED: TIntegerField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteID: TIntegerField;
    qParametros_LoteTIPO_PROCESSO: TStringField;
    qParametrosGERAR_TALAO_AUXILIAR: TStringField;
    sdsConsumo_Det: TSQLDataSet;
    dspConsumo_Det: TDataSetProvider;
    cdsConsumo_Det: TClientDataSet;
    dsConsumo_Det: TDataSource;
    cdsConsumo_DetPOSSUI_MATERIAL: TStringField;
    cdsConsumo_DetPERTENCE: TIntegerField;
    cdsConsumo_DetID_MATERIAL: TIntegerField;
    cdsConsumo_DetQTD_CONSUMO: TFloatField;
    cdsConsumo_DetCONSUMO: TFloatField;
    cdsConsumo_DetCUSTO: TFloatField;
    cdsConsumo_DetREFERENCIA: TStringField;
    cdsConsumo_DetGRAU: TIntegerField;
    cdsConsumo_DetUNIDADE: TStringField;
    cdsConsumo_DetNOME: TStringField;
    sdsProdutoTIPO_MAT: TStringField;
    cdsProdutoTIPO_MAT: TStringField;
    cdsConsumo_DetPRECO_CUSTO_TOTAL: TFloatField;
    frxConsumo_Det: TfrxDBDataset;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    qProcesso_Ope: TSQLQuery;
    qProcesso_OpeID_PROCESSO: TIntegerField;
    qProcesso_OpeTIPO_MAT: TStringField;
    qProcesso_OpeNOME: TStringField;
    qProcesso_OpeTIPO_PROCESSO: TStringField;
    sdsProdutoID_PROCESSO_GRUPO: TIntegerField;
    cdsProdutoID_PROCESSO_GRUPO: TIntegerField;
    sdsProcesso_Grupo: TSQLDataSet;
    dspProcesso_Grupo: TDataSetProvider;
    cdsProcesso_Grupo: TClientDataSet;
    dsProcesso_Grupo: TDataSource;
    cdsProcesso_GrupoID: TIntegerField;
    cdsProcesso_GrupoNOME: TStringField;
    qProcesso_Grupo_Itens: TSQLQuery;
    qProcesso_Grupo_ItensID: TIntegerField;
    qProcesso_Grupo_ItensITEM: TIntegerField;
    qProcesso_Grupo_ItensID_PROCESSO: TIntegerField;
    sdsProdutoTIPO_PRODUCAO: TStringField;
    cdsProdutoTIPO_PRODUCAO: TStringField;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    cdsProduto_FornNOME_COR: TStringField;
    qParametros_ProdUSA_CONSUMO_COMB: TStringField;
    sdsProduto_Comb_MatQTD_CONSUMO: TFloatField;
    sdsProduto_Comb_MatQTD_UNIDADE: TFloatField;
    sdsProduto_Comb_MatUNIDADE: TStringField;
    sdsProduto_Comb_MatTINGIMENTO: TStringField;
    cdsProduto_Comb_MatQTD_CONSUMO: TFloatField;
    cdsProduto_Comb_MatQTD_UNIDADE: TFloatField;
    cdsProduto_Comb_MatUNIDADE: TStringField;
    cdsProduto_Comb_MatTINGIMENTO: TStringField;
    sdsProduto_Comb_MatIMP_TALAO: TStringField;
    cdsProduto_Comb_MatIMP_TALAO: TStringField;
    sdsProduto_ConsumoTINGIMENTO: TStringField;
    cdsProduto_ConsumoTINGIMENTO: TStringField;
    mCombinacaoAuxQtd_Consumo: TFloatField;
    mCombinacaoAuxQtd_Unidade: TFloatField;
    mCombinacaoAuxUnidade: TStringField;
    mCombinacaoAuxImp_Talao: TStringField;
    mCombinacaoAuxTingimento: TStringField;
    qParametros_LoteID_COR_CRU: TIntegerField;
    cdsUnidade_ConvTIPO_CONVERSOR: TStringField;
    qUnidade_ConvTIPO_CONVERSOR: TStringField;
    cdsProduto_UniclTipo_Conversor: TStringField;
    qParametrosCALCULAR_PESO_CONSUMO: TStringField;
    sdsProdutoID_MATERIAL_CRU: TIntegerField;
    cdsProdutoID_MATERIAL_CRU: TIntegerField;
    qParametros_ProdUSA_PICTOGRAMA: TStringField;
    qParametros_ProdUSA_ID_MATERIAL_CONS: TStringField;
    qProd: TSQLQuery;
    qProdID: TIntegerField;
    qProdNOME: TStringField;
    qProdREFERENCIA: TStringField;
    qProdTIPO_REG: TStringField;
    sdsProdutoID_FORMA: TIntegerField;
    cdsProdutoID_FORMA: TIntegerField;
    qParametros_GeralEMPRESA_CALCADOS: TStringField;
    sdsFichaTecnica: TSQLDataSet;
    dspFichaTecnica: TDataSetProvider;
    cdsFichaTecnica: TClientDataSet;
    dsFichaTecnica: TDataSource;
    frxFichaTecnica: TfrxDBDataset;
    cdsFichaTecnicaID: TIntegerField;
    cdsFichaTecnicaNOME_PRODUTO: TStringField;
    cdsFichaTecnicaREFERENCIA: TStringField;
    cdsFichaTecnicaFOTO: TStringField;
    cdsFichaTecnicaNCM: TStringField;
    cdsFichaTecnicaITEM: TIntegerField;
    cdsFichaTecnicaNOME_COMBINACAO: TStringField;
    cdsFichaTecnicaMATERIAL: TStringField;
    cdsFichaTecnicaQTD_CONSUMO: TFloatField;
    cdsFichaTecnicaUNIDADE: TStringField;
    cdsFichaTecnicaNOME_SETOR: TStringField;
    cdsFichaTecnicaNOME_POSICAO: TStringField;
    cdsFichaTecnicaID_SETOR: TIntegerField;
    cdsFichaTecnicaNOME_COR: TStringField;
    frxGrade: TfrxDBDataset;
    sdsProduto_CombFOTO: TStringField;
    cdsProduto_CombFOTO: TStringField;
    qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField;
    sdsProdutoTAMANHO: TStringField;
    cdsProdutoTAMANHO: TStringField;
    cdsProduto_ConsultaTAMANHO: TStringField;
    sdsProduto_GradeNum: TSQLDataSet;
    dspProduto_GradeNum: TDataSetProvider;
    cdsProduto_GradeNum: TClientDataSet;
    dsProduto_GradeNum: TDataSource;
    sdsProduto_GradeNumID: TIntegerField;
    sdsProduto_GradeNumTAMANHO: TStringField;
    sdsProduto_GradeNumTAM_MATERIAL: TStringField;
    cdsProduto_GradeNumID: TIntegerField;
    cdsProduto_GradeNumTAMANHO: TStringField;
    cdsProduto_GradeNumTAM_MATERIAL: TStringField;
    sdsTamanho: TSQLDataSet;
    dspTamanho: TDataSetProvider;
    cdsTamanho: TClientDataSet;
    cdsTamanhoID: TIntegerField;
    cdsTamanhoTAMANHO: TStringField;
    dsTamanho: TDataSource;
    cdsCloneProdComb: TClientDataSet;
    cdsCloneProdCombID: TIntegerField;
    cdsCloneProdCombITEM: TIntegerField;
    cdsCloneProdCombID_COR: TIntegerField;
    dsCloneProd_Comb: TDataSource;
    cdsCloneProdCombID_COR_COMBINACAO: TIntegerField;
    sdsProdutoPRECO_LIQ: TFloatField;
    cdsProdutoPRECO_LIQ: TFloatField;
    sdsProdutoUSA_CLIQ: TStringField;
    cdsProdutoUSA_CLIQ: TStringField;
    qParametros_ProdCONT_TIPO_PROD: TStringField;
    sdsProduto_Lote: TSQLDataSet;
    dspProduto_Lote: TDataSetProvider;
    cdsProduto_Lote: TClientDataSet;
    dsProduto_Lote: TDataSource;
    sdsProduto_LoteID: TIntegerField;
    sdsProduto_LoteITEM: TIntegerField;
    sdsProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    sdsProduto_LotePRECO_CUSTO: TFloatField;
    sdsProduto_LotePRECO_VENDA: TFloatField;
    cdsProduto_LoteID: TIntegerField;
    cdsProduto_LoteITEM: TIntegerField;
    cdsProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    cdsProduto_LotePRECO_CUSTO: TFloatField;
    cdsProduto_LotePRECO_VENDA: TFloatField;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    qEstoqueLote: TSQLQuery;
    qEstoqueLoteQTD: TFMTBCDField;
    cdsProduto_LoteclQtde: TFloatField;
    sdsProdutoQTD_PECA_EMB: TIntegerField;
    cdsProdutoQTD_PECA_EMB: TIntegerField;
    sdsProduto_LoteLOCALIZACAO: TStringField;
    cdsProduto_LoteLOCALIZACAO: TStringField;
    cdsProduto_ConsultaTESTE: TStringField;
    sdsProdutoTESTE: TStringField;
    cdsProdutoTESTE: TStringField;
    sdsProduto_FornCOD_COR_FORN: TStringField;
    sdsProduto_FornNOME_COR_FORN: TStringField;
    cdsProduto_FornCOD_COR_FORN: TStringField;
    cdsProduto_FornNOME_COR_FORN: TStringField;
    cdsProduto_ConsultaQTD_EMBALAGEM: TFloatField;
    cdsProduto_ConsultaQTD_PECA_EMB: TIntegerField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedPEDIDO_LOJA: TStringField;
    qParametros_GeralENDGRIDS: TStringField;
    cdsGrupoUNIDADE: TStringField;
    cdsGrupoID_NCM: TIntegerField;
    qParametros_ProdGERAR_REF_GRUPO: TStringField;
    qParametros_ProdQTD_DIGITOS_REF: TIntegerField;
    qParametros_ProdUSA_LARG: TStringField;
    sdsProdutoLARGURA: TFloatField;
    sdsProdutoALTURA: TFloatField;
    sdsProdutoESPESSURA: TFloatField;
    cdsProdutoLARGURA: TFloatField;
    cdsProdutoALTURA: TFloatField;
    cdsProdutoESPESSURA: TFloatField;
    qParametros_ProdINF_CBARRA_MANUAL: TStringField;
    sdsCBarra2FILIAL: TIntegerField;
    cdsCBarra2FILIAL: TIntegerField;
    sdsCBarra2NOME_FILIAL: TStringField;
    sdsCBarra2NOME_INTERNO: TStringField;
    cdsCBarra2NOME_FILIAL: TStringField;
    cdsCBarra2NOME_INTERNO: TStringField;
    qProdSemi: TSQLQuery;
    qProdSemiCONTADOR: TIntegerField;
    cdsProduto_ConsultaLARGURA: TFloatField;
    cdsProduto_ConsultaALTURA: TFloatField;
    cdsProduto_ConsultaESPESSURA: TFloatField;
    sdsProdutoMULTIPLICADOR: TFloatField;
    cdsProdutoMULTIPLICADOR: TFloatField;
    qParametros_ProdEXCLUI_PROD_SEL: TStringField;
    sdsProdutoREF2: TStringField;
    cdsProdutoREF2: TStringField;
    qParametros_LoteUSA_COR_COMB: TStringField;
    sdsProduto_ConsumoESPECIFICO: TStringField;
    cdsProduto_ConsumoESPECIFICO: TStringField;
    qParametros_ProdGRAVAR_PRECO_COMB: TStringField;
    sdsProduto_CombOBSMATERIAL: TStringField;
    cdsProduto_CombOBSMATERIAL: TStringField;
    cdsPosicaoPRIMEIRO_MAT: TStringField;
    qParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField;
    cdsProduto_Comb_MatclPrimeiro_Mat: TStringField;
    qParametros_ProdSENHA_PROD_CUSTO: TStringField;
    qCustoNV: TSQLQuery;
    qCustoNVCONTADOR: TIntegerField;
    sdsProdutoFATOR_CALCULO: TFloatField;
    cdsProdutoFATOR_CALCULO: TFloatField;
    qParametros_GeralUSA_TIPO_MATERIAL: TStringField;
    sdsProduto_Comb_MatID_SETOR: TIntegerField;
    cdsProduto_Comb_MatID_SETOR: TIntegerField;
    mCombinacaoAuxID_Setor: TIntegerField;
    cdsProduto_Comb_MatclSetor: TStringField;
    qParametros_ProdID_POSICAO_PADRAO: TIntegerField;
    qParametros_GeralUSA_CUSTO_PROC_ATE: TStringField;
    qParametros_LoteLOTE_PROCESSO: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerUSA_PROCESSO_OS: TStringField;
    qParametros_ProdATUALIZAR_COMB: TStringField;
    mAux: TClientDataSet;
    mAuxNomeMaterial: TStringField;
    mAuxNomeCor: TStringField;
    mAuxNomePosicao: TStringField;
    sdsProduto_CombNOME_FOTO: TStringField;
    cdsProduto_CombNOME_FOTO: TStringField;
    sdsProdutoREF_ORD: TStringField;
    cdsProdutoREF_ORD: TStringField;
    sdsProdutoGERAR_WEB: TStringField;
    cdsProdutoGERAR_WEB: TStringField;
    sdsProdutoTAM_CALC: TFloatField;
    cdsProdutoTAM_CALC: TFloatField;
    qParametros_ProdMOSTRAR_TAM_CALC: TStringField;
    cdsProduto_ConsultaTAM_CALC: TFloatField;
    sdsProduto_FornCNPJ_FABRICANTE: TStringField;
    cdsProduto_FornCNPJ_FABRICANTE: TStringField;
    qNCMTIPO_ESCALA: TStringField;
    sdsProduto_FornCOD_BARRA_PACOTE: TStringField;
    cdsProduto_FornCOD_BARRA_PACOTE: TStringField;
    sdsProdutoPOSSUE_LADO: TStringField;
    cdsProdutoPOSSUE_LADO: TStringField;
    sdsProdutoCOD_BARRA2: TStringField;
    cdsProdutoCOD_BARRA2: TStringField;
    sdsProdutoUNIDADE2: TStringField;
    cdsProdutoUNIDADE2: TStringField;
    qTalaoAux: TSQLQuery;
    qTalaoAuxCONTADOR: TIntegerField;
    qTalaoAuxTIPO: TStringField;
    qParametros_ProdUSA_TAM_REFER_GRADE: TStringField;
    mGradeRefTam: TClientDataSet;
    dsmGradeRefTam: TDataSource;
    qGradeItem: TSQLQuery;
    qGradeItemID: TIntegerField;
    qGradeItemTAMANHO: TStringField;
    qGradeItemTAMANHO_USA: TStringField;
    qGradeItemTAMANHO_EUR: TStringField;
    mGradeRefTamTamanho: TStringField;
    mGradeRefTamTamMaterial: TStringField;
    mGradeRefTamID: TIntegerField;
    sdsProduto_MatTam: TSQLDataSet;
    dspProduto_MatTam: TDataSetProvider;
    cdsProduto_MatTam: TClientDataSet;
    dsProduto_MatTam: TDataSource;
    sdsProduto_MatTamID: TIntegerField;
    sdsProduto_MatTamID_GRADE: TIntegerField;
    sdsProduto_MatTamTAMANHO: TStringField;
    sdsProduto_MatTamTAM_MATERIAL: TStringField;
    sdsProduto_MatTamID_GRADE_MAT: TIntegerField;
    cdsProduto_MatTamID: TIntegerField;
    cdsProduto_MatTamID_GRADE: TIntegerField;
    cdsProduto_MatTamTAMANHO: TStringField;
    cdsProduto_MatTamTAM_MATERIAL: TStringField;
    cdsProduto_MatTamID_GRADE_MAT: TIntegerField;
    cdsProduto_MatTamNOME_GRADE: TStringField;
    qGrade: TSQLQuery;
    qGradeNOME: TStringField;
    sdsProduto_Maq: TSQLDataSet;
    dspProduto_Maq: TDataSetProvider;
    cdsProduto_Maq: TClientDataSet;
    dsProduto_Maq: TDataSource;
    sdsProduto_MaqID: TIntegerField;
    sdsProduto_MaqITEM: TIntegerField;
    sdsProduto_MaqID_MAQUINA: TIntegerField;
    cdsProduto_MaqID: TIntegerField;
    cdsProduto_MaqITEM: TIntegerField;
    cdsProduto_MaqID_MAQUINA: TIntegerField;
    qParametros_ProdUSA_MAQUINA: TStringField;
    sdsMaquina: TSQLDataSet;
    dspMaquina: TDataSetProvider;
    cdsMaquina: TClientDataSet;
    dsMaquina: TDataSource;
    cdsMaquinaID: TIntegerField;
    cdsMaquinaNOME: TStringField;
    cdsMaquinaESPESSURA: TFloatField;
    cdsMaquinaQTD_BOCA: TIntegerField;
    cdsProduto_MaqlkNome_Maquina: TStringField;
    cdsProduto_MaqlkQtd_Boca: TIntegerField;
    cdsProduto_MaqlkEspessura: TFloatField;
    cdsMaquinaQTD_FUSO: TIntegerField;
    cdsMaquinaBORRACHA: TStringField;
    cdsMaquinaFIO_AUXILIAR: TStringField;
    cdsProduto_MaqlkQtd_Fuso: TIntegerField;
    cdsProduto_MaqlkBorracha: TStringField;
    cdsProduto_MaqlkFio_Auxiliar: TStringField;
    sdsProduto_Textil: TSQLDataSet;
    dspProduto_Textil: TDataSetProvider;
    cdsProduto_Textil: TClientDataSet;
    dsProduto_Textil: TDataSource;
    sdsProduto_TextilID: TIntegerField;
    sdsProduto_TextilLARGURA: TFloatField;
    sdsProduto_TextilPENTE: TFloatField;
    sdsProduto_TextilPESO_METRO: TFloatField;
    sdsProduto_TextilTEMPO_METRO: TFloatField;
    sdsProduto_TextilMAQUINA_TECIDA: TStringField;
    sdsProduto_TextilNUM_BOCA: TIntegerField;
    sdsProduto_TextilDESENHO: TStringField;
    sdsProduto_TextilGOMA: TStringField;
    sdsProduto_TextilCOR_AMOSTRA: TStringField;
    sdsProduto_TextilNUM_FIO_URDUME: TStringField;
    sdsProduto_TextilNUM_FIO_ESCRITA: TStringField;
    sdsProduto_TextilNUM_FIO_TOTAL: TStringField;
    sdsProduto_TextilAGULHA: TFloatField;
    sdsProduto_TextilPRODUCAO_8_HORAS: TStringField;
    sdsProduto_TextilPOLIESTER: TStringField;
    sdsProduto_TextilPOLIPROPILENO: TStringField;
    sdsProduto_TextilBORRACHA: TStringField;
    sdsProduto_TextilDIFICULDADES: TMemoField;
    sdsProduto_TextilTRAMA: TStringField;
    sdsProduto_TextilFIO_AUXILIAR: TStringField;
    sdsProduto_TextilFIO: TStringField;
    sdsProduto_TextilTITULO_FIO: TStringField;
    sdsProduto_TextilTOTAL_BATIDAS: TFloatField;
    sdsProduto_TextilENGRENAGEM_A: TFloatField;
    sdsProduto_TextilENGRENAGEM_B: TFloatField;
    sdsProduto_TextilENGRE_ALIM_TRAMA_A: TFloatField;
    sdsProduto_TextilENGRE_ALIM_TRAMA_B: TFloatField;
    sdsProduto_TextilENGRE_ALIM_BORRACHA_A: TFloatField;
    sdsProduto_TextilENGRE_ALIM_BORRACHA_B: TFloatField;
    sdsProduto_TextilQTD_BORRACHA: TFloatField;
    sdsProduto_TextilQTD_BORRACHA_REVEST: TFloatField;
    sdsProduto_TextilTITULO_BORRACHA_REVEST: TStringField;
    sdsProduto_TextilELASTICIDADE: TFloatField;
    sdsProduto_TextilLIGAMENTO: TStringField;
    sdsProduto_TextilENCHIMENTO: TStringField;
    sdsProduto_TextilENGRENAGEM_AGULHA: TFloatField;
    sdsProduto_TextilPRODUCAO_22_DIAS: TStringField;
    sdsProduto_TextilALGODAO: TStringField;
    sdsProduto_TextilHELANCA: TStringField;
    sdsProduto_TextilID_RESPONSAVEL: TIntegerField;
    sdsProduto_TextilDT_FICHA: TDateField;
    cdsProduto_TextilID: TIntegerField;
    cdsProduto_TextilLARGURA: TFloatField;
    cdsProduto_TextilPENTE: TFloatField;
    cdsProduto_TextilPESO_METRO: TFloatField;
    cdsProduto_TextilTEMPO_METRO: TFloatField;
    cdsProduto_TextilMAQUINA_TECIDA: TStringField;
    cdsProduto_TextilNUM_BOCA: TIntegerField;
    cdsProduto_TextilDESENHO: TStringField;
    cdsProduto_TextilGOMA: TStringField;
    cdsProduto_TextilCOR_AMOSTRA: TStringField;
    cdsProduto_TextilNUM_FIO_URDUME: TStringField;
    cdsProduto_TextilNUM_FIO_ESCRITA: TStringField;
    cdsProduto_TextilNUM_FIO_TOTAL: TStringField;
    cdsProduto_TextilAGULHA: TFloatField;
    cdsProduto_TextilPRODUCAO_8_HORAS: TStringField;
    cdsProduto_TextilPOLIESTER: TStringField;
    cdsProduto_TextilPOLIPROPILENO: TStringField;
    cdsProduto_TextilBORRACHA: TStringField;
    cdsProduto_TextilDIFICULDADES: TMemoField;
    cdsProduto_TextilTRAMA: TStringField;
    cdsProduto_TextilFIO_AUXILIAR: TStringField;
    cdsProduto_TextilFIO: TStringField;
    cdsProduto_TextilTITULO_FIO: TStringField;
    cdsProduto_TextilTOTAL_BATIDAS: TFloatField;
    cdsProduto_TextilENGRENAGEM_A: TFloatField;
    cdsProduto_TextilENGRENAGEM_B: TFloatField;
    cdsProduto_TextilENGRE_ALIM_TRAMA_A: TFloatField;
    cdsProduto_TextilENGRE_ALIM_TRAMA_B: TFloatField;
    cdsProduto_TextilENGRE_ALIM_BORRACHA_A: TFloatField;
    cdsProduto_TextilENGRE_ALIM_BORRACHA_B: TFloatField;
    cdsProduto_TextilQTD_BORRACHA: TFloatField;
    cdsProduto_TextilQTD_BORRACHA_REVEST: TFloatField;
    cdsProduto_TextilTITULO_BORRACHA_REVEST: TStringField;
    cdsProduto_TextilELASTICIDADE: TFloatField;
    cdsProduto_TextilLIGAMENTO: TStringField;
    cdsProduto_TextilENCHIMENTO: TStringField;
    cdsProduto_TextilENGRENAGEM_AGULHA: TFloatField;
    cdsProduto_TextilPRODUCAO_22_DIAS: TStringField;
    cdsProduto_TextilALGODAO: TStringField;
    cdsProduto_TextilHELANCA: TStringField;
    cdsProduto_TextilID_RESPONSAVEL: TIntegerField;
    cdsProduto_TextilDT_FICHA: TDateField;
    sdsProduto_TextilSETUP_INICIO: TFloatField;
    sdsProduto_TextilSETUP_TROCA: TFloatField;
    sdsProduto_TextilQTD_POR_MIN: TFloatField;
    cdsProduto_TextilSETUP_INICIO: TFloatField;
    cdsProduto_TextilSETUP_TROCA: TFloatField;
    cdsProduto_TextilQTD_POR_MIN: TFloatField;
    sdsProduto_Textil_DP: TSQLDataSet;
    sdsProduto_Textil_DPID: TIntegerField;
    sdsProduto_Textil_DPITEM: TIntegerField;
    sdsProduto_Textil_DPD1: TStringField;
    sdsProduto_Textil_DPD2: TStringField;
    sdsProduto_Textil_DPD3: TStringField;
    sdsProduto_Textil_DPD4: TStringField;
    sdsProduto_Textil_DPD5: TStringField;
    sdsProduto_Textil_DPD6: TStringField;
    sdsProduto_Textil_DPD7: TStringField;
    sdsProduto_Textil_DPD8: TStringField;
    sdsProduto_Textil_DPD9: TStringField;
    sdsProduto_Textil_DPD10: TStringField;
    sdsProduto_Textil_DPD11: TStringField;
    sdsProduto_Textil_DPD12: TStringField;
    sdsProduto_Textil_DPD13: TStringField;
    sdsProduto_Textil_DPD14: TStringField;
    sdsProduto_Textil_DPP1: TStringField;
    sdsProduto_Textil_DPP2: TStringField;
    sdsProduto_Textil_DPP3: TStringField;
    sdsProduto_Textil_DPP4: TStringField;
    sdsProduto_Textil_DPP5: TStringField;
    sdsProduto_Textil_DPP6: TStringField;
    sdsProduto_Textil_DPP7: TStringField;
    sdsProduto_Textil_DPP8: TStringField;
    sdsProduto_Textil_DPP9: TStringField;
    sdsProduto_Textil_DPP10: TStringField;
    sdsProduto_Textil_DPP11: TStringField;
    sdsProduto_Textil_DPP12: TStringField;
    sdsProduto_Textil_DPP13: TStringField;
    sdsProduto_Textil_DPP14: TStringField;
    sdsProduto_Textil_DPOBS: TMemoField;
    dspProduto_Textil_DP: TDataSetProvider;
    cdsProduto_Textil_DP: TClientDataSet;
    cdsProduto_Textil_DPID: TIntegerField;
    cdsProduto_Textil_DPITEM: TIntegerField;
    cdsProduto_Textil_DPD1: TStringField;
    cdsProduto_Textil_DPD2: TStringField;
    cdsProduto_Textil_DPD3: TStringField;
    cdsProduto_Textil_DPD4: TStringField;
    cdsProduto_Textil_DPD5: TStringField;
    cdsProduto_Textil_DPD6: TStringField;
    cdsProduto_Textil_DPD7: TStringField;
    cdsProduto_Textil_DPD8: TStringField;
    cdsProduto_Textil_DPD9: TStringField;
    cdsProduto_Textil_DPD10: TStringField;
    cdsProduto_Textil_DPD11: TStringField;
    cdsProduto_Textil_DPD12: TStringField;
    cdsProduto_Textil_DPD13: TStringField;
    cdsProduto_Textil_DPD14: TStringField;
    cdsProduto_Textil_DPP1: TStringField;
    cdsProduto_Textil_DPP2: TStringField;
    cdsProduto_Textil_DPP3: TStringField;
    cdsProduto_Textil_DPP4: TStringField;
    cdsProduto_Textil_DPP5: TStringField;
    cdsProduto_Textil_DPP6: TStringField;
    cdsProduto_Textil_DPP7: TStringField;
    cdsProduto_Textil_DPP8: TStringField;
    cdsProduto_Textil_DPP9: TStringField;
    cdsProduto_Textil_DPP10: TStringField;
    cdsProduto_Textil_DPP11: TStringField;
    cdsProduto_Textil_DPP12: TStringField;
    cdsProduto_Textil_DPP13: TStringField;
    cdsProduto_Textil_DPP14: TStringField;
    cdsProduto_Textil_DPOBS: TMemoField;
    dsProduto_Textil_DP: TDataSource;
    sdsProduto_Tranc: TSQLDataSet;
    sdsProduto_TrancID: TIntegerField;
    sdsProduto_TrancFUSO: TFloatField;
    sdsProduto_TrancMAQUINA: TStringField;
    sdsProduto_TrancENGRENAGEM: TStringField;
    sdsProduto_TrancENGRENAGEM_SUP: TFloatField;
    sdsProduto_TrancENGRENAGEM_INF: TFloatField;
    sdsProduto_TrancCANALETA: TStringField;
    sdsProduto_TrancESPULAS: TStringField;
    sdsProduto_TrancDIREITA: TStringField;
    sdsProduto_TrancESQUERDA: TStringField;
    sdsProduto_TrancALMA_BORRACHA: TStringField;
    sdsProduto_TrancFIO: TStringField;
    sdsProduto_TrancMATERIAL: TStringField;
    sdsProduto_TrancPESO_METRO: TFloatField;
    sdsProduto_TrancTEMPO_ESPULADEIRA: TFloatField;
    sdsProduto_TrancQTD_POR_MIN: TFloatField;
    sdsProduto_TrancSETUP_INICIO: TFloatField;
    sdsProduto_TrancSETUP_TROCA: TFloatField;
    sdsProduto_TrancMETROS_CARGA: TFloatField;
    sdsProduto_TrancAGULHA: TFloatField;
    sdsProduto_TrancOBS: TMemoField;
    dspProduto_Tranc: TDataSetProvider;
    cdsProduto_Tranc: TClientDataSet;
    dsProduto_Tranc: TDataSource;
    cdsProduto_TrancID: TIntegerField;
    cdsProduto_TrancFUSO: TFloatField;
    cdsProduto_TrancMAQUINA: TStringField;
    cdsProduto_TrancENGRENAGEM: TStringField;
    cdsProduto_TrancENGRENAGEM_SUP: TFloatField;
    cdsProduto_TrancENGRENAGEM_INF: TFloatField;
    cdsProduto_TrancCANALETA: TStringField;
    cdsProduto_TrancESPULAS: TStringField;
    cdsProduto_TrancDIREITA: TStringField;
    cdsProduto_TrancESQUERDA: TStringField;
    cdsProduto_TrancALMA_BORRACHA: TStringField;
    cdsProduto_TrancFIO: TStringField;
    cdsProduto_TrancMATERIAL: TStringField;
    cdsProduto_TrancPESO_METRO: TFloatField;
    cdsProduto_TrancTEMPO_ESPULADEIRA: TFloatField;
    cdsProduto_TrancQTD_POR_MIN: TFloatField;
    cdsProduto_TrancSETUP_INICIO: TFloatField;
    cdsProduto_TrancSETUP_TROCA: TFloatField;
    cdsProduto_TrancMETROS_CARGA: TFloatField;
    cdsProduto_TrancAGULHA: TFloatField;
    cdsProduto_TrancOBS: TMemoField;
    sdsProduto_TrancDT_FICHA: TDateField;
    cdsProduto_TrancDT_FICHA: TDateField;
    cdsProduto_ConsultaTIPO_PRODUCAO: TStringField;
    qParametros_ProdATUALIZA_PESO_ENG: TStringField;
    qParametros_ProdMOSTRAR_FORMA: TStringField;
    cdsProdutoProcessoID_POSICAO: TIntegerField;
    cdsProdutoProcessolkPosicao: TStringField;
    dspProduto_Consumo_Prod: TDataSetProvider;
    sdsProduto_Consumo_Proc: TSQLDataSet;
    sdsProduto_Consumo_ProcID: TIntegerField;
    sdsProduto_Consumo_ProcITEM: TIntegerField;
    sdsProduto_Consumo_ProcITEM_PROC: TIntegerField;
    sdsProduto_Consumo_ProcID_PROCESSO: TIntegerField;
    cdsProduto_ConsumosdsProduto_Consumo_Proc: TDataSetField;
    cdsProduto_Consumo_Proc: TClientDataSet;
    cdsProduto_Consumo_ProcID: TIntegerField;
    cdsProduto_Consumo_ProcITEM: TIntegerField;
    cdsProduto_Consumo_ProcITEM_PROC: TIntegerField;
    cdsProduto_Consumo_ProcID_PROCESSO: TIntegerField;
    dsProduto_Consumo_Proc: TDataSource;
    cdsProduto_Consumo_ProclkProcesso: TStringField;
    sdsProdutoCAIXINHA: TStringField;
    cdsProdutoCAIXINHA: TStringField;
    sdsProduto_CarimboCAIXINHA: TStringField;
    cdsProduto_CarimboCAIXINHA: TStringField;
    qParametros_PedUSA_CAIXINHA: TStringField;
    qParametros_ProdUSA_CONSTRUCAO: TStringField;
    sdsProduto_TextilFIO_POR_PUA: TStringField;
    cdsProduto_TextilFIO_POR_PUA: TStringField;
    sdsProdutoSEPARA_COR: TStringField;
    cdsProdutoSEPARA_COR: TStringField;
    sdsProdutoVALIDADE: TSmallintField;
    cdsProdutoVALIDADE: TSmallintField;
    sdsProdutoID_CSTICMS: TIntegerField;
    cdsProdutoID_CSTICMS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure dspProdutoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsProduto_ConsumoCalcFields(DataSet: TDataSet);
    procedure cdsProduto_ConsumoNewRecord(DataSet: TDataSet);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
    procedure cdsProduto_VeiculoBeforePost(DataSet: TDataSet);
    procedure cdsProduto_SerieAfterInsert(DataSet: TDataSet);
    procedure cdsProduto_SerieBeforePost(DataSet: TDataSet);
    procedure cdsProduto_UniCalcFields(DataSet: TDataSet);
    procedure cdsProdutoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsProduto_FornReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsProduto_TamCalcFields(DataSet: TDataSet);
    procedure cdsProduto_FornCalcFields(DataSet: TDataSet);
    procedure cdsProdutoCalcFields(DataSet: TDataSet);
    procedure cdsProduto_MatrizCalcFields(DataSet: TDataSet);
    procedure cdsProduto_Comb_MatCalcFields(DataSet: TDataSet);
    procedure cdsProduto_EmbCalcFields(DataSet: TDataSet);
    procedure cdsProduto_AtelierCalcFields(DataSet: TDataSet);
    procedure cdsProduto_CarimboCalcFields(DataSet: TDataSet);
    procedure cdsProduto_UFCalcFields(DataSet: TDataSet);
    procedure mCombinacaoAuxNewRecord(DataSet: TDataSet);
    procedure cdsProduto_Comb_MatNewRecord(DataSet: TDataSet);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure cdsProduto_LoteCalcFields(DataSet: TDataSet);
    procedure cdsProduto_FornBeforePost(DataSet: TDataSet);
    procedure cdsProduto_Comb_MatBeforePost(DataSet: TDataSet);
    procedure cdsProduto_ConsumoBeforePost(DataSet: TDataSet);
    procedure cdsProduto_FornNewRecord(DataSet: TDataSet);
    procedure cdsProduto_MatTamCalcFields(DataSet: TDataSet);
    procedure cdsProduto_CorNewRecord(DataSet: TDataSet);
    procedure cdsProduto_TextilNewRecord(DataSet: TDataSet);
    procedure cdsProduto_Textil_DPBeforeInsert(DataSet: TDataSet);
    procedure cdsProduto_Textil_DPAfterInsert(DataSet: TDataSet);
    procedure cdsProduto_Textil_DPBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vID_Produto_Forn: Integer;
    vItem_Textil_DP : Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    function fnc_ProdutoForn_Duplicatado(ID_Fornecedor: Integer ; Cod_Material_Forn, Cod_Cor_Forn, Tamanho_Cliente: String): Boolean;
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    ctVeiculo: String;
    ctBalanca: String;
    ctAtivo: String;
    ctGrupo: String;
    ctUnidade_Conv: String;
    ctMatriz: String;
    ctqReferencia: String;
    ctProduto_Comb: String;
    ctFicha_Tecnica : String;
    vGravar_Larg: Boolean;
    vMSGAltProd : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Inserir_ProdForn;
    procedure prc_Inserir_ProdConsumo;
    procedure prc_Inserir_ProdUNI;
    procedure prc_Inserir_ProdUF;
    procedure prc_Inserir_ProdMatriz;
    procedure prc_Inserir_ProdComb;
    procedure prc_Inserir_ProdCombMat;
    procedure prc_Inserir_ProdCor;
    procedure prc_Inserir_ProdEmb;
    procedure prc_Inserir_ProdAtelier;
    procedure prc_Inserir_ProdMaq;
    procedure prc_Inserir_ProdLivro;
    procedure prc_Inserir_ProdProcesso;
    procedure prc_Inserir_ProdComissao;
    procedure prc_Inserir_ProdComissao_Vend;
    procedure prc_Inserir_ProdLote;
    procedure prc_Inserir_ProdCarimbo;
    procedure prc_Inserir_ProdGradeNum;
    procedure prc_Abrir_Material;
    procedure prc_Abrir_Veiculo(ID: Integer);
    procedure prc_Abrir_Balanca(ID: Integer);
    procedure prc_Abrir_Processo;
    procedure prc_Abrir_Ativo(ID: Integer);
    procedure prc_Abrir_PCP(ID: Integer);
    procedure prc_Abrir_Ficha_Textil(ID: Integer);
    procedure prc_Abrir_Ficha_Tranc(ID: Integer);
    procedure prc_Abrir_Ficha_Textil_DP(ID: Integer);
    procedure prc_Abrir_Serie(ID: Integer);
    procedure prc_Abrir_Matriz(ID: Integer);
    procedure prc_Abrir_Comissao(ID: Integer);
    procedure prc_Abrir_Comissao_Vend(ID: Integer);
    procedure prc_Abrir_Produto_Lote(ID: Integer);
    procedure prc_Abrir_CBarra(ID: Integer);

    procedure prc_Abrir_Produto_Comb(ID: Integer);
    procedure prc_Abrir_Produto_Cor(ID: Integer);
    procedure prc_Abrir_Produto_Emb(ID: Integer);
    procedure prc_Abrir_Produto_Atelier(ID: Integer);
    procedure prc_Abrir_Produto_CBarra(ID: Integer);
    procedure prc_Abrir_Cor_Combinacao(Tipo_Reg: String);
    procedure prc_Abrir_Produto_Livro(ID: Integer);
    procedure prc_Abrir_Produto_Carimbo(ID: Integer);
    procedure prc_Abrir_Produto_Cad_Ant(ID: Integer);
    procedure prc_Abrir_Produto_Processo(ID: Integer);
    procedure prc_Abrir_Produto_GradeNum(ID: Integer);
    procedure prc_Abrir_Produto_MatTam(ID: Integer);
    procedure prc_Abrir_Produto_Maq(ID: Integer);
    procedure prc_Inserir_Produto_Consumo_Proc;

    function fnc_Calcular_Mat: Real;

    function fnc_Possui_Erro: Boolean;

    function fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
  end;

var
  dmCadProduto: TdmCadProduto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, ComObj, VarCmplx, Variants;

{$R *.dfm}

{ TDMCadPais }

procedure TdmCadProduto.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProduto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);

  cdsProduto.Insert;
  cdsProdutoID.AsInteger := vAux;
  if (qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') and (vFilial > 0) then
    cdsProdutoFILIAL.AsInteger := vFilial;

  if StrToFloat(FormatFloat('0.00',qParametrosPERC_IPI_PADRAO.AsFloat)) > 0 then
    cdsProdutoPERC_IPI.AsFloat := StrToFloat(FormatFloat('0.00',qParametrosPERC_IPI_PADRAO.AsFloat));
  if qParametrosID_NCM_PADRAO.AsInteger > 0 then
    cdsProdutoID_NCM.AsInteger := qParametrosID_NCM_PADRAO.AsInteger;

  if qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    prc_Abrir_Matriz(cdsProdutoID.AsInteger);
  if (qParametrosINFORMAR_COR_PROD.AsString = 'C') or (qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') then
    prc_Abrir_Produto_Cor(cdsProdutoID.AsInteger);

  if qParametrosINFORMAR_COR_PROD.AsString = 'B' then
    prc_Abrir_Produto_Comb(cdsProdutoID.AsInteger);
  if (qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') and (cdsProdutoTIPO_REG.AsString = 'P') then
    prc_Abrir_Produto_Emb(cdsProdutoID.AsInteger);
  if (qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') and (cdsProdutoTIPO_REG.AsString = 'P') then
    prc_Abrir_Produto_Atelier(cdsProdutoID.AsInteger);
  if qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S' then
    prc_Abrir_Produto_MatTam(cdsProdutoID.AsInteger);
  if (qParametros_ProdUSA_MAQUINA.AsString = 'S') and ((cdsProdutoTIPO_REG.AsString = 'P') or (cdsProdutoTIPO_REG.AsString = 'S')) then
    prc_Abrir_Produto_Maq(cdsProdutoID.AsInteger);

  //if (qParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (cdsProdutoTIPO_REG.AsString = 'P') then
  if (qParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
  begin
    prc_Abrir_Comissao(cdsProdutoID.AsInteger);
    prc_Abrir_Comissao_Vend(cdsProdutoID.AsInteger);
  end;
  if qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    prc_Abrir_Produto_Lote(cdsProdutoID.AsInteger);
  if qParametrosID_LOCAL_ESTOQUE_PROD.AsInteger > 0 then
    cdsProdutoID_LOCAL_ESTOQUE_PROD.AsInteger := qParametrosID_LOCAL_ESTOQUE_PROD.AsInteger;
  if (qParametrosUSA_CARIMBO.AsString = 'S') and (cdsProdutoTIPO_REG.AsString = 'P') then
    prc_Abrir_Produto_Carimbo(cdsProdutoID.AsInteger);
  if (qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
    prc_Abrir_CBarra(cdsProdutoID.AsInteger);
end;

procedure TdmCadProduto.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  vMsgErro := '';
  if not(cdsProduto.Active) or (cdsProduto.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsProduto_Forn.First;
    while not cdsProduto_Forn.Eof do
      cdsProduto_Forn.Delete;
    cdsProduto_Consumo.First;
    while not cdsProduto_Consumo.Eof do
    begin
      cdsProduto_Consumo_Tam.First;
      while not cdsProduto_Consumo_Tam.Eof do
        cdsProduto_Consumo_Tam.Delete;
      cdsProduto_Consumo_Proc.First;
      while not cdsProduto_Consumo_Proc.Eof do
        cdsProduto_Consumo_Proc.Delete;
      cdsProduto_Consumo.Delete;
    end;
    cdsProduto_Tam.First;
    while not cdsProduto_Tam.Eof do
      cdsProduto_Tam.Delete;
    cdsProduto_UF.First;
    while not cdsProduto_UF.Eof do
      cdsProduto_UF.Delete;
    if qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    begin
      cdsProduto_Matriz.First;
      while not cdsProduto_Matriz.Eof do
        cdsProduto_Matriz.Delete;
    end;
    if cdsProduto_GradeNum.Active then
    begin
      cdsProduto_GradeNum.First;
      while not cdsProduto_GradeNum.Eof do
        cdsProduto_GradeNum.Delete;
    end;
    if cdsProduto_Comb.Active then
    begin
      cdsProduto_Comb.First;
      while not cdsProduto_Comb.Eof do
      begin
        cdsProduto_Comb_Mat.First;
        while not cdsProduto_Comb_Mat.Eof do
          cdsProduto_Comb_Mat.Delete;
        cdsProduto_Comb.Delete;
      end;
    end;
    if cdsProduto_Cor.Active then
    begin
      cdsProduto_Cor.First;
      while not cdsProduto_Cor.Eof do
        cdsProduto_Cor.Delete;
    end;
    if cdsProduto_Carimbo.Active then
    begin
      cdsProduto_Carimbo.First;
      while not cdsProduto_Carimbo.Eof do
        cdsProduto_Carimbo.Delete;
      cdsProduto_Carimbo.ApplyUpdates(0);
    end;
    if cdsProdutoProcesso.Active then
    begin
      cdsProdutoProcesso.First;
      while not cdsProdutoProcesso.Eof do
        cdsProdutoProcesso.Delete;
      cdsProdutoProcesso.ApplyUpdates(0);
    end;
    if cdsProduto_Emb.Active then
    begin
      cdsProduto_Emb.First;
      while not cdsProduto_Emb.Eof do
        cdsProduto_Emb.Delete;
    end;
    if cdsProduto_Atelier.Active then
    begin
      cdsProduto_Atelier.First;
      while not cdsProduto_Atelier.Eof do
        cdsProduto_Atelier.Delete;
    end;
    if cdsProduto_Maq.Active then
    begin
      cdsProduto_Maq.First;
      while not cdsProduto_Maq.Eof do
        cdsProduto_Maq.Delete;
      cdsProduto_Maq.ApplyUpdates(0);
    end;
    if cdsProduto_MatTam.Active then
    begin
      cdsProduto_MatTam.First;
      while not cdsProduto_MatTam.Eof do
        cdsProduto_MatTam.Delete;
    end;
    if (qParametrosEMPRESA_LIVRARIA.AsString = 'S') then
    begin
      if not cdsProduto_Livro.Active then
        prc_Abrir_Produto_Livro(cdsProdutoID.AsInteger);
      if not cdsProduto_Livro.IsEmpty then
        cdsProduto_Livro.Delete;
    end;
    //26/10/2017  Para a Renovar
    if qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    begin
      if not cdsProduto_Lote.IsEmpty then
      begin
        cdsProduto_Lote.First;
        while not cdsProduto_Lote.Eof do
          cdsProduto_Lote.Delete;
        cdsProduto_Lote.ApplyUpdates(0);
      end;
    end;           
    //*************

    if (qParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
    begin
      if not cdsProduto_Comissao.IsEmpty then
      begin
        cdsProduto_Comissao.First;
        while not cdsProduto_Comissao.Eof do
          cdsProduto_Comissao.Delete;
        cdsProduto_Comissao.ApplyUpdates(0);
      end;
      if not cdsProduto_Comissao_Vend.IsEmpty then
      begin
        cdsProduto_Comissao_Vend.First;
        while not cdsProduto_Comissao_Vend.Eof do
          cdsProduto_Comissao_Vend.Delete;
        cdsProduto_Comissao_Vend.ApplyUpdates(0);
      end;
    end;
    cdsProduto.Delete;
    cdsProduto.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TdmCadProduto.prc_Gravar;
var
  vIDMat: Integer;
  vConsumo: Real;
  vUnid: String;
  sds: TSQLDataSet;
begin
   if cdsProdutoID_GRADE.AsInteger > 0 then
    cdsProdutoUSA_GRADE.AsString := 'S'
  else
    cdsProdutoUSA_GRADE.AsString := 'N';

  if (qParametrosOPCAO_ESCOLHER_PRECO_COR.AsString <> 'S') and (qParametros_ProdPRODUTO_PRECO_COR.AsString <> 'S') then
    cdsProdutoUSA_PRECO_COR.AsString := 'N';

  if ((cdsProdutoTIPO_REG.AsString = 'M') and (qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')) or
     ((cdsProdutoTIPO_REG.AsString = 'P') and (qParametrosINFORMAR_COR_PROD.AsString = 'C')) then
  begin
    if cdsProduto_Cor.RecordCount > 0 then
      cdsProdutoUSA_COR.AsString := 'S'
    else
      cdsProdutoUSA_COR.AsString := 'N';
  end;
 // Foi tirado no dia 25/09 e colocado na trigger TRG_Produto
{  if (cdsProdutoTIPO_REG.AsString = 'P') and (qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin

    sds  := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT FIRST 1 PC.ID_MATERIAL , PC.qtd_consumo, PC.unidade '
                     + ' FROM PRODUTO_CONSUMO PC '
                     + ' INNER JOIN PRODUTO MAT '
                     + ' ON MAT.ID = PC.id_material '
                     + ' WHERE MAT.tipo_reg = ' + QuotedStr('S')
                     + ' AND PC.ID = :ID ';
    sds.ParamByName('ID').AsInteger := cdsProdutoID.AsInteger;
    sds.Open;

    vIDMat   := sds.FieldByName('ID_MATERIAL').AsInteger;
    vConsumo := sds.FieldByName('QTD_CONSUMO').AsFloat;
    vUnid    := sds.FieldByName('UNIDADE').AsString;

    sds.Close;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM produto_semi ps WHERE ps.id = :ID ';
    sds.ParamByName('ID').AsInteger := cdsProdutoID.AsInteger;
    sds.Open;

    if sds.FieldByName('CONTADOR').AsInteger <= 0 then
    begin
      sds.Close;
      sds.CommandText := 'INSERT INTO PRODUTO_SEMI '
                       + '( ID '
                       + ',ID_MATERIAL1 '
                       + ',QTD_CONSUMO1 '
                       + ',UNIDADE1 '
                       + ') '
                       + 'VALUES '
                       + '(' + cdsProdutoID.AsString
                       + ',' + IntToStr(vIDMat)
                       + ',' + Replace(FormatFloat('0.00000',vConsumo),',','.')
                       + ',' + QuotedStr(vUnid)
                       + ');';
      sds.ExecSQL;
    end
    else
    begin
      sds.Close;
      sds.CommandText := 'UPDATE PRODUTO_SEMI PS2 SET PS2.id_material1 = ' + IntToStr(vIDMat) + ', PS2.qtd_consumo1 = ' + Replace(FormatFloat('0.00000',vConsumo),',','.')
                       + ', PS2.unidade1 = ' + QuotedStr(vUnid)
                       + ' WHERE PS2.ID = ' + cdsProdutoID.AsString;
      sds.ExecSQL;
    end;

    FreeAndNil(sds);
  end;}

  cdsProduto.Post;
  cdsProduto.ApplyUpdates(0);
end;

procedure TdmCadProduto.prc_Localizar(ID: Integer);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctCommand;
  if ID <> 0 then
    sdsProduto.CommandText := sdsProduto.CommandText +
                              ' WHERE PRO.ID = ' + IntToStr(ID);
  cdsProduto.Open;
  cdsProduto_Consumo.Close;
  cdsProduto_Consumo.Open;
  cdsProduto_Consumo_Tam.Close;
  cdsProduto_Consumo_Tam.Open;
  cdsProduto_Consumo_Proc.Close;
  cdsProduto_Consumo_Proc.Open;
  cdsProduto_Consumo.Last;
  cdsProduto_Consumo.First;
  cdsProduto_Consumo_Tam.Last;
  cdsProduto_Consumo_Tam.First;
  cdsProduto_Consumo_Proc.Last;
  cdsProduto_Consumo_Proc.First;
  cdsProduto_Forn.Close;
  cdsProduto_Forn.Open;
  cdsProduto_Tam.Close;
  cdsProduto_Tam.Open;
end;

procedure TdmCadProduto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  //SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand      := sdsProduto.CommandText;
  ctConsulta     := sdsProduto_Consulta.CommandText;
  ctVeiculo      := sdsProduto_Veiculo.CommandText;
  ctBalanca      := sdsProduto_Balanca.CommandText;
  ctAtivo        := sdsProduto_Ativo.CommandText;
  ctGrupo        := sdsGrupo.CommandText;
  ctUnidade_Conv := sdsUnidade_Conv.CommandText;
  ctMatriz       := sdsProduto_Matriz.CommandText;
  ctqReferencia  := qReferencia.SQL.Text;
  ctProduto_Comb := sdsProduto_Comb.CommandText;
  ctFicha_Tecnica := sdsFichaTecnica.CommandText;

  cdsUnidade.Open;
  cdsNCM.Open;
  cdsCSTIPI.Open;
  cdsOrigem_Prod.Open;
  qParametros.Close;
  qParametros.Open;
  cdsGrupo.Open;
  cdsMarca.Open;
  cdsGrade.Open;
  cdsSitTribCf.Open;
  cdsTipo_Matriz.Open;
  cdsUF.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  cdsLocal_Estoque.Open;
  qParametros_Est.Close;
  qParametros_Est.Open;
  qParametros_NFe.Close;
  qParametros_NFe.Open;
  qParametros_Prod.Close;
  qParametros_Prod.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  qParametros_Lote.Close;
  qParametros_Lote.Open;
  qParametros_Ser.Open;
  cdsFilial.Open;
  cdsCSTICMS.Open;

  if qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
    ctFicha_Tecnica := StringReplace(ctFicha_Tecnica,'VFICHA_TECNICA','VFICHA_TECNICA_COMB',[rfReplaceAll, rfIgnoreCase]);

  if qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
    cdsProcesso_Grupo.Open;

  if qParametros_ProdUSA_MAQUINA.AsString = 'S' then
    cdsMaquina.Open;

  if qParametrosUSA_SPED.AsString = 'S' then
  begin
    cdsCentroCusto.Open;
    cdsPlano_Contas.Open;
    cdsAtivoImob.Open;
  end;
  if qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    cdsMatriz_Preco.Open;
  if (qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (qParametros_ProdUSA_CONSTRUCAO.AsString = 'S') then
    cdsLinha.Open;
  if qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S' then
    cdsAtelier.Open;
  if qParametrosUSA_SETOR_CONSUMO.AsString = 'S' then
    cdsSetor.Open;
  if (qParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
    cdsCliente.Open;
  if (qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S') or (qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P') then
    cdsCor_RZ.Open;
  if qParametrosUSA_GRADE.AsString = 'S' then
    cdsTamanho.Open;

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
  if (qParametrosUSA_EDI.AsString = 'S') or (qParametros_NFeUSA_OPCAO_IMP_COD_CLI.AsString = 'S') then
    sdsFornecedor.CommandText := sdsFornecedor.CommandText + ' OR TP_CLIENTE = ' + QuotedStr('S');
  cdsFornecedor.Open;
  cdsCFOP.Open;
end;

procedure TdmCadProduto.cdsProdutoNewRecord(DataSet: TDataSet);
var
  vTipoAux: String;
begin
  cdsProdutoINATIVO.AsString               := 'N';
  cdsProdutoORIGEM_PROD.AsString           := '0';
  cdsProdutoESTOQUE.AsString               := 'S';
  vTipoAux := trim(qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO.AsString);
  if trim(vTipoAux) = '' then
    vTipoAux := trim(qParametrosTIPO_REG_PRODUTO_PADRAO.AsString);
  if trim(vTipoAux) = '' then
    cdsProdutoTIPO_REG.AsString := 'P'
  else
    cdsProdutoTIPO_REG.AsString := vTipoAux;
  cdsProdutoPOSSE_MATERIAL.AsString        := 'E';
  cdsProdutoMATERIAL_OUTROS.AsString       := 'M';
  cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat  := 0;
  cdsProdutoIMPRIMIR_ETIQUETA_NAV.AsString := 'N';
  cdsProdutoPERC_QUEBRAMAT.AsFloat         := 0;
  cdsProdutoUSA_GRADE.AsString             := 'N';
  cdsProdutoREFERENCIA_SEQ.AsInteger       := 0;
  cdsProdutoUSUARIO.AsString               := vUsuario;
  cdsProdutoDTCAD.AsDateTime               := Date;
  cdsProdutoHRCAD.AsDateTime               := Now;
  cdsProdutoCALCULAR_2_LADOS.AsString      := 'N';
  cdsProdutoUSA_PRECO_COR.AsString         := 'N';
  cdsProdutoUSA_COR.AsString               := 'N';
  cdsProdutoLANCA_LOTE_CONTROLE.AsString   := 'N';
  cdsProdutoBAIXA_ESTOQUE_MAT.AsString     := 'N';
  cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  if qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT.AsString = 'S' then
    cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'S'
  else
    cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'N';
  cdsProdutoIMP_ROTULO.AsString      := 'S';
  cdsProdutoGERAR_FCI.AsString       := 'N';
  cdsProdutoIMP_CONSUMO_NFE.AsString := 'N';
  cdsProdutoUSA_CLIQ.AsString        := 'N';
  cdsProdutoSEPARA_COR.AsString      := 'N';
end;

procedure TdmCadProduto.prc_Inserir_ProdForn;
var
  vItemAux: Integer;
begin
  cdsProduto_Forn.Last;
  vItemAux := cdsProduto_FornITEM.AsInteger;

  cdsProduto_Forn.Insert;
  cdsProduto_FornID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_FornITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Inserir_ProdConsumo;
var
  vItemAux: Integer;
begin
  cdsProduto_Consumo.Last;
  vItemAux := cdsProduto_ConsumoITEM.AsInteger;

  cdsProduto_Consumo.Insert;
  cdsProduto_ConsumoID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_ConsumoITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.dspProdutoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmCadProduto.prc_Abrir_Material;
var
  vTipoAux: String;
begin
  vTipoAux := trim(qParametrosMOSTRAR_NO_CONSUMO.AsString);
  if vTipoAux = '' then
    vTipoAux := 'A';
  cdsMaterial.Close;
  sdsMaterial.CommandText := 'SELECT ID, NOME, UNIDADE, REFERENCIA, PRECO_CUSTO, PRECO_CUSTO_TOTAL ' +
                             'FROM PRODUTO ' +
                             'WHERE INATIVO = ' + QuotedStr('N');
  if vTipoAux <> 'A' then
    sdsMaterial.CommandText := sdsMaterial.CommandText + ' AND ((TIPO_REG = ' + QuotedStr(vTipoAux) + ')'
                             + ' OR (TIPO_REG = ' + QuotedStr('S') + '))';
  cdsMaterial.Open;
end;

procedure TdmCadProduto.prc_Abrir_Veiculo(ID: Integer);
begin
  cdsProduto_Veiculo.Close;
  sdsProduto_Veiculo.CommandText := ctVeiculo;
  sdsProduto_Veiculo.ParamByName('ID').AsInteger := ID;
  cdsProduto_Veiculo.Open;
end;

procedure TdmCadProduto.cdsProduto_ConsumoCalcFields(DataSet: TDataSet);
begin
  cdsProduto_ConsumoclVlr_Total.AsFloat := 0;
  qMaterial.Close;
  qMaterial.ParamByName('ID').AsInteger := cdsProduto_ConsumoID_MATERIAL.AsInteger;
  qMaterial.Open;
  cdsProduto_ConsumoNOMEMATERIAL.AsString := qMaterialNOME.AsString;
  cdsProduto_ConsumoREFERENCIA.AsString   := qMaterialREFERENCIA.AsString;
  if qParametros_ProdOPCAO_PRECO_CONSUMO.AsString = 'C' then
    cdsProduto_ConsumoPRECO_CUSTO.AsFloat   := qMaterialPRECO_CUSTO_TOTAL.AsFloat
  else
    cdsProduto_ConsumoPRECO_CUSTO.AsFloat   := qMaterialPRECO_CUSTO_MAT.AsFloat;
  cdsProduto_ConsumoclPreco_Venda.AsFloat := qMaterialPRECO_VENDA.AsFloat;
  cdsProduto_ConsumoclTIPO_REG.AsString   := qMaterialTIPO_REG.AsString;
  if qParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
    cdsProduto_ConsumoclVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoclPreco_Venda.AsFloat * cdsProduto_ConsumoQTD_CONSUMO.AsFloat))
  else
  if (StrToFloat(FormatFloat('0.000000',cdsProduto_ConsumoPRECO_CUSTO.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.000000',cdsProduto_ConsumoQTD_CONSUMO.AsFloat)) > 0) then
    cdsProduto_ConsumoclVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',cdsProduto_ConsumoPRECO_CUSTO.AsFloat * cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
  qPosicao.Close;
  qPosicao.ParamByName('ID').AsInteger := cdsProduto_ConsumoID_POSICAO.AsInteger;
  qPosicao.Open;
  cdsProduto_ConsumoNOME_POSICAO.AsString := qPosicaoNOME.AsString;
  cdsProduto_ConsumoNOME_SETOR.AsString := '';
  if cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
  begin
    qSetor.Close;
    qSetor.ParamByName('ID').AsInteger := cdsProduto_ConsumoID_SETOR.AsInteger;
    qSetor.Open;
    cdsProduto_ConsumoNOME_SETOR.AsString := qSetorNOME.AsString;
  end;
end;

function TdmCadProduto.fnc_Calcular_Mat: Real;
var
  vAux: Real;  
begin
  vAux := 0;
  cdsProduto_Consumo.First;
  while not cdsProduto_Consumo.Eof do
  begin
    vAux := StrToFloat(FormatFloat('0.00',vAux + cdsProduto_ConsumoclVlr_Total.AsFloat));
    cdsProduto_Consumo.Next;
  end;
  Result := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TdmCadProduto.cdsProduto_ConsumoNewRecord(DataSet: TDataSet);
begin
  cdsProduto_ConsumoTIPO_CONSUMO.AsString := 'G';
  cdsProduto_ConsumoIMP_ROTULO.AsString   := 'N';
  cdsProduto_ConsumoIMP_TALAO.AsString    := 'N';
  cdsProduto_ConsumoTINGIMENTO.AsString   := 'N';
  cdsProduto_ConsumoESPECIFICO.AsString   := 'S';
end;

procedure TdmCadProduto.cdsProdutoBeforePost(DataSet: TDataSet);
begin
  if cdsProdutoID_SUBGRUPO.AsInteger <= 0 then
    cdsProdutoID_SUBGRUPO.Clear;
  if cdsProdutoID_CSTIPI.AsInteger <= 0 then
    cdsProdutoID_CSTIPI.Clear;
  if cdsProdutoID_NCM.AsInteger <= 0 then
    cdsProdutoID_NCM.Clear;
  if cdsProdutoID_FORNECEDOR.AsInteger <= 0 then
    cdsProdutoID_FORNECEDOR.Clear;
  if cdsProdutoID_GRUPO.AsInteger <= 0 then
    cdsProdutoID_GRUPO.Clear;
  if cdsProdutoID_MARCA.AsInteger <= 0 then
    cdsProdutoID_MARCA.Clear;
  if cdsProdutoBAIXA_ESTOQUE_MAT.IsNull then
  begin
    if (cdsProdutoTIPO_REG.AsString = 'P') or (cdsProdutoTIPO_REG.AsString = 'S') then
    begin
      if qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT.AsString = 'S' then
        cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'S'
      else
        cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'N';
    end;
  end;
  cdsProdutoREF2.AsString    := Monta_Numero(cdsProdutoREFERENCIA.AsString,0);
  cdsProdutoREF_ORD.AsString := Monta_Numero(cdsProdutoREFERENCIA.AsString,6);
  if (cdsProdutoTIPO_MAT.AsString = 'P') or (cdsProdutoTIPO_MAT.AsString = 'R') or
     (cdsProdutoTIPO_MAT.AsString = 'O') or (cdsProdutoTIPO_MAT.AsString = 'C') then
    cdsProdutoSEPARA_COR.AsString := 'S';
end;

procedure TdmCadProduto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TdmCadProduto.fnc_Possui_Erro: Boolean;
var
  vID_Fornecedor: Integer;
  vCod_Material_Forn, vTamanho: String;
  vAuxAtelier: array[1..10] of Integer;
  i: Integer;
  sds: TSQLDataSet;
begin
  Result   := True;
  vMsgErro := '';
  if cdsProdutoINATIVO.AsString = 'S' then
  begin
    try
      sds  := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText := ' SELECT COUNT(PI.ID_PRODUTO) CONTADOR FROM PEDIDO_ITEM PI '
                       + ' WHERE PI.ID_PRODUTO = ' + IntToStr(cdsProdutoID.AsInteger)
                       + '   AND PI.qtd_restante > 0 ';
      sds.Open;
      if (sds.FieldByName('CONTADOR').AsInteger > 0) then
        vMsgErro := '*** Esse produto não pode ser inativado, possui Pedido(s) em aberto!';
    finally
      FreeAndNil(sds);
    end;
  end;

  if trim(cdsProdutoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsProdutoUNIDADE.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if cdsProdutoID_NCM.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  if trim(cdsProdutoORIGEM_PROD.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Origem não informada!';
  if trim(cdsProdutoREFERENCIA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Referência não informada!';
  if (trim(cdsProdutoREFERENCIA.AsString) <> '') and (qParametrosCADASTRAR_REF_DUP.AsString <> 'S') then
  begin
    qReferencia.Close;
    qReferencia.SQL.Text := ctqReferencia;
    if qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
    begin
      qReferencia.SQL.Text := qReferencia.SQL.Text + ' AND FILIAL = :FILIAL ';
      qReferencia.ParamByName('FILIAL').AsInteger := cdsProdutoFILIAL.AsInteger;
    end;
    qReferencia.ParamByName('REFERENCIA').AsString := cdsProdutoREFERENCIA.AsString;
    qReferencia.Open;
    if (qReferenciaID.AsInteger > 0) and (qReferenciaID.AsInteger <> cdsProdutoID.AsInteger) then
      vMsgErro := vMsgErro + #13 + '*** Referência já cadastrada no ID = ' + qReferenciaID.AsString;
    qReferencia.Close;
  end;
  if qParametrosEMPRESA_VEICULO.AsString = 'S' then
  begin
    if ((trim(cdsProduto_VeiculoNUM_CHASSI.AsString) <> '') or (trim(cdsProduto_VeiculoNUM_RENAVAM.AsString) <> '') or (trim(cdsProduto_VeiculoPLACA.AsString) <> '')) and
       ((trim(cdsProduto_VeiculoNUM_CHASSI.AsString) = '') or (trim(cdsProduto_VeiculoNUM_RENAVAM.AsString) = '') or (trim(cdsProduto_VeiculoPLACA.AsString) = '') and
       (trim(cdsProduto_VeiculoNOME_COR.AsString) = '') or (cdsProduto_VeiculoANO_FAB.AsInteger <= 0) or (cdsProduto_VeiculoANO_MOD.AsInteger <= 0) and
       (trim(cdsProduto_VeiculoMOTORIZACAO.AsString) = '') or (trim(cdsProduto_VeiculoCOMBUSTIVEL.AsString) = '') or (trim(cdsProduto_VeiculoMARCA.AsString) = '') or
       (trim(cdsProduto_VeiculoMODELO.AsString) = '')) then
      vMsgErro := vMsgErro + #13 + '*** Dados do veículo incompleto!';
  end;
  if (cdsProdutoID_GRUPO.AsInteger > 0) and (cdsGrupo.Locate('ID',cdsProdutoID_GRUPO.AsInteger,([Locaseinsensitive]))) and (cdsGrupoTIPO.AsString <> 'A') then
    vMsgErro := vMsgErro + #13 + '*** Estrutura não é Analítica!';
  cdsProduto_Forn.IndexFieldNames := 'ID_FORNECEDOR;COD_MATERIAL_FORN;TAMANHO';
  vID_Fornecedor     := 0;
  vCod_Material_Forn := '';
  vTamanho           := '';
  cdsProduto_Forn.First;
  while not cdsProduto_Forn.Eof do
  begin
    if (vID_Fornecedor = cdsProduto_FornID_FORNECEDOR.AsInteger) and (vCod_Material_Forn = cdsProduto_FornCOD_MATERIAL_FORN.AsString) and
       (vTamanho = cdsProduto_FornTAMANHO.AsString) then
      vMsgErro := vMsgErro + #13 + '*** Cód.Produto ' + cdsProduto_FornCOD_MATERIAL_FORN.AsString + ' e  Tamanho ' + cdsProduto_FornTAMANHO.AsString + ' duplicados!'
    else
    //05/10/2015
    if cdsProdutoINATIVO.AsString <> 'S' then
    begin
      if fnc_ProdutoForn_Duplicatado(cdsProduto_FornID_FORNECEDOR.AsInteger,cdsProduto_FornCOD_MATERIAL_FORN.AsString,cdsProduto_FornCOD_COR_FORN.AsString,cdsProduto_FornTAMANHO_CLIENTE.AsString) then
      begin
        vMsgErro := vMsgErro + #13 + '*** Produto ' + cdsProduto_FornCOD_MATERIAL_FORN.AsString + ' já cadastrado no ID do produto ' + IntToStr(vID_Produto_Forn);
        if trim(cdsProduto_FornCOD_COR_FORN.AsString) <> '' then
          vMsgErro := vMsgErro + #13 + '     Cor ' + cdsProduto_FornCOD_COR_FORN.AsString;
        if trim(cdsProduto_FornTAMANHO_CLIENTE.AsString) <> '' then
          vMsgErro := vMsgErro + #13 + '     Tamanho Cliente ' + cdsProduto_FornTAMANHO_CLIENTE.AsString;
      end;
    end;
    cdsProduto_Forn.Next;
  end;
  if (cdsProdutoTIPO_REG.AsString = 'P') and (qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') then
  begin
    for i := 1 to 10 do
      vAuxAtelier[i] := 0;
    cdsProduto_Atelier.First;
    while not cdsProduto_Atelier.Eof do
    begin
      if cdsProduto_AtelierID_SETOR.AsInteger > 0 then
      begin
        for i := 1 to 10 do
        begin
          if (vAuxAtelier[i] = cdsProduto_AtelierID_SETOR.AsInteger) or (vAuxAtelier[i] = 0) then
          begin
            if (vAuxAtelier[i] = 0) then
              vAuxAtelier[i] := cdsProduto_AtelierID_SETOR.AsInteger
            else
            begin
              vMsgErro := vMsgErro + #13 + '*** Existe o mesmo setor cadastrado para Atelier diferentes';
              cdsProduto_Atelier.Last;
              Break;
            end;
          end;
        end;
      end;
      cdsProduto_Atelier.Next;
    end;
  end;
  cdsProduto_Forn.IndexFieldNames := 'ID;ITEM';

  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    cdsProduto_Uni.First;
    while not cdsProduto_Uni.Eof do
    begin
      sds.Close;
      sds.CommandText := 'SELECT U.tipo_conversor, U.Unidade_Conv FROM UNIDADE_CONV U '
                       + ' WHERE U.unidade = :UNIDADE '
                       + ' AND U.item = :ITEM ';
      sds.ParamByName('UNIDADE').AsString := cdsProdutoUNIDADE.AsString;
      sds.ParamByName('ITEM').AsInteger   := cdsProduto_UniITEM_UNIDADE.AsInteger;
      sds.Open;
      if (sds.FieldByName('tipo_conversor').AsString = 'L') and (StrToFloat(FormatFloat('0.00000',cdsProdutoPESOLIQUIDO.AsFloat)) <= 0) then
      begin
        vMsgErro := vMsgErro + #13 + '*** Unidade de conversão  ' + sds.FieldByName('Unidade_Conv').AsString + ', é por Peso Líquido e este não esta informado!';
        cdsProduto_Uni.Last;
      end
      else
      if (sds.FieldByName('tipo_conversor').AsString = 'B') and (StrToFloat(FormatFloat('0.00000',cdsProdutoPESOBRUTO.AsFloat)) <= 0) and (qParametrosCALCULAR_PESO_CONSUMO.AsString <> 'S') then
      begin
        vMsgErro := vMsgErro + #13 + '*** Unidade de conversão  ' + sds.FieldByName('Unidade_Conv').AsString + ', é por Peso Bruto e este não esta informado!';
        cdsProduto_Uni.Last;
      end;
      cdsProduto_Uni.Next;
    end;
  finally
    FreeAndNil(sds);
  end;

  if vMsgErro <> '' then
    exit;
  Result := False;
end;

procedure TdmCadProduto.prc_Abrir_PCP(ID: Integer);
begin
  cdsProduto_Pcp.Close;
  sdsProduto_Pcp.ParamByName('ID').AsInteger := ID;
  cdsProduto_Pcp.Open;
end;

procedure TdmCadProduto.cdsProduto_VeiculoBeforePost(DataSet: TDataSet);
begin
  if cdsProduto_VeiculoDT_VENDA.AsDateTime < 10 then
    cdsProduto_VeiculoDT_VENDA.Clear;
end;

procedure TdmCadProduto.prc_Abrir_Serie(ID: Integer);
begin
  cdsProduto_Serie.Close;
  sdsProduto_Serie.ParamByName('ID').AsInteger := ID;
  cdsProduto_Serie.Open;
end;

procedure TdmCadProduto.cdsProduto_SerieAfterInsert(DataSet: TDataSet);
begin
  cdsProduto_SerieID.AsInteger       := cdsProdutoID.AsInteger;
  cdsProduto_SerieNUM_SERIE.AsString := '';
end;

procedure TdmCadProduto.cdsProduto_SerieBeforePost(DataSet: TDataSet);
begin
  if trim(cdsProduto_SerieNUM_SERIE.AsString) = '' then
    abort
  else
  if cdsProduto_SerieID.AsInteger <= 0 then
    cdsProduto_SerieID.AsInteger := cdsProdutoID.AsInteger;
end;

procedure TdmCadProduto.prc_Abrir_Ativo(ID: Integer);
begin
  cdsProduto_Ativo.Close;
  sdsProduto_Ativo.CommandText := ctAtivo;
  sdsProduto_Ativo.ParamByName('ID').AsInteger := ID;
  cdsProduto_Ativo.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdUF;
begin
  cdsProduto_UF.Last;
  cdsProduto_UF.Insert;
  cdsProduto_UFID.AsInteger := cdsProdutoID.AsInteger;
end;

procedure TdmCadProduto.prc_Inserir_ProdUNI;
var
  vItemAux: Integer;
begin
  cdsProduto_Uni.Last;
  vItemAux := cdsProduto_UniITEM.AsInteger;

  cdsProduto_Uni.Insert;
  cdsProduto_UniID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_UniITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.cdsProduto_UniCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_UniITEM_UNIDADE.AsInteger > 0 then
  begin
    qUnidade_Conv.Close;
    qUnidade_Conv.ParamByName('UNIDADE').AsString := cdsProduto_UniUNIDADE.AsString;
    qUnidade_Conv.ParamByName('ITEM').AsInteger   := cdsProduto_UniITEM_UNIDADE.AsInteger;
    qUnidade_Conv.Open;
    cdsProduto_UniclQtd_Conv.AsFloat        := StrToFloat(FormatFloat('0.0000',qUnidade_ConvQTD.AsFloat));
    cdsProduto_UniclUnidade_Conv.AsString   := qUnidade_ConvUNIDADE_CONV.AsString;
    if qUnidade_ConvTIPO_CONVERSOR.AsString = 'L' then
      cdsProduto_UniclTipo_Conversor.AsString := 'Peso Líduido'
    else
    if qUnidade_ConvTIPO_CONVERSOR.AsString = 'B' then
      cdsProduto_UniclTipo_Conversor.AsString := 'Peso Bruto'
    else
      cdsProduto_UniclTipo_Conversor.AsString := 'Qtd. Informada';
  end;
end;

procedure TdmCadProduto.cdsProdutoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + '*** Produto não gravado!', mtError, [mbOk], 0);
end;

procedure TdmCadProduto.cdsProduto_FornReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + '*** Produto do fornecedor não gravado!', mtError, [mbOk], 0);
end;

procedure TdmCadProduto.cdsProduto_TamCalcFields(DataSet: TDataSet);
begin
  if cdsProdutoID_GRADE.AsInteger > 0 then
  begin
    qGradeMarcar.Close;
    qGradeMarcar.ParamByName('ID').AsInteger     := cdsProdutoID_GRADE.AsInteger;
    qGradeMarcar.ParamByName('TAMANHO').AsString := cdsProduto_TamTAMANHO.AsString;
    qGradeMarcar.Open;
    cdsProduto_TamclTamanho_USA.AsString := qGradeMarcarTAMANHO_USA.AsString;
    cdsProduto_TamclTamanho_EUR.AsString := qGradeMarcarTAMANHO_EUR.AsString;
  end;
end;

function TdmCadProduto.fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
var
  sds: TSQLDataSet;
  vAux: Integer;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.Close;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT MAX(referencia_seq) REFERENCIA_SEQ FROM PRODUTO ' +
                         ' WHERE TIPO_REG = ' + QuotedStr(Tipo);
    sds.Open;                                     
    vAux   := sds.FieldByName('REFERENCIA_SEQ').AsInteger;
    vAux   := vAux + 1;
    Result := vAux;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TdmCadProduto.cdsProduto_FornCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_FornID_FORNECEDOR.AsInteger > 0 then
  begin
    qFornecedor.Close;
    qFornecedor.ParamByName('CODIGO').AsInteger := cdsProduto_FornID_FORNECEDOR.AsInteger;
    qFornecedor.Open;
    cdsProduto_FornNOMEFORNECEDOR.AsString := qFornecedorNOME.AsString;
    qFornecedor.Close;
  end
  else
    cdsProduto_FornNOMEFORNECEDOR.AsString := '';
  if cdsProduto_FornID_COR.AsInteger > 0 then
  begin
    qCombinacao.Close;
    qCombinacao.ParamByName('ID').AsInteger := cdsProduto_FornID_COR.AsInteger;
    qCombinacao.Open;
    cdsProduto_FornNOME_COR.AsString := qCombinacaoNOME.AsString;
    qCombinacao.Close;
  end;
end;

procedure TdmCadProduto.cdsProdutoCalcFields(DataSet: TDataSet);
begin
  if cdsProdutoID_NCM.AsInteger > 0 then
  begin
    qNCM.Close;
    qNCM.ParamByName('ID').AsInteger := cdsProdutoID_NCM.AsInteger;
    qNCM.Open;
    cdsProdutoNCM.AsString := qNCMNCM.AsString;
  end
  else
    cdsProdutoNCM.AsString := '';
end;

procedure TdmCadProduto.prc_Abrir_Matriz(ID: Integer);
begin
  cdsProduto_Matriz.Close;
  sdsProduto_Matriz.CommandText                 := ctMatriz;
  sdsProduto_Matriz.ParamByName('ID').AsInteger := ID;
  cdsProduto_Matriz.Open;
end;

procedure TdmCadProduto.cdsProduto_MatrizCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_MatrizID_MATRIZ_PRECO.AsInteger > 0 then
  begin
    qMatriz_Preco.Close;
    qMatriz_Preco.ParamByName('ID').AsInteger := cdsProduto_MatrizID_MATRIZ_PRECO.AsInteger;
    qMatriz_Preco.Open;
    cdsProduto_MatrizclNome_Matriz.AsString := qMatriz_PrecoNOME.AsString;
    if qMatriz_PrecoTIPO_REG.AsString = 'ACB' then
      cdsProduto_MatrizclTipo_Reg.AsString := 'Acabamento'
    else
    if qMatriz_PrecoTIPO_REG.AsString = 'RMO' then
      cdsProduto_MatrizclTipo_Reg.AsString := 'Redondo/Modelado'
    else
    if qMatriz_PrecoTIPO_REG.AsString = 'CMO' then
      cdsProduto_MatrizclTipo_Reg.AsString := 'Canto Moeda'
    else
    if qMatriz_PrecoTIPO_REG.AsString = 'FRS' then
      cdsProduto_MatrizclTipo_Reg.AsString := 'Furos'
    else
    if qMatriz_PrecoTIPO_REG.AsString = 'FRC' then
      cdsProduto_MatrizclTipo_Reg.AsString := 'Furacao';
  end
  else
  begin
    cdsProduto_MatrizclNome_Matriz.AsString := '';
    cdsProduto_MatrizclTipo_Reg.AsString    := '';
  end;
end;

procedure TdmCadProduto.prc_Inserir_ProdMatriz;
var
  vItemAux: Integer;
begin
  cdsProduto_Matriz.Last;
  vItemAux := cdsProduto_MatrizITEM.AsInteger;
  cdsProduto_Matriz.Insert;
  cdsProduto_MatrizID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_MatrizITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Comb(ID: Integer);
begin
  cdsProduto_Comb.Close;
  sdsProduto_Comb.ParamByName('ID').AsInteger := ID;
  cdsProduto_Comb.Open;
  cdsProduto_Comb_Mat.Close;
  cdsProduto_Comb_Mat.Open;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Cor(ID: Integer);
begin
  cdsProduto_Cor.Close;
  sdsProduto_Cor.ParamByName('ID').AsInteger := ID;
  cdsProduto_Cor.Open;
end;

procedure TdmCadProduto.cdsProduto_Comb_MatCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_Comb_MatID_MATERIAL.AsInteger > 0 then
    if not cdsMaterial.Active then
      prc_Abrir_Material;
  if cdsProduto_Comb_MatID_COR.AsInteger > 0 then
  begin
    if not cdsCor.Active then
      cdsCor.Open;
    qCombinacao.Close;
    qCombinacao.ParamByName('ID').AsInteger := cdsProduto_Comb_MatID_COR.AsInteger;
    qCombinacao.Open;
    cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := qCombinacaoNOME.AsString;
  end;
  if cdsProduto_Comb_MatID_POSICAO.AsInteger > 0 then
    if not cdsPosicao.Active then
      cdsPosicao.Open;
  if cdsProduto_Comb_MatID_MATERIAL.AsInteger > 0 then
  begin
    if cdsMaterial.Locate('ID',cdsProduto_Comb_MatID_MATERIAL.AsInteger,([Locaseinsensitive])) then
      cdsProduto_Comb_MatclNome_Material.AsString := cdsMaterialNOME.AsString;
  end;
  cdsProduto_Comb_MatclPrimeiro_Mat.AsString := '';
  if cdsProduto_Comb_MatID_POSICAO.AsInteger > 0 then
  begin
    if cdsPosicao.Locate('ID',cdsProduto_Comb_MatID_POSICAO.AsInteger,([Locaseinsensitive])) then
    begin
      cdsProduto_Comb_MatclNome_Posicao.AsString := cdsPosicaoNOME.AsString;
      cdsProduto_Comb_MatclPrimeiro_Mat.AsString := cdsPosicaoPRIMEIRO_MAT.AsString;
    end;
  end;
  if cdsProduto_Comb_MatID_SETOR.AsInteger > 0 then
  begin
    if cdsSetor.Locate('ID',cdsProduto_Comb_MatID_SETOR.AsInteger,([Locaseinsensitive])) then
      cdsProduto_Comb_MatclSetor.AsString := cdsSetorNOME.AsString;
  end;
end;

procedure TdmCadProduto.prc_Inserir_ProdComb;
var
  vItemAux: Integer;
begin
  mCombinacaoAux.EmptyDataSet;
  cdsProduto_Comb.Last;
  cdsProduto_Comb_Mat.First;
  if cdsProduto_Comb.RecordCount > 0 then
  begin
    while not cdsProduto_Comb_Mat.Eof do
    begin
      mCombinacaoAux.Insert;
      mCombinacaoAuxItem_Mat.AsInteger := cdsProduto_Comb_MatITEM_MAT.AsInteger;
      if cdsProduto_Comb_MatID_COR.AsInteger > 0 then
      begin
        mCombinacaoAuxID_Cor.AsInteger   := cdsProduto_Comb_MatID_COR.AsInteger;
        mCombinacaoAuxNome_Cor.AsString  := cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString;
      end;
      if cdsProduto_Comb_MatID_MATERIAL.AsInteger > 0 then
        mCombinacaoAuxID_Material.AsInteger   := cdsProduto_Comb_MatID_MATERIAL.AsInteger;
      if cdsProduto_Comb_MatID_POSICAO.AsInteger > 0 then
        mCombinacaoAuxID_Posicao.AsInteger   := cdsProduto_Comb_MatID_POSICAO.AsInteger;
      if cdsProduto_Comb_MatID_SETOR.AsInteger > 0 then
        mCombinacaoAuxID_Setor.AsInteger := cdsProduto_Comb_MatID_SETOR.AsInteger;
      mCombinacaoAuxNome_Cor.AsString := cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString;
      if qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
      begin
        mCombinacaoAuxQtd_Consumo.AsFloat := cdsProduto_Comb_MatQTD_CONSUMO.AsFloat;
        mCombinacaoAuxQtd_Unidade.AsFloat := cdsProduto_Comb_MatQTD_UNIDADE.AsFloat;
        mCombinacaoAuxUnidade.AsString    := cdsProduto_Comb_MatUNIDADE.AsString;
        mCombinacaoAuxImp_Talao.AsString  := cdsProduto_Comb_MatIMP_TALAO.AsString;
        mCombinacaoAuxTingimento.AsString := cdsProduto_Comb_MatTINGIMENTO.AsString;
      end;
      mCombinacaoAux.Post;
      cdsProduto_Comb_Mat.Next;
    end;
  end
  else
  begin
    cdsProduto_Consumo.First;
    while not cdsProduto_Consumo.Eof do
    begin
      mCombinacaoAux.Insert;
      mCombinacaoAuxItem_Mat.AsInteger := cdsProduto_ConsumoITEM.AsInteger;
      mCombinacaoAuxID_Cor.AsInteger   := 0;
      if cdsProduto_ConsumoID_MATERIAL.AsInteger > 0 then
        mCombinacaoAuxID_Material.AsInteger   := cdsProduto_ConsumoID_MATERIAL.AsInteger;
      if cdsProduto_ConsumoID_POSICAO.AsInteger > 0 then
        mCombinacaoAuxID_Posicao.AsInteger := cdsProduto_ConsumoID_POSICAO.AsInteger;
      if cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
        mCombinacaoAuxID_Setor.AsInteger := cdsProduto_ConsumoID_SETOR.AsInteger;
      mCombinacaoAuxNome_Cor.AsString := '';
      if qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
      begin
        mCombinacaoAuxQtd_Consumo.AsFloat := cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
        mCombinacaoAuxQtd_Unidade.AsFloat := cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
        mCombinacaoAuxUnidade.AsString    := cdsProduto_ConsumoUNIDADE.AsString;
        mCombinacaoAuxImp_Talao.AsString  := cdsProduto_ConsumoIMP_TALAO.AsString;
        mCombinacaoAuxTingimento.AsString := cdsProduto_ConsumoTINGIMENTO.AsString;
      end;
      mCombinacaoAux.Post;
      cdsProduto_Consumo.Next;
    end;
  end;
  vItemAux := cdsProduto_CombITEM.AsInteger;

  cdsProduto_Comb.Insert;
  cdsProduto_CombID.AsInteger      := cdsProdutoID.AsInteger;
  cdsProduto_CombITEM.AsInteger    := vItemAux + 1;
  cdsProduto_CombINATIVO.AsString  := 'N';
  cdsProduto_CombTIPO_REG.AsString := 'B';
end;

procedure TdmCadProduto.prc_Inserir_ProdCombMat;
var
  vItemAux: Integer;
begin
  cdsProduto_Comb_Mat.Last;
  vItemAux := cdsProduto_Comb_MatITEM_MAT.AsInteger;

  cdsProduto_Comb_Mat.Insert;
  cdsProduto_Comb_MatID.AsInteger       := cdsProduto_CombID.AsInteger;
  cdsProduto_Comb_MatITEM.AsInteger     := cdsProduto_CombITEM.AsInteger;
  cdsProduto_Comb_MatITEM_MAT.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Inserir_ProdCor;
var
  vItemAux: Integer;
begin
  cdsProduto_Cor.Last;
  vItemAux := cdsProduto_CorITEM.AsInteger;
  cdsProduto_Cor.Insert;
  cdsProduto_CorID.AsInteger      := cdsProdutoID.AsInteger;
  cdsProduto_CorITEM.AsInteger    := vItemAux + 1;
  cdsProduto_CorINATIVO.AsString  := 'N';
  cdsProduto_CorTIPO_REG.AsString := 'C';
end;

procedure TdmCadProduto.prc_Abrir_Produto_Emb(ID: Integer);
begin
  cdsProduto_Emb.Close;
  sdsProduto_Emb.ParamByName('ID').AsInteger := ID;
  cdsProduto_Emb.Open;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Atelier(ID: Integer);
begin
  cdsProduto_Atelier.Close;
  sdsProduto_Atelier.ParamByName('ID').AsInteger := ID;
  cdsProduto_Atelier.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdEmb;
var
  vItemAux: Integer;
begin
  cdsProduto_Emb.Last;
  vItemAux := cdsProduto_EmbITEM.AsInteger;
  cdsProduto_Emb.Insert;
  cdsProduto_EmbID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_EmbITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.cdsProduto_EmbCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_EmbID_MATERIAL.AsInteger > 0 then
  begin
    qMaterial.Close;
    qMaterial.ParamByName('ID').AsInteger := cdsProduto_EmbID_MATERIAL.AsInteger;
    qMaterial.Open;
    cdsProduto_EmbclNome_Material.AsString := qMaterialNOME.AsString;
  end
  else
    cdsProduto_EmbclNome_Material.AsString := '';
end;

procedure TdmCadProduto.cdsProduto_AtelierCalcFields(DataSet: TDataSet);
begin
  cdsProduto_AtelierNOME_ATELIER.AsString := '';
  if cdsAtelier.Locate('CODIGO',cdsProduto_AtelierID_ATELIER.AsInteger,([Locaseinsensitive])) then
    cdsProduto_AtelierNOME_ATELIER.AsString := cdsAtelierNOME.AsString;
  qSetor.Close;
  qSetor.ParamByName('ID').AsInteger := cdsProduto_AtelierID_SETOR.AsInteger;
  qSetor.Open;
  cdsProduto_AtelierNOME_SETOR.AsString := qSetorNOME.AsString;
end;

procedure TdmCadProduto.prc_Inserir_ProdAtelier;
var
  vItemAux: Integer;
begin
  cdsProduto_Atelier.Last;
  vItemAux := cdsProduto_AtelierITEM.AsInteger;
  cdsProduto_Atelier.Insert;
  cdsProduto_AtelierID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_AtelierITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Abrir_Produto_CBarra(ID: Integer);
begin

end;

procedure TdmCadProduto.prc_Abrir_Cor_Combinacao(Tipo_Reg: String);
begin
  cdsCor.Close;
  sdsCor.ParamByName('Tipo_Reg').AsString := Tipo_Reg;
  cdsCor.Open;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Livro(ID: Integer);
begin
  cdsProduto_Livro.Close;
  sdsProduto_Livro.ParamByName('ID').AsInteger := ID;
  cdsProduto_Livro.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdLivro;
begin
  cdsProduto_Livro.Last;
  cdsProduto_Livro.Insert;
  cdsProduto_LivroID.AsInteger := cdsProdutoID.AsInteger;
end;

function TdmCadProduto.fnc_ProdutoForn_Duplicatado(ID_Fornecedor: Integer ; Cod_Material_Forn, Cod_Cor_Forn, Tamanho_Cliente: String): Boolean;
var
  sds: TSQLDataSet;
  vImpAux: String;
begin
  vID_Produto_Forn := 0;
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    
    sds.CommandText := 'SELECT CLI.IMP_COR_CLIENTE FROM PESSOA CLI WHERE CLI.CODIGO = :CODIGO ';
    sds.ParamByName('CODIGO').AsInteger := ID_Fornecedor;
    sds.Open;

    vImpAux := sds.FieldByName('IMP_COR_CLIENTE').AsString;
    sds.Close;

    sds.CommandText := 'SELECT PF.id, PF.id_fornecedor, PF.cod_material_forn ' +
                       'FROM produto_forn PF ' +
                       'INNER JOIN PRODUTO P ON (PF.ID = P.ID) ' +
                       'WHERE PF.id <> :ID ' +
                       'AND PF.ID_FORNECEDOR = :ID_FORNECEDOR ' +
                       'AND PF.COD_MATERIAL_FORN = :COD_MATERIAL_FORN ' +
                       'AND PF.TAMANHO_CLIENTE = :TAMANHO_CLIENTE ' +
                       'AND P.INATIVO = ' + QuotedStr('N');
    if vImpAux = 'S' then
    begin
      sds.CommandText := sds.CommandText + ' AND PF.COD_COR_FORN = :COD_COR_FORN '
                       + ' AND PF.TAMANHO_CLIENTE = :TAMANHO_CLIENTE ';
      sds.ParamByName('COD_COR_FORN').AsString    := Cod_Cor_Forn;
    end;
    sds.ParamByName('TAMANHO_CLIENTE').AsString := Tamanho_Cliente;
    sds.ParamByName('ID').AsInteger               := cdsProdutoID.AsInteger;
    sds.ParamByName('ID_Fornecedor').AsInteger    := ID_Fornecedor;
    sds.ParamByName('COD_MATERIAL_FORN').AsString := Cod_Material_Forn;
    sds.Open;
    if not sds.IsEmpty then
    begin
      vID_Produto_Forn := sds.FieldByName('ID').AsInteger;
      Result := True;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TdmCadProduto.prc_Abrir_Processo;
begin
  cdsProcesso.Close;
  sdsProcesso.CommandText := 'SELECT ID, NOME FROM PROCESSO';
  cdsProcesso.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdProcesso;
var
  vItemAux: Integer;
begin
  cdsProdutoProcesso.Last;
  vItemAux := cdsProdutoProcessoITEM.AsInteger;

  cdsProdutoProcesso.Insert;
  cdsProdutoProcessoID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProdutoProcessoITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Inserir_ProdComissao;
var
  vItemAux: Integer;
begin
  cdsProduto_Comissao.Last;
  vItemAux := cdsProduto_ComissaoITEM.AsInteger;
  cdsProduto_Comissao.Insert;
  cdsProduto_ComissaoID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_ComissaoITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Abrir_Comissao(ID: Integer);
begin
  cdsProduto_Comissao.Close;
  sdsProduto_Comissao.ParamByName('ID').AsInteger := ID;
  cdsProduto_Comissao.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdComissao_Vend;
var
  vItemAux: Integer;
begin
  cdsProduto_Comissao_Vend.Last;
  vItemAux := cdsProduto_Comissao_VendITEM.AsInteger;
  cdsProduto_Comissao_Vend.Insert;
  cdsProduto_Comissao_VendID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_Comissao_VendITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Abrir_Comissao_Vend(ID: Integer);
begin
  cdsProduto_Comissao_Vend.Close;
  sdsProduto_Comissao_Vend.ParamByName('ID').AsInteger := ID;
  cdsProduto_Comissao_Vend.Open;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Carimbo(ID: Integer);
begin
  cdsProduto_Carimbo.Close;
  sdsProduto_Carimbo.ParamByName('ID').AsInteger := ID;
  cdsProduto_Carimbo.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdCarimbo;
var
  vItemAux: Integer;
begin
  cdsProduto_Carimbo.Last;
  vItemAux := cdsProduto_CarimboITEM.AsInteger;
  cdsProduto_Carimbo.Insert;
  cdsProduto_CarimboID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_CarimboITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.cdsProduto_CarimboCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_CarimboID_Cliente.AsInteger > 0 then
  begin
    qFornecedor.Close;
    qFornecedor.ParamByName('CODIGO').AsInteger := cdsProduto_CarimboID_Cliente.AsInteger;
    qFornecedor.Open;
    cdsProduto_CarimboNOME_CLIENTE.AsString := qFornecedorNOME.AsString;
    qFornecedor.Close;
  end
  else
    cdsProduto_CarimboNOME_CLIENTE.AsString := '';
end;

procedure TdmCadProduto.prc_Abrir_Produto_Cad_Ant(ID: Integer);
begin
  cdsProduto_Cad_Ant.Close;
  sdsProduto_Cad_Ant.ParamByName('ID').AsInteger := ID;
  cdsProduto_Cad_Ant.Open;
end;

procedure TdmCadProduto.cdsProduto_UFCalcFields(DataSet: TDataSet);
begin
  if cdsProduto_UFID_CST_ICMS.AsInteger > 0 then
  begin
    qCSTIcms.Close;
    qCSTIcms.ParamByName('ID').AsInteger := cdsProduto_UFID_CST_ICMS.AsInteger;
    qCSTIcms.Open;
    cdsProduto_UFCOD_CST_ICMS.AsString := qCSTIcmsCOD_CST.AsString;
  end
  else
    cdsProduto_UFCOD_CST_ICMS.AsString := '';
end;

procedure TdmCadProduto.prc_Abrir_Balanca(ID: Integer);
begin
  cdsProduto_Balanca.Close;
  sdsProduto_Balanca.CommandText := ctBalanca;
  sdsProduto_Balanca.ParamByName('ID').AsInteger := ID;
  cdsProduto_Balanca.Open;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Processo(ID: Integer);
begin
  cdsProdutoProcesso.Close;
  sdsProdutoProcesso.ParamByName('ID').AsInteger := ID;
  cdsProdutoProcesso.Open;
end;

procedure TdmCadProduto.mCombinacaoAuxNewRecord(DataSet: TDataSet);
begin
  mCombinacaoAuxQtd_Consumo.AsFloat := 0;
  mCombinacaoAuxQtd_Unidade.AsFloat := 0;
end;

procedure TdmCadProduto.cdsProduto_Comb_MatNewRecord(DataSet: TDataSet);
begin
  cdsProduto_Comb_MatTINGIMENTO.AsString := 'N';
end;

procedure TdmCadProduto.frxReport1BeforePrint(Sender: TfrxReportComponent);
var
  i: Word;
  vArq: String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Ficha_Tecnica.fr3';
  if frxReport1.Report.FileName <> vArq then
    Exit; 
  i := 0;
  cdsProduto_Tam.First;
  while not cdsProduto_Tam.Eof do
  begin
    inc(i);
    TfrxMemoView(frxReport1.FindComponent('T'+IntToStr(i))).Text := cdsProduto_TamTAMANHO.AsString;
    cdsProduto_Tam.Next;
  end;

end;

procedure TdmCadProduto.prc_Abrir_Produto_GradeNum(ID: Integer);
begin
  cdsProduto_GradeNum.Close;
  sdsProduto_GradeNum.ParamByName('ID').AsInteger := ID;
  cdsProduto_GradeNum.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdGradeNum;
begin
  cdsProduto_GradeNum.Last;
  cdsProduto_GradeNum.Insert;
  cdsProduto_GradeNumID.AsInteger := cdsProdutoID.AsInteger;
end;

procedure TdmCadProduto.prc_Inserir_ProdLote;
var
  vItemAux: Integer;
begin
  cdsProduto_Lote.Last;
  vItemAux := cdsProduto_LoteITEM.AsInteger;
  cdsProduto_Lote.Insert;
  cdsProduto_LoteID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_LotePRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.000000',cdsProdutoPRECO_CUSTO.AsFloat));
  cdsProduto_LotePRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.000000',cdsProdutoPRECO_VENDA.AsFloat));
  cdsProduto_LoteITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Lote(ID: Integer);
begin
  cdsProduto_Lote.Close;
  sdsProduto_Lote.ParamByName('ID').AsInteger := ID;
  cdsProduto_Lote.Open;
end;

procedure TdmCadProduto.cdsProduto_LoteCalcFields(DataSet: TDataSet);
begin
  qEstoqueLote.Close;
  qEstoqueLote.ParamByName('ID_PRODUTO').AsInteger := cdsProduto_LoteID.AsInteger;
  qEstoqueLote.ParamByName('NUM_LOTE_CONTROLE').AsString := cdsProduto_LoteNUM_LOTE_CONTROLE.AsString;
  qEstoqueLote.Open;
  cdsProduto_LoteclQtde.AsFloat := qEstoqueLoteQTD.AsFloat;
end;

procedure TdmCadProduto.cdsProduto_FornBeforePost(DataSet: TDataSet);
begin
  if (cdsProduto_FornCOD_COR_FORN.IsNull) or (trim(cdsProduto_FornCOD_COR_FORN.AsString) = '') then
    cdsProduto_FornCOD_COR_FORN.AsString := '';
  if (cdsProduto_FornTAMANHO_CLIENTE.IsNull) or (trim(cdsProduto_FornTAMANHO_CLIENTE.AsString) = '') then
    cdsProduto_FornTAMANHO_CLIENTE.AsString := '';
end;

procedure TdmCadProduto.prc_Abrir_CBarra(ID: Integer);
begin
  cdsCBarra2.Close;
  sdsCBarra2.ParamByName('ID_PRODUTO').AsInteger := ID;
  cdsCBarra2.Open;
end;

procedure TdmCadProduto.cdsProduto_Comb_MatBeforePost(DataSet: TDataSet);
begin
  if (cdsProduto_Comb_MatID_COR.IsNull) or (cdsProduto_Comb_MatID_COR.AsInteger <= 0) then
    cdsProduto_Comb_MatID_COR.AsInteger := 0;
  if (cdsProduto_Comb_MatID_POSICAO.AsInteger <= 0) and (qParametros_ProdID_POSICAO_PADRAO.AsInteger > 0)  then
    cdsProduto_Comb_MatID_POSICAO.AsInteger := qParametros_ProdID_POSICAO_PADRAO.AsInteger;
end;

procedure TdmCadProduto.cdsProduto_ConsumoBeforePost(DataSet: TDataSet);
begin
  if (cdsProduto_ConsumoID_POSICAO.AsInteger <= 0) and (qParametros_ProdID_POSICAO_PADRAO.AsInteger > 0)  then
    cdsProduto_ConsumoID_POSICAO.AsInteger := qParametros_ProdID_POSICAO_PADRAO.AsInteger;
end;


procedure TdmCadProduto.cdsProduto_FornNewRecord(DataSet: TDataSet);
begin
  cdsProduto_FornTAMANHO_CLIENTE.AsString := '';
end;

procedure TdmCadProduto.prc_Abrir_Produto_MatTam(ID: Integer);
begin
  cdsProduto_MatTam.Close;
  sdsProduto_MatTam.ParamByName('ID').AsInteger := ID;
  cdsProduto_MatTam.Open;
end;

procedure TdmCadProduto.cdsProduto_MatTamCalcFields(DataSet: TDataSet);
begin
  qGrade.Close;
  qGrade.ParamByName('ID').AsInteger := cdsProduto_MatTamID_GRADE.AsInteger;
  qGrade.Open;
  cdsProduto_MatTamNOME_GRADE.AsString := qGradeNOME.AsString;
end;

procedure TdmCadProduto.prc_Abrir_Produto_Maq(ID: Integer);
begin
  cdsProduto_Maq.Close;
  sdsProduto_Maq.ParamByName('ID').AsInteger := ID;
  cdsProduto_Maq.Open;
end;

procedure TdmCadProduto.prc_Inserir_ProdMaq;
var
  vItemAux: Integer;
begin
  cdsProduto_Maq.Last;
  vItemAux := cdsProduto_MaqITEM.AsInteger;
  cdsProduto_Maq.Insert;
  cdsProduto_MaqID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_MaqITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadProduto.cdsProduto_CorNewRecord(DataSet: TDataSet);
begin
  cdsProduto_CorINATIVO.AsString := 'N';
end;

procedure TdmCadProduto.cdsProduto_TextilNewRecord(DataSet: TDataSet);
begin
  cdsProduto_TextilGOMA.AsString         := 'N';
  cdsProduto_TextilBORRACHA.AsString     := 'N';
  cdsProduto_TextilFIO_AUXILIAR.AsString := 'N';
end;

procedure TdmCadProduto.prc_Abrir_Ficha_Textil(ID: Integer);
begin
  cdsProduto_Textil.Close;
  sdsProduto_Textil.ParamByName('ID').AsInteger := ID;
  cdsProduto_Textil.Open;
end;

procedure TdmCadProduto.cdsProduto_Textil_DPBeforeInsert(
  DataSet: TDataSet);
begin
  cdsProduto_Textil_DP.Last;
  vItem_Textil_DP := cdsProduto_Textil_DPITEM.AsInteger;
end;

procedure TdmCadProduto.cdsProduto_Textil_DPAfterInsert(DataSet: TDataSet);
begin
  cdsProduto_Textil_DPID.AsInteger   := cdsProdutoID.AsInteger;
  cdsProduto_Textil_DPITEM.AsInteger := vItem_Textil_DP + 1;
end;

procedure TdmCadProduto.cdsProduto_Textil_DPBeforePost(DataSet: TDataSet);
var
  i : Integer;
begin
  for i := 1 to 14 do
  begin
    if (cdsProduto_Textil_DP.FieldByName('D'+IntToStr(i)).AsString = 'X') or (cdsProduto_Textil_DP.FieldByName('D'+IntToStr(i)).AsString = 'x') then
      cdsProduto_Textil_DP.FieldByName('D'+IntToStr(i)).AsString := 'X'
    else
    if (trim(cdsProduto_Textil_DP.FieldByName('D'+IntToStr(i)).AsString) <> '') then
      cdsProduto_Textil_DP.FieldByName('D'+IntToStr(i)).AsString := 'O';

    if (cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString = 'X') or (cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString = 'x') then
      cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString := 'X'
    else
    if (cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString = 'D') or (cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString = 'd') then
      cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString := 'D'
    else
    if (trim(cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString) <> '') then
      cdsProduto_Textil_DP.FieldByName('P'+IntToStr(i)).AsString := 'O';
  end;
end;

procedure TdmCadProduto.prc_Abrir_Ficha_Textil_DP(ID: Integer);
begin
  cdsProduto_Textil_DP.Close;
  sdsProduto_Textil_DP.ParamByName('ID').AsInteger := ID;
  cdsProduto_Textil_DP.Open;
end;

procedure TdmCadProduto.prc_Abrir_Ficha_Tranc(ID: Integer);
begin
  cdsProduto_Tranc.Close;
  sdsProduto_Tranc.ParamByName('ID').AsInteger := ID;
  cdsProduto_Tranc.Open;
end;

procedure TdmCadProduto.prc_Inserir_Produto_Consumo_Proc;
var
  vItemAux : Integer;
begin
  cdsProduto_Consumo_Proc.Last;
  vItemAux := cdsProduto_Consumo_ProcITEM_PROC.AsInteger;
  cdsProduto_Consumo_Proc.Insert;
  cdsProduto_Consumo_ProcID.AsInteger        := cdsProduto_ConsumoID.AsInteger;
  cdsProduto_Consumo_ProcITEM.AsInteger      := cdsProduto_ConsumoITEM.AsInteger;
  cdsProduto_Consumo_ProcITEM_PROC.AsInteger := vItemAux + 1;
end;

end.


