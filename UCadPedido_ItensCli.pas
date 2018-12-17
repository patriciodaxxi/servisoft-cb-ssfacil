unit UCadPedido_ItensCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, StdCtrls, Mask, DBCtrls, NxCollection, DB;

type
  TfrmCadPedido_ItensCli = class(TForm)
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    btnConfirmar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vChamada : String; //I= Item    P= Pedido
    
  end;

var
  frmCadPedido_ItensCli: TfrmCadPedido_ItensCli;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedido_ItensCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_ItensCli.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  if vChamada = 'P' then
    fDMCadPedido.cdsPedido_Itens.Edit;
end;

procedure TfrmCadPedido_ItensCli.btnConfirmarClick(Sender: TObject);
begin
  if (vChamada = 'P') and (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
    fDMCadPedido.cdsPedido_Itens.Post;
  Close;
end;

end.
