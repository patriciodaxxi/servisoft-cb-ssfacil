unit UCadAtividade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadAtividade, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr;

type
  TfrmCadAtividade = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDMCadAtividade: TDMCadAtividade;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadAtividade: TfrmCadAtividade;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadAtividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadAtividade.btnExcluirClick(Sender: TObject);
begin
  if fDMCadAtividade.cdsAtividade.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadAtividade.prc_Excluir_Registro;
begin
  fDMCadAtividade.prc_Excluir;
end;

procedure TfrmCadAtividade.prc_Gravar_Registro;
begin
  fDMCadAtividade.prc_Gravar;
  if fDMCadAtividade.cdsAtividade.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAtividade.vMsgAtiv, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtividade.prc_Inserir_Registro;
begin
  fDMCadAtividade.prc_Inserir;

  if fDMCadAtividade.cdsAtividade.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadAtividade.FormShow(Sender: TObject);
begin
  fDMCadAtividade := TDMCadAtividade.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAtividade);
end;

procedure TfrmCadAtividade.prc_Consultar;
begin
  fDMCadAtividade.cdsAtividade.Close;
  fDMCadAtividade.sdsAtividade.CommandText := fDMCadAtividade.ctCommand + ' WHERE ((TIPO = ' + QuotedStr('A') + ')';
  if Trim(Edit4.Text) <> '' then
    fDMCadAtividade.sdsAtividade.CommandText := fDMCadAtividade.sdsAtividade.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadAtividade.cdsAtividade.Open;
end;

procedure TfrmCadAtividade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadAtividade.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadAtividade.cdsAtividade.State in [dsBrowse]) or not(fDMCadAtividade.cdsAtividade.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadAtividade.cdsAtividade.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtividade.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadAtividade.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAtividade.cdsAtividade.IsEmpty) or not(fDMCadAtividade.cdsAtividade.Active) or (fDMCadAtividade.cdsAtividadeID.AsInteger < 1) then
    exit;

  fDMCadAtividade.cdsAtividade.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadAtividade.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAtividade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadAtividade);
end;

procedure TfrmCadAtividade.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAtividade.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadAtividade.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadAtividade.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadAtividade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadAtividade.cdsAtividade);
end;

end.
