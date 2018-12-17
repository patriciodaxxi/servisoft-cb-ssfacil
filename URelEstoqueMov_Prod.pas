unit URelEstoqueMov_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsEstoque, UDMRel;

type
  TfRelEstoqueMov_Prod = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel9: TRLLabel;
    RLBand12: TRLBand;
    RLDraw8: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel43: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel44: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLGroup2: TRLGroup;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLLabel42: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLLabel16: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel19: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel29: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vSaldo : Real;
    vSaldoAnt : Boolean;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vOrdenar : Integer;
    vVlrEntrada, vVlrSaida, vVlrEntrada_Ger, vVlrSaida_Ger, vVlrEntrada_Gru, vVlrSaida_Gru : Real;
    vDtInicial : TDateTime;
    vOpcao_Estruturado : Boolean;
    vImp_TotalEst : Boolean;

  end;

var
  fRelEstoqueMov_Prod: TfRelEstoqueMov_Prod;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelEstoqueMov_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoqueMov_Prod.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := fDMConsEstoque.vDescOpcao_Rel;
end;

procedure TfRelEstoqueMov_Prod.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
  if vOrdenar = 0 then
  begin
    RLLabel10.Caption     := 'Produto:';
    RLDBText5.DataField   := 'NOMEPRODUTO';
    RLDBText2.DataField   := 'NOMEPRODUTO';
    RLLabel6.Caption      := 'CNPJ/CPF';
    RLDBText2.DataField   := 'CNPJ_CPF';
    RLLabel9.Caption      := 'Cliente/Fornecedor';
    RLDBText4.DataField   := 'NOMEPESSOA';
    RLGroup1.DataFields   := 'NOMEPRODUTO;TAMANHO;NOME_COR';
    RLDBText10.DataField  := 'REFERENCIA';
  end;
  RLDBText6.Visible  := (vOrdenar = 0 );
  RLLabel4.Visible   := (vDtInicial > 10);
  RLLabel11.Visible  := (vDtInicial > 10);
  if not vOpcao_Estruturado then
    RLGroup2.DataFields := '';
  //RLLabel13.Visible  := (vDtInicial > 10);
  //RLLabel14.Visible  := (vDtInicial > 10);
  RLLabel27.Visible  := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RLLabel28.Visible  := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RLLabel29.Visible  := (fDMConsEstoque.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  RLDBText11.Visible := (fDMConsEstoque.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');
end;

procedure TfRelEstoqueMov_Prod.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  vAux := StrToFloat(FormatFloat('0.000000',RLDBResult1.Value - RLDBResult4.Value));
  RLLabel44.Caption := FormatFloat('0.0000##',vAux);
  RLLabel66.Caption := FormatFloat('###,###,##0.00',vVlrEntrada_Ger);
  RLLabel68.Caption := FormatFloat('###,###,##0.00',vVlrSaida_Ger);
  vVlrEntrada_Ger := 0;
  vVlrSaida_Ger   := 0;
  RLLabel3.Visible  := not(RLLabel4.Visible);
  RLLabel44.Visible := not(RLLabel4.Visible);
end;

procedure TfRelEstoqueMov_Prod.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  if not vSaldoAnt then
  begin
    vSaldo := 0;
    if vDtInicial > 10 then
    begin
      vSaldo := fDMConsEstoque.fnc_Saldo_Ant(fDMConsEstoque.cdsEstoque_MovID_PRODUTO.AsInteger,fDMConsEstoque.cdsEstoque_MovFILIAL.AsInteger,
                                             fDMConsEstoque.cdsEstoque_MovTAMANHO.AsString,vDtInicial,fDMConsEstoque.cdsEstoque_MovID_COR.AsInteger);
      RLLabel11.Caption := FormatFloat('0.######',vSaldo);
    end;
    vSaldoAnt := True;
  end;
  if fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'TRA' then
    RLLabel59.Caption := 'Transf.'
  else
  if fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'DOC' then
    RLLabel59.Caption := 'Doc.Ajuste'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'NTS') then
    RLLabel59.Caption := 'Nota Saida'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'NTE') then
    RLLabel59.Caption := 'Nota Entr.'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'REQ') then
    RLLabel59.Caption := 'Requisição'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'OCF') then
    RLLabel59.Caption := 'Ord.Compra'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'PRD') then
    RLLabel59.Caption := 'Produção'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'PED') then
    RLLabel59.Caption := 'Pedido'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'INV') then
    RLLabel59.Caption := 'Inventário'
  else
  if (fDMConsEstoque.cdsEstoque_MovTIPO_MOV.AsString = 'CFI') then
    RLLabel59.Caption := 'Cupom';
  vAux := StrToFloat(FormatFloat('0.00',fDMConsEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat * fDMConsEstoque.cdsEstoque_MovQTD.AsFloat));
  if fDMConsEstoque.cdsEstoque_MovTIPO_ES.AsString = 'E' then
  begin
    vVlrEntrada     := StrToFloat(FormatFloat('0.00',vVlrEntrada + vAux));
    vVlrEntrada_Ger := StrToFloat(FormatFloat('0.00',vVlrEntrada_Ger + vAux));
    vVlrEntrada_Gru := StrToFloat(FormatFloat('0.00',vVlrEntrada_Gru + vAux));
  end
  else
  begin
    vVlrSaida     := StrToFloat(FormatFloat('0.00',vVlrSaida + vAux));
    vVlrSaida_Ger := StrToFloat(FormatFloat('0.00',vVlrSaida_Ger + vAux));
    vVlrSaida_Gru := StrToFloat(FormatFloat('0.00',vVlrSaida_Gru + vAux));
  end;
  //if vDtInicial > 10 then
  //begin
    if fDMConsEstoque.cdsEstoque_MovTIPO_ES.AsString = 'E' then
      vSaldo := vSaldo + fDMConsEstoque.cdsEstoque_MovQTD.AsFloat
    else
      vSaldo := vSaldo - fDMConsEstoque.cdsEstoque_MovQTD.AsFloat;
    RLLabel14.Caption := FormatFloat('0.######',vSaldo);
  //end;
  if fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S' then
    RLLabel28.Caption := fDMConsEstoque.cdsEstoque_MovCOD_LOCAL.AsString + ' ' + fDMConsEstoque.cdsEstoque_MovNOME_LOCAL.AsString;
end;

procedure TfRelEstoqueMov_Prod.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  vAux := StrToFloat(FormatFloat('0.000000',RLDBResult8.Value - RLDBResult9.Value));
  RLLabel60.Caption := FormatFloat('0.0000##',vAux);
  RLLabel62.Caption := FormatFloat('###,###,##0.00',vVlrEntrada);
  RLLabel64.Caption := FormatFloat('###,###,##0.00',vVlrSaida);
  vVlrEntrada := 0;
  vVlrSaida   := 0;
  vSaldo      := 0;
  vSaldoAnt   := False;
  RLLabel5.Visible  := not(RLLabel4.Visible);
  RLLabel60.Visible := not(RLLabel4.Visible);
end;

procedure TfRelEstoqueMov_Prod.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrEntrada     := 0;
  vVlrSaida       := 0;
  vVlrEntrada_Ger := 0;
  vVlrSaida_Ger   := 0;
  vVlrEntrada_Gru := 0;
  vVlrSaida_Gru   := 0;
  vSaldo          := 0;
  vSaldoAnt       := False;
end;

procedure TfRelEstoqueMov_Prod.FormDestroy(Sender: TObject);
begin
  vDtInicial := 0;
  FreeAndNil(fDMRel);
end;

procedure TfRelEstoqueMov_Prod.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (vDtInicial > 10) and not(vSaldoAnt) then
  begin
    vSaldo := 0;
    vSaldo := fDMConsEstoque.fnc_Saldo_Ant(fDMConsEstoque.cdsEstoque_MovID_PRODUTO.AsInteger,fDMConsEstoque.cdsEstoque_MovFILIAL.AsInteger,fDMConsEstoque.cdsEstoque_MovTAMANHO.AsString,vDtInicial);
    RLLabel11.Caption := FormatFloat('0.######',vSaldo);
  end;
  RLDBText9.Visible := (fDMConsEstoque.cdsEstoque_MovID_COR.AsInteger > 0);
  RLDBText6.Visible := (trim(fDMConsEstoque.cdsEstoque_MovTAMANHO.AsString) <> '');
end;

procedure TfRelEstoqueMov_Prod.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vOpcao_Estruturado;
end;

procedure TfRelEstoqueMov_Prod.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  PrintIt := ((vOpcao_Estruturado) and (vImp_TotalEst));
  if not PrintIt then
    exit;
  vAux := StrToFloat(FormatFloat('0.000000',RLDBResult2.Value - RLDBResult3.Value));
  RLLabel20.Caption := FormatFloat('0.0000##',vAux);
  RLLabel24.Caption := FormatFloat('###,###,##0.00',vVlrEntrada_Gru);
  RLLabel26.Caption := FormatFloat('###,###,##0.00',vVlrSaida_Gru);
  vVlrEntrada_Gru := 0;
  vVlrSaida_Gru   := 0;
  RLLabel17.Visible := not(RLLabel4.Visible);
  RLLabel20.Visible := not(RLLabel4.Visible);
end;

end.
