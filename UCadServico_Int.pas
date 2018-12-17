unit UCadServico_Int;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadServico_Int,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection;

type
  TfrmCadServico_Int = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label7: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
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
    procedure edtServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadServico_Int: TDMCadServico_Int;
    vItemServico : Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadServico_Int: TfrmCadServico_Int;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadServico_Int.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadServico_Int.btnExcluirClick(Sender: TObject);
begin
  if fDMCadServico_Int.cdsServico_Int.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadServico_Int.prc_Excluir_Registro;
begin
  fDMCadServico_Int.prc_Excluir;
end;

procedure TfrmCadServico_Int.prc_Gravar_Registro;
begin
  fDMCadServico_Int.prc_Gravar;
  if fDMCadServico_Int.cdsServico_Int.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadServico_Int.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadServico_Int.prc_Inserir_Registro;
begin
  fDMCadServico_Int.prc_Inserir;

  if fDMCadServico_Int.cdsServico_Int.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  DBEdit1.SetFocus;
end;

procedure TfrmCadServico_Int.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadServico_Int := TDMCadServico_Int.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadServico_Int);

  Label3.Visible           := (fDMCadServico_Int.qParametrosTIPO_COMISSAO_NFSE.AsString = 'I');
  RxDBLookupCombo1.Visible := (fDMCadServico_Int.qParametrosTIPO_COMISSAO_NFSE.AsString = 'I');
  Label4.Visible           := (fDMCadServico_Int.qParametrosTIPO_COMISSAO_NFSE.AsString = 'I');
  DBEdit2.Visible          := (fDMCadServico_Int.qParametrosTIPO_COMISSAO_NFSE.AsString = 'I');
  Label5.Visible           := (copy(fDMCadServico_Int.qParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'I');
  RxDBLookupCombo2.Visible := (copy(fDMCadServico_Int.qParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'I');
  if copy(fDMCadServico_Int.qParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) <> 'I' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
      if (SMDBGrid1.Columns[i].FieldName = 'CODIGO_NBS') then
        SMDBGrid1.Columns[i].Visible := False;
  end;
end;

procedure TfrmCadServico_Int.prc_Consultar;
begin
  fDMCadServico_Int.cdsServico_Int.Close;
  fDMCadServico_Int.sdsServico_Int.CommandText := fDMCadServico_Int.ctCommand + ' WHERE 0 = 0';
  if Trim(edtNome.Text) <> '' then
    fDMCadServico_Int.sdsServico_Int.CommandText := fDMCadServico_Int.sdsServico_Int.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadServico_Int.cdsServico_Int.Open;
end;

procedure TfrmCadServico_Int.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadServico_Int.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadServico_Int.cdsServico_Int.State in [dsBrowse]) or not(fDMCadServico_Int.cdsServico_Int.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadServico_Int.cdsServico_Int.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadServico_Int.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadServico_Int.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadServico_Int.cdsServico_Int.IsEmpty) or not(fDMCadServico_Int.cdsServico_Int.Active) or (fDMCadServico_Int.cdsServico_IntID.AsInteger < 1) then
    exit;

  fDMCadServico_Int.cdsServico_Int.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadServico_Int.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadServico_Int.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadServico_Int);
end;

procedure TfrmCadServico_Int.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadServico_Int.edtServicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadServico_Int.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadServico_Int.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadServico_Int.cdsServico_Int);
end;

procedure TfrmCadServico_Int.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadServico_Int.cdsServico_Int.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadServico_Int.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    edtNome.Clear;
end;

end.
