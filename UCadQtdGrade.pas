unit UCadQtdGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadQtdGrade,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, DBVGrids,
  NxCollection, RzPanel;

type
  TfrmCadQtdGrade = class(TForm)
    RZPageControl1: TRzPageControl;
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
    Label5: TLabel;
    Label7: TLabel;
    edtNome: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    VDBGrid1: TVDBGrid;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btnGerarTam: TNxButton;
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
    procedure edtNCMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RZPageControl1Change(Sender: TObject);
    procedure btnGerarTamClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadQtdGrade: TDMCadQtdGrade;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID : Integer);
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_QtdGrade;

  public
    { Public declarations }

  end;

var
  frmCadQtdGrade: TfrmCadQtdGrade;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadQtdGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadQtdGrade.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadQtdGrade.cdsQtdGrade_Consulta.Active) or (fDMCadQtdGrade.cdsQtdGrade_Consulta.IsEmpty) or (fDMCadQtdGrade.cdsQtdGrade_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_QtdGrade;

  if fDMCadQtdGrade.cdsQtdGrade.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadQtdGrade.prc_Excluir_Registro;
begin
  fDMCadQtdGrade.prc_Excluir;
end;

procedure TfrmCadQtdGrade.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadQtdGrade.cdsQtdGradeID.AsInteger;
  fDMCadQtdGrade.prc_Gravar;
  if fDMCadQtdGrade.cdsQtdGrade.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadQtdGrade.vMsgGrade, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  prc_Consultar(vIDAux);
end;

procedure TfrmCadQtdGrade.prc_Inserir_Registro;
begin
  fDMCadQtdGrade.prc_Inserir;

  if fDMCadQtdGrade.cdsQtdGrade.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadQtdGrade.FormShow(Sender: TObject);
begin
  fDMCadQtdGrade := TDMCadQtdGrade.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadQtdGrade);
end;

procedure TfrmCadQtdGrade.prc_Consultar(ID : Integer);
begin
  fDMCadQtdGrade.cdsQtdGrade_Consulta.Close;
  fDMCadQtdGrade.sdsQtdGrade_Consulta.CommandText := fDMCadQtdGrade.ctConsulta;
  if ID > 0 then
    fDMCadQtdGrade.sdsQtdGrade_Consulta.CommandText := fDMCadQtdGrade.sdsQtdGrade_Consulta.CommandText
                                    + ' WHERE Q.ID = ' + IntToStr(ID)
  else
  if Trim(edtNome.Text) <> '' then
    fDMCadQtdGrade.sdsQtdGrade_Consulta.CommandText := fDMCadQtdGrade.sdsQtdGrade_Consulta.CommandText
                                    + ' WHERE G.NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadQtdGrade.cdsQtdGrade_Consulta.Open;
end;

procedure TfrmCadQtdGrade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadQtdGrade.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadQtdGrade.cdsQtdGrade.State in [dsBrowse]) or not(fDMCadQtdGrade.cdsQtdGrade.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadQtdGrade.cdsQtdGrade.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadQtdGrade.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadQtdGrade.btnAlterarClick(Sender: TObject);
begin
  if not(fDMCadQtdGrade.cdsQtdGrade_Consulta.Active) or (fDMCadQtdGrade.cdsQtdGrade_Consulta.IsEmpty) or (fDMCadQtdGrade.cdsQtdGrade_ConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_QtdGrade;
  if fDMCadQtdGrade.cdsQtdGrade.IsEmpty then
    exit;

  fDMCadQtdGrade.cdsQtdGrade.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadQtdGrade.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadQtdGrade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadQtdGrade);
end;

procedure TfrmCadQtdGrade.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadQtdGrade.edtNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadQtdGrade.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadQtdGrade.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadQtdGrade.RZPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadQtdGrade.cdsQtdGrade.State in [dsEdit, dsInsert]) then
      prc_Posiciona_QtdGrade;
  end;
end;

procedure TfrmCadQtdGrade.prc_Posiciona_QtdGrade;
begin
  fDMCadQtdGrade.prc_Localizar(fDMCadQtdGrade.cdsQtdGrade_ConsultaID.AsInteger);
  fDMCadQtdGrade.cdsQtdGrade_Itens.Close;
  fDMCadQtdGrade.cdsQtdGrade_Itens.Open;
end;

procedure TfrmCadQtdGrade.btnGerarTamClick(Sender: TObject);
begin
  if not fDMCadQtdGrade.cdsQtdGrade_Itens.IsEmpty then
  begin
    MessageDlg('*** Já existe os tamanhos!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadQtdGrade.cdsQtdGradeID_GRADE.AsInteger <= 0 then
  begin
    MessageDlg('*** Grade não informada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadQtdGrade.qGrade_Tam.Close;
  fDMCadQtdGrade.qGrade_Tam.ParamByName('ID').AsInteger := fDMCadQtdGrade.cdsQtdGradeID_GRADE.AsInteger;
  fDMCadQtdGrade.qGrade_Tam.Open;
  while not fDMCadQtdGrade.qGrade_Tam.Eof do
  begin
    fDMCadQtdGrade.cdsQtdGrade_Itens.Insert;
    fDMCadQtdGrade.cdsQtdGrade_ItensID.AsInteger     := fDMCadQtdGrade.cdsQtdGradeID.AsInteger;
    fDMCadQtdGrade.cdsQtdGrade_ItensTAMANHO.AsString := fDMCadQtdGrade.qGrade_TamTAMANHO.AsString;
    fDMCadQtdGrade.cdsQtdGrade_ItensQTD.AsInteger    := 0;
    fDMCadQtdGrade.cdsQtdGrade.Post;
    fDMCadQtdGrade.qGrade_Tam.Next;
  end;
end;

end.
