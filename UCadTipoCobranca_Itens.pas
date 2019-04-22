unit UCadTipoCobranca_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UDMCadTipoCobranca;

type
  TfrmCadTipoCobranca_Itens = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadTipoCobranca: TDMCadTipoCobranca;

  end;

var
  frmCadTipoCobranca_Itens: TfrmCadTipoCobranca_Itens;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadTipoCobranca_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadTipoCobranca.cdsTipoCobranca_Itens.State in [dsEdit,dsInsert] then
    fDMCadTipoCobranca.cdsTipoCobranca_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadTipoCobranca_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipoCobranca);
  if not fDMCadTipoCobranca.cdsTipoCobranca_Itens.Active then
    fDMCadTipoCobranca.cdsTipoCobranca_Itens.Open;
  fDMCadTipoCobranca.cdsCondPagto.Open;
end;

procedure TfrmCadTipoCobranca_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadTipoCobranca.cdsTipoCobranca_Itens.Post;
  except
    on E: exception do
    begin
      vFlagErro := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if not vFlagErro then
    Close;
end;

function TfrmCadTipoCobranca_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadTipoCobranca.cdsTipoCobranca_ItensID_CONDPAGTO.AsInteger = 0 then
    vMsgErro := vMsgErro + #13 + '*** Condição de pagamento não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadTipoCobranca_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadTipoCobranca_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

end.
