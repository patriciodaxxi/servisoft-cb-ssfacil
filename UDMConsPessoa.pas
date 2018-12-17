unit UDMConsPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsPessoa = class(TDataModule)
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
    qFaturamentoVLR_DUPLICATA: TFloatField;
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    sdsNotaFiscal_Cli: TSQLDataSet;
    dspNotaFiscal_Cli: TDataSetProvider;
    cdsNotaFiscal_Cli: TClientDataSet;
    cdsNotaFiscal_CliID_CLIENTE: TIntegerField;
    cdsNotaFiscal_CliCANCELADA: TStringField;
    cdsNotaFiscal_CliNOME_CLIENTE: TStringField;
    cdsNotaFiscal_CliFANTASIA: TStringField;
    cdsNotaFiscal_CliVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_CliclPerc_SobreFat: TFloatField;
    dsNotaFiscal_Cli: TDataSource;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalVLR_DUPLICATA: TFloatField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalFILIAL: TIntegerField;
    sdsDuplicata: TSQLDataSet;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    dsDuplicata: TDataSource;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataclDiasAtraso: TIntegerField;
    sdsProduto_Mov: TSQLDataSet;
    dspProduto_Mov: TDataSetProvider;
    cdsProduto_Mov: TClientDataSet;
    dsProduto_Mov: TDataSource;
    cdsProduto_MovFILIAL: TIntegerField;
    cdsProduto_MovID: TIntegerField;
    cdsProduto_MovID_PESSOA: TIntegerField;
    cdsProduto_MovID_PRODUTO: TIntegerField;
    cdsProduto_MovVLR_UNITARIO: TFloatField;
    cdsProduto_MovVLR_TOTAL: TFloatField;
    cdsProduto_MovVLR_DESCONTO: TFloatField;
    cdsProduto_MovVLR_IPI: TFloatField;
    cdsProduto_MovVLR_ICMS: TFloatField;
    cdsProduto_MovVLR_FRETE: TFloatField;
    cdsProduto_MovVLR_ICMSSUBST: TFloatField;
    cdsProduto_MovNOME_CLIENTE: TStringField;
    cdsProduto_MovCNPJ_CPF: TStringField;
    cdsProduto_MovCIDADE: TStringField;
    cdsProduto_MovNOME_PRODUTO_SERV: TStringField;
    cdsProduto_MovREFERENCIA: TStringField;
    cdsProduto_MovNUM_NOTA: TIntegerField;
    cdsProduto_MovSERIE: TStringField;
    cdsProduto_MovTIPO_REG: TStringField;
    cdsProduto_MovDTEMISSAO: TDateField;
    cdsProduto_MovQTD: TFloatField;
    sdsServico_Mov: TSQLDataSet;
    dspServico_Mov: TDataSetProvider;
    cdsServico_Mov: TClientDataSet;
    dsServico_Mov: TDataSource;
    cdsServico_MovFILIAL: TIntegerField;
    cdsServico_MovID: TIntegerField;
    cdsServico_MovID_PESSOA: TIntegerField;
    cdsServico_MovID_SERVICO: TIntegerField;
    cdsServico_MovID_SERVICO_INT: TIntegerField;
    cdsServico_MovVLR_UNITARIO: TFloatField;
    cdsServico_MovVLR_TOTAL: TFloatField;
    cdsServico_MovNOME_CLIENTE: TStringField;
    cdsServico_MovCNPJ_CPF: TStringField;
    cdsServico_MovCIDADE: TStringField;
    cdsServico_MovNOME_PRODUTO_SERV: TStringField;
    cdsServico_MovREFERENCIA: TStringField;
    cdsServico_MovNUM_NOTA: TIntegerField;
    cdsServico_MovSERIE: TStringField;
    cdsServico_MovTIPO_REG: TStringField;
    cdsServico_MovDTEMISSAO: TDateField;
    cdsServico_MovQTD: TFloatField;
    qParametrosUSA_SERVICO: TStringField;
    sdsNotaServico: TSQLDataSet;
    dspNotaServico: TDataSetProvider;
    cdsNotaServico: TClientDataSet;
    dsNotaServico: TDataSource;
    cdsNotaServicoID_CLIENTE: TIntegerField;
    cdsNotaServicoSERIE: TStringField;
    cdsNotaServicoNUMNOTA: TIntegerField;
    cdsNotaServicoNUMRPS: TIntegerField;
    cdsNotaServicoVLR_DUPLICATA: TFloatField;
    cdsNotaServicoVLR_SERVICOS: TFloatField;
    cdsNotaServicoFILIAL: TIntegerField;
    cdsNotaServicoISS_RETIDO: TStringField;
    cdsNotaServicoVLR_ISS: TFloatField;
    cdsNotaServicoVLR_ISS_RETIDO: TFloatField;
    cdsNotaServicoVLR_TOTAL: TFloatField;
    cdsNotaFiscalID: TIntegerField;
    sdsNotaFiscal_Itens: TSQLDataSet;
    dspNotaFiscal_Itens: TDataSetProvider;
    cdsNotaFiscal_Itens: TClientDataSet;
    dsNotaFiscal_Itens: TDataSource;
    cdsNotaFiscal_ItensID: TIntegerField;
    cdsNotaFiscal_ItensITEM: TIntegerField;
    cdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensREFERENCIA: TStringField;
    cdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    cdsNotaFiscal_ItensQTD: TFloatField;
    cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    cdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    sdsNotaServico_Itens: TSQLDataSet;
    dspNotaServico_Itens: TDataSetProvider;
    cdsNotaServico_Itens: TClientDataSet;
    dsNotaServico_Itens: TDataSource;
    cdsNotaServico_ItensID: TIntegerField;
    cdsNotaServico_ItensITEM: TIntegerField;
    cdsNotaServico_ItensID_SERVICO_INT: TIntegerField;
    cdsNotaServico_ItensNOME_SERVICO_INT: TStringField;
    cdsNotaServico_ItensQTD: TFloatField;
    cdsNotaServico_ItensVLR_UNITARIO: TFloatField;
    cdsNotaServico_ItensVLR_TOTAL: TFloatField;
    cdsNotaServicoID: TIntegerField;
    cdsNotaServicoDTEMISSAO_CAD: TDateField;
    qParametrosUSA_LIMITE_CREDITO: TStringField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaVLR_LIMITE_CREDITO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsDuplicataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }

    function fnc_Calcula_Perc_SobreFat(Valor: Real): Real;

  public
    { Public declarations }
    ctNotaFiscal: String;
    ctFaturamento: String;
    ctDuplicata: String;
    ctProduto_Mov: String;
    ctServico_Mov: String;
    ctNotaServico: String;

    procedure prc_Cons_NotaFiscal(ID_Pessoa: Integer);
    procedure prc_Cons_Duplicata(ID_Pessoa: Integer);
    procedure prc_Cons_Produto_Mov(ID_Pessoa: Integer ; Tipo_Pessoa: String ; DtInicial, DtFinal: TDateTime);
    procedure prc_Cons_Servico_Mov(ID_Pessoa: Integer ; Tipo_Pessoa: String ; DtInicial, DtFinal: TDateTime);
    procedure prc_Cons_NotaServico(ID_Pessoa: Integer);                                         
  end;

var
  DMConsPessoa: TDMConsPessoa;

implementation

uses DmdDatabase, DateUtils;

{$R *.dfm} 

procedure TDMConsPessoa.DataModuleCreate(Sender: TObject);
begin
  ctNotaFiscal  := sdsNotaFiscal.CommandText;
  ctFaturamento := qFaturamento.SQL.Text;
  ctDuplicata   := sdsDuplicata.CommandText;
  ctProduto_Mov := sdsProduto_Mov.CommandText;
  ctServico_Mov := sdsServico_Mov.CommandText;
  ctNotaServico := sdsNotaServico.CommandText;

  qParametros.Open;
end;

function TDMConsPessoa.fnc_Calcula_Perc_SobreFat(Valor: Real): Real;
var
  vAux: Real;
begin
  Result := 0;

{  if (vVlrFaturamento > 0) and (StrToFloat(FormatFloat('0.00',Valor)) > 0) then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(Valor / vVlrFaturamento) * 100));
    Result := StrToFloat(FormatFloat('0.000',vAux));
  end;}
end;

procedure TDMConsPessoa.prc_Cons_Duplicata(ID_Pessoa: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := ctDuplicata;
  if ID_Pessoa > 0 then
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' AND DUP.ID_PESSOA = ' + IntToStr(ID_Pessoa);
  cdsDuplicata.Open;
  cdsDuplicata.IndexFieldNames := 'DTEMISSAO';
end;

procedure TDMConsPessoa.prc_Cons_NotaFiscal(ID_Pessoa: Integer);
begin
  cdsNotaFiscal.Close;
  sdsNotaFiscal.CommandText := ctNotaFiscal;
  if ID_Pessoa > 0 then
    sdsNotaFiscal.CommandText := sdsNotaFiscal.CommandText + ' AND NT.ID_CLIENTE = ' + IntToStr(ID_Pessoa);
  cdsNotaFiscal.Open;
  cdsNotaFiscal.IndexFieldNames := 'DTEMISSAO';
end;

procedure TDMConsPessoa.cdsDuplicataCalcFields(DataSet: TDataSet);
var
  vAux: Integer;
begin
  if cdsDuplicataDTULTPAGAMENTO.AsDateTime > 10 then
  begin
    vAux := 0;
    if cdsDuplicataDTULTPAGAMENTO.AsDateTime > cdsDuplicataDTVENCIMENTO.AsDateTime then
      vAux := DaysBetween(cdsDuplicataDTULTPAGAMENTO.AsDateTime,cdsDuplicataDTVENCIMENTO.AsDateTime);
    if vAux > 0 then
      cdsDuplicataclDiasAtraso.AsInteger := vAux
    else
      cdsDuplicataclDiasAtraso.Clear;
  end
  else
  if cdsDuplicataDTVENCIMENTO.AsDateTime < Date then
  begin
    vAux := DaysBetween(Date,cdsDuplicataDTVENCIMENTO.AsDateTime);
    cdsDuplicataclDiasAtraso.AsInteger := vAux;
  end
  else
    cdsDuplicataclDiasAtraso.Clear;
end;

procedure TDMConsPessoa.prc_Cons_Produto_Mov(ID_Pessoa: Integer ; Tipo_Pessoa: String ; DtInicial, DtFinal: TDateTime);
var
  vComando: String;
begin
  vComando := '';
  cdsProduto_Mov.Close;
  if ID_Pessoa > 0 then
    vComando := vComando + ' AND M.ID_PESSOA = ' + IntToStr(ID_Pessoa);
  if Tipo_Pessoa = 'C' then
    vComando := vComando + ' AND ((M.TIPO_REG = ' + QuotedStr('NTS') + ') OR (M.TIPO_REG = ' + QuotedStr('CFI') + '))';
  if Tipo_Pessoa = 'F' then
    vComando := vComando + ' AND (M.TIPO_REG = ' + QuotedStr('NTE') + ')';
  if Tipo_Pessoa = 'A' then
    vComando := vComando + ' AND ((M.TIPO_REG = ' + QuotedStr('NTS') + ') OR (M.TIPO_REG = ' + QuotedStr('CFI') + ') OR (M.TIPO_REG = ' + QuotedStr('NTE') + '))';
  if DtInicial > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtInicial));
  if DtFinal > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtFinal));
  sdsProduto_Mov.CommandText := ctProduto_Mov + vComando;
  cdsProduto_Mov.Open;
  cdsProduto_Mov.IndexFieldNames := 'NOME_PRODUTO_SERV;REFERENCIA;DTEMISSAO';
end;

procedure TDMConsPessoa.prc_Cons_Servico_Mov(ID_Pessoa: Integer; Tipo_Pessoa: String; DtInicial, DtFinal: TDateTime);
var
  vComando: String;
begin
  vComando := '';
  cdsServico_Mov.Close;
  if ID_Pessoa > 0 then
    vComando := vComando + ' AND M.ID_PESSOA = ' + IntToStr(ID_Pessoa);
  if DtInicial > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtInicial));
  if DtFinal > 10 then
    vComando :=  vComando + ' AND M.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DtFinal));
  sdsServico_Mov.CommandText := ctServico_Mov + vComando;
  cdsServico_Mov.Open;
  cdsServico_Mov.IndexFieldNames := 'NOME_PRODUTO_SERV;REFERENCIA;DTEMISSAO';
end;

procedure TDMConsPessoa.prc_Cons_NotaServico(ID_Pessoa: Integer);
begin
  cdsNotaServico.Close;
  sdsNotaServico.CommandText := ctNotaServico;
  if ID_Pessoa > 0 then
    sdsNotaServico.CommandText := sdsNotaServico.CommandText + ' AND NS.ID_CLIENTE = ' + IntToStr(ID_Pessoa);
  cdsNotaServico.Open;
  cdsNotaServico.IndexFieldNames := 'DTEMISSAO_CAD;NUMNOTA';
end;

end.


