unit UCadFeriado_Fixo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFeriado_Fixo, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB,
  NxCollection;

type
  TfrmCadFeriado_Fixo = class(TForm)
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
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBEdit2: TDBEdit;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDMCadFeriado_Fixo: TDMCadFeriado_Fixo;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadFeriado_Fixo: TfrmCadFeriado_Fixo;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadFeriado_Fixo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFeriado_Fixo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadFeriado_Fixo.cdsFeriado_Fixo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadFeriado_Fixo.prc_Excluir_Registro;
begin
  fDMCadFeriado_Fixo.prc_Excluir;
end;

procedure TfrmCadFeriado_Fixo.prc_Gravar_Registro;
begin
  fDMCadFeriado_Fixo.prc_Gravar;
  if fDMCadFeriado_Fixo.cdsFeriado_Fixo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadFeriado_Fixo.vMsgFeriado_Fixo, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadFeriado_Fixo.prc_Inserir_Registro;
begin
  fDMCadFeriado_Fixo.prc_Inserir;

  if fDMCadFeriado_Fixo.cdsFeriado_Fixo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadFeriado_Fixo.FormShow(Sender: TObject);
begin
  fDMCadFeriado_Fixo := TDMCadFeriado_Fixo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFeriado_Fixo);
  btnConsultarClick(Sender);
end;

procedure TfrmCadFeriado_Fixo.prc_Consultar;
begin
  fDMCadFeriado_Fixo.cdsFeriado_Fixo.Close;
  fDMCadFeriado_Fixo.sdsFeriado_Fixo.CommandText := fDMCadFeriado_Fixo.ctCommand;
  fDMCadFeriado_Fixo.cdsFeriado_Fixo.Open;
  fDMCadFeriado_Fixo.cdsFeriado_Fixo.IndexFieldNames := 'MES;DIA';
end;

procedure TfrmCadFeriado_Fixo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadFeriado_Fixo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadFeriado_Fixo.cdsFeriado_Fixo.State in [dsBrowse]) or not(fDMCadFeriado_Fixo.cdsFeriado_Fixo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadFeriado_Fixo.cdsFeriado_Fixo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadFeriado_Fixo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadFeriado_Fixo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadFeriado_Fixo.cdsFeriado_Fixo.IsEmpty) or not(fDMCadFeriado_Fixo.cdsFeriado_Fixo.Active) or (fDMCadFeriado_Fixo.cdsFeriado_FixoID.AsInteger < 1) then
    exit;

  fDMCadFeriado_Fixo.cdsFeriado_Fixo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadFeriado_Fixo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadFeriado_Fixo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFeriado_Fixo);
end;

procedure TfrmCadFeriado_Fixo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadFeriado_Fixo.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadFeriado_Fixo.prc_Limpar_Edit_Consulta;
begin
end;

procedure TfrmCadFeriado_Fixo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadFeriado_Fixo.cdsFeriado_Fixo.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadFeriado_Fixo.cdsFeriado_Fixo.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

end.
