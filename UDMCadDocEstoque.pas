unit UDMCadDocEstoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes, frxClass, frxDBSet;

type
  TDMCadDocEstoque = class(TDataModule)
    sdsDocEstoque: TSQLDataSet;
    dspDocEstoque: TDataSetProvider;
    cdsDocEstoque: TClientDataSet;
    dsDocEstoque: TDataSource;
    dsDocEstoque_Mestre: TDataSource;
    sdsDocEstoque_Itens: TSQLDataSet;
    cdsDocEstoque_Itens: TClientDataSet;
    dsDocEstoque_Itens: TDataSource;
    sdsDocEstoque_Consulta: TSQLDataSet;
    dspDocEstoque_Consulta: TDataSetProvider;
    cdsDocEstoque_Consulta: TClientDataSet;
    dsDocEstoque_Consulta: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
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
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
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
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    sdsDocEstoqueID: TIntegerField;
    sdsDocEstoqueDTMOVIMENTO: TDateField;
    sdsDocEstoqueFILIAL: TIntegerField;
    cdsDocEstoqueID: TIntegerField;
    cdsDocEstoqueDTMOVIMENTO: TDateField;
    cdsDocEstoqueFILIAL: TIntegerField;
    sdsDocEstoque_ItensID: TIntegerField;
    sdsDocEstoque_ItensITEM: TIntegerField;
    sdsDocEstoque_ItensID_PRODUTO: TIntegerField;
    sdsDocEstoque_ItensQTD: TFloatField;
    sdsDocEstoque_ItensVLR_UNITARIO: TFloatField;
    sdsDocEstoque_ItensVLR_TOTAL: TFloatField;
    sdsDocEstoque_ItensPERC_IPI: TFloatField;
    sdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField;
    sdsDocEstoque_ItensMOTIVO: TStringField;
    cdsDocEstoquesdsDocEstoque_Itens: TDataSetField;
    cdsDocEstoque_ItensID: TIntegerField;
    cdsDocEstoque_ItensITEM: TIntegerField;
    cdsDocEstoque_ItensID_PRODUTO: TIntegerField;
    cdsDocEstoque_ItensQTD: TFloatField;
    cdsDocEstoque_ItensVLR_UNITARIO: TFloatField;
    cdsDocEstoque_ItensVLR_TOTAL: TFloatField;
    cdsDocEstoque_ItensMOTIVO: TStringField;
    sdsDocEstoqueTIPO_ES: TStringField;
    cdsDocEstoqueTIPO_ES: TStringField;
    sdsDocEstoque_ItensUNIDADE: TStringField;
    cdsDocEstoque_ItensUNIDADE: TStringField;
    cdsDocEstoque_ConsultaID: TIntegerField;
    cdsDocEstoque_ConsultaDTMOVIMENTO: TDateField;
    cdsDocEstoque_ConsultaFILIAL: TIntegerField;
    cdsDocEstoque_ConsultaTIPO_ES: TStringField;
    sdsDocEstoqueVLR_TOTAL: TFloatField;
    cdsDocEstoqueVLR_TOTAL: TFloatField;
    cdsDocEstoque_ItensPERC_IPI: TFloatField;
    cdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField;
    cdsDocEstoque_ConsultaVLR_TOTAL: TFloatField;
    sdsDocEstoqueID_PESSOA: TIntegerField;
    cdsDocEstoqueID_PESSOA: TIntegerField;
    cdsDocEstoque_ConsultaID_PESSOA: TIntegerField;
    cdsDocEstoque_ConsultaNOME_PESSOA: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    dsPessoa: TDataSource;
    sdsDocEstoqueOBS: TMemoField;
    cdsDocEstoqueOBS: TMemoField;
    cdsDocEstoque_ConsultaOBS: TMemoField;
    cdsDocEstoque_ConsultaENDERECO_CLI: TStringField;
    cdsDocEstoque_ConsultaNUM_END_CLI: TStringField;
    cdsDocEstoque_ConsultaBAIRRO_CLI: TStringField;
    cdsDocEstoque_ConsultaCIDADE_CLI: TStringField;
    cdsDocEstoque_ConsultaUF_CLIENTE: TStringField;
    cdsDocEstoque_ConsultaCNPJ_CPF_CLI: TStringField;
    cdsDocEstoque_ConsultaENDERECO_FILIAL: TStringField;
    cdsDocEstoque_ConsultaCNPJ_CPF_FILIAL: TStringField;
    cdsDocEstoque_ConsultaNOME_FILIAL: TStringField;
    cdsDocEstoque_ConsultaNUM_END_FILIAL: TStringField;
    cdsDocEstoque_ConsultaBAIRRO_FILIAL: TStringField;
    cdsDocEstoque_ConsultaCIDADE_FILIAL: TStringField;
    cdsDocEstoque_ConsultaUF_FILIAL: TStringField;
    cdsDocEstoque_ConsultaCEP_FILIAL: TStringField;
    sdsDocEstoque_Imp: TSQLDataSet;
    dspDocEstoque_Imp: TDataSetProvider;
    cdsDocEstoque_Imp: TClientDataSet;
    dsDocEstoque_Imp: TDataSource;
    sdsDocEstoque_Imp_Itens: TSQLDataSet;
    cdsDocEstoque_Imp_Itens: TClientDataSet;
    dsDocEstoque_Imp_Itens: TDataSource;
    dspDocEstoque_Imp_Itens: TDataSetProvider;
    cdsDocEstoque_Imp_ItensID: TIntegerField;
    cdsDocEstoque_Imp_ItensITEM: TIntegerField;
    cdsDocEstoque_Imp_ItensID_PRODUTO: TIntegerField;
    cdsDocEstoque_Imp_ItensQTD: TFloatField;
    cdsDocEstoque_Imp_ItensVLR_UNITARIO: TFloatField;
    cdsDocEstoque_Imp_ItensVLR_TOTAL: TFloatField;
    cdsDocEstoque_Imp_ItensPERC_IPI: TFloatField;
    cdsDocEstoque_Imp_ItensID_MOVESTOQUE: TIntegerField;
    cdsDocEstoque_Imp_ItensMOTIVO: TStringField;
    cdsDocEstoque_Imp_ItensUNIDADE: TStringField;
    cdsDocEstoque_Imp_ItensNOME_PRODUTO: TStringField;
    cdsDocEstoque_Imp_ItensREFERENCIA: TStringField;
    cdsDocEstoque_ImpID: TIntegerField;
    cdsDocEstoque_ImpDTMOVIMENTO: TDateField;
    cdsDocEstoque_ImpFILIAL: TIntegerField;
    cdsDocEstoque_ImpVLR_TOTAL: TFloatField;
    cdsDocEstoque_ImpTIPO_ES: TStringField;
    cdsDocEstoque_ImpID_PESSOA: TIntegerField;
    cdsDocEstoque_ImpOBS: TMemoField;
    cdsDocEstoque_ImpNOME_PESSOA: TStringField;
    cdsDocEstoque_ImpENDERECO_CLI: TStringField;
    cdsDocEstoque_ImpNUM_END_CLI: TStringField;
    cdsDocEstoque_ImpBAIRRO_CLI: TStringField;
    cdsDocEstoque_ImpCIDADE_CLI: TStringField;
    cdsDocEstoque_ImpUF_CLI: TStringField;
    cdsDocEstoque_ImpCNPJ_CPF_CLI: TStringField;
    cdsDocEstoque_ImpDDD_CLI: TIntegerField;
    cdsDocEstoque_ImpFONE_CLI: TStringField;
    cdsDocEstoque_ImpCEP_CLI: TStringField;
    cdsDocEstoque_ImpENDERECO_FILIAL: TStringField;
    cdsDocEstoque_ImpCNPJ_CPF_FILIAL: TStringField;
    cdsDocEstoque_ImpNOME_FILIAL: TStringField;
    cdsDocEstoque_ImpNUM_END_FILIAL: TStringField;
    cdsDocEstoque_ImpBAIRRO_FILIAL: TStringField;
    cdsDocEstoque_ImpCIDADE_FILIAL: TStringField;
    cdsDocEstoque_ImpUF_FILIAL: TStringField;
    cdsDocEstoque_ImpCEP_FILIAL: TStringField;
    cdsDocEstoque_ImpDDD_FILIAL: TIntegerField;
    cdsDocEstoque_ImpFONE_FILIAL: TStringField;
    cdsDocEstoque_ImpINSCR_EST_CLI: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosATUALIZAR_PRECO_DOC: TStringField;
    cdsProdutoDT_ALTPRECO: TDateField;
    sdsDocEstoqueID_FUNCIONARIO: TIntegerField;
    cdsDocEstoqueID_FUNCIONARIO: TIntegerField;
    sdsDocEstoqueTIPO_REG: TStringField;
    cdsDocEstoqueTIPO_REG: TStringField;
    sdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField;
    cdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoTIPO: TStringField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoNIVEL: TIntegerField;
    cdsCentroCustoAPROPRIACAO: TStringField;
    cdsCentroCustoSUPERIOR: TStringField;
    cdsCentroCustoCOD_PRINCIPAL: TIntegerField;
    cdsDocEstoque_Imp_ItensID_CENTROCUSTO: TIntegerField;
    cdsDocEstoque_Imp_ItensNOME_CENTROCUSTO: TStringField;
    cdsDocEstoque_Imp_ItensCOD_CENTROCUSTO: TStringField;
    cdsDocEstoque_ImpID_FUNCIONARIO: TIntegerField;
    cdsDocEstoque_ImpTIPO_REG: TStringField;
    cdsDocEstoque_ImpNOME_FUNCIONARIO: TStringField;
    qParametrosBAIXAR_REQ_AUTOMATICO: TStringField;
    sdsDocEstoque_ItensTAMANHO: TStringField;
    cdsDocEstoque_ItensTAMANHO: TStringField;
    qParametrosUSA_GRADE: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    dsProduto_Tam: TDataSource;
    cdsDocEstoque_Imp_ItensTAMANHO: TStringField;
    cdsDocEstoque_ConsultaID_FUNCIONARIO: TIntegerField;
    cdsDocEstoque_ConsultaTIPO_REG: TStringField;
    cdsDocEstoque_ConsultaNOME_FUNCIONARIO: TStringField;
    cdsDocEstoque_ImpEMAIL_COMPRAS: TStringField;
    cdsDocEstoque_ItensNOME_PRODUTO: TStringField;
    cdsDocEstoque_ItensREFERENCIA: TStringField;
    cdsDocEstoque_ItensNOME_CENTROCUSTO: TStringField;
    cdsDocEstoque_ItensCOD_CENTROCUSTO: TStringField;
    qCentroCusto: TSQLQuery;
    qCentroCustoID: TIntegerField;
    qCentroCustoCODIGO: TStringField;
    qCentroCustoDESCRICAO: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    qProdutoNOME: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    sdsDocEstoque_ItensID_COR: TFMTBCDField;
    cdsDocEstoque_ItensID_COR: TFMTBCDField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    dsCombinacao: TDataSource;
    sdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField;
    cdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoPRECO_CUSTO: TFloatField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    sdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField;
    cdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField;
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    dsLocal_Estoque: TDataSource;
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
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    sdsDocEstoqueID_LOCAL_DESTINO: TIntegerField;
    cdsDocEstoqueID_LOCAL_DESTINO: TIntegerField;
    sdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField;
    cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField;
    sdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
    sdsDocEstoque_ItensGERAR_CUSTO: TStringField;
    cdsDocEstoque_ItensGERAR_CUSTO: TStringField;
    qParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    qParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    dsmEtiquetas: TDataSource;
    mEtiquetas: TClientDataSet;
    mEtiquetasREFERENCIA: TStringField;
    mEtiquetasNOME: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    mEtiquetasPRECO: TCurrencyField;
    mEtiquetasID: TIntegerField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_ID_MATERIAL_CONS: TStringField;
    qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField;
    cdsProdutoTAMANHO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralATUALIZAR_PRECOVENDA_DOC: TStringField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    qProduto_Lote: TSQLQuery;
    qProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    qProduto_LotePRECO_CUSTO: TFloatField;
    qProduto_LotePRECO_VENDA: TFloatField;
    qProduto_LoteQTD: TFMTBCDField;
    cdsDocEstoque_Imp_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    sdsDocEstoqueINF_CODBARRA: TStringField;
    cdsDocEstoqueINF_CODBARRA: TStringField;
    qCBarra: TSQLQuery;
    qCBarraID: TIntegerField;
    qCBarraCOD_BARRA: TStringField;
    qCBarraID_PRODUTO: TIntegerField;
    qCBarraID_COR: TIntegerField;
    qCBarraTAMANHO: TStringField;
    qCBarraCOD_PRINCIPAL: TStringField;
    qCBarraCOD_SEQUENCIAL: TIntegerField;
    qCBarraFILIAL: TIntegerField;
    qCBarraNOME_PRODUTO: TStringField;
    qCBarraNOME_COR: TStringField;
    mAuxCodBarra: TClientDataSet;
    mAuxCodBarraItem: TIntegerField;
    mAuxCodBarraCodBarra: TStringField;
    mAuxCodBarraID_Produto: TIntegerField;
    mAuxCodBarraID_Cor: TIntegerField;
    mAuxCodBarraTamanho: TStringField;
    mAuxCodBarraReferencia: TStringField;
    mAuxCodBarraNome_Produto: TStringField;
    mAuxCodBarraNome_Cor: TStringField;
    dsmAuxCodBarra: TDataSource;
    qCBarraREFERENCIA: TStringField;
    qCBarraUNIDADE: TStringField;
    mAuxCodBarraUnidade: TStringField;
    qCBarraPRECO_CUSTO: TFloatField;
    qCBarraPRECO_VENDA: TFloatField;
    mAuxCodBarraPreco_Custo: TFloatField;
    mAuxCodBarraPreco_Venda: TFloatField;
    sdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField;
    cdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    sdsDocEstoqueNUM_REQUISICAO: TIntegerField;
    cdsDocEstoque_ConsultaNUM_REQUISICAO: TIntegerField;
    cdsDocEstoqueNUM_REQUISICAO: TIntegerField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    cdsProdutoID_MARCA: TIntegerField;
    sdsDocEstoque_ItensLOCALIZACAO: TStringField;
    cdsDocEstoque_ItensLOCALIZACAO: TStringField;
    qParametros_Est: TSQLQuery;
    qParametros_EstUSA_LOCALIZACAO_LOTE: TStringField;
    qParametros_EstCONTROLA_DOC_CLIFORN: TStringField;
    sdsEtiqEstoque: TSQLDataSet;
    dspEtiqEstoque: TDataSetProvider;
    cdsEtiqEstoque: TClientDataSet;
    dsEtiqEstoque: TDataSource;
    cdsEtiqEstoqueID: TIntegerField;
    cdsEtiqEstoqueID_PESSOA: TIntegerField;
    cdsEtiqEstoqueNOME_PESSOA: TStringField;
    cdsEtiqEstoqueDTMOVIMENTO: TDateField;
    cdsEtiqEstoqueREFERENCIA: TStringField;
    cdsEtiqEstoqueNOME_PRODUTO: TStringField;
    cdsEtiqEstoqueNOME_COR: TStringField;
    cdsEtiqEstoqueNUM_LOTE_CONTROLE: TStringField;
    cdsEtiqEstoqueQTD: TFloatField;
    cdsEtiqEstoqueLOCALIZACAO: TStringField;
    cdsEtiqEstoqueITEM: TIntegerField;
    frxEtiqEstoque: TfrxDBDataset;
    cdsEtiqEstoqueFANTASIA: TStringField;
    cdsEtiqEstoqueCODBARRA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspDocEstoqueUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsDocEstoque_ItensNewRecord(DataSet: TDataSet);
    procedure cdsDocEstoque_ItensCalcFields(DataSet: TDataSet);
    procedure cdsDocEstoqueNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMSGErro: String;
    ctCommand, ctConsulta, ctPessoa, ctProduto: String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    procedure prc_Inserir_Itens;
  end;

var
  DMCadDocEstoque: TDMCadDocEstoque;

implementation

uses DmdDatabase, Math, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadDocEstoque.prc_Inserir;
var
  vAux: Integer;
  sds: TSQLDataSet;
  vNumAux: Integer;
begin
  if not cdsDocEstoque.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('DOCESTOQUE',0);

  cdsDocEstoque.Insert;
  cdsDocEstoqueID.AsInteger           := vAux;
  cdsDocEstoqueFILIAL.AsInteger       := vFilial;
  cdsDocEstoqueDTMOVIMENTO.AsDateTime := Date;
  cdsDocEstoqueVLR_TOTAL.AsFloat      := 0;
  if qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S' then
    cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger := 1;
end;

procedure TDMCadDocEstoque.prc_Excluir;
begin
  if not(cdsDocEstoque.Active) or (cdsDocEstoque.IsEmpty) then
    exit;
  cdsDocEstoque_Itens.First;
  while not cdsDocEstoque_Itens.Eof do
    cdsDocEstoque_Itens.Delete;
  cdsDocEstoque.Delete;
  cdsDocEstoque.ApplyUpdates(0);
end;

procedure TDMCadDocEstoque.prc_Gravar;
begin
  vMsgErro := '';
  if (cdsDocEstoqueTIPO_ES.AsString <> 'E') and (cdsDocEstoqueTIPO_ES.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo Entrada ou Saída não informado!';
  if cdsDocEstoqueDTMOVIMENTO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data não informada!';
  if cdsDocEstoqueTIPO_REG.AsString <> 'T' then
    cdsDocEstoqueID_LOCAL_DESTINO.Clear;
  if (cdsDocEstoqueTIPO_REG.AsString = 'D') and (qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S') and (cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Local do estoque não informado!';
  if (cdsDocEstoqueTIPO_REG.AsString = 'T') and (cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger = cdsDocEstoqueID_LOCAL_DESTINO.AsInteger) then
    vMsgErro := vMsgErro + #13 + '*** Local de Origem e Destino estão iguais!';
  if (cdsDocEstoqueTIPO_REG.AsString = 'T') and (cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Local de Origem não informado!';
  if (cdsDocEstoqueTIPO_REG.AsString = 'T') and (cdsDocEstoqueID_LOCAL_DESTINO.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Local de Destino não informado!';
  if (cdsDocEstoqueTIPO_REG.AsString <> 'T') and (cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Local de Estoque não informado!';

  if trim(vMsgErro) <> '' then
    exit;
  cdsDocEstoque.Post;
  cdsDocEstoque.ApplyUpdates(0);
end;

procedure TDMCadDocEstoque.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsDocEstoque.Close;
  sdsDocEstoque.CommandText := ctCommand;
  if ID <> 0 then
    sdsDocEstoque.CommandText := sdsDocEstoque.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsDocEstoque.Open;
end;

procedure TDMCadDocEstoque.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsDocEstoque.CommandText;
  ctConsulta := sdsDocEstoque_Consulta.CommandText;
  ctPessoa   := sdsPessoa.CommandText;
  ctProduto  := sdsProduto.CommandText;
  cdsFilial.Open;
  cdsProduto.Open;
  cdsUnidade.Open;
  cdsPessoa.Open;
  cdsLocal_Estoque.Open;
  cdsFuncionario.Open;
  cdsCentroCusto.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Prod.Open;
  qParametros_Geral.Open;
  qParametros_Est.Open;
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
  cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TDMCadDocEstoque.prc_Excluir_Item;
begin
  cdsDocEstoque_Itens.Delete;
end;

procedure TDMCadDocEstoque.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsDocEstoque_Itens.Last;
  vItemAux    := cdsDocEstoque_ItensITEM.AsInteger;

  cdsDocEstoque_Itens.Insert;
  cdsDocEstoque_ItensID.AsInteger   := cdsDocEstoqueID.AsInteger;
  cdsDocEstoque_ItensITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadDocEstoque.dspDocEstoqueUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadDocEstoque.cdsDocEstoque_ItensNewRecord(DataSet: TDataSet);
begin
  cdsDocEstoque_ItensTAMANHO.AsString     := '';
  cdsDocEstoque_ItensGERAR_CUSTO.AsString := 'N';
end;

procedure TDMCadDocEstoque.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadDocEstoque.cdsDocEstoque_ItensCalcFields(
  DataSet: TDataSet);
begin
  if cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger > 0 then
  begin
    qCentroCusto.Close;
    qCentroCusto.ParamByName('ID').AsInteger := cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger;
    qCentroCusto.Open;
    cdsDocEstoque_ItensCOD_CENTROCUSTO.AsString  := qCentroCustoCODIGO.AsString;
    cdsDocEstoque_ItensNOME_CENTROCUSTO.AsString := qCentroCustoDESCRICAO.AsString;
  end
  else
  begin
    cdsDocEstoque_ItensCOD_CENTROCUSTO.AsString  := '';
    cdsDocEstoque_ItensNOME_CENTROCUSTO.AsString := '';
  end;
  if cdsDocEstoque_ItensID_PRODUTO.AsInteger > 0 then
  begin
    qProduto.Close;
    qProduto.ParamByName('ID').AsInteger := cdsDocEstoque_ItensID_PRODUTO.AsInteger;
    qProduto.Open;
    cdsDocEstoque_ItensREFERENCIA.AsString   := qProdutoREFERENCIA.AsString;
    cdsDocEstoque_ItensNOME_PRODUTO.AsString := qProdutoNOME.AsString;
  end
  else
  begin
    cdsDocEstoque_ItensREFERENCIA.AsString   := '';
    cdsDocEstoque_ItensNOME_PRODUTO.AsString := '';
  end;
end;

procedure TDMCadDocEstoque.cdsDocEstoqueNewRecord(DataSet: TDataSet);
begin
  cdsDocEstoqueINF_CODBARRA.AsString := 'N';
end;

end.
