unit UCadConfig_Email;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadConfig_Email, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, RzButton, Menus;

type
  TfrmCadConfig_Email = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
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
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdNomeRemetente: TDBEdit;
    edEmailRemetente: TDBEdit;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edSMTPCliente: TDBEdit;
    edSMTPUsuario: TDBEdit;
    edSMTPPorta: TDBEdit;
    edSMTPSenha: TDBEdit;
    ckBoxSSL: TDBCheckBox;
    GroupBox7: TGroupBox;
    ckBoxConfirmacao: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    UCControls1: TUCControls;
    pmConfigurar: TPopupMenu;
    miGmail: TMenuItem;
    miHotmail: TMenuItem;
    miIG: TMenuItem;
    miYahoo: TMenuItem;
    miYahooBR: TMenuItem;
    miUOL: TMenuItem;
    miBOL: TMenuItem;
    btnConfigurar: TRzMenuButton;
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
    procedure doConfigurarPadrao(Sender: TObject);
  private
    { Private declarations }
    fDMCadConfig_Email: TDMCadConfig_Email;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }            
  end;

var
  frmCadConfig_Email: TfrmCadConfig_Email;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadConfig_Email.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadConfig_Email.btnExcluirClick(Sender: TObject);
begin
  if fDMCadConfig_Email.cdsConfig_Email.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadConfig_Email.prc_Excluir_Registro;
begin
  fDMCadConfig_Email.prc_Excluir;
end;

procedure TfrmCadConfig_Email.prc_Gravar_Registro;
begin
  fDMCadConfig_Email.prc_Gravar;
  if fDMCadConfig_Email.cdsConfig_Email.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadConfig_Email.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadConfig_Email.prc_Inserir_Registro;
begin
  fDMCadConfig_Email.prc_Inserir;

  if fDMCadConfig_Email.cdsConfig_Email.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadConfig_Email.FormShow(Sender: TObject);
begin
  fDMCadConfig_Email := TDMCadConfig_Email.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadConfig_Email);
end;

procedure TfrmCadConfig_Email.prc_Consultar;
begin
  fDMCadConfig_Email.cdsConfig_Email.Close;
  fDMCadConfig_Email.sdsConfig_Email.CommandText := fDMCadConfig_Email.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadConfig_Email.sdsConfig_Email.CommandText := fDMCadConfig_Email.sdsConfig_Email.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadConfig_Email.cdsConfig_Email.Open;
end;

procedure TfrmCadConfig_Email.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadConfig_Email.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadConfig_Email.cdsConfig_Email.State in [dsBrowse]) or not(fDMCadConfig_Email.cdsConfig_Email.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadConfig_Email.cdsConfig_Email.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadConfig_Email.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadConfig_Email.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadConfig_Email.cdsConfig_Email.IsEmpty) or not(fDMCadConfig_Email.cdsConfig_Email.Active) or (fDMCadConfig_Email.cdsConfig_EmailID.AsInteger < 1) then
    exit;

  fDMCadConfig_Email.cdsConfig_Email.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadConfig_Email.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadConfig_Email.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadConfig_Email);
end;

procedure TfrmCadConfig_Email.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadConfig_Email.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadConfig_Email.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadConfig_Email.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadConfig_Email.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadConfig_Email.cdsConfig_Email.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadConfig_Email.cdsConfig_Email.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadConfig_Email.doConfigurarPadrao(Sender: TObject);
begin
  case TMenuItem(Sender).Tag of
    0: // Gmail
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.gmail.com';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 587;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '1';
      end;
    1: // Hotmail
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.live.com';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 587;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '1';
      end;
    2: // IG
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'usuario@ig.com.br';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 587;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '1';
      end;
    3: // Yahoo
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.yahoo.com';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 25;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '0';
      end;
    4: // Yahoo BR
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.mail.yahoo.com.br';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 25;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '0';
      end;
    5: // UOL
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.uol.com.br';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 25;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '1';
      end;
    6: // BOL
      begin
        fDMCadConfig_Email.cdsConfig_EmailSMTP_CLIENTE.AsString    := 'smtp.bol.com.br';
        fDMCadConfig_Email.cdsConfig_EmailSMTP_PORTA.AsInteger     := 25;
        fDMCadConfig_Email.cdsConfig_EmailSMTP_REQUER_SSL.AsString := '1';
      end;
  end;
end;

end.
