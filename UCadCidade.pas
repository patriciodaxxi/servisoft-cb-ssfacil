unit UCadCidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCidade,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, NxCollection;

type
  TfrmCadCidade = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DirectoryEdit3: TDirectoryEdit;
    Label16: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCidade: TDMCadCidade;

    ffrmCadUF: TfrmCadUF;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadCidade.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCidade.cdsCidade.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCidade.prc_Excluir_Registro;
begin
  fDMCadCidade.prc_Excluir;
end;

procedure TfrmCadCidade.prc_Gravar_Registro;
begin
  fDMCadCidade.cdsCidadeEND_LOGO_PREFEITURA.AsString := DirectoryEdit3.Text;
  fDMCadCidade.prc_Gravar;
  if fDMCadCidade.cdsCidade.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCidade.vMsgCidade, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCidade.prc_Inserir_Registro;
begin
  fDMCadCidade.prc_Inserir;

  if fDMCadCidade.cdsCidade.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadCidade.FormShow(Sender: TObject);
begin
  fDMCadCidade := TDMCadCidade.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCidade);
end;

procedure TfrmCadCidade.prc_Consultar;
begin
  fDMCadCidade.cdsCidade.Close;
  fDMCadCidade.sdsCidade.CommandText := fDMCadCidade.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCidade.sdsCidade.CommandText := fDMCadCidade.sdsCidade.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if Trim(Edit3.Text) <> '' then
    fDMCadCidade.sdsCidade.CommandText := fDMCadCidade.sdsCidade.CommandText
                                    + ' AND UF = ' + QuotedStr(Edit3.Text);
  fDMCadCidade.cdsCidade.Open;
end;

procedure TfrmCadCidade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCidade.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCidade.cdsCidade.State in [dsBrowse]) or not(fDMCadCidade.cdsCidade.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCidade.cdsCidade.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCidade.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCidade.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCidade.cdsCidade.IsEmpty) or not(fDMCadCidade.cdsCidade.Active) or (fDMCadCidade.cdsCidadeID.AsInteger < 1) then
    exit;

  fDMCadCidade.cdsCidade.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadCidade.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCidade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCidade);
end;

procedure TfrmCadCidade.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadUF := TfrmCadUF.Create(self);
  ffrmCadUF.ShowModal;

  FreeAndNil(ffrmCadUF);
  fDMCadCidade.cdsUF.Close;
  fDMCadCidade.cdsUF.Open;
end;

procedure TfrmCadCidade.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCidade.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCidade.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCidade.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
    DirectoryEdit3.Text := fDMCadCidade.cdsCidadeEND_LOGO_PREFEITURA.AsString;
end;

procedure TfrmCadCidade.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCidade.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  Edit3.Clear;
end;

end.
