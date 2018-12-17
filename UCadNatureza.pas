unit UCadNatureza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNatureza, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection,
  RxLookup;

type
  TfrmCadNatureza = class(TForm)
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
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
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
    fDMCadNatureza: TDMCadNatureza;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
  end;

var
  frmCadNatureza: TfrmCadNatureza;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNatureza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNatureza.btnExcluirClick(Sender: TObject);
begin
  if fDMCadNatureza.cdsNatureza.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadNatureza.prc_Excluir_Registro;
begin
  fDMCadNatureza.prc_Excluir;
end;

procedure TfrmCadNatureza.prc_Gravar_Registro;
begin
  fDMCadNatureza.cdsNaturezaNOME_PROVEDOR.AsString := RxDBLookupCombo1.Text;
  fDMCadNatureza.prc_Gravar;
  if fDMCadNatureza.cdsNatureza.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNatureza.vMsgNatureza, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadNatureza.prc_Inserir_Registro;
begin
  fDMCadNatureza.prc_Inserir;

  if fDMCadNatureza.cdsNatureza.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadNatureza.FormShow(Sender: TObject);
begin
  fDMCadNatureza := TDMCadNatureza.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNatureza);
  DBCheckBox2.Visible := (fDMCadNatureza.qParametros_SerUSA_NATUREZA_CID_NFSE.AsString = 'S');
end;

procedure TfrmCadNatureza.prc_Consultar;
begin
  fDMCadNatureza.cdsNatureza.Close;
  fDMCadNatureza.sdsNatureza.CommandText := fDMCadNatureza.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadNatureza.sdsNatureza.CommandText := fDMCadNatureza.sdsNatureza.CommandText + ' AND NAT.NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadNatureza.cdsNatureza.Open;
end;

procedure TfrmCadNatureza.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadNatureza.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNatureza.cdsNatureza.State in [dsBrowse]) or not(fDMCadNatureza.cdsNatureza.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNatureza.cdsNatureza.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadNatureza.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNatureza.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadNatureza.cdsNatureza.IsEmpty) or not(fDMCadNatureza.cdsNatureza.Active) or (fDMCadNatureza.cdsNaturezaID.AsInteger < 1) then
    exit;

  fDMCadNatureza.cdsNatureza.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadNatureza.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadNatureza.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNatureza);
end;

procedure TfrmCadNatureza.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadNatureza.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNatureza.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadNatureza.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadNatureza.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadNatureza.cdsNatureza.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadNatureza.cdsNatureza.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

end.
