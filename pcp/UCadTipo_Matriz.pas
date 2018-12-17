unit UCadTipo_Matriz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTipo_Matriz,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask,  jpeg, NxCollection;

type
  TfrmCadTipo_Matriz = class(TForm)
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
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
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
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadTipo_Matriz: TDMCadTipo_Matriz;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
  end;

var
  frmCadTipo_Matriz: TfrmCadTipo_Matriz;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadTipo_Matriz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTipo_Matriz.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTipo_Matriz.cdsTipo_Matriz.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTipo_Matriz.prc_Excluir_Registro;
begin
  fDMCadTipo_Matriz.prc_Excluir;
end;

procedure TfrmCadTipo_Matriz.prc_Gravar_Registro;
begin
  fDMCadTipo_Matriz.prc_Gravar;
  if fDMCadTipo_Matriz.cdsTipo_Matriz.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipo_Matriz.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipo_Matriz.prc_Inserir_Registro;
begin
  fDMCadTipo_Matriz.prc_Inserir;

  if fDMCadTipo_Matriz.cdsTipo_Matriz.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadTipo_Matriz.FormShow(Sender: TObject);
begin
  fDMCadTipo_Matriz := TDMCadTipo_Matriz.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipo_Matriz);
end;

procedure TfrmCadTipo_Matriz.prc_Consultar;
begin
  fDMCadTipo_Matriz.cdsTipo_Matriz.Close;
  fDMCadTipo_Matriz.sdsTipo_Matriz.CommandText := fDMCadTipo_Matriz.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadTipo_Matriz.sdsTipo_Matriz.CommandText := fDMCadTipo_Matriz.sdsTipo_Matriz.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadTipo_Matriz.cdsTipo_Matriz.Open;
end;

procedure TfrmCadTipo_Matriz.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipo_Matriz.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipo_Matriz.cdsTipo_Matriz.State in [dsBrowse]) or not(fDMCadTipo_Matriz.cdsTipo_Matriz.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipo_Matriz.cdsTipo_Matriz.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTipo_Matriz.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipo_Matriz.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipo_Matriz.cdsTipo_Matriz.IsEmpty) or not(fDMCadTipo_Matriz.cdsTipo_Matriz.Active) or (fDMCadTipo_Matriz.cdsTipo_MatrizID.AsInteger < 1) then
    exit;

  fDMCadTipo_Matriz.cdsTipo_Matriz.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTipo_Matriz.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipo_Matriz.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTipo_Matriz);
end;

procedure TfrmCadTipo_Matriz.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipo_Matriz.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTipo_Matriz.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadTipo_Matriz.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

end.
