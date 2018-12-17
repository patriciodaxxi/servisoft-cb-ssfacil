unit UCadAtelier_Fic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadAtelier_Fic, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr,
  RxLookup;

type
  TfrmCadAtelier_Fic = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
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
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    SpeedButton4: TSpeedButton;
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
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadAtelier_Fic: TDMCadAtelier_Fic;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
  end;

var
  frmCadAtelier_Fic: TfrmCadAtelier_Fic;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadAtelier_Fic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadAtelier_Fic.btnExcluirClick(Sender: TObject);
begin
  if fDMCadAtelier_Fic.cdsAtelier_Fic.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadAtelier_Fic.prc_Excluir_Registro;
begin
  fDMCadAtelier_Fic.prc_Excluir;
end;

procedure TfrmCadAtelier_Fic.prc_Gravar_Registro;
begin
  fDMCadAtelier_Fic.prc_Gravar;
  if fDMCadAtelier_Fic.cdsAtelier_Fic.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAtelier_Fic.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtelier_Fic.prc_Inserir_Registro;
begin
  fDMCadAtelier_Fic.prc_Inserir;

  if fDMCadAtelier_Fic.cdsAtelier_Fic.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadAtelier_Fic.FormShow(Sender: TObject);
begin
  fDMCadAtelier_Fic := TDMCadAtelier_Fic.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAtelier_Fic);
end;

procedure TfrmCadAtelier_Fic.prc_Consultar;
begin
  fDMCadAtelier_Fic.cdsAtelier_Fic.Close;
  fDMCadAtelier_Fic.sdsAtelier_Fic.CommandText := fDMCadAtelier_Fic.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadAtelier_Fic.sdsAtelier_Fic.CommandText := fDMCadAtelier_Fic.sdsAtelier_Fic.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadAtelier_Fic.cdsAtelier_Fic.Open;
end;

procedure TfrmCadAtelier_Fic.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadAtelier_Fic.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadAtelier_Fic.cdsAtelier_Fic.State in [dsBrowse]) or not(fDMCadAtelier_Fic.cdsAtelier_Fic.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadAtelier_Fic.cdsAtelier_Fic.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtelier_Fic.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadAtelier_Fic.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAtelier_Fic.cdsAtelier_Fic.IsEmpty) or not(fDMCadAtelier_Fic.cdsAtelier_Fic.Active) or (fDMCadAtelier_Fic.cdsAtelier_FicID.AsInteger < 1) then
    exit;

  fDMCadAtelier_Fic.cdsAtelier_Fic.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadAtelier_Fic.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAtelier_Fic.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadAtelier_Fic);
end;

procedure TfrmCadAtelier_Fic.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAtelier_Fic.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadAtelier_Fic.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadAtelier_Fic.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadAtelier_Fic.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadAtelier_Fic.cdsAtelier_Fic);
end;

procedure TfrmCadAtelier_Fic.SpeedButton4Click(Sender: TObject);
begin
  fDMCadAtelier_Fic.cdsPessoa.Close;
  fDMCadAtelier_Fic.cdsPessoa.Open;
end;

end.
