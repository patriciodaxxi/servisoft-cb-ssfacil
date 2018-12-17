unit UCadCSTIcms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCSTIcms,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, CurrEdit, RxDBComb,
  NxCollection;

type
  TfrmCadCSTIcms = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    UCControls1: TUCControls;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
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
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadCSTIcms: TDMCadCSTIcms;

    ffrmCadUF: TfrmCadUF;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadCSTIcms: TfrmCadCSTIcms;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCSTIcms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadCSTIcms.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCSTIcms.cdsTab_CSTIcms.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCSTIcms.prc_Excluir_Registro;
begin
  fDMCadCSTIcms.prc_Excluir;
end;

procedure TfrmCadCSTIcms.prc_Gravar_Registro;
begin
  fDMCadCSTIcms.prc_Gravar;
  if fDMCadCSTIcms.cdsTab_CSTIcms.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCSTIcms.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCSTIcms.prc_Inserir_Registro;
begin
  fDMCadCSTIcms.prc_Inserir;

  if fDMCadCSTIcms.cdsTab_CSTIcms.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCSTIcms.FormShow(Sender: TObject);
begin
  fDMCadCSTIcms := TDMCadCSTIcms.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCSTIcms);
  DBCheckBox1.Visible   := (fDMCadCSTIcms.qParametrosUSA_DESONERACAO.AsString = 'S');
  Label9.Visible        := (fDMCadCSTIcms.qParametrosUSA_DESONERACAO.AsString = 'S');
  RxDBLookupCombo1.Visible := (fDMCadCSTIcms.qParametrosUSA_DESONERACAO.AsString = 'S');
end;

procedure TfrmCadCSTIcms.prc_Consultar;
begin
  fDMCadCSTIcms.cdsTab_CSTIcms.Close;
  fDMCadCSTIcms.sdsTab_CSTIcms.CommandText := fDMCadCSTIcms.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadCSTIcms.sdsTab_CSTIcms.CommandText := fDMCadCSTIcms.sdsTab_CSTIcms.CommandText
                                    + ' AND COD_CST = ' + QuotedStr(Edit1.Text);
  case ComboBox1.ItemIndex of
    0: fDMCadCSTIcms.sdsTab_CSTIcms.CommandText := fDMCadCSTIcms.sdsTab_CSTIcms.CommandText + ' AND TIPO = ' + QuotedStr('N');
    1: fDMCadCSTIcms.sdsTab_CSTIcms.CommandText := fDMCadCSTIcms.sdsTab_CSTIcms.CommandText + ' AND TIPO = ' + QuotedStr('S');
  end;

  fDMCadCSTIcms.cdsTab_CSTIcms.Open;
end;

procedure TfrmCadCSTIcms.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCSTIcms.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCSTIcms.cdsTab_CSTIcms.State in [dsBrowse]) or not(fDMCadCSTIcms.cdsTab_CSTIcms.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCSTIcms.cdsTab_CSTIcms.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCSTIcms.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCSTIcms.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCSTIcms.cdsTab_CSTIcms.IsEmpty) or not(fDMCadCSTIcms.cdsTab_CSTIcms.Active) or (fDMCadCSTIcms.cdsTab_CSTIcmsID.AsInteger < 1) then
    exit;

  fDMCadCSTIcms.cdsTab_CSTIcms.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCSTIcms.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCSTIcms.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCSTIcms);
end;

procedure TfrmCadCSTIcms.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCSTIcms.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadCSTIcms.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCSTIcms.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

procedure TfrmCadCSTIcms.DBEdit1Exit(Sender: TObject);
begin
  if trim(DBEdit1.Text) <> '' then
    fDMCadCSTIcms.prc_Abrir_Desoneracao(trim(DBEdit1.Text));
end;

procedure TfrmCadCSTIcms.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
    fDMCadCSTIcms.prc_Abrir_Desoneracao(fDMCadCSTIcms.cdsTab_CSTIcmsCOD_CST.AsString);
end;

end.
