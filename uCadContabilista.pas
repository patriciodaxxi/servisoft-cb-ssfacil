unit UCadContabilista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadContabilista,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, RXDBCtrl, RxDBComb,
  ExtDlgs, NxCollection;

type
  TfrmCadContabilista = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    RzPageControl2: TRzPageControl;
    TS_Dados: TRzTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
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
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadContabilista: TDMCadContabilista;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilitar_Campos;

  public
    { Public declarations }

  end;

var
  frmCadContabilista: TfrmCadContabilista;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadContabilista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContabilista.btnExcluirClick(Sender: TObject);
begin
  if fDMCadContabilista.cdsContabilista.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadContabilista.prc_Excluir_Registro;
begin
  fDMCadContabilista.prc_Excluir;
end;

procedure TfrmCadContabilista.prc_Gravar_Registro;
begin
  fDMCadContabilista.prc_Gravar;
  if fDMCadContabilista.cdsContabilista.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadContabilista.vMsgContabilista, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilitar_Campos;
end;

procedure TfrmCadContabilista.prc_Inserir_Registro;
begin
  fDMCadContabilista.prc_Inserir;
  if fDMCadContabilista.cdsContabilista.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  prc_Habilitar_Campos;
  DBEdit7.SetFocus;
end;

procedure TfrmCadContabilista.FormShow(Sender: TObject);
begin
  fDMCadContabilista := TDMCadContabilista.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContabilista);
  fDMCadContabilista.cdsContabilista.Open;
end;

procedure TfrmCadContabilista.prc_Consultar;
begin
  fDMCadContabilista.cdsContabilista.Close;
  fDMCadContabilista.sdsContabilista.CommandText := fDMCadContabilista.ctCommand;
  if Trim(Edit4.Text) <> '' then
    fDMCadContabilista.sdsContabilista.CommandText := fDMCadContabilista.sdsContabilista.CommandText +
                                          ' WHERE NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadContabilista.cdsContabilista.Open;
end;

procedure TfrmCadContabilista.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadContabilista.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadContabilista.cdsContabilista.State in [dsBrowse]) or not(fDMCadContabilista.cdsContabilista.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadContabilista.cdsContabilista.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilitar_Campos;
end;

procedure TfrmCadContabilista.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContabilista.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadContabilista.cdsContabilista.IsEmpty) or not(fDMCadContabilista.cdsContabilista.Active) or (fDMCadContabilista.cdsContabilistaID.AsInteger < 1) then
    Exit;
  fDMCadContabilista.cdsContabilista.Edit;
  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadContabilista.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadContabilista.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContabilista);
end;

procedure TfrmCadContabilista.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadContabilista.RxDBLookupCombo2Exit(Sender: TObject);
begin
  fdmCadContabilista.cdsContabilistaCIDADE.AsString := RxDBLookupCombo2.Text;
  fDMCadContabilista.cdsContabilistaUF.AsString     := fDMCadContabilista.cdsCidadeUF.AsString;
end;

procedure TfrmCadContabilista.DBEdit2Exit(Sender: TObject);
var
  vAux : String;
begin
  vAux := Monta_Numero(DBEdit2.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if not ValidaCNPJ(DBEdit2.Text) then
  begin
    ShowMessage('CNPJ incorreto!');
    fDMCadContabilista.cdsContabilistaCNPJ.Clear;
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmCadContabilista.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadContabilista.cdsContabilista);
end;

procedure TfrmCadContabilista.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContabilista.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if (not(fDMCadContabilista.cdsContabilista.Active) or (fDMCadContabilista.cdsContabilistaID.AsInteger <= 0)) then
      exit;
  end;
end;

procedure TfrmCadContabilista.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadContabilista.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadContabilista.DBEdit9Exit(Sender: TObject);
var
  vAux : String;
begin
  vAux := Monta_Numero(DBEdit9.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if not ValidaCPF(DBEdit9.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadContabilista.cdsContabilistaCPF.Clear;
    DBEdit9.SetFocus;
  end;
end;

procedure TfrmCadContabilista.prc_Habilitar_Campos;
begin
  TS_Dados.Enabled     := not(TS_Dados.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
end;

end.
