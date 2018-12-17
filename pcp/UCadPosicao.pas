unit UCadPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPosicao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, NxCollection, RxDBComb, RzPanel;

type
  TfrmCadPosicao = class(TForm)
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
    gbxVendedor: TRzGroupBox;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    DBCheckBox2: TDBCheckBox;
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
    procedure DBCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadPosicao: TDMCadPosicao;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }            
  end;

var
  frmCadPosicao: TfrmCadPosicao;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPosicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPosicao.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPosicao.cdsPosicao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPosicao.prc_Excluir_Registro;
begin
  fDMCadPosicao.prc_Excluir;
end;

procedure TfrmCadPosicao.prc_Gravar_Registro;
begin
  fDMCadPosicao.prc_Gravar;
  if fDMCadPosicao.cdsPosicao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPosicao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPosicao.prc_Inserir_Registro;
begin
  fDMCadPosicao.prc_Inserir;

  if fDMCadPosicao.cdsPosicao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadPosicao.FormShow(Sender: TObject);
begin
  fDMCadPosicao := TDMCadPosicao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPosicao);
end;

procedure TfrmCadPosicao.prc_Consultar;
begin
  fDMCadPosicao.cdsPosicao.Close;
  fDMCadPosicao.sdsPosicao.CommandText := fDMCadPosicao.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPosicao.sdsPosicao.CommandText := fDMCadPosicao.sdsPosicao.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadPosicao.cdsPosicao.Open;
end;

procedure TfrmCadPosicao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPosicao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPosicao.cdsPosicao.State in [dsBrowse]) or not(fDMCadPosicao.cdsPosicao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPosicao.cdsPosicao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPosicao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPosicao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPosicao.cdsPosicao.IsEmpty) or not(fDMCadPosicao.cdsPosicao.Active) or (fDMCadPosicao.cdsPosicaoID.AsInteger < 1) then
    exit;

  fDMCadPosicao.cdsPosicao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPosicao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPosicao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPosicao);
end;

procedure TfrmCadPosicao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPosicao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPosicao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPosicao.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadPosicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPosicao.cdsPosicao);
end;

procedure TfrmCadPosicao.DBCheckBox1Click(Sender: TObject);
begin
  Label2.Visible        := (DBCheckBox1.Checked);
  Label3.Visible        := (DBCheckBox1.Checked);
  RxDBComboBox1.Visible := (DBCheckBox1.Checked);
  RxDBComboBox2.Visible := (DBCheckBox1.Checked);
end;

end.
