unit UCadProduto_Cad_Ant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadProduto, Grids, DBGrids, SMDBGrid;

type
  TfrmCadProduto_Cad_Ant = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_Cad_Ant: TfrmCadProduto_Cad_Ant;

implementation

{$R *.dfm}

procedure TfrmCadProduto_Cad_Ant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
 