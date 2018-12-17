unit UConsVale_Fat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadVale, Grids, DBGrids, SMDBGrid;

type
  TfrmConsVale_Fat = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadVale: TDmCadVale;
  end;

var
  frmConsVale_Fat: TfrmConsVale_Fat;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsVale_Fat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsVale_Fat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadVale);
end;

end.
