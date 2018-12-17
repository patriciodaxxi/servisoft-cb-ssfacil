unit UDMInformar_Tam;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, Provider, SqlExpr;

type
  TDMInformar_Tam = class(TDataModule)
    mTamanho: TClientDataSet;
    mTamanhoTamanho: TStringField;
    mTamanhoQtd: TFloatField;
    dsmTamanho: TDataSource;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    dsProduto_Tam: TDataSource;
    sdsProduto_TamID: TIntegerField;
    sdsProduto_TamTAMANHO: TStringField;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    mItens: TClientDataSet;
    mItensID_Produto: TIntegerField;
    mItensReferencia: TStringField;
    mItensUnidade: TStringField;
    mItensQtd: TFloatField;
    mItensID_CFOP: TIntegerField;
    mItensID_CSTICMS: TIntegerField;
    mItensID_CSTIPI: TIntegerField;
    mItensID_PIS: TIntegerField;
    mItensID_Cofins: TIntegerField;
    mItensPerc_ICMS: TFloatField;
    mItensPerc_IPI: TFloatField;
    mItensVlr_Unitario: TFloatField;
    mItensVlr_Total: TFloatField;
    mItensPerc_Desconto: TFloatField;
    mItensVlr_Desconto: TFloatField;
    mItensBase_ICMS: TFloatField;
    mItensVlr_ICMS: TFloatField;
    mItensVlr_IPI: TFloatField;
    mItensPerc_Pis: TFloatField;
    mItensPerc_Cofins: TFloatField;
    mItensVlr_Pis: TFloatField;
    mItensVlr_Cofins: TFloatField;
    mItensTipo_Pis: TStringField;
    mItensTipo_Cofins: TStringField;
    mItensOrigem_Prod: TStringField;
    mItensBase_IcmsSimples: TFloatField;
    mItensVlr_IcmsSimples: TFloatField;
    mItensCalcularIcmsSobreIPI: TStringField;
    mItensNome_Produto: TStringField;
    mItensID_MovEstoque: TIntegerField;
    mItensGerar_Duplicata: TStringField;
    mItensGerar_Estoque: TStringField;
    mItensNumero_OC: TStringField;
    mItensNumero_OS: TStringField;
    mItensItem_Pedido: TIntegerField;
    mItensPerc_Comissao: TFloatField;
    mItensSomar_Transf_Icms: TStringField;
    mItensObs_Complementar: TStringField;
    mItensSomar_VlrTotalProduto: TStringField;
    mItensVlr_Frete: TFloatField;
    mItensVlr_OutrasDespesas: TFloatField;
    mItensVlr_Seguro: TFloatField;
    mItensVlr_IcmsFrete: TFloatField;
    mItensVLR_ICMSOUTRASDESPESAS: TFloatField;
    mItensBASE_ICMSSUBST: TFloatField;
    mItensVLR_ICMSSUBST: TFloatField;
    mItensVLR_IMPORTACAO: TFloatField;
    mItensVLR_ADUANEIRA: TFloatField;
    mItensVLR_DESCONTORATEIO: TFloatField;
    mItensID_OPERACAO_NOTA: TIntegerField;
    mItensFINALIDADE: TStringField;
    mItensID_VARIACAO: TIntegerField;
    mItensPERC_TRIBICMS: TFloatField;
    mItensIMP_OC_NOTA: TStringField;
    mItensNum_Pedido: TIntegerField;
    mItensVLR_DUPLICATA: TFloatField;
    mItensPERC_IMPORTACAO: TFloatField;
    mItensPERC_REDUCAO_ICMSSUBST: TFloatField;
    mItensObs: TMemoField;
    mItensID_Atelier: TIntegerField;
    mItensVlr_Unitario_Atelier: TFloatField;
    mItensVLR_TOTAL_ATELIER: TFloatField;
    mItensDT_ENVIO_ATELIER: TDateField;
    mPedido_Cli: TClientDataSet;
    mPedido_CliID_CentroCusto: TIntegerField;
    mPedido_CliQtd: TFloatField;
    mNotaFiscal_Imp: TClientDataSet;
    mNotaFiscal_ImpItem_Imp: TIntegerField;
    mNotaFiscal_ImpNumDI: TStringField;
    mNotaFiscal_ImpDtRegistro: TDateField;
    mNotaFiscal_ImpDtDesembaraco: TDateField;
    mNotaFiscal_ImpCodExportador: TStringField;
    mNotaFiscal_ImpLocal_Desembaraco: TStringField;
    mNotaFiscal_ImpUF: TStringField;
    mNotaFiscal_ImpNumFatura: TStringField;
    mNotaFiscal_Imp_AD: TClientDataSet;
    mNotaFiscal_Imp_ADItem_Imp: TIntegerField;
    mNotaFiscal_Imp_ADItem_AD: TIntegerField;
    mNotaFiscal_Imp_ADNumAdicao: TIntegerField;
    mNotaFiscal_Imp_ADCodFabricante: TStringField;
    mNotaFiscal_Imp_ADVlr_Desconto_DI: TFloatField;
    mItensNomeProduto: TStringField;
    mItensQtd_Cancelado: TFloatField;
    mItensQtd_Restante: TFloatField;
    mItensQtd_Faturado: TFloatField;
    mItensID_Cor: TIntegerField;
    mItensCancelado: TStringField;
    mItensDtEntrega: TDateField;
    mItensFaturado: TStringField;
    mItensDtFaturado: TDateField;
    mItensCod_Produto_Cliente: TStringField;
    mItensTipo: TStringField;
    mItensNumOS: TStringField;
    mItensBASE_ICMSTRANSF: TFloatField;
    mItensPERC_TRANSF: TFloatField;
    mItensVLR_TRANSF: TFloatField;
    mItensID_CONFIG_CFOP: TIntegerField;
    mItensQTD_AFATURAR: TFloatField;
    mItensDT_RETORNO_ATELIER: TDateField;
    mItensVLR_PAGTO_ATELIER: TFloatField;
    mItensDT_PAGTO_ATELIER: TDateField;
    mItensAprovado_Orc: TStringField;
    mItensMOTIVO_NAO_APROV: TMemoField;
    mItensDTAPROVADO_NAO: TDateField;
    mItensID_ORCAMENTO: TIntegerField;
    mItensITEM_ORCAMENTO: TIntegerField;
    mItensQTD_LIBERADA: TFloatField;
    mItensQTD_PRODUZIDA: TFloatField;
    mItensID: TIntegerField;
    mItensItem: TIntegerField;
    mPedido_CliID: TIntegerField;
    mPedido_CliItem: TIntegerField;
    mNotaFiscal_ImpID: TIntegerField;
    mNotaFiscal_ImpItem: TIntegerField;
    mNotaFiscal_Imp_ADItem: TIntegerField;
    mNotaFiscal_Imp_ADID: TIntegerField;
    mItensTAMANHO: TStringField;
    mItensPERC_ICMSSIMPLES: TFloatField;
    mItensCOD_CST: TStringField;
    mItensCOD_IPI: TStringField;
    mItensCODCFOP: TStringField;
    mItensID_NCM: TIntegerField;
    mItensNome_Produto_Original: TStringField;
    mItensCONTA_ORCAMENTO_ID: TIntegerField;
    mItensCENTRO_CUSTO_ID: TIntegerField;
    mItensQTDRESTANTE: TFloatField;
    mItensQTDDEVOLVIDA: TFloatField;
    mItensNCM: TStringField;
    mItensCODCOFINS: TStringField;
    mItensCODPIS: TStringField;
    mItensQTD_ADEVOLVER: TFloatField;
    mItensQTD_PACOTE: TFloatField;
    mItensID_PEDIDO: TIntegerField;
    mItensPERC_TABCSTICMS: TFloatField;
    mItensMAOOBRA: TStringField;
    mItensCOD_PRODUTO_FORN: TStringField;
    mItensCOD_BARRA: TStringField;
    mItensID_NTE: TIntegerField;
    mItensITEM_NTE: TIntegerField;
    mItensQTD_NOTAATUAL: TFloatField;
    mItensTIPO_NOTA: TStringField;
    mItensITEM_DEVOL: TStringField;
    mItensTIPO_REG: TStringField;
    mItensPERC_MVA: TFloatField;
    mItensVLR_TRIBUTOS: TFloatField;
    mItensID_MOVIMENTO: TIntegerField;
    mItensPERC_TRIBUTO: TFloatField;
    mItens_Mat: TClientDataSet;
    mItens_MatID_PRODUTO: TIntegerField;
    mItens_MatQTD_CONSUMO: TFloatField;
    mItens_MatVLR_UNITARIO: TFloatField;
    mItens_MatUNIDADE: TStringField;
    mItens_MatVLR_TOTAL: TFloatField;
    mItens_MatNOME_PRODUTO: TStringField;
    mItens_MatITEM_MAT: TIntegerField;
    mItensGERAR_LOTE: TStringField;
    mItensPOSSUI_VALE: TStringField;
    mPedido_CliNOME_CENTROCUSTO: TStringField;
    mItensDoc: TClientDataSet;
    mItensDocID_PRODUTO: TIntegerField;
    mItensDocQTD: TFloatField;
    mItensDocVLR_UNITARIO: TFloatField;
    mItensDocVLR_TOTAL: TFloatField;
    mItensDocPERC_IPI: TFloatField;
    mItensDocMOTIVO: TStringField;
    mItensDocUNIDADE: TStringField;
    mItensDocID_CENTROCUSTO: TIntegerField;
    mItensDocNOME_PRODUTO: TStringField;
    mItensDocNOME_CENTROCUSTO: TStringField;
    mItensDocCOD_CENTROCUSTO: TStringField;
    mItensDocNome_Produto_Original: TStringField;
    mItensDocID: TIntegerField;
    mItensDocItem: TIntegerField;
    mItensDocREFERENCIA: TStringField;
    mItensDocID_MOVESTOQUE: TIntegerField;
    mItensDocTAMANHO: TStringField;
    mItensCarimbo: TStringField;
    mItensDTPRODUCAO: TDateField;
    mItensTIPO_ORCAMENTO: TStringField;
    mNotaFiscal_Imp_ADNum_Seq: TIntegerField;
    mItensEnd_Foto: TStringField;
    mItensItem_Cliente: TIntegerField;
    mItensNUM_FCI: TStringField;
    mItensPERC_USADO_FCI: TFloatField;
    mItensQTD_PECA: TIntegerField;
    mItensID_OBS_LEI_NCM: TIntegerField;
    mItensID_VALE: TIntegerField;
    mItensITEM_VALE: TIntegerField;
    mItensNUM_VALE: TIntegerField;
    mItensPERC_ICMSSUBST_INTERNO: TFloatField;
    mItensVLR_ICMSSUBST_INTERNO: TFloatField;
    mItensPERC_ICMSSUBST_PROPRIO: TFloatField;
    mItensVLR_ICMSSUBST_PROPRIO: TFloatField;
    mItensBASE_ICMSSUBST_PROPRIO: TFloatField;
    mItensGRAVACAO_COM_ERRO: TStringField;
    mNotaFiscal_ImpTIPO_VIA_TRANSORTE: TIntegerField;
    mNotaFiscal_ImpVLR_AFRMM: TFloatField;
    mNotaFiscal_ImpTIPO_INTERMEDIO: TIntegerField;
    mNotaFiscal_ImpCNPJ: TStringField;
    mNotaFiscal_ImpUF_TERCEIRO: TStringField;
    mNotaFiscal_Imp_ADNum_Drawback: TStringField;
    mItensVLR_ICMSDESONERADO: TFloatField;
    mItensCOD_DESONERACAO: TIntegerField;
    mItensVLR_ICMSOPERACAO: TFloatField;
    mItensQTD_FUT: TFloatField;
    mItensID_PEDIDO_FUT: TIntegerField;
    mItensITEM_PEDIDO_FUT: TIntegerField;
    mItensID_OS: TIntegerField;
    mItensITEM_OS: TIntegerField;
    mItensITEM_OS_MAT: TIntegerField;
    mItensNUM_OSERVICO: TIntegerField;
    mItensVERSAO_TRIBUTO: TStringField;
    mItensFONTE_TRIBUTO: TStringField;
    mItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    mItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    mItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    mItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    mItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    mItensPERC_TRIBUTO_FEDERAL: TFloatField;
    mItensDocID_COR: TIntegerField;
    mTamanhoGravar: TBooleanField;
    mItensItem_original: TIntegerField;
    mItensPerc_Diferimento: TFloatField;
    mItensVLR_ICMSDIFERIDO: TFloatField;
    sdsQtdGrade: TSQLDataSet;
    dspQtdGrade: TDataSetProvider;
    cdsQtdGrade: TClientDataSet;
    dsQtdGrade: TDataSource;
    cdsQtdGradeID: TIntegerField;
    cdsQtdGradeQTD: TIntegerField;
    cdsQtdGradeID_GRADE: TIntegerField;
    qQtdGrade_Itens: TSQLQuery;
    qQtdGrade_ItensID: TIntegerField;
    qQtdGrade_ItensTAMANHO: TStringField;
    qQtdGrade_ItensQTD: TIntegerField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoID_GRADE: TIntegerField;
    mItensVlr_TaxaCiscomex: TFloatField;
    mItensNOME_COR_COMBINACAO: TStringField;
    mItensDocNOME_COR_COMBINACAO: TStringField;
    mItensCALCULAR_ST: TStringField;
    mItensCOMPLEMENTO_PROD: TStringField;
    mItensDIFERENCA_ICMS: TStringField;
    mItensNum_Lote_Controle: TStringField;
    mItensDocNUM_LOTE_CONTROLE: TStringField;
    mItensID_EnqIPI: TIntegerField;
    mItensPerc_ICMS_Inter: TFloatField;
    mItensDocGERAR_CUSTO: TStringField;
    mItensVlr_Outros: TFloatField;
    mItensPERC_PIS_COFINS_SUFRAMA: TFloatField;
    mItensIBPT_CHAVE: TStringField;
    mItensPRECO_CUSTO: TFloatField;
    mItensPERC_MARGEM: TFloatField;
    mItensPERC_MARGEM2: TFloatField;
    mItensNUM_TALAO: TStringField;
    mItensQTD_SOBRA_OC: TFloatField;
    mItensQTD_TRIB: TFloatField;
    mItensVLR_UNITARIO_TRIB: TFloatField;
    mItensUNIDADE_TRIB: TStringField;
    mItensENCERADO: TStringField;
    mItensCONV_UNIDADE: TFloatField;
    mItensUNIDADE_PROD: TStringField;
    mItensOBS_ETIQUETA: TStringField;
    mItensDocPRECO_CUSTO_TOTAL: TFloatField;
    mItensOBSMATERIAL: TStringField;
    mItensTIPO_ESCALA: TStringField;
    mItensBASE_ICMS_FCP: TFloatField;
    mItensBASE_FCP_ST: TFloatField;
    mItensVLR_FCP_ST: TFloatField;
    mItensPERC_FCP_ST: TFloatField;
    mItensVLR_ICMS_FCP_DEST: TFloatField;
    mItensBASE_ICMS_FCP_DEST: TFloatField;
    mItensTIPO_OS: TStringField;
    mItensPERC_ICMS_SUFRAMA: TFloatField;
    mItensPERC_IPI_SUFRAMA: TFloatField;
    mItensREC_COPIADO: TStringField;
    mItensCaixinha: TStringField;
    mItensVLR_IPI_DEVOL: TFloatField;
    mItensPERC_DEVOL: TFloatField;
    mItensBASE_IPI: TFloatField;
    mItensDocLOCALIZACAO: TStringField;
    procedure mItensNewRecord(DataSet: TDataSet);
    procedure mTamanhoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vGravar : String; //S=Confirmar   N=Cancelar
    vQtd_Grade : Real;
    vTamanho_Ini : String;
    vQtd_Ini     : Real;
    vID_Grade_Inf : Integer;

    procedure prc_Le_Produto_Tam(ID : Integer);
    procedure prc_Gravar_mTamanho(Tamanho : String ; Qtd : Real);
    procedure prc_Abrir_Produto_Tam(ID : Integer);

  end;

var
  DMInformar_Tam: TDMInformar_Tam;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMInformar_Tam }

procedure TDMInformar_Tam.prc_Abrir_Produto_Tam(ID: Integer);
begin
  cdsProduto_Tam.Close;
  sdsProduto_Tam.ParamByName('ID').AsInteger := ID;
  cdsProduto_Tam.Open;
end;

procedure TDMInformar_Tam.prc_Gravar_mTamanho(Tamanho: String; Qtd: Real);
begin
  mTamanho.Insert;
  mTamanhoTamanho.AsString := Tamanho;
  mTamanhoQtd.AsFloat      := StrToFloat(FormatFloat('0.00000',Qtd));
  mTamanho.Post;
end;

procedure TDMInformar_Tam.prc_Le_Produto_Tam(ID: Integer);
begin
  mTamanho.First;
  while not mTamanho.Eof do
    mTamanho.Delete;
  prc_Abrir_Produto_Tam(ID);
  cdsProduto_Tam.First;
  while not cdsProduto_Tam.Eof do
  begin
    prc_Gravar_mTamanho(cdsProduto_TamTAMANHO.AsString,0);
    cdsProduto_Tam.Next;
  end;

  qProduto.Close;
  qProduto.ParamByName('ID').AsInteger := ID;
  qProduto.Open;

  cdsQtdGrade.Close;
  sdsQtdGrade.ParamByName('ID_GRADE').AsInteger := qProdutoID_GRADE.AsInteger;
  cdsQtdGrade.Open;
end;

procedure TDMInformar_Tam.mItensNewRecord(DataSet: TDataSet);
begin
  mItensGERAR_LOTE.AsString := 'N';
end;

procedure TDMInformar_Tam.mTamanhoNewRecord(DataSet: TDataSet);
begin
  mTamanhoGravar.AsBoolean := True;
end;


end.
