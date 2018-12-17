unit UCadFaixa_Simples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFaixa_Simples, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB,
  NxCollection;

type
  TfrmCadFaixa_Simples = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    Label3: TLabel;
    DBEdit2: TDBEdit;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDMCadFaixa_Simples: TDMCadFaixa_Simples;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadFaixa_Simples: TfrmCadFaixa_Simples;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadFaixa_Simples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFaixa_Simples.btnExcluirClick(Sender: TObject);
begin
  if fDMCadFaixa_Simples.cdsFaixa_Simples.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadFaixa_Simples.prc_Excluir_Registro;
begin
  fDMCadFaixa_Simples.prc_Excluir;
end;

procedure TfrmCadFaixa_Simples.prc_Gravar_Registro;
begin
  fDMCadFaixa_Simples.prc_Gravar;
  if fDMCadFaixa_Simples.cdsFaixa_Simples.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFaixa_Simples.vMsgFaixa_Simples, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadFaixa_Simples.prc_Inserir_Registro;
begin
  fDMCadFaixa_Simples.prc_Inserir;

  if fDMCadFaixa_Simples.cdsFaixa_Simples.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadFaixa_Simples.FormShow(Sender: TObject);
begin
  fDMCadFaixa_Simples := TDMCadFaixa_Simples.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFaixa_Simples);
end;

procedure TfrmCadFaixa_Simples.prc_Consultar;
begin
  fDMCadFaixa_Simples.cdsFaixa_Simples.Close;
  fDMCadFaixa_Simples.sdsFaixa_Simples.CommandText := fDMCadFaixa_Simples.ctCommand + ' WHERE 0 = 0 ';
  fDMCadFaixa_Simples.cdsFaixa_Simples.Open;
end;

procedure TfrmCadFaixa_Simples.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadFaixa_Simples.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFaixa_Simples.cdsFaixa_Simples.State in [dsBrowse]) or not(fDMCadFaixa_Simples.cdsFaixa_Simples.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFaixa_Simples.cdsFaixa_Simples.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadFaixa_Simples.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFaixa_Simples.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFaixa_Simples.cdsFaixa_Simples.IsEmpty) or not(fDMCadFaixa_Simples.cdsFaixa_Simples.Active) or (fDMCadFaixa_Simples.cdsFaixa_SimplesID.AsInteger < 1) then
    exit;

  fDMCadFaixa_Simples.cdsFaixa_Simples.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadFaixa_Simples.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFaixa_Simples.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFaixa_Simples);
end;

procedure TfrmCadFaixa_Simples.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadFaixa_Simples.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadFaixa_Simples.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadFaixa_Simples.cdsFaixa_Simples.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadFaixa_Simples.cdsFaixa_Simples.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

end.
