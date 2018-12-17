unit UDMCadNecessidade_Compras;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, Variants,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF, Messages, dialogs;

type
  TDMCadNecessidade_Compras = class(TDataModule)
    sdsNecessidade_Compras: TSQLDataSet;
    dspNecessidade_Compras: TDataSetProvider;
    cdsNecessidade_Compras: TClientDataSet;
    dsNecessidade_Compras: TDataSource;
    mMaterial: TClientDataSet;
    mMaterialID_Material: TIntegerField;
    mMaterialID_Cor: TIntegerField;
    mMaterialTamanho: TStringField;
    mMaterialUnidade: TStringField;
    mMaterialQtd_Consumo: TFloatField;
    mMaterialQtd_Pares_Prod: TFloatField;
    mMaterialID_OC: TIntegerField;
    mMaterialItem_OC: TIntegerField;
    mMaterialNum_OC: TIntegerField;
    dsmMaterial: TDataSource;
    mMaterial_Prod: TClientDataSet;
    dsmMaterial_Prod: TDataSource;
    mMaterial_ProdID_Produto: TIntegerField;
    mMaterial_ProdReferencia: TStringField;
    mMaterial_ProdNome_Produto: TStringField;
    mMaterial_ProdID_Combinacao: TIntegerField;
    mMaterial_ProdNome_Combinacao: TStringField;
    mMaterial_ProdQtd: TFloatField;
    qParametros: TSQLQuery;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialID_GRADE: TIntegerField;
    qParametrosUSA_POSICAO_CONSUMO: TStringField;
    mMaterialNome_Material: TStringField;
    mMaterialNome_Cor: TStringField;
    qMaterialNOME: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    mMaterialID_Fornecedor: TIntegerField;
    mMaterialNome_Fornecedor: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    qMaterialID_FORNECEDOR: TIntegerField;
    qMaterialNOME_FORNECEDOR: TStringField;
    mMaterialNum_Mapa: TIntegerField;
    mMaterial_ProdNum_Mapa: TIntegerField;
    mEmbalagem: TClientDataSet;
    dsmEmbalagem: TDataSource;
    mEmbalagemID_Material: TIntegerField;
    mEmbalagemQtd_Consumo: TIntegerField;
    mEmbalagemQtd_Produto: TFloatField;
    mEmbalagemNome_Material: TStringField;
    mEmbalagemQtd_Por_Embalagem: TIntegerField;
    qMaterialPRECO_CUSTO: TFloatField;
    qMaterialPERC_IPI: TFloatField;
    mMaterialVlr_Unitario: TFloatField;
    mMaterialVlr_Total: TFloatField;
    mMaterialPerc_IPI: TFloatField;
    sdsNecessidade_Compras_Ord: TSQLDataSet;
    cdsNecessidade_Compras_Ord: TClientDataSet;
    dsNecessidade_Compras_Ord: TDataSource;
    dsNecessidade_Compras_Mestre: TDataSource;
    qProximoNumDoc: TSQLQuery;
    qProximoNumDocNUM_MAPA: TIntegerField;
    mMaterialGerar_OC: TBooleanField;
    qMaterialREFERENCIA: TStringField;
    qMaterialID_NCM: TIntegerField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    qMaterialUSA_PRECO_COR: TStringField;
    mMaterialNome_Mapa: TStringField;
    mMaterialID_Mapa: TIntegerField;
    mMaterialQtd_Para_OC: TFloatField;
    mMaterialCarimbo: TStringField;
    mMaterialTransfer: TStringField;
    qMaterialTRANSFER: TStringField;
    mLote: TClientDataSet;
    mLoteNum_Mapa: TIntegerField;
    mLoteID_Lote: TIntegerField;
    mLoteNum_Lote: TIntegerField;
    mLoteNum_OrdProducao: TIntegerField;
    dsmLote: TDataSource;
    mMaterialCarimbo_Aux: TStringField;
    sdsNecessidade_ComprasID: TIntegerField;
    sdsNecessidade_ComprasDATA: TDateField;
    sdsNecessidade_ComprasNUM_DOC: TIntegerField;
    cdsNecessidade_ComprasID: TIntegerField;
    cdsNecessidade_ComprasDATA: TDateField;
    cdsNecessidade_ComprasNUM_DOC: TIntegerField;
    sdsNecessidade_Compras_OrdID: TIntegerField;
    sdsNecessidade_Compras_OrdITEM: TIntegerField;
    sdsNecessidade_Compras_OrdNUM_ORDPRODUCAO: TIntegerField;
    cdsNecessidade_Compras_OrdID: TIntegerField;
    cdsNecessidade_Compras_OrdITEM: TIntegerField;
    cdsNecessidade_Compras_OrdNUM_ORDPRODUCAO: TIntegerField;
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
    sdsLote_MatCARIMBOAUX: TStringField;
    sdsLote_MatNOME_MATERIAL: TStringField;
    sdsLote_MatTRANSFER: TStringField;
    sdsLote_MatID_FORNECEDOR: TIntegerField;
    sdsLote_MatNOME_COR: TStringField;
    cdsLote_MatNUM_ORDEM: TIntegerField;
    cdsLote_MatITEM: TIntegerField;
    cdsLote_MatID_MATERIAL: TIntegerField;
    cdsLote_MatID_COR: TIntegerField;
    cdsLote_MatCARIMBO: TStringField;
    cdsLote_MatTAMANHO: TStringField;
    cdsLote_MatQTD_CONSUMO: TFloatField;
    cdsLote_MatQTD_PRODUTO: TFloatField;
    cdsLote_MatCARIMBOAUX: TStringField;
    cdsLote_MatNOME_MATERIAL: TStringField;
    cdsLote_MatTRANSFER: TStringField;
    cdsLote_MatID_FORNECEDOR: TIntegerField;
    cdsLote_MatNOME_COR: TStringField;
    sdsLote_MatUNIDADE: TStringField;
    cdsLote_MatUNIDADE: TStringField;
    mMaterial_Ord: TClientDataSet;
    mMaterial_OrdNum_Mapa: TIntegerField;
    mMaterial_OrdNum_Ord: TIntegerField;
    mMaterial_OrdNome_Ord: TStringField;
    dsmMaterial_Ord: TDataSource;
    sdsLote_MatID_OC: TIntegerField;
    sdsLote_MatITEM_OC: TIntegerField;
    sdsLote_MatNUM_OC: TIntegerField;
    cdsLote_MatID_OC: TIntegerField;
    cdsLote_MatITEM_OC: TIntegerField;
    cdsLote_MatNUM_OC: TIntegerField;
    sdsLote_MatPRECO_CUSTO: TFloatField;
    cdsLote_MatPRECO_CUSTO: TFloatField;
    sdsLote_MatPERC_IPI: TFloatField;
    cdsLote_MatPERC_IPI: TFloatField;
    sdsLote: TSQLDataSet;
    dspLote: TDataSetProvider;
    cdsLote: TClientDataSet;
    dsLote: TDataSource;
    sdsLoteID: TIntegerField;
    sdsLoteID_PRODUTO: TIntegerField;
    sdsLoteID_COMBINACAO: TIntegerField;
    sdsLoteNUM_ORDEM: TIntegerField;
    sdsLoteCARIMBO: TStringField;
    sdsLoteQTD: TFloatField;
    sdsLoteNOME_PRODUTO: TStringField;
    sdsLoteREFERENCIA: TStringField;
    sdsLoteNOME_COMBINACAO: TStringField;
    cdsLoteID: TIntegerField;
    cdsLoteID_PRODUTO: TIntegerField;
    cdsLoteID_COMBINACAO: TIntegerField;
    cdsLoteNUM_ORDEM: TIntegerField;
    cdsLoteCARIMBO: TStringField;
    cdsLoteQTD: TFloatField;
    cdsLoteNOME_PRODUTO: TStringField;
    cdsLoteREFERENCIA: TStringField;
    cdsLoteNOME_COMBINACAO: TStringField;
    qNecessidade: TSQLQuery;
    qNecessidadeID: TIntegerField;
    qNecessidadeNUM_ORDPRODUCAO: TIntegerField;
    sdsLoteNOME: TStringField;
    cdsLoteNOME: TStringField;
    sdsLote_MatID_FORNECEDOR_MAT: TIntegerField;
    cdsLote_MatID_FORNECEDOR_MAT: TIntegerField;
    cdsNecessidade_ComprassdsNecessidade_Compras_Ord: TDataSetField;
    qPedido: TSQLQuery;
    qPedidoNUM_PEDIDO: TIntegerField;
    sdsMProduto: TSQLDataSet;
    dspMProduto: TDataSetProvider;
    cdsMProduto: TClientDataSet;
    dsMProduto: TDataSource;
    cdsMProdutoID_MATERIAL: TIntegerField;
    cdsMProdutoNUM_ORDEM: TIntegerField;
    cdsMProdutoID_PRODUTO: TIntegerField;
    cdsMProdutoREFERENCIA: TStringField;
    cdsMProdutoID_COMBINACAO: TIntegerField;
    cdsMProdutoNOME_COMBINACAO: TStringField;
    qLote: TSQLQuery;
    qLoteNUM_ORDEM: TIntegerField;
    qLoteNOME: TStringField;
    mMaterialMaterial_OK: TBooleanField;
    qVerifica_Mat: TSQLQuery;
    qVerifica_MatCONTADOR: TIntegerField;
    mMaterialQtd_Estoque: TFloatField;
    mMaterialQtd_Reserva: TFloatField;
    mMaterialQtd_OC: TFloatField;
    sdsLote_MatQTD_OC: TFloatField;
    sdsLote_MatQTD_RESERVA: TFloatField;
    cdsLote_MatQTD_OC: TFloatField;
    cdsLote_MatQTD_RESERVA: TFloatField;
    sdsLote_MatQTD_ESTOQUE: TFloatField;
    cdsLote_MatQTD_ESTOQUE: TFloatField;
    mMaterialGerado: TStringField;
    sdsLote_MatGERADO: TStringField;
    cdsLote_MatGERADO: TStringField;
    sdsLote_MatQTD_OC_ORIGINAL: TFloatField;
    cdsLote_MatQTD_OC_ORIGINAL: TFloatField;
    mMaterialQtd_OC_Original: TFloatField;
    sdsLote_MatID_MOVESTOQUE_RES: TIntegerField;
    cdsLote_MatID_MOVESTOQUE_RES: TIntegerField;
    mMaterialID_MovEstoque_Res: TIntegerField;
    sdsLote_MatNOME_FORNECEDOR_MAT: TStringField;
    sdsLote_MatNOME_FORNECEDOR: TStringField;
    cdsLote_MatNOME_FORNECEDOR_MAT: TStringField;
    cdsLote_MatNOME_FORNECEDOR: TStringField;
    mMaterialQtd_OC_Fat: TFloatField;
    sdsLote_MatQTD_OC_FAT: TFloatField;
    cdsLote_MatQTD_OC_FAT: TFloatField;
    mMaterialQtd_Sobra_OC: TFloatField;
    mMaterialQtd_OC_Usada: TFloatField;
    sdsLote_MatQTD_SOBRA_OC: TFloatField;
    sdsLote_MatQTD_USADA_OC: TFloatField;
    cdsLote_MatQTD_SOBRA_OC: TFloatField;
    cdsLote_MatQTD_USADA_OC: TFloatField;
    mMaterialGerado_Sobra_OC: TStringField;
    sdsLote_MatGERADO_SOBRA_OC: TStringField;
    cdsLote_MatGERADO_SOBRA_OC: TStringField;
    sdsLote_Mat_OC: TSQLDataSet;
    DSPLote_Mat_OC: TDataSetProvider;
    cdsLote_Mat_OC: TClientDataSet;
    cdsLote_Mat_OCNUM_ORDEM: TIntegerField;
    cdsLote_Mat_OCITEM: TIntegerField;
    cdsLote_Mat_OCID_OC: TIntegerField;
    cdsLote_Mat_OCITEM_OC: TIntegerField;
    cdsLote_Mat_OCQTD: TFloatField;
    dsLote_Mat_OC: TDataSource;
    sdsLote_Mat_OCNUM_ORDEM: TIntegerField;
    sdsLote_Mat_OCITEM: TIntegerField;
    sdsLote_Mat_OCID_OC: TIntegerField;
    sdsLote_Mat_OCITEM_OC: TIntegerField;
    sdsLote_Mat_OCQTD: TFloatField;
    sdsPedido_Sobra_OC: TSQLDataSet;
    dspPedido_Sobra_OC: TDataSetProvider;
    cdsPedido_Sobra_OC: TClientDataSet;
    dsPedido_Sobra_OC: TDataSource;
    sdsPedido_Sobra_OCID: TIntegerField;
    sdsPedido_Sobra_OCITEM: TIntegerField;
    sdsPedido_Sobra_OCQTD_SOBRA: TFloatField;
    sdsPedido_Sobra_OCQTD_USADA: TFloatField;
    sdsPedido_Sobra_OCQTD_RESTANTE: TFloatField;
    cdsPedido_Sobra_OCID: TIntegerField;
    cdsPedido_Sobra_OCITEM: TIntegerField;
    cdsPedido_Sobra_OCQTD_SOBRA: TFloatField;
    cdsPedido_Sobra_OCQTD_USADA: TFloatField;
    cdsPedido_Sobra_OCQTD_RESTANTE: TFloatField;
    mMaterialItem: TIntegerField;
    sdsLote_MatQTD_ESTOQUE_OC: TFloatField;
    cdsLote_MatQTD_ESTOQUE_OC: TFloatField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    sdsLote_MatTINGIMENTO: TStringField;
    cdsLote_MatTINGIMENTO: TStringField;
    qParametros_LoteID_COR_CRU: TIntegerField;
    sdsPedido_Sobra_OCQTD_RESTANTE_SOBRA: TFloatField;
    sdsPedido_Sobra_OCQTD_ITEM: TFloatField;
    cdsPedido_Sobra_OCQTD_RESTANTE_SOBRA: TFloatField;
    cdsPedido_Sobra_OCQTD_ITEM: TFloatField;
    qVerifica_OC: TSQLQuery;
    qVerifica_OCCANCELADO: TStringField;
    mMaterialOC_Cancelada: TStringField;
    qParametros_LoteNOME_COR: TStringField;
    qMaterialUNIDADE: TStringField;
    qMaterialUSA_COR: TStringField;
    qMaterialUSA_GRADE: TStringField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    dsCombinacao: TDataSource;
    cdsCombinacao: TClientDataSet;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    cdsCombinacaoPRECO_VENDA: TFloatField;
    cdsCombinacaoPRECO_CUSTO: TFloatField;
    sdsProduto_Tam: TSQLDataSet;
    sdsProduto_TamID: TIntegerField;
    sdsProduto_TamTAMANHO: TStringField;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    dsProduto_Tam: TDataSource;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioALT_MATERIAL_NEC: TStringField;
    qParametros_UsuarioALT_CONSUMO_NEC: TStringField;
    sdsLote_Mat_Grava: TSQLDataSet;
    sdsLote_Mat_GravaNUM_ORDEM: TIntegerField;
    sdsLote_Mat_GravaITEM: TIntegerField;
    sdsLote_Mat_GravaID_MATERIAL: TIntegerField;
    sdsLote_Mat_GravaID_COR: TIntegerField;
    sdsLote_Mat_GravaCARIMBO: TStringField;
    sdsLote_Mat_GravaTAMANHO: TStringField;
    sdsLote_Mat_GravaQTD_CONSUMO: TFloatField;
    sdsLote_Mat_GravaQTD_PRODUTO: TFloatField;
    sdsLote_Mat_GravaCARIMBOAUX: TStringField;
    sdsLote_Mat_GravaID_OC: TIntegerField;
    sdsLote_Mat_GravaITEM_OC: TIntegerField;
    sdsLote_Mat_GravaNUM_OC: TIntegerField;
    sdsLote_Mat_GravaID_FORNECEDOR: TIntegerField;
    sdsLote_Mat_GravaQTD_OC: TFloatField;
    sdsLote_Mat_GravaQTD_RESERVA: TFloatField;
    sdsLote_Mat_GravaGERADO: TStringField;
    sdsLote_Mat_GravaQTD_OC_ORIGINAL: TFloatField;
    sdsLote_Mat_GravaID_MOVESTOQUE_RES: TIntegerField;
    sdsLote_Mat_GravaQTD_OC_FAT: TFloatField;
    sdsLote_Mat_GravaQTD_SOBRA_OC: TFloatField;
    sdsLote_Mat_GravaQTD_USADA_OC: TFloatField;
    sdsLote_Mat_GravaGERADO_SOBRA_OC: TStringField;
    sdsLote_Mat_GravaTINGIMENTO: TStringField;
    sdsLote_Mat_GravaTINGIMENTO_GERADO: TStringField;
    sdsLote_Mat_GravaQTD_EST_BAIXADO: TFloatField;
    sdsLote_Mat_GravaID_MATERIAL_ANT: TIntegerField;
    dspLote_Mat_Grava: TDataSetProvider;
    cdsLote_Mat_Grava: TClientDataSet;
    cdsLote_Mat_GravaNUM_ORDEM: TIntegerField;
    cdsLote_Mat_GravaITEM: TIntegerField;
    cdsLote_Mat_GravaID_MATERIAL: TIntegerField;
    cdsLote_Mat_GravaID_COR: TIntegerField;
    cdsLote_Mat_GravaCARIMBO: TStringField;
    cdsLote_Mat_GravaTAMANHO: TStringField;
    cdsLote_Mat_GravaQTD_CONSUMO: TFloatField;
    cdsLote_Mat_GravaQTD_PRODUTO: TFloatField;
    cdsLote_Mat_GravaCARIMBOAUX: TStringField;
    cdsLote_Mat_GravaID_OC: TIntegerField;
    cdsLote_Mat_GravaITEM_OC: TIntegerField;
    cdsLote_Mat_GravaNUM_OC: TIntegerField;
    cdsLote_Mat_GravaID_FORNECEDOR: TIntegerField;
    cdsLote_Mat_GravaQTD_OC: TFloatField;
    cdsLote_Mat_GravaQTD_RESERVA: TFloatField;
    cdsLote_Mat_GravaGERADO: TStringField;
    cdsLote_Mat_GravaQTD_OC_ORIGINAL: TFloatField;
    cdsLote_Mat_GravaID_MOVESTOQUE_RES: TIntegerField;
    cdsLote_Mat_GravaQTD_OC_FAT: TFloatField;
    cdsLote_Mat_GravaQTD_SOBRA_OC: TFloatField;
    cdsLote_Mat_GravaQTD_USADA_OC: TFloatField;
    cdsLote_Mat_GravaGERADO_SOBRA_OC: TStringField;
    cdsLote_Mat_GravaTINGIMENTO: TStringField;
    cdsLote_Mat_GravaTINGIMENTO_GERADO: TStringField;
    cdsLote_Mat_GravaQTD_EST_BAIXADO: TFloatField;
    cdsLote_Mat_GravaID_MATERIAL_ANT: TIntegerField;
    qDuplicidade: TSQLQuery;
    qDuplicidadeITEM: TIntegerField;
    qParametros_LoteUSA_NECESSIDADE_IF: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralENDGRIDS: TStringField;
    mMaterialID_Setor: TIntegerField;
    mMaterialNome_Setor: TStringField;
    sdsLote_MatID_SETOR: TIntegerField;
    cdsLote_MatID_SETOR: TIntegerField;
    sdsLote_MatNOME_SETOR: TStringField;
    cdsLote_MatNOME_SETOR: TStringField;
    qQtdOC: TSQLQuery;
    qQtdOCQTD_RESTANTE: TFloatField;
    sdsSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    cdsSetorID: TIntegerField;
    cdsSetorNOME: TStringField;
    sdsConsLote_Mat_OC: TSQLDataSet;
    dspConsLote_Mat_OC: TDataSetProvider;
    cdsConsLote_Mat_OC: TClientDataSet;
    dsConsLote_Mat_OC: TDataSource;
    cdsConsLote_Mat_OCNUM_ORDEM: TIntegerField;
    cdsConsLote_Mat_OCITEM: TIntegerField;
    cdsConsLote_Mat_OCID_OC: TIntegerField;
    cdsConsLote_Mat_OCITEM_OC: TIntegerField;
    cdsConsLote_Mat_OCQTD: TFloatField;
    cdsConsLote_Mat_OCNUM_PEDIDO: TIntegerField;
    cdsConsLote_Mat_OCDTEMISSAO: TDateField;
    qDuplicidadeNUM_OC: TIntegerField;
    qDuplicidadeID_MOVESTOQUE_RES: TIntegerField;
    qDuplicidadeQTD_CONSUMO: TFloatField;
    sdsLote_Mat_GravaOBS: TStringField;
    cdsLote_Mat_GravaOBS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNecessidade_ComprasUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure mMaterialNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctPedido_Pend : String;
    ctProduto_Comb : String;
    ctLote_Pend : String;
    ctLote_Mat : String;
    ctqLote : String;
    ctqPedido : String;
    vConsSimples : Boolean; //True = Não vai gravar os produto e pedido

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Gravar_mMaterial(ID_Mapa, Num_Mapa, ID_Material, ID_Cor_Mat, ID_Fornecedor : Integer ; Tamanho, Unidade, Nome_Mat, Nome_Cor, Nome_Fornecedor : String ; ID_OC, Item_OC, Num_OC : Integer ;
              Qtd, Qtd_Consumo, Vlr_Unitario, Perc_IPI : Real ; Nome_Mapa, Carimbo, Transfer : String);
    procedure prc_Gravar_mMaterial_Prod;

    procedure prc_Ajusta_Qtd;

  end;

var
  DMCadNecessidade_Compras: TDMCadNecessidade_Compras;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, Math;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadNecessidade_Compras.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsNecessidade_Compras.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NECESSIDADE_COMPRAS',0);

  cdsNecessidade_Compras.Insert;
  cdsNecessidade_Comprasid.AsInteger := vAux;
  cdsNecessidade_ComprasDATA.AsDateTime := Date;
end;

procedure TDMCadNecessidade_Compras.prc_Excluir;
begin
  if not(cdsNecessidade_Compras.Active) or (cdsNecessidade_Compras.IsEmpty) then
    exit;

  cdsNecessidade_Compras.Delete;
  cdsNecessidade_Compras.ApplyUpdates(0);
end;

procedure TDMCadNecessidade_Compras.prc_Gravar;
begin
  vMsgErro := '';

  cdsNecessidade_Compras.Post;
  cdsNecessidade_Compras.ApplyUpdates(0);
end;

procedure TDMCadNecessidade_Compras.prc_Localizar(ID: Integer);
begin
  cdsNecessidade_Compras.Close;
  sdsNecessidade_Compras.CommandText := ctCommand;
  if ID <> 0 then
    sdsNecessidade_Compras.CommandText := sdsNecessidade_Compras.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsNecessidade_Compras.Open;
  cdsNecessidade_Compras_Ord.Close;
  cdsNecessidade_Compras_Ord.Open;
end;

procedure TDMCadNecessidade_Compras.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsNecessidade_Compras.CommandText;
  ctqLote    := qLote.SQL.Text;
  ctLote_Mat := sdsLote_Mat.CommandText;
  ctqPedido  := qPedido.SQL.Text;

  cdsFilial.Open;
  qParametros.Open;
  cdsFornecedor.Open;
  qParametros_Lote.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  cdsSetor.Open;

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

  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
end;

procedure TDMCadNecessidade_Compras.dspNecessidade_ComprasUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNecessidade_Compras.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNecessidade_Compras.prc_Gravar_mMaterial(ID_Mapa,Num_Mapa, ID_Material, ID_Cor_Mat, ID_Fornecedor : Integer ; Tamanho, Unidade,
          Nome_Mat, Nome_Cor, Nome_Fornecedor : String ; ID_OC, Item_OC, Num_OC : Integer ; Qtd, Qtd_Consumo, Vlr_Unitario, Perc_IPI : Real ;
          Nome_Mapa , Carimbo, Transfer : String);
var
  vIPI : Real;
  vCarimboAux : String;
begin
  if Transfer <> 'S' then
    Carimbo := ''
  else
  if trim(Carimbo) = '' then
    Carimbo := '';
  vCarimboAux := Carimbo;
  if trim(vCarimboAux) <> '' then
    vCarimboAux := TirarAcento(vCarimboAux);
  if (mMaterial.Locate('NUM_MAPA;ID_MATERIAL;ID_COR;TAMANHO;CARIMBO_AUX',VarArrayOf([Num_Mapa,ID_Material,ID_Cor_Mat,Tamanho,vCarimboAux]),[locaseinsensitive])) then
  //if (mMaterial.FindKey([Num_Mapa,ID_Material,ID_Cor_Mat,Tamanho])) then
    mMaterial.Edit
  else
  begin
    mMaterial.Insert;
    mMaterialNum_Mapa.AsInteger      := Num_Mapa;
    mMaterialID_Mapa.AsInteger       := ID_Mapa;
    mMaterialCarimbo.AsString        := Carimbo;
    mMaterialCarimbo_Aux.AsString    := vCarimboAux;
    mMaterialNome_Mapa.AsString      := Nome_Mapa;
    mMaterialID_Material.AsInteger   := ID_Material;
    mMaterialID_Cor.AsInteger        := ID_Cor_Mat;
    mMaterialTamanho.AsString        := Tamanho;
    mMaterialUnidade.AsString        := Unidade;
    mMaterialID_OC.AsInteger         := ID_OC;
    mMaterialItem_OC.AsInteger       := Item_OC;
    mMaterialNum_OC.AsInteger        := Num_OC;
    mMaterialNome_Material.AsString  := Nome_Mat;
    mMaterialNome_Cor.AsString       := Nome_Cor;
    mMaterialID_Fornecedor.AsInteger := ID_Fornecedor;
    mMaterialNome_Fornecedor.AsString := Nome_Fornecedor;
    mMaterialVlr_Unitario.AsFloat     := StrToFloat(FormatFloat('0.0000000',Vlr_Unitario));
    mMaterialPerc_IPI.AsFloat         := StrToFloat(FormatFloat('0.00',Perc_IPI));
    mMaterialQtd_Consumo.AsFloat      := StrToFloat(FormatFloat('0',0));
  end;
  mMaterialQtd_Consumo.AsFloat    := StrToFloat(FormatFloat('0.0000',mMaterialQtd_Consumo.AsFloat + Qtd_Consumo));
  mMaterialQtd_Para_OC.AsFloat    := StrToFloat(FormatFloat('0.0000',mMaterialQtd_Consumo.AsFloat));
  mMaterialQtd_Pares_Prod.AsFloat := StrToFloat(FormatFloat('0.0000',mMaterialQtd_Pares_Prod.AsFloat + Qtd));
  mMaterialVlr_Total.AsFloat      := StrToFloat(FormatFloat('0.00',mMaterialVlr_Unitario.AsFloat * mMaterialQtd_Consumo.AsFloat));
  vIPI := 0;
  if StrToFloat(FormatFloat('0.00',Perc_IPI)) > 0 then
    vIPI := StrToFloat(FormatFloat('0.00',((mMaterialVlr_Total.AsFloat * Perc_IPI) / 100)));
  mMaterialVlr_Total.AsFloat      := StrToFloat(FormatFloat('0.00',mMaterialVlr_Total.AsFloat + vIPI));
  mMaterial.Post;
end;

procedure TDMCadNecessidade_Compras.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialGerar_OC.AsBoolean    := False;
  mMaterialID_Mapa.AsInteger     := 0;
  mMaterialMaterial_OK.AsBoolean := True;
  mMaterialOC_Cancelada.AsString := 'N';
end;

procedure TDMCadNecessidade_Compras.prc_Gravar_mMaterial_Prod;
begin
  mMaterial_Prod.Insert;
  mMaterial_ProdNum_Mapa.AsInteger := 0;
  {mMaterial_ProdID_Produto.AsInteger     := cdsLote_PendID_PRODUTO.AsInteger;
  mMaterial_ProdReferencia.AsString      := cdsLote_PendREFERENCIA.AsString;
  mMaterial_ProdNome_Produto.AsString    := cdsLote_PendNOME_PRODUTO.AsString;
  mMaterial_ProdID_Combinacao.AsInteger  := cdsLote_PendID_COMBINACAO.AsInteger;
  mMaterial_ProdNome_Combinacao.AsString := cdsLote_PendNOME_COMBINACAO.AsString;
  mMaterial_ProdQtd.AsFloat              := cdsLote_PendQTD.AsFloat;}
  mMaterial_Prod.Post;
end;

procedure TDMCadNecessidade_Compras.prc_Ajusta_Qtd;
var
  vQtdAux: Real;
begin
  mMaterialQtd_OC.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_OC.AsFloat));
  mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_RESERVA.AsFloat));
  mMaterialGerado.AsString := cdsLote_MatGERADO.AsString;
  mMaterialID_MovEstoque_Res.AsInteger := cdsLote_MatID_MOVESTOQUE_RES.AsInteger;
  //09/02/2017
  if cdsLote_MatGerado.AsString = 'S' then
    mMaterialQtd_Sobra_OC.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_SOBRA_OC.AsFloat))
  else
    mMaterialQtd_Sobra_OC.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_ESTOQUE_OC.AsFloat));
  mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_USADA_OC.AsFloat));
  //************************
  if mMaterialID_OC.AsInteger > 0 then
    mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_OC.AsFloat + cdsLote_MatQTD_OC_FAT.AsFloat))
  else if cdsLote_MatGerado.AsString = 'S' then
    mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', 0))
  else if cdsLote_MatGerado.AsString <> 'S' then
  begin
    mMaterialQtd_Para_OC.AsFloat := cdsLote_MatQTD_CONSUMO.AsFloat;
    if StrToFloat(FormatFloat('0.0000', mMaterialQtd_Consumo.AsFloat)) <= StrToFloat(FormatFloat('0.0000', mMaterialQtd_Estoque.AsFloat)) then
    begin
      mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Consumo.AsFloat));
      mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', 0));
    end
    else
    begin
      if StrToFloat(FormatFloat('0.0000', mMaterialQtd_Estoque.AsFloat)) > 0 then
      begin
        mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Estoque.AsFloat));
        vQtdAux := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Consumo.AsFloat - mMaterialQtd_Estoque.AsFloat));
        mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
      end
      else
      begin
        mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', 0));
        mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Consumo.AsFloat));
      end;
    end;
    if (StrToFloat(FormatFloat('0.0000', mMaterialQtd_Para_OC.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000', mMaterialQtd_Sobra_OC.AsFloat)) > 0) then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Para_OC.AsFloat - mMaterialQtd_Sobra_OC.AsFloat));
      if StrToFloat(FormatFloat('0.0000', vQtdAux)) <= 0 then
      begin
        vQtdAux := StrToFloat(FormatFloat('0.0000', 0));
        mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Para_OC.AsFloat));
      end
      else
        mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Sobra_OC.AsFloat));
      mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
      mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
    end;
  end;

  if cdsLote_MatID_OC.AsInteger > 0 then
    mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', cdsLote_MatQTD_OC_ORIGINAL.AsFloat))
  else if cdsLote_MatID_MOVESTOQUE_RES.AsInteger > 0 then
    mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', 0))
  else
    mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', mMaterialQtd_Para_OC.AsFloat));
end;

end.
