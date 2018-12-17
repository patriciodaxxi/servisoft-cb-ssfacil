unit UCadPais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPais, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, Mask, DBCtrls, UCBase, NxCollection, rsDBUtils;

type
  TfrmCadPais = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Edit1: TEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPais: TDMCadPais;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }               
  end;

var
  frmCadPais: TfrmCadPais;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmCadPais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                                     
  Action := Cafree;
end;

procedure TfrmCadPais.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPais.cdsPais.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPais.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPais.prc_Excluir_Registro;
begin
  fDMCadPais.prc_Excluir;
end;

procedure TfrmCadPais.prc_Gravar_Registro;
begin
  fDMCadPais.prc_Gravar;
  if fDMCadPais.cdsPais.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPais.vMsgPais, mtError, [mbok], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPais.prc_Inserir_Registro;
begin
  fDMCadPais.prc_Inserir;

  if fDMCadPais.cdsPais.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadPais.FormShow(Sender: TObject);
begin
  fDMCadPais := TDMCadPais.Create(Self);
  
  oDBUtils.SetDataSourceProperties(Self, fDMCadPais);
end;

procedure TfrmCadPais.prc_Consultar;
begin
  fDMCadPais.cdsPais.Close;
  fDMCadPais.sdsPais.CommandText := fDMCadPais.ctCommand;
  if Trim(Edit1.Text) <> '' then
    fDMCadPais.sdsPais.CommandText := fDMCadPais.sdsPais.CommandText +
                                      ' WHERE NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  fDMCadPais.cdsPais.Open;
end;

procedure TfrmCadPais.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPais.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPais.cdsPais.State in [dsBrowse]) or not(fDMCadPais.cdsPais.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPais.cdsPais.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPais.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPais.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPais.cdsPais.IsEmpty) or not(fDMCadPais.cdsPais.Active) or (fDMCadPais.cdsPaisID.AsInteger < 1) then
    exit;

  fDMCadPais.cdsPais.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPais.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPais.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPais);
end;

procedure TfrmCadPais.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
