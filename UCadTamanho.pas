unit UCadTamanho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTamanho, Mask, 
  UCBase, StdCtrls, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection;

type
  TfrmCadTamanho = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
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
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadTamanho: TDMCadTamanho;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
  end;

var
  frmCadTamanho: TfrmCadTamanho;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadTamanho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTamanho.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTamanho.cdsTamanho.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTamanho.prc_Excluir_Registro;
begin
  fDMCadTamanho.prc_Excluir;
end;

procedure TfrmCadTamanho.prc_Gravar_Registro;
begin
  fDMCadTamanho.prc_Gravar;
  if fDMCadTamanho.cdsTamanho.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTamanho.vMsgTamanho, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTamanho.prc_Inserir_Registro;
begin
  fDMCadTamanho.prc_Inserir;

  if fDMCadTamanho.cdsTamanho.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadTamanho.FormShow(Sender: TObject);
begin
  fDMCadTamanho := TDMCadTamanho.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTamanho);
end;

procedure TfrmCadTamanho.prc_Consultar;
begin
  fDMCadTamanho.cdsTamanho.Close;
  fDMCadTamanho.sdsTamanho.CommandText := fDMCadTamanho.ctCommand;
  if Trim(Edit4.Text) <> '' then
    fDMCadTamanho.sdsTamanho.CommandText := fDMCadTamanho.sdsTamanho.CommandText + ' WHERE TAMANHO LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadTamanho.cdsTamanho.Open;
  fDMCadTamanho.cdsTamanho.IndexFieldNames := 'TAMANHO';
end;

procedure TfrmCadTamanho.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTamanho.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTamanho.cdsTamanho.State in [dsBrowse]) or not(fDMCadTamanho.cdsTamanho.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTamanho.cdsTamanho.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTamanho.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTamanho.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTamanho.cdsTamanho.IsEmpty) or not(fDMCadTamanho.cdsTamanho.Active) or (fDMCadTamanho.cdsTamanhoID.AsInteger < 1) then
    exit;

  fDMCadTamanho.cdsTamanho.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTamanho.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTamanho.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTamanho);
end;

procedure TfrmCadTamanho.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTamanho.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTamanho.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadTamanho.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadTamanho.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadTamanho.cdsTamanho.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
