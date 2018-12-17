unit URelRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCob_Eletronica, UDMRel;

type
  TfRelRemessa = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBText3: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
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
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel13: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCob_Eletronica: TDMCob_Eletronica;
    vImpQtdGeral: Boolean;
    vOpcaoImp: String;
    vAcbr: Boolean;
  end;

var
  fRelRemessa: TfRelRemessa;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRemessa.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelRemessa.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCob_Eletronica);
end;

procedure TfRelRemessa.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel11.Caption := '';
  if (fDMCob_Eletronica.cdsDuplicataNUM_REMESSA.AsInteger <= 0) or (fDMCob_Eletronica.cdsDuplicataNUM_REMESSA.AsInteger <> fDMCob_Eletronica.vNum_Remessa) then
    PrintIt := False
  else
    PrintIt := True;
  if PrintIt then
  begin
    if (trim(fDmCob_Eletronica.cdsParametros_FinSEPARADOR_NUM_DA_PARC.AsString) = '') or (fDmCob_Eletronica.cdsParametros_FinSEPARADOR_NUM_DA_PARC.IsNull) then
      RLLabel11.Caption := fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString
    else
      RLLabel11.Caption := fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.cdsParametros_FinSEPARADOR_NUM_DA_PARC.AsString + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString;
  end;
end;

procedure TfRelRemessa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelRemessa.FormCreate(Sender: TObject);
begin
  if not vAcbr then
    fDMRel := TDMRel.Create(Self);
end;

end.
