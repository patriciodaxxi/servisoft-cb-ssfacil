unit URelPedido_Res2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsPedido, UDMRel;

type
  TfRelPedido_Res2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel17: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel4: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel5: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel14: TRLLabel;
    RLDBResult4: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    vOpcaoImp : String;
    vImp_Vlr : Boolean;
    fDMConsPedido: TDMConsPedido;
    
  end;

var
  fRelPedido_Res2: TfRelPedido_Res2;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfRelPedido_Res2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido_Res2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsPedido);
  RLLabel5.Visible  := vImp_Vlr;
  RLLabel10.Visible := vImp_Vlr;
  RLDBText2.Visible := vImp_Vlr;
  RLDBText3.Visible := vImp_Vlr;

  RLLabel13.Visible   := vImp_Vlr;
  RLLabel14.Visible   := vImp_Vlr;
  RLDBResult2.Visible := vImp_Vlr;
  RLDBResult4.Visible := vImp_Vlr;
  if vImpCliente_RF = 'R' then
    RLDBMemo1.DataField := 'NOME_CLIENTE'
  else
    RLDBMemo1.DataField := 'FANTASIA';
end;

procedure TfRelPedido_Res2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := vOpcaoImp;
end;

procedure TfRelPedido_Res2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_Res2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
