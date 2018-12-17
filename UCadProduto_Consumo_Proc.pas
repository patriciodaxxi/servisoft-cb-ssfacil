unit UCadProduto_Consumo_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadUnidade;

type
  TfrmCadProduto_Consumo_Proc = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    ffrmCadUnidade: TfrmCadUnidade;
    function fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadProduto_Consumo_Proc: TfrmCadProduto_Consumo_Proc;

implementation

uses rsDBUtils, uUtilPadrao, UCadProcesso;

{$R *.dfm}

procedure TfrmCadProduto_Consumo_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Consumo_Proc.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Consumo_Proc.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Consumo_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.prc_Abrir_Processo;
end;

procedure TfrmCadProduto_Consumo_Proc.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
  vAux: String;
begin
  if (fDMCadProduto.cdsProduto_Consumo_Proc.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Consumo_Proc.Post;

  if not(fDMCadProduto.cdsProduto_Consumo_Proc.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Consumo_Proc.Edit;

  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    fDMCadProduto.cdsProduto_Consumo_Proc.Post;
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

function TfrmCadProduto_Consumo_Proc.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_Consumo_ProcID_PROCESSO.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Processo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Consumo_Proc.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Consumo_Proc.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;
  Close;
end;

procedure TfrmCadProduto_Consumo_Proc.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
end;

procedure TfrmCadProduto_Consumo_Proc.SpeedButton1Click(Sender: TObject);
begin
  frmCadProcesso := TfrmCadProcesso.Create(self);
  frmCadProcesso.ShowModal;
  FreeAndNil(frmCadProcesso);

  fDMCadProduto.cdsProcesso.Close;
  fDMCadProduto.cdsProcesso.Open;
end;

procedure TfrmCadProduto_Consumo_Proc.RxDBLookupCombo2Enter(
  Sender: TObject);
begin
  fDMCadProduto.cdsProcesso.IndexFieldNames := 'NOME';
end;

end.
