unit UCadEDI_Config;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadEDI_Config, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB,
  NxCollection;

type
  TfrmCadEDI_Config = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label16: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label17: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label18: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label19: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label20: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label21: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label24: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label25: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    Label7: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label9: TLabel;
    NxButton1: TNxButton;
    Label26: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label27: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label28: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label29: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label30: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
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
    procedure RxDBComboBox2Exit(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadEDI_Config: TDMCadEDI_Config;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadEDI_Config: TfrmCadEDI_Config;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadEDI_Config.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadEDI_Config.btnExcluirClick(Sender: TObject);
begin
  if fDMCadEDI_Config.cdsEDI_Config.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadEDI_Config.prc_Excluir_Registro;
begin
  fDMCadEDI_Config.prc_Excluir;
end;

procedure TfrmCadEDI_Config.prc_Gravar_Registro;
begin
  fDMCadEDI_Config.prc_Gravar;
  if fDMCadEDI_Config.cdsEDI_Config.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadEDI_Config.vMsgEDI_Config, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEDI_Config.prc_Inserir_Registro;
begin
  fDMCadEDI_Config.prc_Inserir;

  if fDMCadEDI_Config.cdsEDI_Config.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit45.SetFocus;
end;

procedure TfrmCadEDI_Config.FormShow(Sender: TObject);
begin
  fDMCadEDI_Config := TDMCadEDI_Config.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadEDI_Config);
end;

procedure TfrmCadEDI_Config.prc_Consultar;
begin
  fDMCadEDI_Config.cdsEDI_Config.Close;
  fDMCadEDI_Config.sdsEDI_Config.CommandText := fDMCadEDI_Config.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadEDI_Config.sdsEDI_Config.CommandText := fDMCadEDI_Config.sdsEDI_Config.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadEDI_Config.cdsEDI_Config.Open;
end;

procedure TfrmCadEDI_Config.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadEDI_Config.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadEDI_Config.cdsEDI_Config.State in [dsBrowse]) or not(fDMCadEDI_Config.cdsEDI_Config.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadEDI_Config.cdsEDI_Config.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEDI_Config.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadEDI_Config.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadEDI_Config.cdsEDI_Config.IsEmpty) or not(fDMCadEDI_Config.cdsEDI_Config.Active) or (fDMCadEDI_Config.cdsEDI_ConfigID.AsInteger < 1) then
    exit;

  fDMCadEDI_Config.cdsEDI_Config.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadEDI_Config.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadEDI_Config.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadEDI_Config);
end;

procedure TfrmCadEDI_Config.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadEDI_Config.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadEDI_Config.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadEDI_Config.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadEDI_Config.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadEDI_Config.cdsEDI_Config.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadEDI_Config.cdsEDI_Config.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadEDI_Config.RxDBComboBox2Exit(Sender: TObject);
begin
  if fDMCadEDI_Config.cdsEdi_Config.State in [dsInsert] then
    fDMCadEDI_Config.prc_Restaurar_Padrao;
end;

procedure TfrmCadEDI_Config.RxDBComboBox2Change(Sender: TObject);
begin
  if (RxDBComboBox2.ItemIndex = 0) or (RxDBComboBox2.ItemIndex = 2) then
    Label25.Caption := 'Plano/Remessa 2:'
  else
    Label25.Caption := 'Lote:';
end;

procedure TfrmCadEDI_Config.NxButton1Click(Sender: TObject);
begin
  fDMCadEDI_Config.prc_Restaurar_Padrao;
end;

end.
