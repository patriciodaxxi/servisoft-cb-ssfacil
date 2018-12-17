unit UCadBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadBanco, Mask,
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, Menus;

type
  TfrmCadBanco = class(TForm)
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
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
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
  private
    { Private declarations }
    fDMCadBanco: TDMCadBanco;
    xNossoNum: Int64;
    vNossoNumero: String;
    vNossoNumero_Montado: String;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }               
  end;

var
  frmCadBanco: TfrmCadBanco;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadBanco.btnExcluirClick(Sender: TObject);
begin
  if fDMCadBanco.cdsBanco.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadBanco.prc_Excluir_Registro;
begin
  fDMCadBanco.prc_Excluir;
end;

procedure TfrmCadBanco.prc_Gravar_Registro;
begin
  fDMCadBanco.prc_Gravar;
  if fDMCadBanco.cdsBanco.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadBanco.vMsgBanco, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadBanco.prc_Inserir_Registro;
begin
  fDMCadBanco.prc_Inserir;

  if fDMCadBanco.cdsBanco.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadBanco.FormShow(Sender: TObject);
begin
  fDMCadBanco := TDMCadBanco.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadBanco);
end;

procedure TfrmCadBanco.prc_Consultar;
begin
  fDMCadBanco.cdsBanco.Close;
  fDMCadBanco.sdsBanco.CommandText := fDMCadBanco.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadBanco.sdsBanco.CommandText := fDMCadBanco.sdsBanco.CommandText +
                                        ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadBanco.cdsBanco.Open;
end;

procedure TfrmCadBanco.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadBanco.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadBanco.cdsBanco.State in [dsBrowse]) or not(fDMCadBanco.cdsBanco.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    Exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMCadBanco.cdsBanco.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadBanco.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadBanco.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadBanco.cdsBanco.IsEmpty) or not(fDMCadBanco.cdsBanco.Active) or (fDMCadBanco.cdsBancoID.AsInteger < 1) then
    Exit;

  fDMCadBanco.cdsBanco.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadBanco.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadBanco.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadBanco);
end;

procedure TfrmCadBanco.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadBanco.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadBanco.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadBanco.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadBanco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadBanco.cdsBanco.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadBanco.cdsBanco.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

end.
