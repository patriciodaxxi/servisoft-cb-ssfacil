unit UCadPis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPis,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, CurrEdit, UCBase, Mask, NxCollection;

type
  TfrmCadPis = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    UCControls1: TUCControls;
    DBCheckBox1: TDBCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
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
    fDMCadPis: TDMCadPis;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadPis: TfrmCadPis;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPis.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPis.cdsTab_Pis.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPis.prc_Excluir_Registro;
begin
  fDMCadPis.prc_Excluir;
end;

procedure TfrmCadPis.prc_Gravar_Registro;
begin
  fDMCadPis.prc_Gravar;
  if fDMCadPis.cdsTab_Pis.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPis.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPis.prc_Inserir_Registro;
begin
  fDMCadPis.prc_Inserir;

  if fDMCadPis.cdsTab_Pis.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadPis.FormShow(Sender: TObject);
begin
  fDMCadPis := TDMCadPis.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPis);
end;

procedure TfrmCadPis.prc_Consultar;
begin
  fDMCadPis.cdsTab_Pis.Close;
  fDMCadPis.sdsTab_Pis.CommandText := fDMCadPis.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadPis.sdsTab_Pis.CommandText := fDMCadPis.sdsTab_Pis.CommandText
                                    + ' AND CODIGO = ' + QuotedStr(Edit1.Text);
  fDMCadPis.cdsTab_Pis.Open;
end;

procedure TfrmCadPis.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPis.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPis.cdsTab_Pis.State in [dsBrowse]) or not(fDMCadPis.cdsTab_Pis.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPis.cdsTab_Pis.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPis.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPis.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPis.cdsTab_Pis.IsEmpty) or not(fDMCadPis.cdsTab_Pis.Active) or (fDMCadPis.cdsTab_PisID.AsInteger < 1) then
    exit;

  fDMCadPis.cdsTab_Pis.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPis.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPis.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPis);
end;

procedure TfrmCadPis.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPis.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
