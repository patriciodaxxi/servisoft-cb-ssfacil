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
  fDMCadPedido.cdsPedido_Item_Processo.Filtered := False;
  Action := Cafree;
end;

procedure TfrmCadPedido_Item_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.cdsProcesso.Close;
  fDMCadPedido.cdsProcesso.Open;
  btnInserir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  btnExcluir_Itens.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  fDMCadPedido.cdsPedido_Item_Processo.Filtered := False;
  fDMCadPedido.cdsPedido_Item_Processo.Filter   := 'ITEM = ' + IntToStr(fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
  fDMCadPedido.cdsPedido_Item_Processo.Filtered := True;
end;

procedure TfrmCadPedido_Item_Proc.btnInserir_ItensClick(Sender: TObject);
begin
  prc_Gravar_Pedido_Item_Processo(fDMCadPedido,fDMCadPedido.cdsPedido_ItensID.AsInteger,fDMCadPedido.cdsPedido_ItensITEM.AsInteger,
                                  RxDBLookupCombo1.KeyValue,fDMCadPedido.cdsPedido_ItensQTD.AsFloat);
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
