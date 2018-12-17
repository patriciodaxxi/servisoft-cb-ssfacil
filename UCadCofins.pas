unit UCadCofins;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCofins,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, NxCollection;

type
  TfrmCadCofins = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    UCControls1: TUCControls;
    DBCheckBox1: TDBCheckBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
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
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCofins: TDMCadCofins;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadCofins: TfrmCadCofins;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCofins.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCofins.cdsTab_Cofins.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCofins.prc_Excluir_Registro;
begin
  fDMCadCofins.prc_Excluir;
end;

procedure TfrmCadCofins.prc_Gravar_Registro;
begin
  fDMCadCofins.prc_Gravar;
  if fDMCadCofins.cdsTab_Cofins.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCofins.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCofins.prc_Inserir_Registro;
begin
  fDMCadCofins.prc_Inserir;

  if fDMCadCofins.cdsTab_Cofins.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCofins.FormShow(Sender: TObject);
begin
  fDMCadCofins := TDMCadCofins.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCofins);
end;

procedure TfrmCadCofins.prc_Consultar;
begin
  fDMCadCofins.cdsTab_Cofins.Close;
  fDMCadCofins.sdsTab_Cofins.CommandText := fDMCadCofins.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadCofins.sdsTab_Cofins.CommandText := fDMCadCofins.sdsTab_Cofins.CommandText
                                    + ' AND CODIGO = ' + QuotedStr(Edit1.Text);
  fDMCadCofins.cdsTab_Cofins.Open;
end;

procedure TfrmCadCofins.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCofins.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCofins.cdsTab_Cofins.State in [dsBrowse]) or not(fDMCadCofins.cdsTab_Cofins.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCofins.cdsTab_Cofins.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCofins.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCofins.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCofins.cdsTab_Cofins.IsEmpty) or not(fDMCadCofins.cdsTab_Cofins.Active) or (fDMCadCofins.cdsTab_CofinsID.AsInteger < 1) then
    exit;

  fDMCadCofins.cdsTab_Cofins.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCofins.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCofins.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCofins);
end;

procedure TfrmCadCofins.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCofins.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCofins.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
