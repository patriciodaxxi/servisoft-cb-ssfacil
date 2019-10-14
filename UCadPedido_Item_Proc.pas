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

    procedure prc_Abrir_Pedido_Item_Processo;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Item_Proc: TfrmCadPedido_Item_Proc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedido_Item_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Item_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.cdsProcesso.Close;
  fDMCadPedido.cdsProcesso.Open;
  btnInserir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  btnExcluir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  if (not(fDMCadPedido.cdsPedido_Item_Processo.Active)) or
    (fDMCadPedido.cdsPedido_Item_ProcessoID.AsInteger <> fDMCadPedido.cdsPedidoID.AsInteger) then
    prc_Abrir_Pedido_Item_Processo;
end;

procedure TfrmCadPedido_Item_Proc.btnInserir_ItensClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  fDMCadPedido.cdsPedido_Item_Processo.Last;
  vItemAux := fDMCadPedido.cdsPedido_Item_ProcessoITEM_PROCESSO.AsInteger;

  fDMCadPedido.cdsPedido_Item_Processo.Insert;
  fDMCadPedido.cdsPedido_Item_ProcessoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
  fDMCadPedido.cdsPedido_Item_ProcessoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Item_ProcessoITEM_PROCESSO.AsInteger := vItemAux + 1;
  fDMCadPedido.cdsPedido_Item_ProcessoID_PROCESSO.AsInteger   := RxDBLookupCombo1.KeyValue;
  fDMCadPedido.cdsPedido_Item_ProcessoQTD.AsFloat             := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
  fDMCadPedido.cdsPedido_Item_Processo.Post;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadPedido_Item_Proc.btnExcluir_ItensClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    Exit;

  fDMCadPedido.cdsPedido_Item_Processo.Delete;
end;

procedure TfrmCadPedido_Item_Proc.prc_Abrir_Pedido_Item_Processo;
begin
  fDMCadPedido.cdsPedido_Item_Processo.Close;
  fDMCadPedido.sdsPedido_Item_Processo.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
  fDMCadPedido.sdsPedido_Item_Processo.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Item_Processo.Open;
end;

end.
