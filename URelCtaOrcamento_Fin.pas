unit URelCtaOrcamento_Fin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsFinanceiro, RLReport, UDMRel;

type
  TfRelCtaOrcamento_Fin = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand6: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand7: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText13: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand8: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand9: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand10: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrCompensado, vVlrPendente, vVlrCompensado_Geral, vVlrPendente_Geral : Real;
  public
    { Public declarations }
    fDMConsFinanceiro: TDMConsFinanceiro;
    vDataRef : TDateTime;
    vOpcaoImp : String;
    vImprimir_Tipo : String;
    vImprimir_SConta : Boolean;
    vImp_Titulos, vImp_Carteira, vImp_OC : Boolean;
  end;

var
  fRelCtaOrcamento_Fin: TfRelCtaOrcamento_Fin;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelCtaOrcamento_Fin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCtaOrcamento_Fin.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFinanceiro);
end;

procedure TfRelCtaOrcamento_Fin.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelCtaOrcamento_Fin.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelCtaOrcamento_Fin.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E' then
    RLLabel10.Caption := 'RECEITA'
  else
  if fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'S' then
    RLLabel10.Caption := 'DESPESA'
  else
  if fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V' then
    RLLabel10.Caption := 'CARTEIRA DE PEDIDOS'
  else
    RLLabel10.Caption := 'OC FORNECEDORES';
end;

procedure TfRelCtaOrcamento_Fin.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Style : TFontStyles;
begin
  if (vImprimir_Tipo = 'S') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  if not(vImprimir_SConta) and ((trim(fDMConsFinanceiro.mConta_OrcNome.AsString) = '') or (fDMConsFinanceiro.mConta_OrcID.AsInteger = 777700) or (fDMConsFinanceiro.mConta_OrcID.AsInteger = 777800)) then
    PrintIt := False;
  if not PrintIt then
    exit;
  if fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'S' then
    Style := [fsBold]
  else
    Style := [];
  RLDBText2.Font.Style := Style;
  RLDBText3.Font.Style := Style;
  RLDBText4.Font.Style := Style;
  RLDBText5.Font.Style := Style;
  RLDBText6.Font.Style := Style;
  fDMConsFinanceiro.cdsDuplicata_Cli.Close;
  fDMConsFinanceiro.cdsPedido_Cli.Close;
  if (vImp_Titulos) and ((fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E') or (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'S'))
     and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A') then
    fDMConsFinanceiro.prc_Abrir_Duplicata_Cli
  else
  if (vImp_Carteira) and (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A')   then
    fDMConsFinanceiro.prc_Abrir_Pedido_Cli
  else
  if (vImp_OC) and (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'X') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A')   then
    fDMConsFinanceiro.prc_Abrir_Pedido_Cli;
end;

procedure TfRelCtaOrcamento_Fin.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := vOpcaoImp;
end;

procedure TfRelCtaOrcamento_Fin.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Titulos;
end;

procedure TfRelCtaOrcamento_Fin.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Titulos;
end;

procedure TfRelCtaOrcamento_Fin.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Carteira;
end;

procedure TfRelCtaOrcamento_Fin.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Carteira;
end;

procedure TfRelCtaOrcamento_Fin.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_OC;
end;

procedure TfRelCtaOrcamento_Fin.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_OC;
end;

procedure TfRelCtaOrcamento_Fin.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  Screen.Cursor := crDefault;
  RLLabel25.Caption := FormatFloat('###,###,###,###,###,##0.00',fDMConsFinanceiro.vTotal_Rec);
  RLLabel26.Caption := FormatFloat('###,###,###,###,###,##0.00',fDMConsFinanceiro.vTotal_Desp);
  vAux := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.vTotal_Rec - fDMConsFinanceiro.vTotal_Desp));
  RLLabel29.Caption := FormatFloat('###,###,###,###,###,##0.00',vAux);
end;

procedure TfRelCtaOrcamento_Fin.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Carteira;
end;

procedure TfRelCtaOrcamento_Fin.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_OC;
end;

end.
