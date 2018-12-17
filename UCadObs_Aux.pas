unit UCadObs_Aux;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadObs_Aux,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, Mask,
  NxCollection;

type
  TfrmCadObs_Aux = class(TForm)
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
    UCControls1: TUCControls;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    DBMemo2: TDBMemo;
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
    fDMCadObs_Aux: TDMCadObs_Aux;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadObs_Aux: TfrmCadObs_Aux;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadObs_Aux.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadObs_Aux.btnExcluirClick(Sender: TObject);
begin
  if fDMCadObs_Aux.cdsObs_Aux.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadObs_Aux.prc_Excluir_Registro;
begin
  fDMCadObs_Aux.prc_Excluir;
end;

procedure TfrmCadObs_Aux.prc_Gravar_Registro;
begin
  fDMCadObs_Aux.prc_Gravar;
  if fDMCadObs_Aux.cdsObs_Aux.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadObs_Aux.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadObs_Aux.prc_Inserir_Registro;
begin
  fDMCadObs_Aux.prc_Inserir;

  if fDMCadObs_Aux.cdsObs_Aux.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadObs_Aux.FormShow(Sender: TObject);
begin
  fDMCadObs_Aux := TDMCadObs_Aux.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadObs_Aux);
end;

procedure TfrmCadObs_Aux.prc_Consultar;
begin
  fDMCadObs_Aux.cdsObs_Aux.Close;
  fDMCadObs_Aux.sdsObs_Aux.CommandText := fDMCadObs_Aux.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadObs_Aux.sdsObs_Aux.CommandText := fDMCadObs_Aux.sdsObs_Aux.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadObs_Aux.cdsObs_Aux.Open;
end;

procedure TfrmCadObs_Aux.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadObs_Aux.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadObs_Aux.cdsObs_Aux.State in [dsBrowse]) or not(fDMCadObs_Aux.cdsObs_Aux.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadObs_Aux.cdsObs_Aux.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadObs_Aux.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadObs_Aux.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadObs_Aux.cdsObs_Aux.IsEmpty) or not(fDMCadObs_Aux.cdsObs_Aux.Active) or (fDMCadObs_Aux.cdsObs_AuxID.AsInteger < 1) then
    exit;

  fDMCadObs_Aux.cdsObs_Aux.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadObs_Aux.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadObs_Aux.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadObs_Aux);
end;

procedure TfrmCadObs_Aux.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadObs_Aux.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadObs_Aux.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadObs_Aux.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadObs_Aux.cdsObs_Aux.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
