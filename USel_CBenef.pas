unit USel_CBenef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FMTBcd, DB, SqlExpr;

type
  TfrmSel_CBenef = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    sds: TSQLDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSel_CBenef: TfrmSel_CBenef;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmSel_CBenef.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
