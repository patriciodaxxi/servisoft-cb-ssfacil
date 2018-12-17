unit UCadPedidoLoja_Frete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, StdCtrls, DBCtrls, Mask, RxLookup, Buttons,
  ExtCtrls, RzPanel, RxDBComb, NxCollection, DB;

type
  TfrmCadPedidoLoja_Frete = class(TForm)
    Panel1: TPanel;
    btnAlterar_Itens: TNxButton;
    Panel2: TPanel;
    Label70: TLabel;
    Label38: TLabel;
    Label71: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnDadosCupom: TBitBtn;
    gbxTransportes: TRzGroupBox;
    pnlTransporte: TPanel;
    Label84: TLabel;
    Label57: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label36: TLabel;
    Label37: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox6: TRxDBComboBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit14: TDBEdit;
    DBEdit22: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnDadosCupomClick(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadPedidoLoja_Frete: TfrmCadPedidoLoja_Frete;

implementation

uses rsDBUtils, UCadPedido_Cupom, UCadPedido_Custo;

{$R *.dfm}

procedure TfrmCadPedidoLoja_Frete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_Frete.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  Panel2.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPedidoLoja_Frete.btnDadosCupomClick(Sender: TObject);
var
  ffrmCadPedido_Cupom: TfrmCadPedido_Cupom;
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger then
  begin
    MessageDlg('*** Cliente esta cadastrado, não é preciso informar os dados de entrega nesta opção!', mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadPedido_Cupom := TfrmCadPedido_Cupom.Create(self);
  ffrmCadPedido_Cupom.fDMCadPedido   := fDMCadPedido;
  ffrmCadPedido_Cupom.ShowModal;
  FreeAndNil(ffrmCadPedido_Cupom);
end;

procedure TfrmCadPedidoLoja_Frete.RxDBComboBox2Change(Sender: TObject);
begin
  btnDadosCupom.Visible := ((fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S') and (RxDBComboBox2.ItemIndex = 1));
end;

procedure TfrmCadPedidoLoja_Frete.SpeedButton2Click(Sender: TObject);
begin
  fDMCadPedido.cdsTransportadora.Close;
  fDMCadPedido.cdsTransportadora.Open;
end;

procedure TfrmCadPedidoLoja_Frete.btnAlterar_ItensClick(Sender: TObject);
begin
  Close;
end;

end.
