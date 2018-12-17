unit uCadPedido_Cupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls,
  uDMCadPedido, rsDBUtils, NxCollection, ExtCtrls, RxDBComb, RxLookup, DB;

type
  TfrmCadPedido_Cupom = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
  end;

var
  frmCadPedido_Cupom: TfrmCadPedido_Cupom;

implementation

{$R *.dfm}

procedure TfrmCadPedido_Cupom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadPedido_Cupom.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadPedido);
  if not fDMCadPedido.cdsCidade.Active then
  begin
    fDMCadPedido.cdsCidade.Close;
    fDMCadPedido.sdsCidade.ParamByName('UF').AsString := fDMCadPedido.cdsFilialUF.AsString;
    fDMCadPedido.cdsCidade.Open;
  end;

  if fDMCadPedido.cdsPedido_Cupom.IsEmpty then
    fDMCadPedido.cdsPedido_Cupom.Insert
  else
    fDMCadPedido.cdsPedido_Cupom.Edit;
end;

procedure TfrmCadPedido_Cupom.brCancelarClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Cupom.State in [dsEdit] then
    fDMCadPedido.cdsPedido_Cupom.Cancel
  else
    fDMCadPedido.cdsPedido_Cupom.CancelUpdates;
  Close;
end;

procedure TfrmCadPedido_Cupom.btConfirmarClick(Sender: TObject);
begin
  if (trim(fDMCadPedido.cdsPedido_CupomENDERECO.AsString) <> '') and ((fDMCadPedido.cdsPedido_CupomID_CIDADE.AsInteger <= 0) or
    (trim(fDMCadPedido.cdsPedido_CupomBAIRRO.AsString) = '') or (trim(fDMCadPedido.cdsPedido_CupomCEP.AsString) = '')
    or (trim(fDMCadPedido.cdsPedido_CupomNUM_END.AsString) = ''))  then
  begin
    MessageDlg('*** Não foi informado o Nº Endereço, Bairro, Cidade ou Cep!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadPedido.cdsPedido_CupomENDERECO.AsString) = '' then
  begin
    if fDMCadPedido.cdsPedido_Cupom.State in [dsEdit] then
    begin
      fDMCadPedido.cdsPedido_Cupom.Cancel;
      fDMCadPedido.cdsPedido_Cupom.Delete;
    end
    else
      fDMCadPedido.cdsPedido_Cupom.CancelUpdates;
    Close
  end
  else
  begin
    fDMCadPedido.cdsPedido_Cupom.Post;
    Close;
  end;
end;

procedure TfrmCadPedido_Cupom.DBMemo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key = #13) or (Key = #10)) then
    Key := ' ';
end;

end.


