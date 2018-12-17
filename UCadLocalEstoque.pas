unit UCadLocalEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadLocal_Estoque,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl, NxCollection;

type
  TfrmCadLocalEstoque = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    RxDBComboBox1: TRxDBComboBox;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    ckInativo: TCheckBox;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadLocal_Estoque: TDMCadLocal_Estoque;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadLocalEstoque: TfrmCadLocalEstoque;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadLocalEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadLocalEstoque.btnExcluirClick(Sender: TObject);
begin
  if fDMCadLocal_Estoque.cdsLocal_Estoque.IsEmpty then
    exit;
  if fDMCadLocal_Estoque.cdsLocal_EstoqueID.AsInteger = 1 then
  begin
    MessageDlg('*** Local ID 1 não pode ser excluído!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadLocal_Estoque.cdsLocal_EstoquePRINCIPAL.AsString = 'S' then
  begin
    MessageDlg('*** Local principal não pode ser excluído!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadLocalEstoque.prc_Excluir_Registro;
begin
  fDMCadLocal_Estoque.prc_Excluir;
end;

procedure TfrmCadLocalEstoque.prc_Gravar_Registro;
begin
  fDMCadLocal_Estoque.cdsLocal_EstoqueCIDADE.AsString := RxDBLookupCombo2.Text;
  fDMCadLocal_Estoque.prc_Gravar;
  if fDMCadLocal_Estoque.cdsLocal_Estoque.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadLocal_Estoque.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadLocalEstoque.prc_Inserir_Registro;
begin
  fDMCadLocal_Estoque.prc_Inserir;

  if fDMCadLocal_Estoque.cdsLocal_Estoque.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadLocalEstoque.FormShow(Sender: TObject);
begin
  fDMCadLocal_Estoque := TDMCadLocal_Estoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadLocal_Estoque);
end;

procedure TfrmCadLocalEstoque.prc_Consultar;
var
  vCommando: String;
begin
  fDMCadLocal_Estoque.cdsLocal_Estoque.Close;
  vCommando := fDMCadLocal_Estoque.ctCommand + ' WHERE 0 = 0';
  if Trim(Edit1.Text) <> '' then
    vCommando := vCommando + ' AND (LOC.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
  if not ckInativo.Checked then
    vCommando := vCommando + ' AND LOC.INATIVO = ' + QuotedStr('N');
  fDMCadLocal_Estoque.sdsLocal_Estoque.CommandText := vCommando;
  fDMCadLocal_Estoque.cdsLocal_Estoque.Open;
end;

procedure TfrmCadLocalEstoque.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadLocalEstoque.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadLocal_Estoque.cdsLocal_Estoque.State in [dsBrowse]) or not(fDMCadLocal_Estoque.cdsLocal_Estoque.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadLocal_Estoque.cdsLocal_Estoque.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadLocalEstoque.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadLocalEstoque.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadLocal_Estoque.cdsLocal_Estoque.IsEmpty) or not(fDMCadLocal_Estoque.cdsLocal_Estoque.Active) or (fDMCadLocal_Estoque.cdsLocal_EstoqueID.AsInteger < 1) then
    exit;

  fDMCadLocal_Estoque.cdsLocal_Estoque.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadLocalEstoque.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadLocalEstoque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadLocal_Estoque);
end;

procedure TfrmCadLocalEstoque.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadLocalEstoque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadLocal_Estoque.cdsLocal_Estoque);
end;

procedure TfrmCadLocalEstoque.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadLocal_Estoque.cdsLocal_Estoque.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadLocalEstoque.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    fDMCadLocal_Estoque.cdsLocal_EstoqueUF.AsString := fDMCadLocal_Estoque.cdsCidadeUF.AsString;
end;

procedure TfrmCadLocalEstoque.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
