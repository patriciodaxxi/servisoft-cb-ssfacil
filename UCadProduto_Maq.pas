unit UCadProduto_Maq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, NxCollection,
  UCadMaquina;

type
  TfrmCadProduto_Maq = class(TForm)
    Panel3: TPanel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    pnlDados: TPanel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadMaquina: TfrmCadMaquina;

    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Maq: TfrmCadProduto_Maq;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Maq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Maq.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Maq.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Maq.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnConfirmar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
end;

function TfrmCadProduto_Maq.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_MaqID_MAQUINA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Máquina não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Maq.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Maq.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    fDMCadProduto.cdsProduto_Maq.Post;
    Close;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Maq.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Maq);
end;

procedure TfrmCadProduto_Maq.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Maq.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Maq.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Maq.Cancel;
  Close;
end;

procedure TfrmCadProduto_Maq.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsMaquina.Close;
  fDMCadProduto.cdsMaquina.Open;
end;

procedure TfrmCadProduto_Maq.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadMaquina := TfrmCadMaquina.Create(self);
  ffrmCadMaquina.ShowModal;
  FreeAndNil(ffrmCadMaquina);
  SpeedButton5Click(Sender);
end;

end.
