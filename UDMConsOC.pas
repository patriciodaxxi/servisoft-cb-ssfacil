unit UDMConsOC;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsOC = class(TDataModule)
    sdsOC_Item: TSQLDataSet;
    dspOC_Item: TDataSetProvider;
    cdsOC_Item: TClientDataSet;
    dsOC_Item: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    dsProduto: TDataSource;
    cdsProdutoTIPO_REG: TStringField;
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
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
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    sdsOC: TSQLDataSet;
    dspOC: TDataSetProvider;
    cdsOC: TClientDataSet;
    dsOC: TDataSource;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    dsFuncionario: TDataSource;
    sdsOC_ItemID_CLIENTE: TIntegerField;
    sdsOC_ItemID: TIntegerField;
    sdsOC_ItemDTEMISSAO: TDateField;
    sdsOC_ItemDTENTREGA_PED: TDateField;
    sdsOC_ItemNUM_PEDIDO: TIntegerField;
    sdsOC_ItemFILIAL: TIntegerField;
    sdsOC_ItemNOME_FILIAL: TStringField;
    sdsOC_ItemNOME_FILIAL_INT: TStringField;
    sdsOC_ItemNOME_FORNECEDOR: TStringField;
    sdsOC_ItemNOME_PRODUTO: TStringField;
    sdsOC_ItemREFERENCIA: TStringField;
    sdsOC_ItemITEM: TIntegerField;
    sdsOC_ItemID_PRODUTO: TIntegerField;
    sdsOC_ItemDTENTREGA_ITEM: TDateField;
    sdsOC_ItemQTD: TFloatField;
    sdsOC_ItemQTD_FATURADO: TFloatField;
    sdsOC_ItemQTD_RESTANTE: TFloatField;
    sdsOC_ItemQTD_CANCELADO: TFloatField;
    sdsOC_ItemVLR_UNITARIO: TFloatField;
    sdsOC_ItemVLR_DESCONTO: TFloatField;
    sdsOC_ItemVLR_TOTAL: TFloatField;
    sdsOC_ItemNUMOS: TStringField;
    sdsOC_ItemFANTASIA_FORN: TStringField;
    sdsOC_ItemNOME_FUNCIONARIO: TStringField;
    sdsOC_ItemVLR_RESTANTE: TFloatField;
    sdsOC_ItemVLR_FATURADO: TFloatField;
    sdsOC_ItemVLR_CANCELADO: TFloatField;
    cdsOC_ItemID_CLIENTE: TIntegerField;
    cdsOC_ItemID: TIntegerField;
    cdsOC_ItemDTEMISSAO: TDateField;
    cdsOC_ItemDTENTREGA_PED: TDateField;
    cdsOC_ItemNUM_PEDIDO: TIntegerField;
    cdsOC_ItemFILIAL: TIntegerField;
    cdsOC_ItemNOME_FILIAL: TStringField;
    cdsOC_ItemNOME_FILIAL_INT: TStringField;
    cdsOC_ItemNOME_FORNECEDOR: TStringField;
    cdsOC_ItemNOME_PRODUTO: TStringField;
    cdsOC_ItemREFERENCIA: TStringField;
    cdsOC_ItemITEM: TIntegerField;
    cdsOC_ItemID_PRODUTO: TIntegerField;
    cdsOC_ItemDTENTREGA_ITEM: TDateField;
    cdsOC_ItemQTD: TFloatField;
    cdsOC_ItemQTD_FATURADO: TFloatField;
    cdsOC_ItemQTD_RESTANTE: TFloatField;
    cdsOC_ItemQTD_CANCELADO: TFloatField;
    cdsOC_ItemVLR_UNITARIO: TFloatField;
    cdsOC_ItemVLR_DESCONTO: TFloatField;
    cdsOC_ItemVLR_TOTAL: TFloatField;
    cdsOC_ItemNUMOS: TStringField;
    cdsOC_ItemFANTASIA_FORN: TStringField;
    cdsOC_ItemNOME_FUNCIONARIO: TStringField;
    cdsOC_ItemVLR_RESTANTE: TFloatField;
    cdsOC_ItemVLR_FATURADO: TFloatField;
    cdsOC_ItemVLR_CANCELADO: TFloatField;
    cdsOCID_CLIENTE: TIntegerField;
    cdsOCID: TIntegerField;
    cdsOCDTEMISSAO: TDateField;
    cdsOCNUM_PEDIDO: TIntegerField;
    cdsOCFILIAL: TIntegerField;
    cdsOCNOME_FILIAL: TStringField;
    cdsOCNOME_FILIAL_INT: TStringField;
    cdsOCNOME_FORNECEDOR: TStringField;
    cdsOCFANTASIA: TStringField;
    cdsOCVLR_TOTAL: TFloatField;
    cdsOCNOME_FUNCIONARIO: TStringField;
    cdsOCDTENTREGA_ITEM: TDateField;
    cdsOCQTD: TFloatField;
    cdsOCQTD_FATURADO: TFloatField;
    cdsOCQTD_RESTANTE: TFloatField;
    cdsOCQTD_CANCELADO: TFloatField;
    cdsOCVLR_RESTANTE: TFloatField;
    cdsOCVLR_FATURADO: TFloatField;
    cdsOCVLR_CANCELADO: TFloatField;
    sdsOC_Projeto: TSQLDataSet;
    dspOC_Projeto: TDataSetProvider;
    cdsOC_Projeto: TClientDataSet;
    dsOC_Projeto: TDataSource;
    cdsOC_ProjetoID_CLIENTE: TIntegerField;
    cdsOC_ProjetoID: TIntegerField;
    cdsOC_ProjetoDTEMISSAO: TDateField;
    cdsOC_ProjetoNUM_PEDIDO: TIntegerField;
    cdsOC_ProjetoFILIAL: TIntegerField;
    cdsOC_ProjetoNOME_FILIAL: TStringField;
    cdsOC_ProjetoNOME_FILIAL_INT: TStringField;
    cdsOC_ProjetoNOME_FORNECEDOR: TStringField;
    cdsOC_ProjetoFANTASIA: TStringField;
    cdsOC_ProjetoVLR_TOTAL: TFloatField;
    cdsOC_ProjetoNOME_FUNCIONARIO: TStringField;
    cdsOC_ProjetoNOMEPRODUTO: TStringField;
    cdsOC_ProjetoREFERENCIA: TStringField;
    cdsOC_ProjetoDTENTREGA_ITEM: TDateField;
    cdsOC_ProjetoQTD: TFloatField;
    cdsOC_ProjetoNOME_PROJETO: TStringField;
    cdsOC_ProjetoVLR_PROJETO: TFloatField;
    cdsOC_ProjetoID_CENTROCUSTO: TIntegerField;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoTIPO: TStringField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoNIVEL: TIntegerField;
    cdsCentroCustoAPROPRIACAO: TStringField;
    cdsCentroCustoSUPERIOR: TStringField;
    cdsCentroCustoCOD_PRINCIPAL: TIntegerField;
    sdsOC_ItemID_COR: TFMTBCDField;
    sdsOC_ItemNOME_COR_COMBINACAO: TStringField;
    cdsOC_ItemID_COR: TFMTBCDField;
    cdsOC_ItemNOME_COR_COMBINACAO: TStringField;
    sdsOC_ItemTAMANHO: TStringField;
    cdsOC_ItemTAMANHO: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosUSA_APROVACAO_OC_FORN: TStringField;
    sdsOC_ItemAPROVADO_PED: TStringField;
    cdsOC_ItemAPROVADO_PED: TStringField;
    cdsOCAPROVADO_PED: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ctPedido_Item : String;
    ctPedido : String;
    ctOC_Projeto : String;

  end;

var
  DMConsOC: TDMConsOC;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMConsOC.DataModuleCreate(Sender: TObject);
begin
  cdsOC_Item.Close;
  ctPedido_Item := sdsOC_Item.CommandText;
  ctPedido      := sdsOC.CommandText;
  ctOC_Projeto  := sdsOC_Projeto.CommandText;
  cdsFilial.Open;
  cdsProduto.Open;
  cdsCentroCusto.Open;
  cdsFornecedor.Open;
  cdsFuncionario.Open;
  qParametros.Open;
end;

end.
