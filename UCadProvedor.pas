unit UCadProvedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProvedor,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb,
  NxCollection;

type
  TfrmCadProvedor = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    UCControls1: TUCControls;
    Label21: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label7: TLabel;
    Label9: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label10: TLabel;
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
    procedure edtProvedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadProvedor: TDMCadProvedor;
    vItemProvedor : Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadProvedor: TfrmCadProvedor;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProvedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProvedor.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProvedor.cdsProvedor.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadProvedor.prc_Excluir_Registro;
begin
  fDMCadProvedor.prc_Excluir;
end;

procedure TfrmCadProvedor.prc_Gravar_Registro;
begin
  fDMCadProvedor.prc_Gravar;
  if fDMCadProvedor.cdsProvedor.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadProvedor.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProvedor.prc_Inserir_Registro;
begin
  fDMCadProvedor.prc_Inserir;

  if fDMCadProvedor.cdsProvedor.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  DBEdit1.SetFocus;
end;

procedure TfrmCadProvedor.FormShow(Sender: TObject);
begin
  fDMCadProvedor := TDMCadProvedor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProvedor);
end;

procedure TfrmCadProvedor.prc_Consultar;
begin
  fDMCadProvedor.cdsProvedor.IndexFieldNames := 'NOME';
  fDMCadProvedor.cdsProvedor.Close;                                     
  fDMCadProvedor.sdsProvedor.CommandText := fDMCadProvedor.ctCommand + ' WHERE 0 = 0';
  if Trim(edtNome.Text) <> '' then
    fDMCadProvedor.sdsProvedor.CommandText := fDMCadProvedor.sdsProvedor.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadProvedor.cdsProvedor.Open;
end;

procedure TfrmCadProvedor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProvedor.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProvedor.cdsProvedor.State in [dsBrowse]) or not(fDMCadProvedor.cdsProvedor.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProvedor.cdsProvedor.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProvedor.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProvedor.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProvedor.cdsProvedor.IsEmpty) or not(fDMCadProvedor.cdsProvedor.Active) or (fDMCadProvedor.cdsProvedorID.AsInteger < 1) then
    exit;

  fDMCadProvedor.cdsProvedor.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadProvedor.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProvedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProvedor);
end;

procedure TfrmCadProvedor.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProvedor.edtProvedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProvedor.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProvedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProvedor.cdsProvedor);
end;

procedure TfrmCadProvedor.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProvedor.cdsProvedor.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadProvedor.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    edtNome.Clear;
end;

end.
