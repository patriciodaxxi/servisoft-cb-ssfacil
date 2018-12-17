unit UCadOrigem_Prod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOrigem_Prod,
  DBGrids, DB, RzTabs, DBCtrls, Mask, UCBase, StdCtrls, ExtCtrls, NxCollection;

type
  TfrmCadOrigem_Prod = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    UCControls1: TUCControls;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
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
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadOrigem_Prod: TDMCadOrigem_Prod;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadOrigem_Prod: TfrmCadOrigem_Prod;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadOrigem_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrigem_Prod.btnExcluirClick(Sender: TObject);
begin
  if fDMCadOrigem_Prod.cdsOrigem_Prod.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadOrigem_Prod.prc_Excluir_Registro;
begin
  fDMCadOrigem_Prod.prc_Excluir;
end;

procedure TfrmCadOrigem_Prod.prc_Gravar_Registro;
begin
  fDMCadOrigem_Prod.prc_Gravar;
  if fDMCadOrigem_Prod.cdsOrigem_Prod.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrigem_Prod.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOrigem_Prod.prc_Inserir_Registro;
begin
  fDMCadOrigem_Prod.prc_Inserir;

  if fDMCadOrigem_Prod.cdsOrigem_Prod.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadOrigem_Prod.FormShow(Sender: TObject);
begin
  fDMCadOrigem_Prod := TDMCadOrigem_Prod.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrigem_Prod);
  btnConsultarClick(Sender);
end;

procedure TfrmCadOrigem_Prod.prc_Consultar;
begin
  fDMCadOrigem_Prod.cdsOrigem_Prod.Close;
  fDMCadOrigem_Prod.sdsOrigem_Prod.CommandText := fDMCadOrigem_Prod.ctCommand
                                      + ' WHERE 0 = 0 ';
  fDMCadOrigem_Prod.cdsOrigem_Prod.Open;
end;

procedure TfrmCadOrigem_Prod.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadOrigem_Prod.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOrigem_Prod.cdsOrigem_Prod.State in [dsBrowse]) or not(fDMCadOrigem_Prod.cdsOrigem_Prod.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrigem_Prod.cdsOrigem_Prod.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOrigem_Prod.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOrigem_Prod.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOrigem_Prod.cdsOrigem_Prod.IsEmpty) or not(fDMCadOrigem_Prod.cdsOrigem_Prod.Active) then
    exit;

  fDMCadOrigem_Prod.cdsOrigem_Prod.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadOrigem_Prod.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOrigem_Prod.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrigem_Prod);
end;

procedure TfrmCadOrigem_Prod.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOrigem_Prod.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOrigem_Prod.cdsOrigem_Prod.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadOrigem_Prod.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

end.
