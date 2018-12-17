unit UDMPedidoImp;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, frxClass,
  frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMPedidoImp = class(TDataModule)
    dsPedidoImp: TDataSource;
    cdsPedidoImp: TClientDataSet;
    dspPedidoImp: TDataSetProvider;
    sdsPedidoImp: TSQLDataSet;
    sdsPedidoImp_Itens: TSQLDataSet;
    dspPedidoImp_Itens: TDataSetProvider;
    cdsPedidoImp_Itens: TClientDataSet;
    dsPedidoImp_Itens: TDataSource;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxPedidoImp: TfrxDBDataset;
    frxPedidoImp_Lucratividade: TfrxDBDataset;
    cdsPedidoImp_ItensID_PRODUTO: TIntegerField;
    cdsPedidoImp_ItensID_COR: TFMTBCDField;
    cdsPedidoImp_ItensQTD: TFloatField;
    cdsPedidoImp_ItensQTD_RESTANTE: TFloatField;
    cdsPedidoImp_ItensQTD_FATURADO: TFloatField;
    cdsPedidoImp_ItensNOME_COR_COMBINACAO: TStringField;
    cdsPedidoImp_ItensTOTAL_ITEM: TIntegerField;
    cdsPedidoImp_ItensREFERENCIA: TStringField;
    cdsPedidoImp_ItensNOMEPRODUTO: TStringField;
    cdsPedidoImpID: TIntegerField;
    cdsPedidoImpNUM_PEDIDO: TIntegerField;
    cdsPedidoImpPEDIDO_CLIENTE: TStringField;
    cdsPedidoImpNUM_DOC: TIntegerField;
    cdsPedidoImpDTEMISSAO: TDateField;
    cdsPedidoImpDTENTREGA: TDateField;
    cdsPedidoImpQTD: TFloatField;
    cdsPedidoImpQTD_RESTANTE: TFloatField;
    cdsPedidoImpQTD_FATURADO: TFloatField;
    cdsPedidoImpOBS: TMemoField;
    cdsPedidoImpNOME_CLI: TStringField;
    cdsPedidoImpEND_CLIENTE: TStringField;
    cdsPedidoImpNUM_END_CLIENTE: TStringField;
    cdsPedidoImpBAIRRO_CLIENTE: TStringField;
    cdsPedidoImpCIDADE_CLIENTE: TStringField;
    cdsPedidoImpUF: TStringField;
    cdsPedidoImpDDD_CLIENTE: TIntegerField;
    cdsPedidoImpFONE_CLIENTE: TStringField;
    cdsPedidoImpDDD_FAX_CLIENTE: TIntegerField;
    cdsPedidoImpFAX_CLIENTE: TStringField;
    cdsPedidoImpCNPJ_CPF_CLIENTE: TStringField;
    cdsPedidoImpCEP_CLIENTE: TStringField;
    cdsPedidoImpFANTASIA_CLI: TStringField;
    mPedido_Lucratividade: TClientDataSet;
    mPedido_LucratividadeID: TIntegerField;
    mPedido_LucratividadeID_Pessoa: TIntegerField;
    mPedido_LucratividadeData_Emissao: TDateField;
    mPedido_LucratividadeValor_Total: TFloatField;
    mPedido_LucratividadeValor_Custo: TFloatField;
    mPedido_LucratividadeValor_Diferenca: TFloatField;
    mPedido_Lucratividade_Item: TClientDataSet;
    mPedido_Lucratividade_ItemID: TIntegerField;
    mPedido_Lucratividade_ItemID_Produto: TIntegerField;
    mPedido_Lucratividade_ItemNome_Produto: TStringField;
    mPedido_Lucratividade_ItemQuantidade: TFloatField;
    mPedido_Lucratividade_ItemValor_Custo: TFloatField;
    dsmPedido_Lucratividade: TDataSource;
    mPedido_Lucratividade_ItemValor_Total: TFloatField;
    mPedido_Lucratividade_ItemPercentual_Margem: TFloatField;
    mPedido_Lucratividade_ItemPercentual_Margem2: TFloatField;
    dsmPedido_Lucratividade_Item: TDataSource;
    mPedido_LucratividadeNome_Cliente: TStringField;
    frxPedidoImp_Lucratividade_Item: TfrxDBDataset;
    qPedidoItemProdutividade: TSQLQuery;
    qPedidoItemProdutividadeID: TIntegerField;
    qPedidoItemProdutividadeITEM: TIntegerField;
    qPedidoItemProdutividadeID_PRODUTO: TIntegerField;
    qPedidoItemProdutividadeNOME: TStringField;
    qPedidoItemProdutividadeQTD: TFloatField;
    qPedidoItemProdutividadeUNIDADE: TStringField;
    qPedidoItemProdutividadePRECO_CUSTO: TFloatField;
    qPedidoItemProdutividadeVLR_TOTAL: TFloatField;
    qPedidoItemProdutividadePERC_MARGEM: TFloatField;
    qPedidoItemProdutividadePERC_MARGEM2: TFloatField;
    qPedidoItemProdutividadeVLR_UNITARIO: TFloatField;
    mPedido_LucratividadePedido_Clinete: TStringField;
    sdsPedidoOrcImp: TSQLDataSet;
    dspPedidoOrcImp: TDataSetProvider;
    cdsPedidoOrcImp: TClientDataSet;
    dsPedidoOrcImp: TDataSource;
    sdsPedidoOrcImpID_VENDEDOR: TIntegerField;
    sdsPedidoOrcImpNOME: TStringField;
    sdsPedidoOrcImpVALOR_TOTAL: TFloatField;
    sdsPedidoOrcImpVALOR_FRETE: TFloatField;
    sdsPedidoOrcImpVALOR_DESCONTO: TFloatField;
    cdsPedidoOrcImpID_VENDEDOR: TIntegerField;
    cdsPedidoOrcImpNOME: TStringField;
    cdsPedidoOrcImpVALOR_TOTAL: TFloatField;
    cdsPedidoOrcImpVALOR_FRETE: TFloatField;
    cdsPedidoOrcImpVALOR_DESCONTO: TFloatField;
    sdsPedidoOrcImpNUMERO_REGISTROS: TIntegerField;
    cdsPedidoOrcImpNUMERO_REGISTROS: TIntegerField;
    frxPedido_Orcamento: TfrxDBDataset;
    dsPedEmb: TDataSource;
    cdsPedEmb: TClientDataSet;
    dspPedEmb: TDataSetProvider;
    sdsPedEmb: TSQLDataSet;
    cdsPedEmbID: TIntegerField;
    cdsPedEmbITEM: TIntegerField;
    cdsPedEmbID_PRODUTO: TIntegerField;
    cdsPedEmbID_COR: TFMTBCDField;
    cdsPedEmbREFERENCIA: TStringField;
    cdsPedEmbNOMEPRODUTO: TStringField;
    cdsPedEmbNOME_COMBINACAO: TStringField;
    cdsPedEmbQTD: TFloatField;
    cdsPedEmbQTD_EMB: TFloatField;
    cdsPedEmbSELECIONADO: TStringField;
    sdsTalao_Proc: TSQLDataSet;
    dspTalao_Proc: TDataSetProvider;
    cdsTalao_Proc: TClientDataSet;
    dsTalao_Proc: TDataSource;
    cdsTalao_ProcNOME_PROCESSO: TStringField;
    cdsTalao_ProcIMP_CLIENTE: TStringField;
    cdsTalao_ProcID: TIntegerField;
    cdsTalao_ProcPEDIDO_CLIENTE: TStringField;
    cdsTalao_ProcNUM_PEDIDO: TIntegerField;
    cdsTalao_ProcQTD_RESTANTE: TFloatField;
    cdsTalao_ProcID_PRODUTO: TIntegerField;
    cdsTalao_ProcREFERENCIA: TStringField;
    cdsTalao_ProcNOMEPRODUTO: TStringField;
    cdsTalao_ProcUNIDADE: TStringField;
    cdsTalao_ProcNOME_COMBINACAO: TStringField;
    cdsTalao_ProcDTENTREGA: TDateField;
    cdsTalao_ProcID_CLIENTE: TIntegerField;
    cdsTalao_ProcNOME_CLIENTE: TStringField;
    cdsTalao_ProcFANTASIA: TStringField;
    cdsTalao_ProcID_PROCESSO: TIntegerField;
    cdsTalao_ProcITEM_PEDIDO: TIntegerField;
    frxTalao_proc: TfrxDBDataset;
    cdsTalao_ProcCLIENTE_INTERNO: TStringField;
    cdsTalao_ProcORDEM_MAPA: TIntegerField;
    cdsTalao_ProcSELECIONADO: TStringField;
    procedure mPedido_LucratividadeCalcFields(DataSet: TDataSet);
    procedure frxPedidoImp_LucratividadeFirst(Sender: TObject);
    procedure frxPedidoImp_LucratividadeNext(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure prc_Abre_Item_Lucratividade(ID : Integer);

    { Private declarations }
  public

    ctPedidoOrcamento : String;
    ctTalao_Proc : String;
    vImp_Etiqueta : Boolean;

    { Public declarations }
  end;

var
  DMPedidoImp: TDMPedidoImp;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMPedidoImp.mPedido_LucratividadeCalcFields(DataSet: TDataSet);
begin
  mPedido_LucratividadeValor_Diferenca.AsFloat := mPedido_LucratividadeValor_Total.AsFloat - mPedido_LucratividadeValor_Custo.AsFloat;
end;

procedure TDMPedidoImp.prc_Abre_Item_Lucratividade(ID: Integer);
begin
  qPedidoItemProdutividade.Close;
  qPedidoItemProdutividade.ParamByName('ID').AsInteger := ID;
  qPedidoItemProdutividade.Open;
end;

procedure TDMPedidoImp.frxPedidoImp_LucratividadeFirst(Sender: TObject);
begin
  prc_Abre_Item_Lucratividade(mPedido_LucratividadeID.AsInteger);
end;

procedure TDMPedidoImp.frxPedidoImp_LucratividadeNext(Sender: TObject);
begin
  prc_Abre_Item_Lucratividade(mPedido_LucratividadeID.AsInteger);
end;

procedure TDMPedidoImp.DataModuleCreate(Sender: TObject);
begin
  ctPedidoOrcamento := sdsPedidoOrcImp.CommandText;
  ctTalao_Proc      := sdsTalao_Proc.CommandText;
end;

end.
