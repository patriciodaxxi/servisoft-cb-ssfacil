unit UCadCombinacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCombinacao, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr;

type
  TfrmCadCombinacao = class(TForm)
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
    btnAlterar_Nome: TNxButton;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAlterar_NomeClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCombinacao: TDMCadCombinacao;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
    vNome_Comb : String;

  end;

var
  frmCadCombinacao: TfrmCadCombinacao;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadCombinacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfrmCadCombinacao.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCombinacao.cdsCombinacao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCombinacao.prc_Excluir_Registro;
begin
  fDMCadCombinacao.prc_Excluir;
end;

procedure TfrmCadCombinacao.prc_Gravar_Registro;
begin
  fDMCadCombinacao.prc_Gravar;
  if fDMCadCombinacao.cdsCombinacao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCombinacao.vMsgCombinacao, mtError, [mbOk], 0);
    exit;
  end;
  if Tag = 1 then
  begin
    vCodCombinacao_Pos := fDMCadCombinacao.cdsCombinacaoID.AsInteger;
    Close;
  end
  else
  begin
    TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
    RzPageControl1.ActivePage := TS_Consulta;
    pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
    btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
    btnAlterar.Enabled        := not(btnAlterar.Enabled);
  end;
end;

procedure TfrmCadCombinacao.prc_Inserir_Registro;
begin
  fDMCadCombinacao.prc_Inserir;

  if fDMCadCombinacao.cdsCombinacao.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadCombinacao.cdsCombinacaoTIPO_REG.AsString := 'B';

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
  if (Tag = 1) and (trim(vNome_Comb) <> '') then
    fDMCadCombinacao.cdsCombinacaoNOME.AsString := vNome_Comb;
end;

procedure TfrmCadCombinacao.FormShow(Sender: TObject);
begin
  fDMCadCombinacao := TDMCadCombinacao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCombinacao);
  if Tag = 1 then
    btnInserirClick(Sender);
end;

procedure TfrmCadCombinacao.prc_Consultar;
begin
  fDMCadCombinacao.cdsCombinacao.Close;
  fDMCadCombinacao.sdsCombinacao.CommandText := fDMCadCombinacao.ctCommand + ' WHERE TIPO_REG = ' + QuotedStr('B');
  if Trim(Edit4.Text) <> '' then
    fDMCadCombinacao.sdsCombinacao.CommandText := fDMCadCombinacao.sdsCombinacao.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCombinacao.cdsCombinacao.Open;
end;

procedure TfrmCadCombinacao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCombinacao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCombinacao.cdsCombinacao.State in [dsBrowse]) or not(fDMCadCombinacao.cdsCombinacao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCombinacao.cdsCombinacao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCombinacao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCombinacao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCombinacao.cdsCombinacao.IsEmpty) or not(fDMCadCombinacao.cdsCombinacao.Active) or (fDMCadCombinacao.cdsCombinacaoID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadCombinacao.cdsCombinacao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCombinacao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCombinacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCombinacao);
end;

procedure TfrmCadCombinacao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCombinacao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCombinacao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCombinacao.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadCombinacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadCombinacao.cdsCombinacao);
end;

procedure TfrmCadCombinacao.btnAlterar_NomeClick(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(P.ID_COR) CONTADOR '
                     + ' FROM PRODUTO_COMB P '
                     + ' WHERE P.ID_COR_COMBINACAO = ' + IntToStr(fDMCadCombinacao.cdsCombinacaoID.AsInteger);
    sds.Open;

    if (sds.FieldByName('CONTADOR').AsInteger > 0) then
    begin
      MessageDlg('*** Essa combinação já esta sendo usada nos produtos/materiais!', mtInformation, [mbOk], 0);
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

end.
