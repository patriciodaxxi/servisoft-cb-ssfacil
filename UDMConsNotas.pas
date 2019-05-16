unit UDMConsNotas;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxRich, frxExportMail, frxClass, frxExportPDF, frxDBSet,
  frxExportDOCX, frxExportXLS;

type
  TDMConsNotas = class(TDataModule)
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
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
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
    qFaturamento: TSQLQuery;
    sdsNotaFiscal_Prod: TSQLDataSet;
    dspNotaFiscal_Prod: TDataSetProvider;
    cdsNotaFiscal_Prod: TClientDataSet;
    dsNotaFiscal_Prod: TDataSource;
    cdsNotaFiscal_ProdID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ProdREFERENCIA: TStringField;
    cdsNotaFiscal_ProdclPerc_SobreFat: TFloatField;
    sdsNotaFiscal_DT: TSQLDataSet;
    dspNotaFiscal_DT: TDataSetProvider;
    cdsNotaFiscal_DT: TClientDataSet;
    dsNotaFiscal_DT: TDataSource;
    cdsNotaFiscal_DTDTEMISSAO: TDateField;
    cdsNotaFiscal_DTclPerc_SobreFat: TFloatField;
    cdsNotaFiscal_ProdQTD: TFloatField;
    cdsNotaFiscal_DTQTD: TFloatField;
    qFaturamentoVLR_LIQUIDO_NFSE: TFloatField;
    qFaturamentoVLR_VENDAS: TFloatField;
    cdsNotaFiscal_ProdNOME_PRODUTO_SERV: TStringField;
    cdsNotaFiscal_ProdVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_ProdVLR_VENDAS: TFloatField;
    cdsNotaFiscal_DTVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_DTVLR_VENDAS: TFloatField;
    cdsNotaFiscal_ProdTIPO_MOV: TStringField;
    cdsNotaFiscal_ProdTIPO_REG: TStringField;
    cdsNotaFiscal_ProdTIPO_ES: TStringField;
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    qFaturamentoVLR_DUPLICATA_ST: TFloatField;
    qFaturamentoVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ProdVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_DTVLR_ICMSSUBST: TFloatField;
    qParametrosUSA_CUPOM_FISCAL: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    qParametrosUSA_SERVICO: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    qFaturamentoVLR_FRETE: TFloatField;
    qFaturamentoVLR_IPI: TFloatField;
    qDevolucoes: TSQLQuery;
    qDevolucoesVLR_NOTA: TFloatField;
    frxXLSExport1: TfrxXLSExport;
    frxDOCXExport1: TfrxDOCXExport;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeMOSTRAR_VLR_FRETE_CONS: TStringField;
    qParametros_NFeMOSTRAR_VLR_DEVOL_CONS: TStringField;
    cdsNotaFiscal_ProdVLR_TOTAL: TFloatField;
    cdsNotaFiscal_DTVLR_TOTAL: TFloatField;
    cdsNotaFiscalFILIAL: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalNOME_CLIENTE: TStringField;
    cdsNotaFiscalBASE_ICMS: TFloatField;
    cdsNotaFiscalVLR_ICMS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATA: TFloatField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
    cdsNotaFiscalVLR_ITENS: TFloatField;
    cdsNotaFiscalVLR_IPI: TFloatField;
    cdsNotaFiscalDTSAIDAENTRADA: TDateField;
    cdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscalNOME_VENDEDOR: TStringField;
    cdsNotaFiscalVLR_FATURAMENTO: TFloatField;
    qFaturamentoVLR_TOTAL: TFloatField;
    sdsReciboNF: TSQLDataSet;
    dspReciboNF: TDataSetProvider;
    cdsReciboNF: TClientDataSet;
    dsReciboNF: TDataSource;
    cdsReciboNFFILIAL: TIntegerField;
    cdsReciboNFDTEMISSAO: TDateField;
    cdsReciboNFNUMNOTA: TIntegerField;
    cdsReciboNFSERIE: TStringField;
    cdsReciboNFID_CLIENTE: TIntegerField;
    cdsReciboNFNOME_CLIENTE: TStringField;
    cdsReciboNFVLR_NOTA: TFloatField;
    cdsReciboNFVLR_ITENS: TFloatField;
    cdsReciboNFDTSAIDAENTRADA: TDateField;
    cdsReciboNFNOME_VENDEDOR: TStringField;
    cdsReciboNFVLR_FATURAMENTO: TFloatField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    sdsProduto_Det: TSQLDataSet;
    dspProduto_Det: TDataSetProvider;
    cdsProduto_Det: TClientDataSet;
    dsProduto_Det: TDataSource;
    frxProduto_Det: TfrxDBDataset;
    cdsProduto_DetVLR_TOTAL: TFloatField;
    cdsProduto_DetID_PRODUTO: TIntegerField;
    cdsProduto_DetREFERENCIA: TStringField;
    cdsProduto_DetNOME_PRODUTO_SERV: TStringField;
    cdsProduto_DetQTD: TFloatField;
    cdsProduto_DetUNIDADE: TStringField;
    cdsProduto_DetVLR_UNITARIO: TFloatField;
    cdsProduto_DetVLR_TOTAL_GERAL: TFloatField;
    cdsProduto_DetNUM_NOTA: TIntegerField;
    cdsProduto_DetNUM_RPS: TIntegerField;
    cdsProduto_DetFILIAL: TIntegerField;
    cdsProduto_DetNOME_CLIENTE: TStringField;
    cdsProduto_DetDTEMISSAO: TDateField;
    cdsProduto_DetDTENTRADASAIDA: TDateField;
    cdsProduto_DetVLR_DESCONTO: TFloatField;
    cdsProduto_DetSERIE: TStringField;
    cdsProduto_DetTIPO_MOV: TStringField;
    cdsProduto_DetTIPO_ES: TStringField;
    cdsProduto_DetTIPO_REG: TStringField;
    cdsProduto_DetVLR_ICMSSUBST: TFloatField;
    cdsProduto_DetID_COR: TIntegerField;
    cdsProduto_DetNOME_COR: TStringField;
    cdsProduto_DetBENEFICIAMENTO: TStringField;
    cdsProduto_DetFATURAMENTO: TStringField;
    cdsProduto_DetMAOOBRA: TStringField;
    cdsProduto_DetCODCFOP: TStringField;
    cdsProduto_DetVLR_FRETE: TFloatField;
    cdsProduto_DetVLR_ICMS: TFloatField;
    cdsProduto_DetDATA: TDateField;
    cdsProduto_DetVLR_IPI: TFloatField;
    cdsProduto_DetAGRUPA_NOTA: TStringField;
    cdsProduto_DetID_CLIENTE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspNotaFiscal_CliUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsNotaFiscalCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_DTCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function fnc_Calcula_Perc_SobreFat(Valor: Real): Real;
  public
    { Public declarations }
    ctNotaFiscal: String;
    ctFaturamento: String;
    ctProduto_Det : String;
    vVlrFaturamento, vVlrFrete, vVlrIpi, vVlrDevol, vVlrLiq: Real;
    vDescOpcao_Rel: String;
    vTipo_Reg: String;
    vTipo_Nota: String;                                       
  end;

var
  DMConsNotas: TDMConsNotas;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsNotas.DataModuleCreate(Sender: TObject);
begin
  ctFaturamento := qFaturamento.SQL.Text;
  ctNotaFiscal  := sdsNotaFiscal.CommandText;
  ctProduto_Det := sdsProduto_Det.CommandText;

  cdsFilial.Close;
  cdsCliente.Close;
  cdsProduto.Close;
  qParametros.Close;

  cdsFilial.Open;
  cdsCliente.Open;
  cdsProduto.Open;
  qParametros.Open;
  qParametros_NFe.Open;
end;

procedure TDMConsNotas.dspNotaFiscal_CliUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

function TDMConsNotas.fnc_Calcula_Perc_SobreFat(Valor: Real): Real;
var
  vAux: Real;
begin
  Result := 0;

  if (vVlrFaturamento > 0) and (StrToFloat(FormatFloat('0.00',Valor)) > 0) then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(Valor / vVlrFaturamento) * 100));
    Result := StrToFloat(FormatFloat('0.000',vAux));
  end;
end;

procedure TDMConsNotas.DataModuleDestroy(Sender: TObject);
begin
  cdsFilial.Close;
  cdsCliente.Close;
  cdsProduto.Close;
  qParametros.Close;
end;

procedure TDMConsNotas.cdsNotaFiscalCalcFields(DataSet: TDataSet);
begin
  cdsNotaFiscal_DTclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_DTVLR_TOTAL.AsFloat);
end;

procedure TDMConsNotas.cdsNotaFiscal_DTCalcFields(DataSet: TDataSet);
begin
  cdsNotaFiscal_DTclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_DTVLR_TOTAL.AsFloat);
end;

end.


