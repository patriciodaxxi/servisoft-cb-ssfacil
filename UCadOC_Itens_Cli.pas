unit UCadOC_Itens_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UDMCadPedido, DBCtrls, RxLookup, Mask,
  ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, Buttons, RzButton;

type
  TfrmCadOC_Itens_Cli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConfirmar: TRzBitBtn;
    btnExcluir: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadOC_Itens_Cli: TfrmCadOC_Itens_Cli;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadOC_Itens_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOC_Itens_Cli.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfrmCadOC_Itens_Cli.btnConfirmarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Projeto não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.Value <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadPedido.cdsPedido_Cli.Insert;
  fDMCadPedido.cdsPedido_CliID.AsInteger              := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.cdsPedido_CliITEM.AsInteger            := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_CliID_CENTROCUSTO.AsInteger  := RxDBLookupCombo1.KeyValue;
  fDMCadPedido.cdsPedido_CliQTD.AsFloat               := CurrencyEdit1.Value;
  fDMCadPedido.cdsPedido_CliNOME_CENTROCUSTO.AsString := RxDBLookupCombo1.Text;
  fDMCadPedido.cdsPedido_Cli.Post;

  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
end;

procedure TfrmCadOC_Itens_Cli.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Cli.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedido_Cli.Delete;
end;

end.
