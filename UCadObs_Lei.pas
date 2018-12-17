unit UCadObs_Lei;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOBS_Lei,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, Mask,
  NxCollection;

type
  TfrmCadObs_Lei = class(TForm)
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
    Label4: TLabel;
    DBMemo1: TDBMemo;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadOBS_Lei: TDMCadOBS_Lei;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadObs_Lei: TfrmCadObs_Lei;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadObs_Lei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadObs_Lei.btnExcluirClick(Sender: TObject);
begin
  if fDMCadOBS_Lei.cdsOBS_Lei.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadObs_Lei.prc_Excluir_Registro;
begin
  fDMCadOBS_Lei.prc_Excluir;
end;

procedure TfrmCadObs_Lei.prc_Gravar_Registro;
begin
  fDMCadOBS_Lei.prc_Gravar;
  if fDMCadOBS_Lei.cdsOBS_Lei.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOBS_Lei.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadObs_Lei.prc_Inserir_Registro;
begin
  fDMCadOBS_Lei.prc_Inserir;

  if fDMCadOBS_Lei.cdsOBS_Lei.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadObs_Lei.FormShow(Sender: TObject);
begin
  fDMCadOBS_Lei := TDMCadOBS_Lei.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOBS_Lei);
end;

procedure TfrmCadObs_Lei.prc_Consultar;
begin
  fDMCadOBS_Lei.cdsOBS_Lei.Close;
  fDMCadOBS_Lei.sdsOBS_Lei.CommandText := fDMCadOBS_Lei.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadOBS_Lei.sdsOBS_Lei.CommandText := fDMCadOBS_Lei.sdsOBS_Lei.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadOBS_Lei.cdsOBS_Lei.Open;
end;

procedure TfrmCadObs_Lei.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadObs_Lei.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOBS_Lei.cdsOBS_Lei.State in [dsBrowse]) or not(fDMCadOBS_Lei.cdsOBS_Lei.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOBS_Lei.cdsOBS_Lei.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadObs_Lei.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadObs_Lei.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOBS_Lei.cdsOBS_Lei.IsEmpty) or not(fDMCadOBS_Lei.cdsOBS_Lei.Active) or (fDMCadOBS_Lei.cdsOBS_LeiID.AsInteger < 1) then
    exit;

  fDMCadOBS_Lei.cdsOBS_Lei.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadObs_Lei.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadObs_Lei.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOBS_Lei);
end;

procedure TfrmCadObs_Lei.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadObs_Lei.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadObs_Lei.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadObs_Lei.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOBS_Lei.cdsOBS_Lei.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
