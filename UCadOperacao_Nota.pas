unit UCadOperacao_Nota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, SMDBGrid, UDMCadOperacao_Nota,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, UCBase, RxLookup, Mask, Grids, DBGrids, NxCollection,
  RxDBComb;

type
  TfrmCadOperacao_Nota = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    UCControls1: TUCControls;
    pnlCadastro: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    dbchkMostraImpEdi: TDBCheckBox;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtOperacao_NotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadOperacao_Nota: TDMCadOperacao_Nota;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadOperacao_Nota: TfrmCadOperacao_Nota;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadOperacao_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOperacao_Nota.btnExcluirClick(Sender: TObject);
begin
  if fDMCadOperacao_Nota.cdsOperacao_Nota.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadOperacao_Nota.prc_Excluir_Registro;
begin
  fDMCadOperacao_Nota.prc_Excluir;
end;

procedure TfrmCadOperacao_Nota.prc_Gravar_Registro;
begin
  fDMCadOperacao_Nota.prc_Gravar;
  if fDMCadOperacao_Nota.cdsOperacao_Nota.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOperacao_Nota.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOperacao_Nota.prc_Inserir_Registro;
begin
  fDMCadOperacao_Nota.prc_Inserir;

  if fDMCadOperacao_Nota.cdsOperacao_Nota.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadOperacao_Nota.FormShow(Sender: TObject);
begin
  fDMCadOperacao_Nota := TDMCadOperacao_Nota.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOperacao_Nota);
  Label4.Visible  := (fDMCadOperacao_Nota.qParametrosCONTROLAR_SERIE_OPERACAO.AsString = 'S');
  DBEdit3.Visible := (fDMCadOperacao_Nota.qParametrosCONTROLAR_SERIE_OPERACAO.AsString = 'S');
end;

procedure TfrmCadOperacao_Nota.prc_Consultar;
begin
  fDMCadOperacao_Nota.cdsOperacao_Nota.IndexFieldNames := 'ID';
  fDMCadOperacao_Nota.cdsOperacao_Nota.Close;
  fDMCadOperacao_Nota.sdsOperacao_Nota.CommandText := fDMCadOperacao_Nota.ctCommand;
  if Trim(edtNome.Text) <> '' then
    fDMCadOperacao_Nota.sdsOperacao_Nota.CommandText := fDMCadOperacao_Nota.sdsOperacao_Nota.CommandText
                                    + ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadOperacao_Nota.cdsOperacao_Nota.Open;
end;

procedure TfrmCadOperacao_Nota.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadOperacao_Nota.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOperacao_Nota.cdsOperacao_Nota.State in [dsBrowse]) or not(fDMCadOperacao_Nota.cdsOperacao_Nota.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOperacao_Nota.cdsOperacao_Nota.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOperacao_Nota.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOperacao_Nota.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOperacao_Nota.cdsOperacao_Nota.IsEmpty) or not(fDMCadOperacao_Nota.cdsOperacao_Nota.Active) or (fDMCadOperacao_Nota.cdsOperacao_NotaID.AsInteger < 1) then
    exit;

  fDMCadOperacao_Nota.cdsOperacao_Nota.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadOperacao_Nota.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOperacao_Nota.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOperacao_Nota);
end;

procedure TfrmCadOperacao_Nota.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOperacao_Nota.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadOperacao_Nota.edtOperacao_NotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOperacao_Nota.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOperacao_Nota.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOperacao_Nota.cdsOperacao_Nota);
end;

procedure TfrmCadOperacao_Nota.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    edtNome.Clear;
end;

end.
