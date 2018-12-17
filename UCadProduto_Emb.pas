unit UCadProduto_Emb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, NxCollection;

type
  TfrmCadProduto_Emb = class(TForm)
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
    SpeedButton1: TSpeedButton;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
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
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    function  fnc_Erro: Boolean;

    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Emb: TfrmCadProduto_Emb;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UCadProduto, UAltProd;

{$R *.dfm}

procedure TfrmCadProduto_Emb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Emb.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Emb.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Emb.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
end;

function TfrmCadProduto_Emb.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_EmbID_MATERIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Embalagem não informada!';
  if (fDMCadProduto.cdsProduto_EmbTIPO_EMB.AsString <> 'C') and (fDMCadProduto.cdsProduto_EmbTIPO_EMB.AsString <> 'X') then
    vMsgErro := vMsgErro + #13 + '*** Tipo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Emb.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Emb.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    //if fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_EmbID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    //  fDMCadProduto.cdsProduto_CorNOME.AsString := fDMCadProduto.cdsCorNOME.AsString;
    fDMCadProduto.cdsProduto_Emb.Post;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Emb.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Emb);
end;

procedure TfrmCadProduto_Emb.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Emb.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Emb.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Emb.Cancel;
  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Emb.btnInserirClick(Sender: TObject);
begin
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  prc_Habilita;
  fDMCadProduto.prc_Inserir_ProdEmb;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_Emb.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  pnlDados.Enabled     := not(pnlDados.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Emb.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Emb.IsEmpty then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  fDMCadProduto.cdsProduto_Emb.Edit;
  prc_Habilita;
  DBEdit2.SetFocus;
end;

procedure TfrmCadProduto_Emb.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Emb.IsEmpty then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;
  if MessageDlg('Deseja excluir o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Emb.Delete;
end;

procedure TfrmCadProduto_Emb.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsMaterial.Close;
  fDMCadProduto.cdsMaterial.Open;
end;

procedure TfrmCadProduto_Emb.SpeedButton1Click(Sender: TObject);
var
  ffrmCadProduto: TfrmCadProduto;
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  if RxDBLookupCombo1.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo1.KeyValue;
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
  SpeedButton5Click(sender);
end;

end.
