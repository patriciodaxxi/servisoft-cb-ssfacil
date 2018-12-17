unit UCadPedidoLoja_Difal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, NxCollection, StdCtrls, DBCtrls, ExtCtrls, RzPanel,
  Mask;

type
  TfrmCadPedidoLoja_Difal = class(TForm)
    btnFechar: TNxButton;
    gbxIcms: TGroupBox;
    Label29: TLabel;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    gbxSubstituicao: TGroupBox;
    Label46: TLabel;
    Label53: TLabel;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
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
  frmCadPedidoLoja_Difal: TfrmCadPedidoLoja_Difal;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedidoLoja_Difal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_Difal.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfrmCadPedidoLoja_Difal.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
