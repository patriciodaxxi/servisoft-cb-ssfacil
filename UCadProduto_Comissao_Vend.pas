unit UCadProduto_Comissao_Vend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  UDMCadProduto, StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl;

type
  TfrmCadProduto_Comissao_Vend = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadProduto_Comissao_Vend: TfrmCadProduto_Comissao_Vend;

implementation

uses
  rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadProduto_Comissao_Vend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comissao_Vend.State in [dsEdit, dsInsert] then
    fDMCadProduto.cdsProduto_Comissao_Vend.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Comissao_Vend.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  if not fDMCadProduto.cdsVendedor.Active then
    fDMCadProduto.cdsVendedor.Open;
end;

procedure TfrmCadProduto_Comissao_Vend.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin

  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadProduto.cdsProduto_Comissao_Vend.Post;
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

function TfrmCadProduto_Comissao_Vend.fnc_Erro: Boolean;
var
  vMsgErro: string;
begin
  Result := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_Comissao_VendID_VENDEDOR.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Vendedor não informado!';
  if StrToFloat(FormatFloat('0.00', fDMCadProduto.cdsProduto_Comissao_VendPERC_COMISSAO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** % Comissão não informada!';

  fDMCadProduto.cdsProduto_Comissao_Vend.Locate('ID_VENDEDOR',RxDBLookupCombo2.Value,([Locaseinsensitive]));
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Comissao_Vend.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadProduto_Comissao_Vend.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsVendedor.Close;
  fDMCadProduto.cdsVendedor.Open;
end;

procedure TfrmCadProduto_Comissao_Vend.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_Comissao_Vend.RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadProduto.cdsProduto_Comissao_VendID_VENDEDOR.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'V';
    frmSel_Pessoa.ShowModal;
    fDMCadProduto.cdsProduto_Comissao_VendID_VENDEDOR.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;

end.

