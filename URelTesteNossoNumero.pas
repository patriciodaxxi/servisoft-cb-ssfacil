unit URelTesteNossoNumero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadContas, UDMRel;

type
  TfRelTesteNossoNumero = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadContas   : TDMCadContas;
  end;

var
  fRelTesteNossoNumero: TfRelTesteNossoNumero;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, DB;

{$R *.dfm}

procedure TfRelTesteNossoNumero.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTesteNossoNumero.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadContas);
end;

procedure TfRelTesteNossoNumero.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelTesteNossoNumero.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
