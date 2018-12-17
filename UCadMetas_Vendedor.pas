unit UCadMetas_Vendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMetas_Vendedor, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr,
  ToolEdit, CurrEdit, RxLookup;

type
  TfrmCadMetas_Vendedor = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    UCControls1: TUCControls;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    ComboBox1: TComboBox;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadMetas_Vendedor: TDMCadMetas_Vendedor;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Metas;

  public
    { Public declarations }

  end;

var
  frmCadMetas_Vendedor: TfrmCadMetas_Vendedor;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, DateUtils;

{$R *.dfm}

procedure TfrmCadMetas_Vendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMetas_Vendedor.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadMetas_Vendedor.cdsConsulta.Active) or (fDMCadMetas_Vendedor.cdsConsulta.IsEmpty) or (fDMCadMetas_Vendedor.cdsConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Metas;

  if fDMCadMetas_Vendedor.cdsMetas_Vendedor.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadMetas_Vendedor.prc_Excluir_Registro;
begin
  fDMCadMetas_Vendedor.prc_Excluir;
end;

procedure TfrmCadMetas_Vendedor.prc_Gravar_Registro;
var
  vID_Aux: Integer;
begin
  vID_Aux := fDMCadMetas_Vendedor.cdsMetas_VendedorID.AsInteger;
  case ComboBox1.ItemIndex of
    0: fDMCadMetas_Vendedor.prc_Gravar('Vendedor');
    1: fDMCadMetas_Vendedor.prc_Gravar('Sul');
    2: fDMCadMetas_Vendedor.prc_Gravar('Sudeste');
    3: fDMCadMetas_Vendedor.prc_Gravar('Centro-Oeste');
    4: fDMCadMetas_Vendedor.prc_Gravar('Nordeste');
    5: fDMCadMetas_Vendedor.prc_Gravar('Norte');
  end;
  if fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMetas_Vendedor.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  prc_Consultar(0);
  fDMCadMetas_Vendedor.cdsConsulta.Locate('ID',vID_Aux,[loCaseInsensitive]);
end;

procedure TfrmCadMetas_Vendedor.prc_Inserir_Registro;
begin
  fDMCadMetas_Vendedor.prc_Inserir;

  if fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsBrowse] then
    exit;

  //fDMCadMetas_Vendedor.cdsMetas_VendedorANO.AsInteger := 9999;
  //fDMCadMetas_Vendedor.cdsMetas_VendedorMES.AsInteger := 99;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;


  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadMetas_Vendedor.FormShow(Sender: TObject);
begin
  fDMCadMetas_Vendedor := TDMCadMetas_Vendedor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMetas_Vendedor);
end;

procedure TfrmCadMetas_Vendedor.prc_Consultar(ID: Integer);
begin
  fDMCadMetas_Vendedor.cdsConsulta.Close;
  fDMCadMetas_Vendedor.sdsConsulta.CommandText := fDMCadMetas_Vendedor.ctConsulta;
  if ID > 0 then
    fDMCadMetas_Vendedor.sdsConsulta.CommandText := fDMCadMetas_Vendedor.sdsConsulta.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  if CurrencyEdit1.AsInteger > 0 then
    fDMCadMetas_Vendedor.sdsConsulta.CommandText := fDMCadMetas_Vendedor.sdsConsulta.CommandText + ' WHERE ANO = ' + IntToStr(CurrencyEdit1.AsInteger);
  fDMCadMetas_Vendedor.cdsConsulta.Open;
end;

procedure TfrmCadMetas_Vendedor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadMetas_Vendedor.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsBrowse]) or not(fDMCadMetas_Vendedor.cdsMetas_Vendedor.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMetas_Vendedor.cdsMetas_Vendedor.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMetas_Vendedor.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMetas_Vendedor.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMetas_Vendedor.cdsMetas_Vendedor.IsEmpty) or not(fDMCadMetas_Vendedor.cdsMetas_Vendedor.Active) or (fDMCadMetas_Vendedor.cdsMetas_VendedorID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadMetas_Vendedor.cdsMetas_Vendedor.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadMetas_Vendedor.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMetas_Vendedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMetas_Vendedor);
end;

procedure TfrmCadMetas_Vendedor.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMetas_Vendedor.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMetas_Vendedor.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
end;

procedure TfrmCadMetas_Vendedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadMetas_Vendedor.cdsMetas_Vendedor);
end;

procedure TfrmCadMetas_Vendedor.CurrencyEdit1Exit(Sender: TObject);
begin
  if Length(CurrencyEdit1.Text) = 2 then
    CurrencyEdit1.Text := '20' + CurrencyEdit1.Text;
end;

procedure TfrmCadMetas_Vendedor.DBEdit2Exit(Sender: TObject);
begin
  if Length(fDMCadMetas_Vendedor.cdsMetas_VendedorANO.AsString) = 2 then
    fDMCadMetas_Vendedor.cdsMetas_VendedorANO.AsString := '20' + fDMCadMetas_Vendedor.cdsMetas_VendedorANO.AsString;
end;

procedure TfrmCadMetas_Vendedor.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.Visible then
  begin
    Label4.Visible           := (ComboBox1.ItemIndex <= 0);
    RxDBLookupCombo1.Visible := (ComboBox1.ItemIndex <= 0);
  end
  else
  begin
    Label4.Visible           := True;
    RxDBLookupCombo1.Visible := True;
  end;
end;

procedure TfrmCadMetas_Vendedor.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    //Label5.Visible    := fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsInsert];
    //ComboBox1.Visible := fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsInsert];
    if not(fDMCadMetas_Vendedor.cdsMetas_Vendedor.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Metas;
  end;
end;

procedure TfrmCadMetas_Vendedor.prc_Posiciona_Metas;
begin
  fDMCadMetas_Vendedor.prc_Localizar(fDMCadMetas_Vendedor.cdsConsultaID.AsInteger);
end;

procedure TfrmCadMetas_Vendedor.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMetas_Vendedor.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
