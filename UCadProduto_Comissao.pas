unit UCadProduto_Comissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl;

type
  TfrmCadProduto_Comissao = class(TForm)
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Comissao: TfrmCadProduto_Comissao;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadProduto_Comissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comissao.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Comissao.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Comissao.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  if not fDMCadProduto.cdsCliente.Active then
    fDMCadProduto.cdsCliente.Open;
end;

procedure TfrmCadProduto_Comissao.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  //if StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProduto_ComissaoPERC_COMISSAO.AsFloat)) <= 0 then
  //begin
  //  if MessageDlg('Confirma cliente sem comissão para este produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  //    exit;
  //end;

  vFlagErro := False;
  try
    fDMCadProduto.cdsProduto_Comissao.Post;
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

function TfrmCadProduto_Comissao.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_ComissaoID_CLIENTE.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informado!';
  if StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProduto_ComissaoPERC_COMISSAO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** % Comissão não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Comissao.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadProduto_Comissao.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsCliente.Close;
  fDMCadProduto.cdsCliente.Open;
end;

procedure TfrmCadProduto_Comissao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_Comissao.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadProduto.cdsProduto_ComissaoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadProduto.cdsProduto_ComissaoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;

end.
