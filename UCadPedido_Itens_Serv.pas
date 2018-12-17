unit UCadPedido_Itens_Serv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, StdCtrls, Mask, DBCtrls, RxLookup, Buttons,
  ExtCtrls, DB, RxDBComb;

type
  TfrmCadPedido_Itens_Serv = class(TForm)
    DBEdit16: TDBEdit;
    Label1: TLabel;
    Label38: TLabel;
    DBEdit17: TDBEdit;
    Label37: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label44: TLabel;
    DBEdit19: TDBEdit;
    Label45: TLabel;
    DBEdit20: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
  private
    { Private declarations }
    vID_Servico_Ant : Integer;    
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadPedido_Itens_Serv: TfrmCadPedido_Itens_Serv;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedido_Itens_Serv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Itens_Serv.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);

  Label2.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  RxDBLookupCombo1.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  Label37.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  RxDBLookupCombo10.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  DBEdit2.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));

  if fDMCadPedido.cdsPedido_ItensID_SERVICO.AsInteger <= 0 then
    fDMCadPedido.cdsPedido_ItensID_SERVICO.AsInteger := fDMCadPedido.cdsFilialID_SERVICO_PAD.AsInteger;
end;

procedure TfrmCadPedido_Itens_Serv.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.AsInteger <> vID_Servico_Ant then
  begin
    if fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.AsInteger <> fDMCadPedido.cdsServico_IntID.AsInteger then
      fDMCadPedido.cdsServico_Int.Locate('ID',fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.cdsPedido_ItensNOME_SERVICO_INT.AsString := fDMCadPedido.cdsServico_IntNOME.AsString + ' ' + fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString;
  end;
end;

procedure TfrmCadPedido_Itens_Serv.RxDBLookupCombo10Enter(Sender: TObject);
begin
  vID_Servico_Ant := fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.AsInteger;
end;

procedure TfrmCadPedido_Itens_Serv.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Itens_Serv.DBEdit16Enter(Sender: TObject);
begin
  DBEdit16.SelStart := (Length(DBEdit16.Text) + 1);
end;

procedure TfrmCadPedido_Itens_Serv.DBEdit2Enter(Sender: TObject);
begin
  DBEdit2.SelStart := (Length(DBEdit2.Text) + 1);
end;

end.
