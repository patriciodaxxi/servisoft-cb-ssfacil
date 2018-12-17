unit URelFechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadFechamento, DB, UDMRel;

type
  TfRelFechamento = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw8: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand5: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel22: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText14: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
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
    fDMCadFechamento  : TDMCadFechamento;
  end;

var
  fRelFechamento: TfRelFechamento;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFechamento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);
end;

procedure TfRelFechamento.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Caption  := '';
  RLLabel14.Caption := '';
  if fDMCadFechamento.cdsContas.Locate('ID',fDMCadFechamento.cdsFechamentoID_CONTA.AsInteger,[loCaseInsensitive]) then
    RLLabel7.Caption := fDMCadFechamento.cdsContasNOME.AsString;
  if fDMCadFechamento.cdsFilial.Locate('ID',fDMCadFechamento.cdsFechamentoFILIAL.AsInteger,[loCaseInsensitive]) then
    RLLabel14.Caption := fDMCadFechamento.cdsFilialNOME.AsString;
end;

procedure TfRelFechamento.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFechamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
