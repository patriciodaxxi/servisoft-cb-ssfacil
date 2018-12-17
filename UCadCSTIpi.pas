unit UCadCSTIpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCSTIpi,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb,
  NxCollection;

type
  TfrmCadCSTIpi = class(TForm)
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
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    UCControls1: TUCControls;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCSTIpi: TDMCadCSTIpi;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadCSTIpi: TfrmCadCSTIpi;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCSTIpi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadCSTIpi.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCSTIpi.cdsTab_CSTIpi.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCSTIpi.prc_Excluir_Registro;
begin
  fDMCadCSTIpi.prc_Excluir;
end;

procedure TfrmCadCSTIpi.prc_Gravar_Registro;
begin
  fDMCadCSTIpi.prc_Gravar;
  if fDMCadCSTIpi.cdsTab_CSTIpi.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCSTIpi.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCSTIpi.prc_Inserir_Registro;
begin
  fDMCadCSTIpi.prc_Inserir;

  if fDMCadCSTIpi.cdsTab_CSTIpi.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCSTIpi.FormShow(Sender: TObject);
begin
  fDMCadCSTIpi := TDMCadCSTIpi.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCSTIpi);
end;

procedure TfrmCadCSTIpi.prc_Consultar;
begin
  fDMCadCSTIpi.cdsTab_CSTIpi.Close;
  fDMCadCSTIpi.sdsTab_CSTIpi.CommandText := fDMCadCSTIpi.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadCSTIpi.sdsTab_CSTIpi.CommandText := fDMCadCSTIpi.sdsTab_CSTIpi.CommandText
                                    + ' AND COD_IPI = ' + QuotedStr(Edit1.Text);
  fDMCadCSTIpi.cdsTab_CSTIpi.Open;
end;

procedure TfrmCadCSTIpi.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCSTIpi.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCSTIpi.cdsTab_CSTIpi.State in [dsBrowse]) or not(fDMCadCSTIpi.cdsTab_CSTIpi.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCSTIpi.cdsTab_CSTIpi.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCSTIpi.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCSTIpi.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCSTIpi.cdsTab_CSTIpi.IsEmpty) or not(fDMCadCSTIpi.cdsTab_CSTIpi.Active) or (fDMCadCSTIpi.cdsTab_CSTIpiID.AsInteger < 1) then
    exit;

  fDMCadCSTIpi.cdsTab_CSTIpi.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCSTIpi.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCSTIpi.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCSTIpi);
end;

procedure TfrmCadCSTIpi.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCSTIpi.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadCSTIpi.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCSTIpi.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
