unit URelPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadPessoa, UDMRel;

type
  TfRelPessoa = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLMemo2: TRLMemo;
    RLBand5: TRLBand;
    RLMemo3: TRLMemo;
    RLBand6: TRLBand;
    RLMemo4: TRLMemo;
    RLBand7: TRLBand;
    RLMemo5: TRLMemo;
    RLBand8: TRLBand;
    RLMemo6: TRLMemo;
    RLBand9: TRLBand;
    RLMemo7: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vImp : Boolean;
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
    vTipoPessoa : String;
    vImpEndereco : Boolean;
    vImpEndEntrega : Boolean;
    vImpEndCobranca : Boolean;
    vImpEmail       : Boolean;
    vImpFinanceiro  : Boolean;
    vImpVendedor    : Boolean;
    vImpDtPedidoNota : Boolean;

  end;

var
  fRelPessoa: TfRelPessoa;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPessoa.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadPessoa);
end;

procedure TfRelPessoa.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vTipoPessoa = 'C' then
    RLLabel1.Caption := 'Relatório de Clientes'
  else
  if vTipoPessoa = 'F' then
    RLLabel1.Caption := 'Relatório de Fornecedor'
  else
  if vTipoPessoa = 'T' then
    RLLabel1.Caption := 'Relatório de Transportadora'
  else
  if vTipoPessoa = 'V' then
    RLLabel1.Caption := 'Relatório de Vendedor'
  else
  if vTipoPessoa = 'A' then
    RLLabel1.Caption := 'Relatório de Atelier';
end;

procedure TfRelPessoa.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo1.Lines.Clear;
  PrintIt := (vImpEndereco) and (vImp);
  if not PrintIt then
    exit;
  vObs := 'End: ' + fDMCadPessoa.cdsPessoa_ConsultaENDERECO.AsString + ', ' + fDMCadPessoa.cdsPessoa_ConsultaNUM_END.AsString;
  if trim(fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END.AsString) <> '' then
    vObs := vObs + ' - ' + fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END.AsString;
  vObs := vObs + ' - Bairro: ' + fDMCadPessoa.cdsPessoa_ConsultaBAIRRO.AsString + ' - Cep: ' + fDMCadPessoa.cdsPessoa_ConsultaCEP.AsString;
  RLMemo1.Lines.Text := vObs;
end;

procedure TfRelPessoa.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPessoa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPessoa.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo2.Lines.Clear;
  PrintIt := (((vImpEndEntrega) and (trim(fDMCadPessoa.cdsPessoa_ConsultaENDERECO_ENT.AsString) <> '')) and (vImp));
  if not PrintIt then
    exit;
  vObs := 'End.Entrega: ' + fDMCadPessoa.cdsPessoa_ConsultaENDERECO_ENT.AsString + ', ' + fDMCadPessoa.cdsPessoa_ConsultaNUM_END_ENT.AsString;
  if trim(fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END_ENT.AsString) <> '' then
    vObs := vObs + ' - ' + fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END_ENT.AsString;
  vObs := vObs + ' - Bairro: ' + fDMCadPessoa.cdsPessoa_ConsultaBAIRRO_ENT.AsString + ' - Cep: ' + fDMCadPessoa.cdsPessoa_ConsultaCEP_ENT.AsString;
  vObs := vObs + ' - Cidade: ' + fDMCadPessoa.cdsPessoa_ConsultaCIDADE_ENT.AsString + ' - UF: ' + fDMCadPessoa.cdsPessoa_ConsultaUF_ENT.AsString;
  RLMemo2.Lines.Text := vObs;
end;

procedure TfRelPessoa.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo3.Lines.Clear;
  PrintIt := (((vImpEndCobranca) and (trim(fDMCadPessoa.cdsPessoa_ConsultaENDERECO_PGTO.AsString) <> '')) and (vImp));
  if not PrintIt then
    exit;
  vObs := 'End.Cobrança: ' + fDMCadPessoa.cdsPessoa_ConsultaENDERECO_PGTO.AsString + ', ' + fDMCadPessoa.cdsPessoa_ConsultaNUM_END_PGTO.AsString;
  if trim(fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END_PGTO.AsString) <> '' then
    vObs := vObs + ' - ' + fDMCadPessoa.cdsPessoa_ConsultaCOMPLEMENTO_END_PGTO.AsString;
  vObs := vObs + ' - Bairro: ' + fDMCadPessoa.cdsPessoa_ConsultaBAIRRO_PGTO.AsString + ' - Cep: ' + fDMCadPessoa.cdsPessoa_ConsultaCEP_PGTO.AsString;
  vObs := vObs + ' - Cidade: ' + fDMCadPessoa.cdsPessoa_ConsultaCIDADE_PGTO.AsString + ' - UF: ' + fDMCadPessoa.cdsPessoa_ConsultaUF_PGTO.AsString;
  RLMemo3.Lines.Text := vObs;
end;

procedure TfRelPessoa.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo4.Lines.Clear;
  PrintIt := (((vImpEmail) and ((trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE.AsString) <> '') or (trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE2.AsString) <> ''))) and (vImp));
  if not PrintIt then
    exit;
  vObs := 'Email NFe: ' +  fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE.AsString + ' - ' + fDMCadPessoa.cdsPessoa_ConsultaEMAIL_NFE2.AsString;
  RLMemo4.Lines.Text := vObs;
end;

procedure TfRelPessoa.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo5.Lines.Clear;
  PrintIt := (vImpFinanceiro) and (vImp);
  if not PrintIt then
    exit;
  if (fDMCadPessoa.cdsPessoa_ConsultaID_TIPOCOBRANCA.AsInteger <= 0) and (fDMCadPessoa.cdsPessoa_ConsultaID_CONDPGTO.AsInteger <= 0) and
     (fDMCadPessoa.cdsPessoa_ConsultaID_CONTABOLETO.AsInteger <= 0) and (trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_PGTO.AsString) = '') and
     (trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_COMPRAS.AsString) = '') and (trim(fDMCadPessoa.cdsPessoa_ConsultaCONTATO_COMPRAS.AsString) = '') and
     (fDMCadPessoa.cdsPessoa_ConsultaUSA_TRANSFICMS.AsString <> 'S') then
    PrintIt := False;
  if not PrintIt then
    exit;
  vObs := '';
  if (fDMCadPessoa.cdsPessoa_ConsultaID_TIPOCOBRANCA.AsInteger > 0) and (fDMCadPessoa.cdsTipoCobranca.Locate('ID',fDMCadPessoa.cdsPessoa_ConsultaID_TIPOCOBRANCA.AsInteger,([Locaseinsensitive]))) then
    vObs := vObs + '(Tipo Cobrança: ' + fDMCadPessoa.cdsTipoCobrancaNOME.AsString + ')';
  if (fDMCadPessoa.cdsPessoa_ConsultaID_CONDPGTO.AsInteger > 0) and (fDMCadPessoa.cdsCondPgto.Locate('ID',fDMCadPessoa.cdsPessoa_ConsultaID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
    vObs := vObs + '(Cond.Pagto.: ' + fDMCadPessoa.cdsCondPgtoNOME.AsString + ')';
  if (fDMCadPessoa.cdsPessoa_ConsultaID_CONTABOLETO.AsInteger > 0) and (fDMCadPessoa.cdsContas.Locate('ID',fDMCadPessoa.cdsPessoa_ConsultaID_CONTABOLETO.AsInteger,([Locaseinsensitive]))) then
    vObs := vObs + '(Banco Cobrança: ' + fDMCadPessoa.cdsContasNOME.AsString + ')';
  if trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_PGTO.AsString) <> '' then
    vObs := vObs + '(Email Financeiro: ' + fDMCadPessoa.cdsPessoa_ConsultaEMAIL_PGTO.AsString + ')';
  if trim(fDMCadPessoa.cdsPessoa_ConsultaEMAIL_COMPRAS.AsString) <> '' then
    vObs := vObs + '(Email Compras: ' + fDMCadPessoa.cdsPessoa_ConsultaEMAIL_COMPRAS.AsString + ')';
  if trim(fDMCadPessoa.cdsPessoa_ConsultaCONTATO_COMPRAS.AsString) <> '' then
    vObs := vObs + '(Contato Compras: ' + fDMCadPessoa.cdsPessoa_ConsultaCONTATO_COMPRAS.AsString + ')';
  if fDMCadPessoa.cdsPessoa_ConsultaUSA_TRANSFICMS.AsString = 'S' then
    vObs := vObs + '(Usa Transferência de ICMS)';
  RLMemo5.Lines.Text := vObs;
end;

procedure TfRelPessoa.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : WideString;
begin
  RLMemo6.Lines.Clear;
  PrintIt := ((vImpVendedor) and (vImp));
  if not PrintIt then
    exit;
  if (fDMCadPessoa.cdsPessoa_ConsultaID_VENDEDOR.AsInteger <= 0) and (StrToFloat(FormatFloat('0.00',fDMCadPessoa.cdsPessoa_ConsultaPERC_COMISSAO.AsFloat)) <= 0) then
  PrintIt := False;
  if not PrintIt then
    exit;
  vObs := '';
  if (fDMCadPessoa.cdsPessoa_ConsultaID_VENDEDOR.AsInteger > 0) and (fDMCadPessoa.cdsVendedor.Locate('CODIGO',fDMCadPessoa.cdsPessoa_ConsultaID_VENDEDOR.AsInteger,([Locaseinsensitive]))) then
    vObs := vObs + 'Vendedor: ' + fDMCadPessoa.cdsVendedorNOME.AsString;
  if StrToFloat(FormatFloat('0.00',fDMCadPessoa.cdsPessoa_ConsultaPERC_COMISSAO.AsFloat)) > 0 then
    vObs := vObs + '  % Comissão: ' + FormatFloat('0.00',fDMCadPessoa.cdsPessoa_ConsultaPERC_COMISSAO.AsFloat);
  RLMemo6.Lines.Text := vObs;
end;

procedure TfRelPessoa.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo7.Lines.Clear;
  PrintIt := ((vImpDtPedidoNota) and (vImp));
  if not PrintIt then
    exit;
  RLMemo7.Lines.Text := 'Dt. Últ. Pedido: ' + fDMCadPessoa.cdsPessoa_ConsultaDTPEDIDO.AsString + '        Dt. Últ Nota: ' + fDMCadPessoa.cdsPessoa_ConsultaDTNOTA.AsString;
end;

procedure TfRelPessoa.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadPessoa.mImpAuxiliar.Locate('ID',fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger,([Locaseinsensitive])));
  vImp    := PrintIt;
end;

end.
