unit UDMCopiaDoc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress, Variants, Dialogs,
  Math;

type
  TDMCopiaDoc = class(TDataModule)
    mAux: TClientDataSet;
    sdsDocEstoque: TSQLDataSet;
    sdsDocEstoqueID: TIntegerField;
    sdsDocEstoqueDTMOVIMENTO: TDateField;
    sdsDocEstoqueFILIAL: TIntegerField;
    sdsDocEstoqueTIPO_ES: TStringField;
    sdsDocEstoqueVLR_TOTAL: TFloatField;
    sdsDocEstoqueID_PESSOA: TIntegerField;
    sdsDocEstoqueOBS: TMemoField;
    sdsDocEstoqueID_FUNCIONARIO: TIntegerField;
    sdsDocEstoqueTIPO_REG: TStringField;
    sdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField;
    sdsDocEstoqueID_LOCAL_DESTINO: TIntegerField;
    sdsDocEstoqueINF_CODBARRA: TStringField;
    sdsDocEstoqueNUM_REQUISICAO: TIntegerField;
    sdsDocEstoqueID_FUNCIONARIO_ENTR: TIntegerField;
    sdsDocEstoqueNUM_LOTE: TIntegerField;
    sdsDocEstoqueNUM_PEDIDO: TIntegerField;
    dspDocEstoque: TDataSetProvider;
    cdsDocEstoque: TClientDataSet;
    cdsDocEstoqueID: TIntegerField;
    cdsDocEstoqueDTMOVIMENTO: TDateField;
    cdsDocEstoqueFILIAL: TIntegerField;
    cdsDocEstoqueTIPO_ES: TStringField;
    cdsDocEstoqueVLR_TOTAL: TFloatField;
    cdsDocEstoqueID_PESSOA: TIntegerField;
    cdsDocEstoquesdsDocEstoque_Itens: TDataSetField;
    cdsDocEstoqueOBS: TMemoField;
    cdsDocEstoqueID_FUNCIONARIO: TIntegerField;
    cdsDocEstoqueTIPO_REG: TStringField;
    cdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField;
    cdsDocEstoqueID_LOCAL_DESTINO: TIntegerField;
    cdsDocEstoqueINF_CODBARRA: TStringField;
    cdsDocEstoqueNUM_REQUISICAO: TIntegerField;
    cdsDocEstoqueID_FUNCIONARIO_ENTR: TIntegerField;
    cdsDocEstoqueNUM_LOTE: TIntegerField;
    cdsDocEstoqueNUM_PEDIDO: TIntegerField;
    dsDocEstoque: TDataSource;
    dsDocEstoque_Mestre: TDataSource;
    sdsDocEstoque_Itens: TSQLDataSet;
    sdsDocEstoque_ItensID: TIntegerField;
    sdsDocEstoque_ItensITEM: TIntegerField;
    sdsDocEstoque_ItensID_PRODUTO: TIntegerField;
    sdsDocEstoque_ItensQTD: TFloatField;
    sdsDocEstoque_ItensVLR_UNITARIO: TFloatField;
    sdsDocEstoque_ItensVLR_TOTAL: TFloatField;
    sdsDocEstoque_ItensPERC_IPI: TFloatField;
    sdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField;
    sdsDocEstoque_ItensMOTIVO: TStringField;
    sdsDocEstoque_ItensUNIDADE: TStringField;
    sdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField;
    sdsDocEstoque_ItensTAMANHO: TStringField;
    sdsDocEstoque_ItensID_COR: TFMTBCDField;
    sdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField;
    sdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField;
    sdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField;
    sdsDocEstoque_ItensGERAR_CUSTO: TStringField;
    sdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField;
    sdsDocEstoque_ItensLOCALIZACAO: TStringField;
    sdsDocEstoque_ItensLARGURA: TFloatField;
    sdsDocEstoque_ItensCOMPRIMENTO: TFloatField;
    sdsDocEstoque_ItensESPESSURA: TFloatField;
    sdsDocEstoque_ItensTIPO_ES: TStringField;
    cdsDocEstoque_Itens: TClientDataSet;
    cdsDocEstoque_ItensID: TIntegerField;
    cdsDocEstoque_ItensITEM: TIntegerField;
    cdsDocEstoque_ItensID_PRODUTO: TIntegerField;
    cdsDocEstoque_ItensQTD: TFloatField;
    cdsDocEstoque_ItensVLR_UNITARIO: TFloatField;
    cdsDocEstoque_ItensVLR_TOTAL: TFloatField;
    cdsDocEstoque_ItensMOTIVO: TStringField;
    cdsDocEstoque_ItensUNIDADE: TStringField;
    cdsDocEstoque_ItensPERC_IPI: TFloatField;
    cdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField;
    cdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField;
    cdsDocEstoque_ItensTAMANHO: TStringField;
    cdsDocEstoque_ItensNOME_PRODUTO: TStringField;
    cdsDocEstoque_ItensREFERENCIA: TStringField;
    cdsDocEstoque_ItensNOME_CENTROCUSTO: TStringField;
    cdsDocEstoque_ItensCOD_CENTROCUSTO: TStringField;
    cdsDocEstoque_ItensID_COR: TFMTBCDField;
    cdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField;
    cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField;
    cdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsDocEstoque_ItensGERAR_CUSTO: TStringField;
    cdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField;
    cdsDocEstoque_ItensLOCALIZACAO: TStringField;
    cdsDocEstoque_ItensLARGURA: TFloatField;
    cdsDocEstoque_ItensCOMPRIMENTO: TFloatField;
    cdsDocEstoque_ItensESPESSURA: TFloatField;
    cdsDocEstoque_ItensTIPO_ES: TStringField;
    dsDocEstoque_Itens: TDataSource;
    mAuxID: TIntegerField;
    mAuxItem: TIntegerField;
    procedure dspPedidoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure prc_Localizar(ID: Integer);

  end;

var
  DMCopiaDoc: TDMCopiaDoc;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCopiaDoc.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsDocEstoque.Close;
  sdsDocEstoque.ParamByName('ID').AsInteger := ID;
  cdsDocEstoque.Open;
end;

procedure TDMCopiaDoc.dspPedidoUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
  E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
