unit UCadPrevisao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPrevisao,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, jpeg, NxCollection;

type
  TfrmCadPrevisao = class(TForm)
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
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    CheckBox1: TCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
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
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    fDMCadPrevisao: TDMCadPrevisao;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }
  end;

var
  frmCadPrevisao: TfrmCadPrevisao;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPrevisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPrevisao.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPrevisao.cdsPrevisao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPrevisao.prc_Excluir_Registro;
begin
  fDMCadPrevisao.prc_Excluir;
end;

procedure TfrmCadPrevisao.prc_Gravar_Registro;
begin
  fDMCadPrevisao.cdsPrevisaoNOME_CENTROCUSTO.AsString := RxDBLookupCombo1.Text;
  fDMCadPrevisao.cdsPrevisaoNOME_PESSOA.AsString      := RxDBLookupCombo2.Text;
  fDMCadPrevisao.prc_Gravar;
  if fDMCadPrevisao.cdsPrevisao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPrevisao.vMsgPrevisao, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPrevisao.prc_Inserir_Registro;
begin
  fDMCadPrevisao.prc_Inserir;

  if fDMCadPrevisao.cdsPrevisao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadPrevisao.FormShow(Sender: TObject);
begin
  fDMCadPrevisao := TDMCadPrevisao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPrevisao);
end;

procedure TfrmCadPrevisao.prc_Consultar;
begin
  fDMCadPrevisao.cdsPrevisao.Close;
  fDMCadPrevisao.sdsPrevisao.CommandText := fDMCadPrevisao.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPrevisao.sdsPrevisao.CommandText := fDMCadPrevisao.sdsPrevisao.CommandText
                                    + ' AND CC.DESCRICAO LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if Trim(Edit3.Text) <> '' then
    fDMCadPrevisao.sdsPrevisao.CommandText := fDMCadPrevisao.sdsPrevisao.CommandText
                                    + ' AND PES.NOME = ' + QuotedStr(Edit3.Text);
  fDMCadPrevisao.cdsPrevisao.Open;
end;

procedure TfrmCadPrevisao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPrevisao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPrevisao.cdsPrevisao.State in [dsBrowse]) or not(fDMCadPrevisao.cdsPrevisao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPrevisao.cdsPrevisao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPrevisao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPrevisao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPrevisao.cdsPrevisao.IsEmpty) or not(fDMCadPrevisao.cdsPrevisao.Active) or (fDMCadPrevisao.cdsPrevisaoID.AsInteger < 1) then
    exit;

  fDMCadPrevisao.cdsPrevisao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPrevisao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPrevisao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPrevisao);
end;

procedure TfrmCadPrevisao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPrevisao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPrevisao.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPrevisao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPrevisao.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  Edit3.Clear;
end;

procedure TfrmCadPrevisao.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPrevisao.cdsPessoa.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPrevisao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadPrevisao.cdsCentroCusto.IndexFieldNames := 'DESCRICAO';
end;

end.
