unit UCadEnqIPI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadEnqIPI,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb,
  NxCollection;

type
  TfrmCadEnqIPI = class(TForm)
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
    Edit1: TEdit;
    Label3: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    RxDBComboBox12: TRxDBComboBox;
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
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadEnqIPI: TDMCadEnqIPI;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadEnqIPI: TfrmCadEnqIPI;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadEnqIPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadEnqIPI.btnExcluirClick(Sender: TObject);
begin
  if fDMCadEnqIPI.cdsTab_EnqIPI.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadEnqIPI.prc_Excluir_Registro;
begin
  fDMCadEnqIPI.prc_Excluir;
end;

procedure TfrmCadEnqIPI.prc_Gravar_Registro;
begin
  fDMCadEnqIPI.prc_Gravar;
  if fDMCadEnqIPI.cdsTab_EnqIPI.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadEnqIPI.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEnqIPI.prc_Inserir_Registro;
begin
  fDMCadEnqIPI.prc_Inserir;

  if fDMCadEnqIPI.cdsTab_EnqIPI.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadEnqIPI.FormShow(Sender: TObject);
begin
  fDMCadEnqIPI := TDMCadEnqIPI.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadEnqIPI);
end;

procedure TfrmCadEnqIPI.prc_Consultar;
begin
  fDMCadEnqIPI.cdsTab_EnqIPI.Close;
  fDMCadEnqIPI.sdsTab_EnqIPI.CommandText := fDMCadEnqIPI.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    fDMCadEnqIPI.sdsTab_EnqIPI.CommandText := fDMCadEnqIPI.sdsTab_EnqIPI.CommandText
                                    + ' AND CODIGO = ' + QuotedStr(Edit1.Text);
  fDMCadEnqIPI.cdsTab_EnqIPI.Open;
end;

procedure TfrmCadEnqIPI.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadEnqIPI.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadEnqIPI.cdsTab_EnqIPI.State in [dsBrowse]) or not(fDMCadEnqIPI.cdsTab_EnqIPI.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadEnqIPI.cdsTab_EnqIPI.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEnqIPI.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadEnqIPI.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadEnqIPI.cdsTab_EnqIPI.IsEmpty) or not(fDMCadEnqIPI.cdsTab_EnqIPI.Active) or (fDMCadEnqIPI.cdsTab_EnqIPIID.AsInteger < 1) then
    exit;

  fDMCadEnqIPI.cdsTab_EnqIPI.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadEnqIPI.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadEnqIPI.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadEnqIPI);
end;

procedure TfrmCadEnqIPI.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadEnqIPI.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadEnqIPI.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadEnqIPI.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
