unit URelEstoqueMov_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsEstoque, UDMRel;

type
  TfRelEstoqueMov_Cli = class(TForm)
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
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel9: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLBand12: TRLBand;
    RLDraw8: TRLDraw;
    RLDBResult9: TRLDBResult;
    RLLabel8: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel3: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vTipo_ES : String;
  end;

var
  fRelEstoqueMov_Cli: TfRelEstoqueMov_Cli;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelEstoqueMov_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoqueMov_Cli.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := fDMConsEstoque.vDescOpcao_Rel;
  RLLabel1.Caption := 'Relatório Movimento Estoque Por Cliente';
  if vTipo_ES = 'E' then
    RLLabel1.Caption := RLLabel1.Caption + ' (ENTRADA)'
  else
  if vTipo_ES = 'S' then
    RLLabel1.Caption := RLLabel1.Caption + ' (SAÍDA)'
  else
    RLLabel1.Caption := RLLabel1.Caption + ' (Entrada/Saída)';
end;

procedure TfRelEstoqueMov_Cli.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsEstoque);
end;

procedure TfRelEstoqueMov_Cli.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelEstoqueMov_Cli.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
