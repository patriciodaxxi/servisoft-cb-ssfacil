unit UCadPedidoLoja_Obs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, NxCollection, StdCtrls, DBCtrls, ExtCtrls, RzPanel, DB;

type
  TfrmCadPedidoLoja_Obs = class(TForm)
    btnFechar: TNxButton;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadPedidoLoja_Obs: TfrmCadPedidoLoja_Obs;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedidoLoja_Obs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_Obs.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  DBMemo1.ReadOnly := not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPedidoLoja_Obs.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
