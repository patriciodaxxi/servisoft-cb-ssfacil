unit uRelCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport,
  RLBarcode, DB, DBClient;

type
  TfRelCartao = class(TForm)
    RLReport1: TRLReport;
    ClientDataSet1: TClientDataSet;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLBarcode4: TRLBarcode;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCartao: TfRelCartao;

implementation

uses UDMRel;

{$R *.dfm}

procedure TfRelCartao.FormCreate(Sender: TObject);
var
  i: Longint;
begin
  ClientDataSet1.CreateDataSet;
  for i := 1 to 160 do
  begin
    ClientDataSet1.Insert;
    ClientDataSet1Codigo.AsString := IntToStr(20000000000 + i);
    ClientDataSet1.Post;
  end;
  ClientDataSet1.First;

  RLReport1.Preview();
end;

procedure TfRelCartao.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBarcode4.Caption := ClientDataSet1Codigo.AsString;
end;

end.
