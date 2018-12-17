unit UCadNotaFiscal_Cons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNotaFiscal, Grids, DBGrids, SMDBGrid, NxCollection,
  ExtCtrls;

type
  TfrmCadNotaFiscal_Cons = class(TForm)
    SMDBGrid6: TSMDBGrid;
    Panel1: TPanel;
    btnCancelar: TNxButton;
    SMDBGrid7: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    { Public declarations }
  end;

var
  frmCadNotaFiscal_Cons: TfrmCadNotaFiscal_Cons;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Cons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Cons.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Cons.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Cons.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) or (Key = 27) then
    btnCancelarClick(Sender);
end;

end.
