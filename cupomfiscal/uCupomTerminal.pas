unit uCupomTerminal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, uDmCupomTerminal,
  Mask, UCBase, StdCtrls, DB, NxCollection, DBCtrls, ExtCtrls, DBGrids, RzTabs;

type
  TfCupomTerminal = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
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
    fDMCupomTerminal: TDMCupomTerminal;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  fCupomTerminal: TfCupomTerminal;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfCupomTerminal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomTerminal.btnExcluirClick(Sender: TObject);
begin
  if fDmCupomTerminal.cdsCupomTerminal.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfCupomTerminal.prc_Excluir_Registro;
begin
  fDmCupomTerminal.prc_Excluir;
end;

procedure TfCupomTerminal.prc_Gravar_Registro;
begin
  fDmCupomTerminal.prc_Gravar;
  if fDmCupomTerminal.cdsCupomTerminal.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDmCupomTerminal.vMsgCupomTerminal, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfCupomTerminal.prc_Inserir_Registro;
begin
  fDmCupomTerminal.prc_Inserir;

  if fDmCupomTerminal.cdsCupomTerminal.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfCupomTerminal.FormShow(Sender: TObject);
begin
  fDmCupomTerminal := TDMCupomTerminal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCupomTerminal);
end;

procedure TfCupomTerminal.prc_Consultar;
begin
  fDmCupomTerminal.cdsCupomTerminal.Close;
  fDmCupomTerminal.sdsCupomTerminal.CommandText := fDmCupomTerminal.ctTerminal + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDmCupomTerminal.sdsCupomTerminal.CommandText := fDmCupomTerminal.sdsCupomTerminal.CommandText +
                                                     ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDmCupomTerminal.cdsCupomTerminal.Open;
end;

procedure TfCupomTerminal.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfCupomTerminal.btnCancelarClick(Sender: TObject);
begin
  if (fDmCupomTerminal.cdsCupomTerminal.State in [dsBrowse]) or not(fDmCupomTerminal.cdsCupomTerminal.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDmCupomTerminal.cdsCupomTerminal.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfCupomTerminal.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfCupomTerminal.btnAlterarClick(Sender: TObject);
begin
  if (fDmCupomTerminal.cdsCupomTerminal.IsEmpty) or not(fDmCupomTerminal.cdsCupomTerminal.Active) or
     (fDmCupomTerminal.cdsCupomTerminalID.AsInteger < 1) then
    exit;

  fDmCupomTerminal.cdsCupomTerminal.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfCupomTerminal.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfCupomTerminal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fCupomTerminal);
end;

procedure TfCupomTerminal.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfCupomTerminal.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfCupomTerminal.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfCupomTerminal.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfCupomTerminal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDmCupomTerminal.cdsCupomTerminal.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCupomTerminal.cdsCupomTerminal.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

end.
