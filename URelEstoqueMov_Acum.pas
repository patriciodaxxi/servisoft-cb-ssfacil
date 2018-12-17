unit URelEstoqueMov_Acum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsEstoque, UDMRel;

type
  TfRelEstoqueMov_Acum = class(TForm)
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
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel9: TRLLabel;
    RLBand12: TRLBand;
    RLDraw8: TRLDraw;
    RLLabel39: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel43: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel44: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel67: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel4: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBText1: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBResult5: TRLDBResult;
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
  end;

var
  fRelEstoqueMov_Acum: TfRelEstoqueMov_Acum;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelEstoqueMov_Acum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoqueMov_Acum.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := fDMConsEstoque.vDescOpcao_Rel;
end;

procedure TfRelEstoqueMov_Acum.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
end;

procedure TfRelEstoqueMov_Acum.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  vAux := StrToFloat(FormatFloat('0.000000',RLDBResult5.Value + RLDBResult1.Value - RLDBResult4.Value));
  RLLabel44.Caption := FormatFloat('0.0000##',vAux);
end;

procedure TfRelEstoqueMov_Acum.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText1.Visible  := (StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mAuxEst_AcumQtd_Ant.AsFloat)) > 0);
  RLDBText3.Visible  := (StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mAuxEst_AcumQtd_Ent.AsFloat)) > 0);
  RLDBText16.Visible := (StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mAuxEst_AcumQtd_Sai.AsFloat)) > 0);
  RLDBText19.Visible := (StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mAuxEst_AcumVlr_Entrada.AsFloat)) > 0);
  RLDBText20.Visible := (StrToFloat(FormatFloat('0.000000',fDMConsEstoque.mAuxEst_AcumVlr_Saida.AsFloat)) > 0);
end;

procedure TfRelEstoqueMov_Acum.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelEstoqueMov_Acum.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
