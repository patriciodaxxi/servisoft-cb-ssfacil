unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, uDmConsulta;

type
  TfConsulta = class(TForm)
    SMDBGrid1: TSMDBGrid;
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmConsulta: TDmConsulta;
  end;

var
  fConsulta: TfConsulta;

implementation

{$R *.dfm}

procedure TfConsulta.SMDBGrid1DblClick(Sender: TObject);
begin
  fDmConsulta.vID := SMDBGrid1.Fields[0].AsInteger;
  Close;
end;

end.
