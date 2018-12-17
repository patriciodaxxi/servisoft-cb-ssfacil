unit UCadNFe_Email;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNFe_Email,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection;

type
  TfrmCadNFe_Email = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtEmail: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    UCControls1: TUCControls;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEmailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadNFe_Email: TDMCadNFe_Email;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    
  public
    { Public declarations }
  end;

var
  frmCadNFe_Email: TfrmCadNFe_Email;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadNFe_Email.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNFe_Email.btnExcluirClick(Sender: TObject);
begin
  if fDMCadNFe_Email.cdsNFe_Email.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadNFe_Email.prc_Excluir_Registro;
begin
  fDMCadNFe_Email.prc_Excluir;
end;

procedure TfrmCadNFe_Email.prc_Gravar_Registro;
begin
  fDMCadNFe_Email.prc_Gravar;
  if fDMCadNFe_Email.cdsNFe_Email.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNFe_Email.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadNFe_Email.prc_Inserir_Registro;
begin
  fDMCadNFe_Email.prc_Inserir;

  if fDMCadNFe_Email.cdsNFe_Email.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadNFe_Email.FormShow(Sender: TObject);
begin
  fDMCadNFe_Email := TDMCadNFe_Email.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNFe_Email);
end;

procedure TfrmCadNFe_Email.prc_Consultar;
begin
  fDMCadNFe_Email.cdsNFe_Email.IndexFieldNames := 'NOME';    
  fDMCadNFe_Email.cdsNFe_Email.Close;                   
  fDMCadNFe_Email.sdsNFe_Email.CommandText := fDMCadNFe_Email.ctCommand
                                            + ' WHERE 0 = 0 ';
  if Trim(edtNome.Text) <> '' then
    fDMCadNFe_Email.sdsNFe_Email.CommandText := fDMCadNFe_Email.sdsNFe_Email.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  if Trim(edtEmail.Text) <> '' then
    fDMCadNFe_Email.sdsNFe_Email.CommandText := fDMCadNFe_Email.sdsNFe_Email.CommandText
                                    + ' AND EMAIL LIKE ' + QuotedStr('%'+edtEmail.Text+'%');
  fDMCadNFe_Email.cdsNFe_Email.Open;
end;

procedure TfrmCadNFe_Email.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadNFe_Email.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNFe_Email.cdsNFe_Email.State in [dsBrowse]) or not(fDMCadNFe_Email.cdsNFe_Email.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNFe_Email.cdsNFe_Email.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadNFe_Email.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNFe_Email.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadNFe_Email.cdsNFe_Email.IsEmpty) or not(fDMCadNFe_Email.cdsNFe_Email.Active) or (fDMCadNFe_Email.cdsNFe_EmailID.AsInteger < 1) then
    exit;

  fDMCadNFe_Email.cdsNFe_Email.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadNFe_Email.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadNFe_Email.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNFe_Email);
end;

procedure TfrmCadNFe_Email.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadNFe_Email.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadNFe_Email.edtEmailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNFe_Email.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNFe_Email.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNFe_Email.cdsNFe_Email);
end;

procedure TfrmCadNFe_Email.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadNFe_Email.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
  edtEmail.Clear;
end;

end.
