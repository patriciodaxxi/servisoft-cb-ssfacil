unit UCadRegime_Trib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRegime_Trib,
  DB, UCBase, StdCtrls, Mask, DBCtrls, ExtCtrls, DBGrids, RzTabs, RxDBComb, NxCollection;

type
  TfrmCadRegime_Trib = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    pnlPesquisa: TPanel;
    btnConsultar: TNxButton;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
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
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadRegime_Trib: TDMCadRegime_Trib;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadRegime_Trib: TfrmCadRegime_Trib;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadRegime_Trib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin 
  Action := Cafree;
end;

procedure TfrmCadRegime_Trib.btnExcluirClick(Sender: TObject);
begin
  if fDMCadRegime_Trib.cdsRegime_Trib.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadRegime_Trib.prc_Excluir_Registro;
begin
  fDMCadRegime_Trib.prc_Excluir;
end;

procedure TfrmCadRegime_Trib.prc_Gravar_Registro;
begin
  fDMCadRegime_Trib.prc_Gravar;
  if fDMCadRegime_Trib.cdsRegime_Trib.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRegime_Trib.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRegime_Trib.prc_Inserir_Registro;
begin
  fDMCadRegime_Trib.prc_Inserir;

  if fDMCadRegime_Trib.cdsRegime_Trib.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadRegime_Trib.FormShow(Sender: TObject);
begin
  fDMCadRegime_Trib := TDMCadRegime_Trib.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegime_Trib);
  btnConsultarClick(Sender);
end;

procedure TfrmCadRegime_Trib.prc_Consultar;
begin
  fDMCadRegime_Trib.cdsRegime_Trib.Close;
  fDMCadRegime_Trib.sdsRegime_Trib.CommandText := fDMCadRegime_Trib.ctCommand
                                      + ' WHERE 0 = 0 ';
  fDMCadRegime_Trib.cdsRegime_Trib.Open;
end;

procedure TfrmCadRegime_Trib.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRegime_Trib.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRegime_Trib.cdsRegime_Trib.State in [dsBrowse]) or not(fDMCadRegime_Trib.cdsRegime_Trib.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRegime_Trib.cdsRegime_Trib.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRegime_Trib.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRegime_Trib.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRegime_Trib.cdsRegime_Trib.IsEmpty) or not(fDMCadRegime_Trib.cdsRegime_Trib.Active) or (fDMCadRegime_Trib.cdsRegime_TribID.AsInteger < 1) then
    exit;

  fDMCadRegime_Trib.cdsRegime_Trib.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadRegime_Trib.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRegime_Trib.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRegime_Trib);
end;

procedure TfrmCadRegime_Trib.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRegime_Trib.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

end.
