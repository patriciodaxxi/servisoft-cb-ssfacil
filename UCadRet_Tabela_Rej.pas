unit UCadRet_Tabela_Rej;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRet_Tabela_Rej,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, RxDBComb;

type
  TfrmCadRet_Tabela_Rej = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
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
  private
    { Private declarations }
    fDMCadRet_Tabela_Rej: TDMCadRet_Tabela_Rej;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadRet_Tabela_Rej: TfrmCadRet_Tabela_Rej;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadRet_Tabela_Rej.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadRet_Tabela_Rej.btnExcluirClick(Sender: TObject);
begin
  if fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadRet_Tabela_Rej.prc_Excluir_Registro;
begin
  fDMCadRet_Tabela_Rej.prc_Excluir;
end;

procedure TfrmCadRet_Tabela_Rej.prc_Gravar_Registro;
begin
  fDMCadRet_Tabela_Rej.prc_Gravar;
  if fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRet_Tabela_Rej.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRet_Tabela_Rej.prc_Inserir_Registro;
begin
  fDMCadRet_Tabela_Rej.prc_Inserir;

  if fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadRet_Tabela_Rej.FormShow(Sender: TObject);
begin
  fDMCadRet_Tabela_Rej := TDMCadRet_Tabela_Rej.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRet_Tabela_Rej);
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadRet_Tabela_Rej.prc_Consultar;
var
  vComando : String;
begin
  fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.Close;
  vComando := fDMCadRet_Tabela_Rej.ctCommand + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND ID_BANCO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadRet_Tabela_Rej.sdsRet_Tabela_Rej.CommandText := vComando;
  fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.Open;
end;

procedure TfrmCadRet_Tabela_Rej.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRet_Tabela_Rej.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.State in [dsBrowse]) or not(fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRet_Tabela_Rej.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRet_Tabela_Rej.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.IsEmpty) or not(fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.Active) or (fDMCadRet_Tabela_Rej.cdsRet_Tabela_RejID.AsInteger < 1) then
    exit;

  fDMCadRet_Tabela_Rej.cdsRet_Tabela_Rej.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadRet_Tabela_Rej.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRet_Tabela_Rej.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRet_Tabela_Rej);
end;

procedure TfrmCadRet_Tabela_Rej.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

end.
