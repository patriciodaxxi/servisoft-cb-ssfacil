unit UCadPedidoLoja_LocalEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, NxCollection, StdCtrls, DBCtrls, ExtCtrls, RzPanel,
  RxLookup;

type
  TfrmCadPedidoLoja_LocalEst = class(TForm)
    btnFechar: TNxButton;
    Label94: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
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
  frmCadPedidoLoja_LocalEst: TfrmCadPedidoLoja_LocalEst;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedidoLoja_LocalEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_LocalEst.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfrmCadPedidoLoja_LocalEst.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
