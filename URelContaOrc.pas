unit URelContaOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadContaOrc, UDMRel;

type
  TfRelContaOrc = class(TForm)
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
    RLLabel6: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    
  public
    { Public declarations }
    fDMCadContaOrc: TDMCadContaOrc;
    
  end;

var
  fRelContaOrc: TfRelContaOrc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelContaOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelContaOrc.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelContaOrc.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelContaOrc.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadContaOrc.cdsConsultaTIPO_DESPESA.AsString = 'F' then
    RLLabel5.Caption := 'Fixa'
  else
  if fDMCadContaOrc.cdsConsultaTIPO_DESPESA.AsString = 'V' then
    RLLabel5.Caption := 'Variável'
  else
    RLLabel5.Caption := '';
end;

procedure TfRelContaOrc.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadContaOrc);
end;

end.
