unit URelEstoqueMov_Prod2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsEstoque, UDMRel;

type
  TfRelEstoqueMov_Prod2 = class(TForm)
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
    RLLabel56: TRLLabel;
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
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel10: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vVlrEntrada_Ger, vVlrSaida_Ger : Real;

  end;

var
  fRelEstoqueMov_Prod2: TfRelEstoqueMov_Prod2;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelEstoqueMov_Prod2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoqueMov_Prod2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := fDMConsEstoque.vDescOpcao_Rel;
end;

procedure TfRelEstoqueMov_Prod2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
  RLLabel5.Visible  := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RLLabel10.Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
end;

procedure TfRelEstoqueMov_Prod2.RLBand12BeforePrint(Sender: TObject;
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
end;

procedure TfRelEstoqueMov_Prod2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
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
    vVlrEntrada_Ger := StrToFloat(FormatFloat('0.00',vVlrEntrada_Ger + vAux))
  else
    vVlrSaida_Ger := StrToFloat(FormatFloat('0.00',vVlrSaida_Ger + vAux));
  if fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S' then
    RLLabel10.Caption := fDMConsEstoque.cdsEstoque_MovCOD_LOCAL.AsString + ' ' + fDMConsEstoque.cdsEstoque_MovNOME_LOCAL.AsString;
end;

procedure TfRelEstoqueMov_Prod2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrEntrada_Ger := 0;
  vVlrSaida_Ger   := 0;
end;

procedure TfRelEstoqueMov_Prod2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
