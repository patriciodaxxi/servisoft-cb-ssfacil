unit UCadDEPara_CFOP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadDEPara_CFOP,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection;

type
  TfrmCadDEPara_CFOP = class(TForm)
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
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label1: TLabel;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    UCControls1: TUCControls;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label5: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label6: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadDEPara_CFOP: TDMCadDEPara_CFOP;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_DEPara_CFOP;

  public
    { Public declarations }

  end;

var
  frmCadDEPara_CFOP: TfrmCadDEPara_CFOP;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadDEPara_CFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDEPara_CFOP.btnExcluirClick(Sender: TObject);
begin
  if fDMCadDEPara_CFOP.cdsDEPara_CFOP_Consulta.IsEmpty then
    exit;

  prc_Posiciona_DEPara_CFOP;

  if fDMCadDEPara_CFOP.cdsDEPara_CFOP.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadDEPara_CFOP.prc_Excluir_Registro;
begin
  fDMCadDEPara_CFOP.prc_Excluir;
end;

procedure TfrmCadDEPara_CFOP.prc_Gravar_Registro;
begin
  fDMCadDEPara_CFOP.cdsDEPara_CFOPCOD_CFOP_ENT.AsString := RxDBLookupCombo1.Text;
  fDMCadDEPara_CFOP.cdsDEPara_CFOPCOD_CFOP_GRA.AsString := RxDBLookupCombo2.Text;
  fDMCadDEPara_CFOP.cdsDEPara_CFOPCOD_CFOP_PED.AsString := RxDBLookupCombo3.Text;
  fDMCadDEPara_CFOP.cdsDEPara_CFOPCOD_CFOP_PROD_NFCE.AsString := RxDBLookupCombo5.Text;

  if fDMCadDEPara_CFOP.cdsDEPara_CFOPTIPO_PRODUTO.AsString <> 'I' then
  begin
    fDMCadDEPara_CFOP.cdsDEPara_CFOPID_CFOP_PED.Clear;
    fDMCadDEPara_CFOP.cdsDEPara_CFOPCOD_CFOP_PED.Clear;
  end;
  fDMCadDEPara_CFOP.prc_Gravar;
  if fDMCadDEPara_CFOP.cdsDEPara_CFOP.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadDEPara_CFOP.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);

  btnConsultarClick(frmCadDEPara_CFOP);
end;

procedure TfrmCadDEPara_CFOP.prc_Inserir_Registro;
begin
  fDMCadDEPara_CFOP.prc_Inserir;

  if fDMCadDEPara_CFOP.cdsDEPara_CFOP.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadDEPara_CFOP.FormShow(Sender: TObject);
begin
  fDMCadDEPara_CFOP := TDMCadDEPara_CFOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadDEPara_CFOP);
end;

procedure TfrmCadDEPara_CFOP.prc_Consultar;
begin
  fDMCadDEPara_CFOP.cdsDEPara_CFOP_Consulta.Close;
  fDMCadDEPara_CFOP.sdsDEPara_CFOP_Consulta.CommandText := fDMCadDEPara_CFOP.ctConsulta + ' WHERE 0 = 0';
  fDMCadDEPara_CFOP.cdsDEPara_CFOP_Consulta.Open;
end;

procedure TfrmCadDEPara_CFOP.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadDEPara_CFOP.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadDEPara_CFOP.cdsDEPara_CFOP.State in [dsBrowse]) or not(fDMCadDEPara_CFOP.cdsDEPara_CFOP.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadDEPara_CFOP.cdsDEPara_CFOP.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadDEPara_CFOP.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadDEPara_CFOP.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadDEPara_CFOP.cdsDEPara_CFOP.IsEmpty) or not(fDMCadDEPara_CFOP.cdsDEPara_CFOP.Active) or (fDMCadDEPara_CFOP.cdsDEPara_CFOPID.AsInteger < 1) then
    exit;

  fDMCadDEPara_CFOP.cdsDEPara_CFOP.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadDEPara_CFOP.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadDEPara_CFOP.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadDEPara_CFOP);
end;

procedure TfrmCadDEPara_CFOP.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadDEPara_CFOP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadDEPara_CFOP.cdsDEPara_CFOP);
end;

procedure TfrmCadDEPara_CFOP.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadDEPara_CFOP.cdsDEPara_CFOP.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadDEPara_CFOP.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadDEPara_CFOP.cdsDEPara_CFOP.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadDEPara_CFOP.cdsDEPara_CFOP_Consulta.Active) or (fDMCadDEPara_CFOP.cdsDEPara_CFOP_Consulta.IsEmpty) or (fDMCadDEPara_CFOP.cdsDEPara_CFOP_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_DEPara_CFOP;
    end;
  end;
end;

procedure TfrmCadDEPara_CFOP.prc_Posiciona_DEPara_CFOP;
begin
  fDMCadDEPara_CFOP.prc_Localizar(fDMCadDEPara_CFOP.cdsDEPara_CFOP_ConsultaID.AsInteger);
  RxDBComboBox1Change(nil);
end;

procedure TfrmCadDEPara_CFOP.RxDBComboBox1Change(Sender: TObject);
begin
  Label4.Visible           := (RxDBComboBox1.ItemIndex = 2);
  RxDBLookupCombo3.Visible := (RxDBComboBox1.ItemIndex = 2);
end;

procedure TfrmCadDEPara_CFOP.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

end.
