unit UCadProduto_Carimbo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, NxCollection,
  UCadPessoa;

type
  TfrmCadProduto_Carimbo = class(TForm)
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    pnlDados: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    DBEdit2: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadPessoa: TfrmCadPessoa;

    function  fnc_Erro: Boolean;

    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Carimbo: TfrmCadProduto_Carimbo;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadProduto_Carimbo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Carimbo.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Carimbo.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Carimbo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  Label4.Visible     := (fDMCadProduto.qParametros_PedUSA_CAIXINHA.AsString = 'S');
  DBEdit3.Visible    := (fDMCadProduto.qParametros_PedUSA_CAIXINHA.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'CAIXINHA') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_PedUSA_CAIXINHA.AsString = 'S');
  end;

end;

function TfrmCadProduto_Carimbo.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_CarimboID_CLIENTE.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informada!';
  if trim(fDMCadProduto.cdsProduto_CarimboCARIMBO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Carimbo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Carimbo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Carimbo.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    fDMCadProduto.cdsProduto_Carimbo.Post;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Carimbo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Carimbo);
end;

procedure TfrmCadProduto_Carimbo.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Carimbo.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Carimbo.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Carimbo.Cancel;
  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Carimbo.btnInserirClick(Sender: TObject);
begin
  prc_Habilita;
  fDMCadProduto.prc_Inserir_ProdCarimbo;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_Carimbo.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  pnlDados.Enabled     := not(pnlDados.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Carimbo.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Carimbo.IsEmpty then
    exit;
  fDMCadProduto.cdsProduto_Carimbo.Edit;
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadProduto_Carimbo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Carimbo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Carimbo.Delete;
end;

procedure TfrmCadProduto_Carimbo.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsCliente.Close;
  fDMCadProduto.cdsCliente.Open;
end;

procedure TfrmCadProduto_Carimbo.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);
  SpeedButton5Click(Sender);
end;

procedure TfrmCadProduto_Carimbo.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadProduto.cdsProduto_CarimboID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadProduto.cdsProduto_CarimboID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

end.
