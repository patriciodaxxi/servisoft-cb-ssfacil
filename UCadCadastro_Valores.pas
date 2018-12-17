unit UCadCadastro_Valores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCadastro_Valores,
  Mask, UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr, RxLookup;

type
  TfrmCadCadastro_Valores = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
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
    Label52: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
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
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadCadastro_Valores: TDMCadCadastro_Valores;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }
  end;

var
  frmCadCadastro_Valores: TfrmCadCadastro_Valores;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadCadastro_Valores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCadastro_Valores.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCadastro_Valores.cdsCadastro_Valores.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCadastro_Valores.prc_Excluir_Registro;
begin
  fDMCadCadastro_Valores.prc_Excluir;
end;

procedure TfrmCadCadastro_Valores.prc_Gravar_Registro;
begin
  fDMCadCadastro_Valores.prc_Gravar;
  if fDMCadCadastro_Valores.cdsCadastro_Valores.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCadastro_Valores.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCadastro_Valores.prc_Inserir_Registro;
begin
  fDMCadCadastro_Valores.prc_Inserir;

  if fDMCadCadastro_Valores.cdsCadastro_Valores.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadCadastro_Valores.FormShow(Sender: TObject);
begin
  fDMCadCadastro_Valores := TDMCadCadastro_Valores.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCadastro_Valores);
end;

procedure TfrmCadCadastro_Valores.prc_Consultar;
begin
  fDMCadCadastro_Valores.cdsCadastro_Valores.Close;
  fDMCadCadastro_Valores.sdsCadastro_Valores.CommandText := fDMCadCadastro_Valores.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCadastro_Valores.sdsCadastro_Valores.CommandText := fDMCadCadastro_Valores.sdsCadastro_Valores.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCadastro_Valores.cdsCadastro_Valores.Open;
end;

procedure TfrmCadCadastro_Valores.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCadastro_Valores.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCadastro_Valores.cdsCadastro_Valores.State in [dsBrowse]) or not(fDMCadCadastro_Valores.cdsCadastro_Valores.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCadastro_Valores.cdsCadastro_Valores.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCadastro_Valores.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCadastro_Valores.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCadastro_Valores.cdsCadastro_Valores.IsEmpty) or not(fDMCadCadastro_Valores.cdsCadastro_Valores.Active) or (fDMCadCadastro_Valores.cdsCadastro_ValoresID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadCadastro_Valores.cdsCadastro_Valores.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCadastro_Valores.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCadastro_Valores.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCadastro_Valores);
end;

procedure TfrmCadCadastro_Valores.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCadastro_Valores.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCadastro_Valores.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCadastro_Valores.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadCadastro_Valores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadCadastro_Valores.cdsCadastro_Valores);
end;

procedure TfrmCadCadastro_Valores.RxDBLookupCombo9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadCadastro_Valores.cdsCadastro_ValoresID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    fDMCadCadastro_Valores.cdsCadastro_ValoresID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmCadCadastro_Valores.SpeedButton4Click(Sender: TObject);
begin
  fDMCadCadastro_Valores.cdsContaOrcamento.Close;
  fDMCadCadastro_Valores.cdsContaOrcamento.Open;
end;

end.
