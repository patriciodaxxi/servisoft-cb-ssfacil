unit UCadPedido_Itens_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, CurrEdit;

type
  TfrmCadPedido_Itens_Copia = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label25: TLabel;
    pnlCor: TPanel;
    Label31: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Abrir_Combinacao;    

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Itens_Copia: TfrmCadPedido_Itens_Copia;

implementation

uses rsDBUtils, UMenu, Math;

{$R *.dfm}

procedure TfrmCadPedido_Itens_Copia.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  prc_Abrir_Combinacao;
  if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger > 0 then
    RxDBLookupCombo3.KeyValue := fDMCadPedido.cdsPedido_ItensID_COR.AsInteger;
  CurrencyEdit1.Value := fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat;
  Edit1.Text          := fDMCadPedido.cdsPedido_ItensNUMOS.AsString;
  Edit2.Text          := fDMCadPedido.cdsPedido_ItensCARIMBO.AsString;
end;

procedure TfrmCadPedido_Itens_Copia.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a copia?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.vMSGErro := 'NAO';
  Close;
end;

procedure TfrmCadPedido_Itens_Copia.prc_Abrir_Combinacao;
begin
  fDMCadPedido.cdsCombinacao.Close;
  fDMCadPedido.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  fDMCadPedido.cdsCombinacao.Open;
end;

procedure TfrmCadPedido_Itens_Copia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Itens_Copia.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    fDMCadPedido.vID_Cor_Copia := RxDBLookupCombo3.KeyValue
  else
    fDMCadPedido.vID_Cor_Copia := 0;
  fDMCadPedido.vVlr_Unitario_Copia := CurrencyEdit1.Value;
  fDMCadPedido.vOSRemessa_Copia    := Edit1.Text;
  fDMCadPedido.vCarimbo_Copia      := Edit2.Text;
  fDMCadPedido.vMSGErro := 'GRAVAR';
  Close;
end;

end.
