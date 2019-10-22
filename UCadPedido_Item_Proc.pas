unit UCadPedido_Item_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, ExtCtrls, RxLookup, StdCtrls, NxCollection, Grids,
  DBGrids, SMDBGrid, DB;

type
  TfrmCadPedido_Item_Proc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Item_Proc: TfrmCadPedido_Item_Proc;

implementation

uses rsDBUtils, uGrava_Pedido;

{$R *.dfm}

procedure TfrmCadPedido_Item_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Item_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.cdsProcesso_Grupo.Close;
  fDMCadPedido.cdsProcesso_Grupo.Open;
  btnInserir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  btnExcluir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  Panel1.Enabled           := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPedido_Item_Proc.btnInserir_ItensClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** É Obrigado informar o Processo!' , mtError, [mbOk], 0);
    exit;
  end;

  prc_Gravar_Pedido_Item_Processo(fDMCadPedido,RxDBLookupCombo1.KeyValue);
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadPedido_Item_Proc.btnExcluir_ItensClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    Exit;

  fDMCadPedido.cdsPedido_Item_Processo.Delete;
end;

end.
