unit UCadGrupo_Pessoa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadGrupo_Pessoa, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr;

type
  TfrmCadGrupo_Pessoa = class(TForm)
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
    fDMCadGrupo_Pessoa: TDMCadGrupo_Pessoa;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadGrupo_Pessoa: TfrmCadGrupo_Pessoa;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadGrupo_Pessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadGrupo_Pessoa.btnExcluirClick(Sender: TObject);
begin
  if fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadGrupo_Pessoa.prc_Excluir_Registro;
begin
  fDMCadGrupo_Pessoa.prc_Excluir;
end;

procedure TfrmCadGrupo_Pessoa.prc_Gravar_Registro;
begin
  fDMCadGrupo_Pessoa.prc_Gravar;
  if fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadGrupo_Pessoa.vMsgGrupo_Pessoa, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrupo_Pessoa.prc_Inserir_Registro;
begin
  fDMCadGrupo_Pessoa.prc_Inserir;

  if fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadGrupo_Pessoa.FormShow(Sender: TObject);
begin
  fDMCadGrupo_Pessoa := TDMCadGrupo_Pessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadGrupo_Pessoa);
end;

procedure TfrmCadGrupo_Pessoa.prc_Consultar;
begin
  fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.Close;
  fDMCadGrupo_Pessoa.sdsGrupo_Pessoa.CommandText := fDMCadGrupo_Pessoa.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadGrupo_Pessoa.sdsGrupo_Pessoa.CommandText := fDMCadGrupo_Pessoa.sdsGrupo_Pessoa.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.Open;
end;

procedure TfrmCadGrupo_Pessoa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadGrupo_Pessoa.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.State in [dsBrowse]) or not(fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrupo_Pessoa.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadGrupo_Pessoa.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.IsEmpty) or not(fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.Active) or (fDMCadGrupo_Pessoa.cdsGrupo_PessoaID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadGrupo_Pessoa.cdsGrupo_Pessoa.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadGrupo_Pessoa.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadGrupo_Pessoa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadGrupo_Pessoa);
end;

procedure TfrmCadGrupo_Pessoa.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadGrupo_Pessoa.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadGrupo_Pessoa.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadGrupo_Pessoa.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadGrupo_Pessoa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadGrupo_Pessoa.cdsGrupo_Pessoa);
end;

end.
