unit uConsPedWeb_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid;

type
  TfrmConsPedWeb_Item = class(TForm)
    SMDBGrid1: TSMDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPedWeb_Item: TfrmConsPedWeb_Item;

implementation

uses
  UDMCadPedWeb;

{$R *.dfm}

end.
