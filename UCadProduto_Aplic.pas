unit UCadProduto_Aplic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, RxDBComb, RXDBCtrl, UCadMarca, Mask;

type
  TfrmCadProduto_Aplic = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
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
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    function fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadProduto_Aplic: TfrmCadProduto_Aplic;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Aplic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProdutoAplicacao.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProdutoAplicacao.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Aplic.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

procedure TfrmCadProduto_Aplic.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vInserir: Boolean;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    vInserir := (fDMCadProduto.cdsProdutoAplicacao.State in [dsInsert]);
    fDMCadProduto.cdsProdutoAplicacao.Post;
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

function TfrmCadProduto_Aplic.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProdutoAplicacaoID_MARCA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Marca não informada!';
  if trim(fDMCadProduto.cdsProdutoAplicacaoAPLICACAO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Aplicação não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Aplic.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadProduto_Aplic.SpeedButton1Click(Sender: TObject);
begin
  frmCadMarca := TfrmCadMarca.Create(self);
  frmCadMarca.ShowModal;
  FreeAndNil(frmCadMarca);

  SpeedButton4Click(sender);
end;

procedure TfrmCadProduto_Aplic.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.Close;
  fDMCadProduto.cdsMarca.Open;
end;

procedure TfrmCadProduto_Aplic.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_Aplic.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.IndexFieldNames := 'NOME';
end;

end.
