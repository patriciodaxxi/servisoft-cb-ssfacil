unit URelOC_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsOC, UDMRel;

type
  TfRelOC_Det = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel18: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel10: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;

  public
    { Public declarations }
    vOpcaoImp : String;
    vImp_Vlr : Boolean;
    vImp_Solicitante : Boolean;
    fDMConsOC: TDMConsOC;
    
  end;

var
  fRelOC_Det: TfRelOC_Det;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelOC_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOC_Det.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsOC);
  RLLabel13.Visible := vImp_Vlr;
  RLLabel14.Visible := vImp_Vlr;
  RLDBText5.Visible := vImp_Vlr;
  RLDBText3.Visible := vImp_Vlr;

  RLLabel16.Visible   := vImp_Vlr;
  RLLabel18.Visible   := vImp_Vlr;
  RLLabel23.Visible   := vImp_Vlr;
  RLLabel25.Visible   := vImp_Vlr;
  RLDBResult2.Visible := vImp_Vlr;
  RLDBResult4.Visible := vImp_Vlr;
  RLDBResult6.Visible := vImp_Vlr;
  RLDBResult8.Visible := vImp_Vlr;

  if vImp_Solicitante then
    RLGroup1.DataFields := 'NOME_FUNCIONARIO'
  else
    RLGroup1.DataFields := '';
end;

procedure TfRelOC_Det.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := vOpcaoImp;
end;

procedure TfRelOC_Det.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Solicitante;
end;

procedure TfRelOC_Det.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImp_Solicitante;
end;

procedure TfRelOC_Det.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : String;
begin
  vAux := fDMConsOC.cdsOC_ItemNOME_PRODUTO.AsString;
  if trim(fDMConsOC.cdsOC_ItemNOME_COR_COMBINACAO.AsString) <> '' then
    vAux := vAux + ' - ' + fDMConsOC.cdsOC_ItemNOME_COR_COMBINACAO.AsString;
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := vAux;
end;

procedure TfRelOC_Det.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelOC_Det.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
