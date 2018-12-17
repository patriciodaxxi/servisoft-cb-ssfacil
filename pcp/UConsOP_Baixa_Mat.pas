unit UConsOP_Baixa_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOP, Grids, DBGrids, SMDBGrid;

type
  TfrmConsOP_Baixa_Mat = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOP: TDMCadOP;
    
  end;

var
  frmConsOP_Baixa_Mat: TfrmConsOP_Baixa_Mat;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsOP_Baixa_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOP);
end;

procedure TfrmConsOP_Baixa_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
