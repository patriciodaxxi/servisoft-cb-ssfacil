unit UCadCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCor, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr;

type
  TfrmCadCor = class(TForm)
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
    btnAlterar_Nome: TNxButton;
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
    procedure btnAlterar_NomeClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCor: TDMCadCor;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    function fnc_Excluir_Cor(ID: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  frmCadCor: TfrmCadCor;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCor.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCor.cdsCor.IsEmpty then
    exit;

  if not fnc_Excluir_Cor(fDMCadCor.cdsCorID.AsInteger) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCor.prc_Excluir_Registro;
begin
  fDMCadCor.prc_Excluir;
end;

procedure TfrmCadCor.prc_Gravar_Registro;
begin
  fDMCadCor.prc_Gravar;
  if fDMCadCor.cdsCor.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCor.vMsgCor, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCor.prc_Inserir_Registro;
begin
  fDMCadCor.prc_Inserir;

  if fDMCadCor.cdsCor.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadCor.FormShow(Sender: TObject);
begin
  fDMCadCor := TDMCadCor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCor);
end;

procedure TfrmCadCor.prc_Consultar;
begin
  fDMCadCor.cdsCor.Close;
  fDMCadCor.sdsCor.CommandText := fDMCadCor.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCor.sdsCor.CommandText := fDMCadCor.sdsCor.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCor.cdsCor.Open;
end;

procedure TfrmCadCor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCor.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCor.cdsCor.State in [dsBrowse]) or not(fDMCadCor.cdsCor.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCor.cdsCor.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCor.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCor.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCor.cdsCor.IsEmpty) or not(fDMCadCor.cdsCor.Active) or (fDMCadCor.cdsCorID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadCor.cdsCor.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCor.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCor);
end;

procedure TfrmCadCor.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCor.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCor.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCor.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadCor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadCor.cdsCor);
end;

procedure TfrmCadCor.btnAlterar_NomeClick(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR  FROM PRODUTO_COMB P '
                     + ' WHERE P.ID_COR_COMBINACAO = (SELECT C.ID FROM COMBINACAO C WHERE C.ID_COR = ' + IntToStr(fDMCadCor.cdsCorID.AsInteger) + ')';
    sds.Open;
    if (sds.FieldByName('CONTADOR').AsInteger > 0) then
    begin
      MessageDlg('*** Essa cor já esta sendo usada nas cores dos produtos/materiais!', mtInformation, [mbOk], 0);
      DBEdit2.ReadOnly := True;
    end
    else
    begin
      DBEdit2.ReadOnly := False;
      DBEdit2.SetFocus;
    end;
    sds.Close;

  except
    on e: Exception do
      begin
        raise Exception.Create(e.Message);
      end;
  end;
  FreeAndNil(sds);
end;

function TfrmCadCor.fnc_Excluir_Cor(ID: Integer): Boolean;
var
  sds: TSQLDataSet;
  vID_CombAux: Integer;
begin
  vID_CombAux := 0;
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'select ID from combinacao c '
                     + ' where c.id_cor = :ID_COR ';
    sds.ParamByName('ID_COR').AsInteger := ID;
    sds.Open;

    vID_CombAux := sds.FieldByName('ID').AsInteger;

    sds.Close;
    sds.CommandText := 'select pc.id from produto_comb pc '
                     + ' where pc.ID_COR_COMBINACAO = :ID_COR_COMBINACAO ';
    sds.ParamByName('ID_COR_COMBINACAO').AsInteger := vID_CombAux;
    sds.Open;

    vID_CombAux := sds.FieldByName('ID').AsInteger; 

    if sds.IsEmpty then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(sds);
  end;
  if not Result then
    MessageDlg('*** Cor está lançada no produto ID: ' + IntToStr(vID_CombAux), mtInformation, [mbOk], 0);
end;

end.
