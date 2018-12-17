unit UCadMaquina;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMaquina,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadMaquina_Matriz, UCBase, RxLookup, Mask,
  jpeg, NxCollection, CurrEdit, RzPanel;

type
  TfrmCadMaquina = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    pnlConsumo: TPanel;
    btnInserir_Tipo: TNxButton;
    btnAlterar_Tipo: TNxButton;
    btnExcluir_Tipo: TNxButton;
    SMDBGrid3: TSMDBGrid;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    gbxTear: TRzGroupBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    gbxTrancadeira: TRzGroupBox;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label10: TLabel;
    DBEdit8: TDBEdit;
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
    procedure btnInserir_TipoClick(Sender: TObject);
    procedure btnAlterar_TipoClick(Sender: TObject);
    procedure btnExcluir_TipoClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadMaquina: TDMCadMaquina;

    ffrmCadMaquina_Matriz: TfrmCadMaquina_Matriz;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Tipo_Maquina(ID : Integer);
    procedure prc_Posiciona_Reg;

    procedure Habilita_Campos;

  public
    { Public declarations }

  end;

var
  frmCadMaquina: TfrmCadMaquina;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadMaquina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMaquina.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadMaquina.cdsConsulta.Active) or (fDMCadMaquina.cdsConsulta.IsEmpty) then
    exit;

  prc_Posiciona_Reg;

  if fDMCadMaquina.cdsMaquina.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  
  btnConsultarClick(Sender);
end;

procedure TfrmCadMaquina.prc_Excluir_Registro;
begin
  fDMCadMaquina.prc_Excluir;
end;

procedure TfrmCadMaquina.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadMaquina.cdsMaquinaID.AsInteger;
  fDMCadMaquina.prc_Gravar;
  if fDMCadMaquina.cdsMaquina.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMaquina.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
  prc_Consultar;
  fDMCadMaquina.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
  {pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);}
end;

procedure TfrmCadMaquina.prc_Inserir_Registro;
begin
  fDMCadMaquina.prc_Inserir;

  if fDMCadMaquina.cdsMaquina.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;
  {btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;}
  DBEdit7.SetFocus;
end;

procedure TfrmCadMaquina.FormShow(Sender: TObject);
begin
  fDMCadMaquina := TDMCadMaquina.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMaquina);
  pnlConsumo.Visible := (fDMCadMaquina.qParametrosEMPRESA_INJETADO.AsString = 'S');
  SMDBGrid3.Visible  := (fDMCadMaquina.qParametrosEMPRESA_INJETADO.AsString = 'S');
end;

procedure TfrmCadMaquina.prc_Consultar;
begin
  fDMCadMaquina.cdsConsulta.Close;
  fDMCadMaquina.sdsConsulta.CommandText := fDMCadMaquina.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadMaquina.sdsConsulta.CommandText := fDMCadMaquina.sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadMaquina.cdsConsulta.Open;
end;

procedure TfrmCadMaquina.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMaquina.btnCancelarClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadMaquina.cdsMaquinaID.AsInteger;
  if (fDMCadMaquina.cdsMaquina.State in [dsBrowse]) or not(fDMCadMaquina.cdsMaquina.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMaquina.cdsMaquina.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
  btnConsultarClick(Sender);
  fDMCadMaquina.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
  
  {pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);}
end;

procedure TfrmCadMaquina.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMaquina.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMaquina.cdsMaquina.IsEmpty) or (fDMCadMaquina.cdsMaquinaID.AsInteger < 1) then
    exit;

  fDMCadMaquina.cdsMaquina.Edit;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;

  {btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;}
end;

procedure TfrmCadMaquina.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMaquina.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMaquina);
end;

procedure TfrmCadMaquina.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMaquina.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaquina.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMaquina.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadMaquina.btnInserir_TipoClick(Sender: TObject);
begin
  if not(fDMCadMaquina.cdsMaquina.Active) or (fDMCadMaquina.cdsMaquinaID.AsInteger < 1)  then
    exit;

  fDMCadMaquina.prc_Inserir_Matriz;

  ffrmCadMaquina_Matriz := TfrmCadMaquina_Matriz.Create(self);
  ffrmCadMaquina_Matriz.fDMCadMaquina := fDMCadMaquina;
  ffrmCadMaquina_Matriz.ShowModal;

  FreeAndNil(ffrmCadMaquina_Matriz);
end;

procedure TfrmCadMaquina.btnAlterar_TipoClick(Sender: TObject);
begin
  if (fDMCadMaquina.cdsMaquina_MatrizITEM.AsInteger < 1) or not(fDMCadMaquina.cdsMaquina_Matriz.Active) or
     (fDMCadMaquina.cdsMaquina_Matriz.IsEmpty) then
    exit;

  fDMCadMaquina.cdsMaquina_Matriz.Edit;

  ffrmCadMaquina_Matriz := TfrmCadMaquina_Matriz.Create(self);
  ffrmCadMaquina_Matriz.fDMCadMaquina := fDMCadMaquina;
  ffrmCadMaquina_Matriz.ShowModal;

  FreeAndNil(frmCadMaquina_Matriz);
end;

procedure TfrmCadMaquina.btnExcluir_TipoClick(Sender: TObject);
begin
  if fDMCadMaquina.cdsMaquina_Matriz.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMaquina.cdsMaquina_Matriz.Delete;
end;

procedure TfrmCadMaquina.Habilita_Campos;
begin
  pnlCadastro.Enabled := not(pnlCadastro.Enabled);
  
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);

  btnInserir_Tipo.Enabled := not(btnInserir_Tipo.Enabled);
  btnAlterar_Tipo.Enabled := not(btnAlterar_Tipo.Enabled);
  btnExcluir_Tipo.Enabled := not(btnExcluir_Tipo.Enabled);
end;

procedure TfrmCadMaquina.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    prc_Tipo_Maquina(RxDBLookupCombo1.KeyValue)
  else
    prc_Tipo_Maquina(0);
end;

procedure TfrmCadMaquina.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    prc_Tipo_Maquina(fDMCadMaquina.cdsConsultaID_TIPO_MAQUINA.AsInteger);
    if not(fDMCadMaquina.cdsMaquina.State in [dsInsert,dsEdit]) then
      prc_Posiciona_Reg;
  end;
end;

procedure TfrmCadMaquina.prc_Tipo_Maquina(ID: Integer);
var
  vTipo : String;
begin
  vTipo := '';
  if ID > 0 then
  begin
    if fDMCadMaquina.cdsTipo_Maquina.Locate('ID',ID,([Locaseinsensitive])) then
      vTipo := fDMCadMaquina.cdsTipo_MaquinaTIPO.AsString;
  end;
  gbxTear.Enabled        := (vTipo = '1');
  gbxTrancadeira.Enabled := (vTipo = '2');
end;

procedure TfrmCadMaquina.prc_Posiciona_Reg;
begin
  fDMCadMaquina.prc_Localizar(fDMCadMaquina.cdsConsultaID.AsInteger);
end;

end.
