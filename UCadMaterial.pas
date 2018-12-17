unit UCadMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB,
  UCadUnidade, UCadNCM, UCBase, StdCtrls, DBCtrls, RxDBComb, RxLookup, Mask, ToolEdit, CurrEdit, ExtCtrls, DBGrids, RzTabs,
  RXDBCtrl, UCadProduto_Forn, NxCollection, SqlExpr, dbXPress;

type
  TfrmCadMaterial = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtReferencia: TEdit;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    pnlCadastro: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    TabSheet2: TRzTabSheet;
    pnlCadastro_Forn: TPanel;
    Panel4: TPanel;
    SMDBGrid2: TSMDBGrid;
    Label26: TLabel;
    DBDateEdit1: TDBDateEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Forn: TNxButton;
    btnAlterar_Forn: TNxButton;
    btnExcluir_Forn: TNxButton;
    DBCheckBox3: TDBCheckBox;
    Label27: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserir_FornClick(Sender: TObject);
    procedure btnAlterar_FornClick(Sender: TObject);
    procedure btnExcluir_FornClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadProduto_Forn: TfrmCadProduto_Forn;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    function fnc_Filial : Boolean;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadMaterial: TfrmCadMaterial;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadMaterial.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadMaterial.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadProduto.cdsProdutoID.AsInteger;
    fDMCadProduto.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadProduto.cdsProduto.Locate('ID',vCodAux,([Locaseinsensitive]));
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmCadMaterial.prc_Gravar_Registro;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin

  if fDMCadProduto.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadProduto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PRODUTO');
    sds.ExecSQL();

    fDMCadProduto.prc_Gravar;
    dmDatabase.scoDados.Commit(ID);

    TS_Consulta.TabEnabled     := not(TS_Consulta.TabEnabled);
    RzPageControl1.ActivePage  := TS_Consulta;
    pnlCadastro.Enabled        := not(pnlCadastro.Enabled);
    pnlCadastro_Forn.Enabled   := not(pnlCadastro_Forn.Enabled);
    btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
    btnAlterar.Enabled         := not(btnAlterar.Enabled);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Registro: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadMaterial.prc_Inserir_Registro;
begin
  if not fnc_Filial then
    exit;

  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;

  fDMCadProduto.cdsProdutoTIPO_REG.AsString        := 'M';
  fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat      := 0;
  fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat := 0;
  fDMCadProduto.cdsProdutoTIPO_VENDA.AsString      := '';
  fDMCadProduto.cdsProdutoPOSSE_MATERIAL.AsString  := 'E';

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled   := False;
  btnAlterar.Enabled       := False;
  btnConfirmar.Enabled     := True;
  pnlCadastro.Enabled      := True;
  pnlCadastro_Forn.Enabled := True;

  DBEdit7.SetFocus;
end;

procedure TfrmCadMaterial.FormShow(Sender: TObject);
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
end;

procedure TfrmCadMaterial.prc_Consultar;
begin
  fDMCadProduto.cdsProduto.Close;
  fDMCadProduto.sdsProduto.CommandText := fDMCadProduto.ctCommand
                                        + ' WHERE TIPO_REG = ' + QuotedStr('M');
  begin
    if Trim(edtNome.Text) <> '' then
      fDMCadProduto.sdsProduto.CommandText := fDMCadProduto.sdsProduto.CommandText
                                      + ' AND PRO.NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
    if Trim(edtReferencia.Text) <> '' then
      fDMCadProduto.sdsProduto.CommandText := fDMCadProduto.sdsProduto.CommandText
                                      + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtReferencia.Text+'%');
  end;
  fDMCadProduto.cdsProduto.Open;
end;

procedure TfrmCadMaterial.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMaterial.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.State in [dsBrowse]) or not(fDMCadProduto.cdsProduto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  pnlCadastro_Forn.Enabled  := not(pnlCadastro_Forn.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMaterial.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMaterial.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.IsEmpty) or not(fDMCadProduto.cdsProduto.Active) or (fDMCadProduto.cdsProdutoID.AsInteger < 1) then
    exit;

  fDMCadProduto.cdsProduto.Edit;

  TS_Consulta.TabEnabled   := False;
  btnAlterar.Enabled       := False;
  btnConfirmar.Enabled     := True;
  pnlCadastro.Enabled      := True;
  pnlCadastro_Forn.Enabled := True;
end;

procedure TfrmCadMaterial.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMaterial.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadMaterial.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMaterial.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(frmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadMaterial.DBEdit11Exit(Sender: TObject);
begin
  if (StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) then
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat * fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat) + fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat));
end;

procedure TfrmCadMaterial.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadMaterial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadMaterial.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.btnInserir_FornClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdForn;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadMaterial.btnAlterar_FornClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_FornITEM.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Forn.Active) or
     (fDMCadProduto.cdsProduto_Forn.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Forn.Edit;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadMaterial.btnExcluir_FornClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Forn.Delete;
end;

procedure TfrmCadMaterial.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProduto.cdsProduto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadMaterial.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMaterial.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
  edtReferencia.Clear;
end;

procedure TfrmCadMaterial.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.Close;
  fDMCadProduto.cdsGrupo.Open;
end;

function TfrmCadMaterial.fnc_Filial: Boolean;
begin
  Result := True;
  if fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
  begin
    prc_Escolhe_Filial;
    if vFilial <= 0 then
      Result := False
    else
    if not fDMCadProduto.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    begin
      Result := False;
      ShowMessage('Filial não encontrada!');
    end;
  end;
end;

end.
