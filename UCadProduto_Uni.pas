unit UCadProduto_Uni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBVGrids;

type
  TfrmCadProduto_Uni = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;
    procedure prc_Abrir_Conversor_Uni(Unidade: String);

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Uni: TfrmCadProduto_Uni;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Uni.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Uni.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Uni.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Uni.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  prc_Abrir_Conversor_Uni(fDMCadProduto.cdsProdutoUNIDADE.AsString);
end;

procedure TfrmCadProduto_Uni.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadProduto.cdsProduto_UniUNIDADE.AsString := fDMCadProduto.cdsProdutoUNIDADE.AsString;
    fDMCadProduto.cdsProduto_Uni.Post;
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

function TfrmCadProduto_Uni.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if trim(RxDBLookupCombo2.Text) = '' then
    vMsgErro := vMsgErro + #13 + '*** Não foi informada a unidade de medida!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Uni.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadProduto_Uni.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadProduto_Uni.prc_Abrir_Conversor_Uni(Unidade: String);
begin
  fDMCadProduto.cdsUnidade_Conv.Close;
  fDMCadProduto.sdsUnidade_Conv.ParamByName('UNIDADE').AsString := Unidade;
  fDMCadProduto.cdsUnidade_Conv.Open;
end;

end.
