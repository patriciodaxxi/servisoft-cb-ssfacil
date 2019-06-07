unit UConsClienteOBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit;

type
  TfrmConsClienteOBS = class(TForm)
    NxPanel1: TNxPanel;
    NxLabel1: TNxLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxLabel2: TNxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsClienteOBS: TfrmConsClienteOBS;

implementation

{$R *.dfm}

end.
