unit UCadProduto_Matriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadMatriz_Preco;

type
  TfrmCadProduto_Matriz = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadMatriz_Preco: TfrmCadMatriz_Preco;
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Matriz: TfrmCadProduto_Matriz;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Matriz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Matriz.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Matriz.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Matriz.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

procedure TfrmCadProduto_Matriz.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadProduto.cdsProduto_Matriz.Post;
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

function TfrmCadProduto_Matriz.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_MatrizID_MATRIZ_PRECO.AsFloat <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Descrição não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Matriz.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadProduto_Matriz.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadMatriz_Preco := TfrmCadMatriz_Preco.Create(self);
  ffrmCadMatriz_Preco.ShowModal;
  FreeAndNil(ffrmCadMatriz_Preco);

  SpeedButton4Click(sender);
end;

procedure TfrmCadProduto_Matriz.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMatriz_Preco.Close;
  fDMCadProduto.cdsMatriz_Preco.Open;
end;

procedure TfrmCadProduto_Matriz.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

end.
