unit URelNotaCancelada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsCancelada, UDMRel;

type
  TfRelNotaCancelada = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    rllbFilial: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel9: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsCancelada: TDMConsCancelada;
    vOpcaoImp : String;
    vDescricao_Filial : String;
  end;

var
  fRelNotaCancelada: TfRelNotaCancelada;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelNotaCancelada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaCancelada.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := vDescricao_Filial;
  RLLabel1.Caption := 'Relatório de Nota Cancelada/Denegada';
  if trim(vOpcaoImp) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + vOpcaoImp;
end;

procedure TfRelNotaCancelada.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsCancelada);
end;

procedure TfRelNotaCancelada.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsCancelada.cdsConsultaCANCELADA.AsString = 'S' then
    RLLabel8.Caption := 'Canc'
  else
    RLLabel8.Caption := 'Deneg.';
  RLMemo1.Lines.Clear;
  if fDMConsCancelada.cdsConsultaCANCELADA.AsString = 'S' then
    RLMemo1.Lines.Text := fDMConsCancelada.cdsConsultaMOTIVO_CANCELADA.Value
  else
  if fDMConsCancelada.cdsConsultaNFEDENEGADA.AsString = 'S' then
    RLMemo1.Lines.Text := fDMConsCancelada.cdsConsultaMOTIVO_DENEGADA.Value;
end;

procedure TfRelNotaCancelada.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelNotaCancelada.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
