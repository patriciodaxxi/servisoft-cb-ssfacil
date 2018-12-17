unit URelPedido_Fat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMConsPedido, UDMRel;

type
  TfRelPedido_Fat = class(TForm)
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
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw2: TRLDraw;
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
    RLDraw5: TRLDraw;
    RLLabel23: TRLLabel;
    RLDraw6: TRLDraw;
    RLMemo1: TRLMemo;
    RLDBText11: TRLDBText;
    RLLabel19: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel20: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw7: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    vOpcaoImp: String;
    vImp_Vlr: Boolean;
    fDMConsPedido: TDMConsPedido;    
  end;

var
  fRelPedido_Fat: TfRelPedido_Fat;

implementation

uses rsDBUtils, uUtilPadrao, Math, DB;

{$R *.dfm}

procedure TfRelPedido_Fat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido_Fat.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsPedido);
  RLLabel13.Visible := vImp_Vlr;
  RLLabel14.Visible := vImp_Vlr;
  RLDBText5.Visible := vImp_Vlr;
  RLDBText3.Visible := vImp_Vlr;

  RLLabel16.Visible   := vImp_Vlr;
  RLLabel18.Visible   := vImp_Vlr;
  RLDBResult2.Visible := vImp_Vlr;
  RLDBResult4.Visible := vImp_Vlr;
  if vImpCliente_RF = 'R' then
    RLDBText7.DataField := 'NOME_CLIENTE'
  else
    RLDBText7.DataField := 'FANTASIA';
end;

procedure TfRelPedido_Fat.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := vOpcaoImp;
end;

procedure TfRelPedido_Fat.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_Fat.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPedido_Fat.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : String;
begin
  if fDMConsPedido.cdsPedido_FatNOME_COR_COMBINACAO.AsString <> '' then
    vAux := fDMConsPedido.cdsPedido_FatNOME_PRODUTO.AsString + ' ' + fDMConsPedido.cdsPedido_FatNOME_COR_COMBINACAO.AsString
  else
    vAux := fDMConsPedido.cdsPedido_FatNOME_PRODUTO.AsString;
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := vAux;
end;

end.
