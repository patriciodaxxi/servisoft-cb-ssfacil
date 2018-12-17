unit UCadTipo_Conta_Orc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, UDMCadTipo_Conta_Orc, UCBase,
  DB, StdCtrls, DBCtrls, Mask, ExtCtrls, DBGrids, RzTabs, SMDBGrid, NxCollection,
  RxDBComb;

type
  TfrmCadTipo_Conta_Orc = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    UCControls1: TUCControls;
    Label6: TLabel;
    edtNome: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnConsultar: TNxButton;
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
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadTipo_Conta_Orc: TDMCadTipo_Conta_Orc;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadTipo_Conta_Orc: TfrmCadTipo_Conta_Orc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadTipo_Conta_Orc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTipo_Conta_Orc.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTipo_Conta_Orc.prc_Excluir_Registro;
begin
  fDMCadTipo_Conta_Orc.prc_Excluir;
end;

procedure TfrmCadTipo_Conta_Orc.prc_Gravar_Registro;
begin
  fDMCadTipo_Conta_Orc.prc_Gravar;
  if fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipo_Conta_Orc.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipo_Conta_Orc.prc_Inserir_Registro;
begin
  fDMCadTipo_Conta_Orc.prc_Inserir;

  if fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadTipo_Conta_Orc.FormShow(Sender: TObject);
begin
  fDMCadTipo_Conta_Orc := TDMCadTipo_Conta_Orc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipo_Conta_Orc);
  btnConsultarClick(Sender);
end;

procedure TfrmCadTipo_Conta_Orc.prc_Consultar;
begin
  fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.Close;
  fDMCadTipo_Conta_Orc.sdsTipo_Conta_Orc.CommandText := fDMCadTipo_Conta_Orc.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(edtNome.Text) <> '' then
    fDMCadTipo_Conta_Orc.sdsTipo_Conta_Orc.CommandText := fDMCadTipo_Conta_Orc.sdsTipo_Conta_Orc.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.Open;
end;

procedure TfrmCadTipo_Conta_Orc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipo_Conta_Orc.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.State in [dsBrowse]) or not(fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipo_Conta_Orc.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipo_Conta_Orc.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.IsEmpty) or not(fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.Active) or
     (fDMCadTipo_Conta_Orc.cdsTipo_Conta_OrcID.AsInteger < 1) then
    exit;

  fDMCadTipo_Conta_Orc.cdsTipo_Conta_Orc.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTipo_Conta_Orc.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipo_Conta_Orc.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTipo_Conta_Orc);
end;

procedure TfrmCadTipo_Conta_Orc.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipo_Conta_Orc.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    edtNome.Clear;
end;

end.
