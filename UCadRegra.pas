unit UCadRegra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRegra, DBGrids, DB,
  ExtCtrls, StdCtrls, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, UCadRegra_Itens, NxCollection,
  RzPanel;

type
  TfrmCadRegra = class(TForm)
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
    edtNome: TEdit;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel4: TPanel;
    btnInserir_Itens: TBitBtn;
    btnAlterar_Itens: TBitBtn;
    btnExcluir_Itens: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnImprimir: TNxButton;
    gbxFaturamento: TRzGroupBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    RzGroupBox1: TRzGroupBox;
    Label30: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label21: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    Label31: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label22: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    Label33: TLabel;
    DBEdit21: TDBEdit;
    btnGerar: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit1: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit2: TDBEdit;
    Shape1: TShape;
    Label10: TLabel;
    Shape2: TShape;
    Label11: TLabel;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadRegra: TDMCadRegra;

    ffrmCadRegra_Itens: TfrmCadRegra_Itens;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Regra;
  public
    { Public declarations } 
  end;

var
  frmCadRegra: TfrmCadRegra;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, UCadRegra_Ger;

{$R *.dfm}

procedure TfrmCadRegra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRegra.btnExcluirClick(Sender: TObject);
var
  vQtdAux: Integer;
begin
  if not(fDMCadRegra.cdsRegra_Consulta.Active) or (fDMCadRegra.cdsRegra_Consulta.IsEmpty) or
        (fDMCadRegra.cdsRegra_ConsultaID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Posiciona_Regra;
  if not fDMCadRegra.cdsRegra.IsEmpty then
  begin
    prc_Excluir_Registro;
    prc_Consultar;
  end;
end;

procedure TfrmCadRegra.prc_Excluir_Registro;
begin
  fDMCadRegra.prc_Excluir;
end;

procedure TfrmCadRegra.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadRegra.cdsRegraID.AsInteger;
  fDMCadRegra.prc_Gravar;
  if fDMCadRegra.cdsRegra.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRegra.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  Panel4.Enabled            := not(Panel4.Enabled);
  prc_Consultar;
  fDMCadRegra.cdsRegra_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadRegra.prc_Inserir_Registro;
begin
  fDMCadRegra.prc_Inserir;
  if fDMCadRegra.cdsRegra.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  Panel4.Enabled         := True;

  DBEdit7.SetFocus;
end;

procedure TfrmCadRegra.FormShow(Sender: TObject);
begin
  fDMCadRegra := TDMCadRegra.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra);
end;

procedure TfrmCadRegra.prc_Consultar;
begin
  fDMCadRegra.cdsRegra_Consulta.Close;
  fDMCadRegra.sdsRegra_Consulta.CommandText := fDMCadRegra.ctConsulta + ' WHERE 0 = 0';
  if Trim(edtNome.Text) <> '' then
    fDMCadRegra.sdsRegra_Consulta.CommandText := fDMCadRegra.sdsRegra_Consulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadRegra.cdsRegra_Consulta.Open;
end;

procedure TfrmCadRegra.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRegra.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRegra.cdsRegra.State in [dsBrowse]) or not(fDMCadRegra.cdsRegra.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRegra.cdsRegra.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  Panel4.Enabled            := False;
end;

procedure TfrmCadRegra.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRegra.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRegra.cdsRegra.IsEmpty) or not(fDMCadRegra.cdsRegra.Active) or (fDMCadRegra.cdsRegraID.AsInteger < 1) then
    exit;

  fDMCadRegra.cdsRegra.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  Panel4.Enabled         := True;
end;

procedure TfrmCadRegra.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRegra.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRegra);
end;

procedure TfrmCadRegra.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRegra.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadRegra.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadRegra.prc_Inserir_Itens;

  ffrmCadRegra_Itens := TfrmCadRegra_Itens.Create(self);
  ffrmCadRegra_Itens.fDMCadRegra := fDMCadRegra;
  ffrmCadRegra_Itens.ShowModal;

  FreeAndNil(ffrmCadRegra_Itens);
end;

procedure TfrmCadRegra.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadRegra.cdsRegra_Itens.IsEmpty) or (fDMCadRegra.cdsRegra_ItensID.AsInteger < 1) then
    exit;
  fDMCadRegra.cdsRegra_Itens.Edit;

  ffrmCadRegra_Itens := TfrmCadRegra_Itens.Create(self);
  ffrmCadRegra_Itens.fDMCadRegra := fDMCadRegra;
  ffrmCadRegra_Itens.ShowModal;

  FreeAndNil(ffrmCadRegra_Itens);
end;

procedure TfrmCadRegra.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadRegra.cdsRegra_Itens.IsEmpty) or (fDMCadRegra.cdsRegra_ItensID.AsInteger < 1) then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadRegra.cdsRegra_Itens.Delete;
end;

procedure TfrmCadRegra.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRegra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadRegra.cdsRegra);
end;

procedure TfrmCadRegra.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadRegra.cdsRegra_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadRegra.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadRegra.cdsRegra.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Regra;
  end;
end;

procedure TfrmCadRegra.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadRegra.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadRegra.prc_Posiciona_Regra;
begin
  if fDMCadRegra.cdsRegra_ConsultaID.AsInteger = 0 then
    fDMCadRegra.prc_Localizar(-1)
  else
    fDMCadRegra.prc_Localizar(fDMCadRegra.cdsRegra_ConsultaID.AsInteger);
  fDMCadRegra.cdsRegra_Itens.Close;
  fDMCadRegra.cdsRegra_Itens.Open;
end;

procedure TfrmCadRegra.btnGerarClick(Sender: TObject);
var
  ffrmCadRegra_Ger: TfrmCadRegra_Ger;
begin
  if not(fDMCadRegra.cdsRegra_Itens.IsEmpty) then
  begin
    MessageDlg('*** Já existe itens cadastrados na Regra!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja gerar os itens da regra automático?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  ffrmCadRegra_Ger := TfrmCadRegra_Ger.Create(self);
  ffrmCadRegra_Ger.fDMCadRegra := fDMCadRegra;
  ffrmCadRegra_Ger.ShowModal;
  FreeAndNil(ffrmCadRegra_Ger);
end;

procedure TfrmCadRegra.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
    AFont.Color := clBlue
  else
  if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'S' then
    AFont.Color := clRed;
end;

end.
