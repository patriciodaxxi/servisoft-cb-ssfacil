unit URelMovAtelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadAtelier_Mov, UDMRel;

type
  TfRelMovAtelier = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel3: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand5: TRLBand;
    RLLabel15: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadAtelier_Mov: TDMCadAtelier_Mov;
    vImpCliente, vImpObs : Boolean;
    vOpcaoImp : String;
    vOpcaoForn : String;
    vTotalComRet, vTotalSemRet : Real;
  end;

var
  fRelMovAtelier: TfRelMovAtelier;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelMovAtelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMovAtelier.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := vOpcaoImp;
  RLLabel29.Caption := vOpcaoForn;
  RLLabel3.Visible  := vImpCliente;
end;

procedure TfRelMovAtelier.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText2.Visible := vImpCliente;
  if vImpCliente then
    RLDBMemo1.Width := 339
  else
    RLDBMemo1.Width := 500;

  if fDMCadAtelier_Mov.cdsConsultaDT_RETORNO_ATELIER.AsDateTime > 10 then
    vTotalComRet := vTotalComRet + fDMCadAtelier_Mov.cdsConsultaVLR_TOTAL_ATELIER.AsFloat
  else
    vTotalSemRet := vTotalSemRet + fDMCadAtelier_Mov.cdsConsultaVLR_TOTAL_ATELIER.AsFloat;
end;

procedure TfRelMovAtelier.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadAtelier_Mov);
end;

procedure TfRelMovAtelier.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpObs;

  if (vImpObs) and (trim(fDMCadAtelier_Mov.cdsConsultaOBS.Value) = '') then
    PrintIt := False;
end;

procedure TfRelMovAtelier.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vTotalComRet := 0;
  vTotalSemRet := 0;
end;

procedure TfRelMovAtelier.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel16.Caption := FormatFloat('###,###,##0.00',vTotalComRet);
  RLLabel18.Caption := FormatFloat('###,###,##0.00',vTotalSemRet);

  vTotalComRet := 0;
  vTotalSemRet := 0;
end;

procedure TfRelMovAtelier.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
