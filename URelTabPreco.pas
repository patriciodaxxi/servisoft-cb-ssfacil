unit URelTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadTab_Preco, UDMRel;

type
  TfRelTabPreco = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rllbFilial: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    rllbOpcao: TRLLabel;
    RLReport2: TRLReport;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel14: TRLLabel;
    rllbFilial2: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLLabel13: TRLLabel;
    RLBand6: TRLBand;
    RLDBText6: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBMemo2: TRLDBMemo;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText1: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;
    vOpcaoImp : String;
    vOrdenar : String;

  end;

var
  fRelTabPreco: TfRelTabPreco;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTabPreco.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := fDMCadTab_Preco.cdsFilialNOME.AsString;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelTabPreco.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadTab_Preco);

  if vOrdenar = 'F' then
  begin
    RLLabel9.Caption    := 'Fornecedor:';
    RLGroup1.DataFields := 'FANTASIA';
    RLDBText5.DataField := 'FANTASIA';
    RLLabel7.Caption    := 'Grupo';
    RLDBText3.DataField := 'NOMEGRUPO';
    RLLabel10.Caption   := 'Marca';
    RLDBText2.DataField := 'NOMEMARCA';
  end
  else
  if vOrdenar = 'G' then
  begin
    RLLabel9.Caption    := 'Grupo:';
    RLGroup1.DataFields := 'NOMEGRUPO';
    RLDBText5.DataField := 'NOMEGRUPO';
    RLLabel7.Caption    := 'Fornecedor';
    RLDBText3.DataField := 'FANTASIA';
    RLLabel10.Caption   := 'Marca';
    RLDBText2.DataField := 'NOMEMARCA';
  end
  else
  if vOrdenar = 'M' then
  begin
    RLLabel9.Caption    := 'Marca:';
    RLGroup1.DataFields := 'NOMEMARCA';
    RLDBText5.DataField := 'NOMEMARCA';
    RLLabel7.Caption    := 'Grupo';
    RLDBText3.DataField := 'NOMEGRUPO';
    RLLabel10.Caption   := 'Fornecedor';
    RLDBText2.DataField := 'FANTASIA';
  end;
end;

procedure TfRelTabPreco.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial2.Caption := fDMCadTab_Preco.cdsFilialNOME.AsString;
end;

procedure TfRelTabPreco.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelTabPreco.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
