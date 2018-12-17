unit URelFat_Produto_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsFaturamento, UDMRel;

type
  TfRelFat_Produto_Det = class(TForm)
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
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLLabel17: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand5: TRLBand;
    RLLabel20: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsFaturamento: TDMConsFaturamento;
  end;

var
  fRelFat_Produto_Det: TfRelFat_Produto_Det;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelFat_Produto_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFat_Produto_Det.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := fDMConsFaturamento.vDescOpcao_Rel;
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
    RLLabel1.Caption   := 'Relatório de Faturamento - Produtos Detalhado'
  else
  if fDMConsFaturamento.vTipo_Reg = 'NTE' then
    RLLabel1.Caption   := 'Relatório de Compras - Produtos Detalhado';
end;

procedure TfRelFat_Produto_Det.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFaturamento);
end;

procedure TfRelFat_Produto_Det.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObs : String;  
begin
  if fDMConsFaturamento.cdsProduto_DetTIPO_MOV.AsString = 'NSE' then
    RLLabel17.Caption := 'Serviço:'
  else
    RLLabel17.Caption := 'Produto:';
  vObs := fDMConsFaturamento.cdsProduto_DetNOME_PRODUTO_SERV.AsString;
  if trim(fDMConsFaturamento.cdsProduto_DetNOME_COR.AsString) <> '' then
    vObs := vObs + ' ' + fDMConsFaturamento.cdsProduto_DetNOME_COR.AsString;
  RLMemo1.Lines.Text := vObs;
end;

procedure TfRelFat_Produto_Det.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (fDMConsFaturamento.cdsProduto_DetTIPO_REG.AsString = 'NTE') then
    RLLabel4.Caption := fDMConsFaturamento.cdsProduto_DetDTENTRADASAIDA.AsString
  else
    RLLabel4.Caption := fDMConsFaturamento.cdsProduto_DetDTEMISSAO.AsString;
end;

procedure TfRelFat_Produto_Det.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel20.Caption := 'Total do ' + RLLabel17.Caption;
  RLDBResult4.Visible := (RLLabel17.Caption <> 'Serviço:');
end;

procedure TfRelFat_Produto_Det.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFat_Produto_Det.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
