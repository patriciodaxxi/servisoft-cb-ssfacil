unit UConsNotaFiscal_NDevol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RxLookup, StdCtrls, UDMCadNotaFiscal, Buttons, Grids,
  DBGrids, SMDBGrid, DB, RzPanel;

type
  TfrmConsNotaFiscal_NDevol = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNotaFiscal        : TDMCadNotaFiscal;

  end;

var
  frmConsNotaFiscal_NDevol: TfrmConsNotaFiscal_NDevol;

implementation

uses rsDBUtils, VarUtils;

{$R *.dfm}

procedure TfrmConsNotaFiscal_NDevol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotaFiscal_NDevol.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmConsNotaFiscal_NDevol.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
