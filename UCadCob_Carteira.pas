unit UCadCob_Carteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCob_Carteira,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask,
  NxCollection;

type
  TfrmCadCob_Carteira = class(TForm)
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
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
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
  private
    { Private declarations }
    fDMCadCob_Carteira: TDMCadCob_Carteira;

    ffrmCadUF: TfrmCadUF;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadCob_Carteira: TfrmCadCob_Carteira;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCob_Carteira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCob_Carteira.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCob_Carteira.cdsCob_Carteira.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCob_Carteira.prc_Excluir_Registro;
begin
  fDMCadCob_Carteira.prc_Excluir;
end;

procedure TfrmCadCob_Carteira.prc_Gravar_Registro;
begin
  fDMCadCob_Carteira.prc_Gravar;
  if fDMCadCob_Carteira.cdsCob_Carteira.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCob_Carteira.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCob_Carteira.prc_Inserir_Registro;
begin
  fDMCadCob_Carteira.prc_Inserir;

  if fDMCadCob_Carteira.cdsCob_Carteira.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCob_Carteira.FormShow(Sender: TObject);
begin
  fDMCadCob_Carteira := TDMCadCob_Carteira.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCob_Carteira);
end;

procedure TfrmCadCob_Carteira.prc_Consultar;
begin
  fDMCadCob_Carteira.cdsCob_Carteira.Close;
  fDMCadCob_Carteira.sdsCob_Carteira.CommandText := fDMCadCob_Carteira.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCob_Carteira.sdsCob_Carteira.CommandText := fDMCadCob_Carteira.sdsCob_Carteira.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if trim(RxDBLookupCombo1.Text) <> '' then
    fDMCadCob_Carteira.sdsCob_Carteira.CommandText := fDMCadCob_Carteira.sdsCob_Carteira.CommandText
                                                    + ' AND ID_BANCO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadCob_Carteira.cdsCob_Carteira.Open;
end;

procedure TfrmCadCob_Carteira.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCob_Carteira.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCob_Carteira.cdsCob_Carteira.State in [dsBrowse]) or not(fDMCadCob_Carteira.cdsCob_Carteira.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCob_Carteira.cdsCob_Carteira.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCob_Carteira.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCob_Carteira.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCob_Carteira.cdsCob_Carteira.IsEmpty) or not(fDMCadCob_Carteira.cdsCob_Carteira.Active) or (fDMCadCob_Carteira.cdsCob_CarteiraID.AsInteger < 1) then
    exit;

  fDMCadCob_Carteira.cdsCob_Carteira.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCob_Carteira.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCob_Carteira.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCob_Carteira);
end;

procedure TfrmCadCob_Carteira.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCob_Carteira.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCob_Carteira.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

end.
