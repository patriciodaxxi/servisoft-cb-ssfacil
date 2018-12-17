unit UCadCob_TipoCadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCob_TipoCadastro,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, RxDBComb, NxCollection;

type
  TfrmCadCob_TipoCadastro = class(TForm)
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
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label10: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label11: TLabel;
    RxDBComboBox4: TRxDBComboBox;
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
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCob_TipoCadastro: TDMCadCob_TipoCadastro;

    ffrmCadUF: TfrmCadUF;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadCob_TipoCadastro: TfrmCadCob_TipoCadastro;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCob_TipoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadCob_TipoCadastro.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCob_TipoCadastro.prc_Excluir_Registro;
begin
  fDMCadCob_TipoCadastro.prc_Excluir;
end;

procedure TfrmCadCob_TipoCadastro.prc_Gravar_Registro;
begin
  fDMCadCob_TipoCadastro.prc_Gravar;
  if fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCob_TipoCadastro.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCob_TipoCadastro.prc_Inserir_Registro;
begin
  fDMCadCob_TipoCadastro.prc_Inserir;

  if fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCob_TipoCadastro.FormShow(Sender: TObject);
begin
  fDMCadCob_TipoCadastro := TDMCadCob_TipoCadastro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCob_TipoCadastro);
end;

procedure TfrmCadCob_TipoCadastro.prc_Consultar;
var
  vComando: String;
begin
  fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Close;
  vComando := fDMCadCob_TipoCadastro.ctCommand + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND ID_BANCO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('OCO');
    1: vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('ESP');
    2: vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('INS');
  end;
  fDMCadCob_TipoCadastro.sdsCob_TipoCadastro.CommandText := vComando;
  fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Open;
end;

procedure TfrmCadCob_TipoCadastro.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCob_TipoCadastro.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.State in [dsBrowse]) or not(fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCob_TipoCadastro.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCob_TipoCadastro.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.IsEmpty) or not(fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Active) or (fDMCadCob_TipoCadastro.cdsCob_TipoCadastroID.AsInteger < 1) then
    exit;

  fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCob_TipoCadastro.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCob_TipoCadastro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCob_TipoCadastro);
end;

procedure TfrmCadCob_TipoCadastro.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCob_TipoCadastro.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCob_TipoCadastro.RxDBComboBox1Change(Sender: TObject);
begin
  Label9.Visible        := RxDBComboBox1.ItemIndex = 2;
  RxDBComboBox2.Visible := RxDBComboBox1.ItemIndex = 2;

  DBCheckBox2.Visible   := RxDBComboBox1.ItemIndex = 1;
  DBCheckBox3.Visible   := RxDBComboBox1.ItemIndex = 1;
end;

procedure TfrmCadCob_TipoCadastro.RxDBComboBox2Change(Sender: TObject);
begin
  Label10.Visible       := RxDBComboBox2.ItemIndex = 0;
  RxDBComboBox3.Visible := RxDBComboBox2.ItemIndex = 0;
  DBCheckBox1.Visible   := RxDBComboBox2.ItemIndex = 0;
end;

procedure TfrmCadCob_TipoCadastro.RzPageControl1Change(Sender: TObject);
begin
  if (RzPageControl1.ActivePage = TS_Cadastro) and (fDMCadCob_TipoCadastro.cdsCob_TipoCadastro.Active) then
  begin
    Label10.Visible       := RxDBComboBox2.ItemIndex = 0;
    RxDBComboBox3.Visible := RxDBComboBox2.ItemIndex = 0;
    DBCheckBox1.Visible   := RxDBComboBox2.ItemIndex = 0;
    DBCheckBox2.Visible   := RxDBComboBox1.ItemIndex = 1;
    DBCheckBox3.Visible   := RxDBComboBox1.ItemIndex = 1;
    RxDBComboBox1Change(Sender);
    RxDBComboBox2Change(Sender);
  end;
end;

procedure TfrmCadCob_TipoCadastro.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    RxDBLookupCombo1.SetFocus
  else
    RxDBLookupCombo1.ClearValue;
end;

end.
