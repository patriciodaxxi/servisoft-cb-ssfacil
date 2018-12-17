unit UCadCFOP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCFOP, DBGrids, DB,
  ExtCtrls, StdCtrls, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, UCadCFOP_Variacao, NxCollection,
  UCadCFOP_Sit, RzPanel, SqlExpr, RzPrgres, RzDBProg, ComCtrls;

type
  TfrmCadCFOP = class(TForm)
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
    UCControls1: TUCControls;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtCFOP: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel4: TPanel;
    btnInserir_Itens: TBitBtn;
    btnAlterar_Itens: TBitBtn;
    btnExcluir_Itens: TBitBtn;
    DBMemo1: TDBMemo;
    Panel5: TPanel;
    Label17: TLabel;
    TabSheet3: TRzTabSheet;
    DBMemo2: TDBMemo;
    SMDBGrid2: TSMDBGrid;
    btnGerar_Ori: TBitBtn;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    ckInativo: TCheckBox;
    btnSituacao: TNxButton;
    TabSheet4: TRzTabSheet;
    Panel3: TPanel;
    Label11: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label13: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label18: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    Label27: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label34: TLabel;
    ComboBox1: TComboBox;
    DBCheckBox2: TDBCheckBox;
    btnImprimir: TNxButton;
    Panel6: TPanel;
    Label24: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label25: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    gbxImpostos: TRzGroupBox;
    Label54: TLabel;
    DBEdit35: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    gbxFaturamento: TRzGroupBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    Label19: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    gbxEstoque: TRzGroupBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
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
    RzGroupBox2: TRzGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit5: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit6: TDBEdit;
    Shape1: TShape;
    Label15: TLabel;
    Shape2: TShape;
    Label16: TLabel;
    Label20: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    btnGerar_Regra: TBitBtn;
    btnGerar_Var: TBitBtn;
    Label23: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBMemo3: TDBMemo;
    ProgressBar1: TProgressBar;
    DBCheckBox21: TDBCheckBox;
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
    procedure edtCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGerar_OriClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSituacaoClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure btnGerar_RegraClick(Sender: TObject);
    procedure btnGerar_VarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCFOP: TDMCadCFOP;
    vItemCFOP: Integer;

    ffrmCadCFOP_Variacao: TfrmCadCFOP_Variacao;
    ffrmCadCFOP_Sit: TfrmCadCFOP_Sit;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Le_CFOP_Orig;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_CFOP;
    procedure prc_Gerar_mAuxItens;
  public
    { Public declarations }
  end;

var
  frmCadCFOP: TfrmCadCFOP;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, UCadCFOP_Ger;

{$R *.dfm}

procedure TfrmCadCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCFOP.btnExcluirClick(Sender: TObject);
var
  vQtdAux: Integer;
begin
  if not(fDMCadCFOP.cdsCFOP_Consulta.Active) or (fDMCadCFOP.cdsCFOP_Consulta.IsEmpty) or
        (fDMCadCFOP.cdsCFOP_ConsultaID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir os registros selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vQtdAux := 0;
  fDMCadCFOP.cdsCFOP_Consulta.First;
  while not fDMCadCFOP.cdsCFOP_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vQtdAux := vQtdAux + 1; 
      prc_Posiciona_CFOP;
      if not fDMCadCFOP.cdsCFOP.IsEmpty then
        prc_Excluir_Registro
    end;
    fDMCadCFOP.cdsCFOP_Consulta.Next;
  end;
  prc_Consultar;
  MessageDlg('*** Quantidade de CFOP excluidas: ' + IntToStr(vQtdAux), mtInformation, [mbOk], 0);
end;

procedure TfrmCadCFOP.prc_Excluir_Registro;
begin
  fDMCadCFOP.prc_Excluir;
end;

procedure TfrmCadCFOP.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadCFOP.cdsCFOPID.AsInteger;
  fDMCadCFOP.prc_Gravar;
  if fDMCadCFOP.cdsCFOP.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCFOP.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  DBMemo1.ReadOnly          := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly          := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly          := not(DBMemo3.ReadOnly);
  Panel4.Enabled            := not(Panel4.Enabled);
  Panel3.Enabled            := not(Panel3.Enabled);
  Panel5.Enabled            := not(Panel5.Enabled);
  prc_Consultar;
  fDMCadCFOP.cdsCFOP_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadCFOP.prc_Inserir_Registro;
begin
  fDMCadCFOP.prc_Inserir;
  if fDMCadCFOP.cdsCFOP.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBMemo1.ReadOnly       := False;
  DBMemo2.ReadOnly       := False;
  DBMemo3.ReadOnly       := False;
  Panel4.Enabled         := True;
  Panel3.Enabled         := True;
  Panel5.Enabled         := True;

  DBEdit7.SetFocus;
  fDMCadCFOP.mAuxItens.EmptyDataSet;
end;

procedure TfrmCadCFOP.FormShow(Sender: TObject);
begin
  fDMCadCFOP := TDMCadCFOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCFOP);
  Label27.Visible          := (fDMCadCFOP.qParametrosUSA_SPED.AsString = 'S');
  RxDBLookupCombo1.Visible := (fDMCadCFOP.qParametrosUSA_SPED.AsString = 'S');
  DBCheckBox2.Visible      := (fDMCadCFOP.qParametrosUSA_PERC_ORGAO_PUBLICO.AsString = 'S');
  Label54.Visible          := ((fDMCadCFOP.cdsCFOPGERAR_TRIBUTO.AsString = 'S') and (fDMCadCFOP.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P'));
  DBEdit35.Visible         := ((fDMCadCFOP.cdsCFOPGERAR_TRIBUTO.AsString = 'S') and (fDMCadCFOP.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P'));
  uUtilPadrao.fnc_Busca_Nome_Filial;
end;

procedure TfrmCadCFOP.prc_Consultar;
begin
  fDMCadCFOP.cdsCFOP_Consulta.IndexFieldNames := 'CODCFOP';
  fDMCadCFOP.cdsCFOP_Consulta.Close;
  fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.ctConsulta + ' WHERE 0 = 0';
  if Trim(edtNome.Text) <> '' then
    fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.sdsCFOP_Consulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  if Trim(edtCFOP.Text) <> '' then
    fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.sdsCFOP_Consulta.CommandText + ' AND CODCFOP = ' + QuotedStr(edtCFOP.Text);
  if not ckInativo.Checked then
    fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.sdsCFOP_Consulta.CommandText + ' AND INATIVO = ' + QuotedStr('N');
  case ComboBox1.ItemIndex of
    0: fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.sdsCFOP_Consulta.CommandText + ' AND ENTRADASAIDA = ' + QuotedStr('E');
    1: fDMCadCFOP.sdsCFOP_Consulta.CommandText := fDMCadCFOP.sdsCFOP_Consulta.CommandText + ' AND ENTRADASAIDA = ' + QuotedStr('S');
  end;
  fDMCadCFOP.cdsCFOP_Consulta.Open;
end;

procedure TfrmCadCFOP.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCFOP.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP.State in [dsBrowse]) or not(fDMCadCFOP.cdsCFOP.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCFOP.cdsCFOP.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  DBMemo1.ReadOnly          := True;
  DBMemo2.ReadOnly          := True;
  DBMemo3.ReadOnly          := True;
  Panel4.Enabled            := False;
  Panel3.Enabled            := False;
  Panel5.Enabled            := False;
end;

procedure TfrmCadCFOP.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCFOP.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP.IsEmpty) or not(fDMCadCFOP.cdsCFOP.Active) or (fDMCadCFOP.cdsCFOPID.AsInteger < 1) then
    exit;

  fDMCadCFOP.cdsCFOP.Edit;

  prc_Gerar_mAuxItens;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBMemo1.ReadOnly       := False;
  DBMemo2.ReadOnly       := False;
  DBMemo3.ReadOnly       := False;
  Panel4.Enabled         := True;
  Panel3.Enabled         := True;
  Panel5.Enabled         := True;
end;

procedure TfrmCadCFOP.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCFOP.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCFOP);
end;

procedure TfrmCadCFOP.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCFOP.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadCFOP.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadCFOP.prc_Inserir_Itens;

  ffrmCadCFOP_Variacao := TfrmCadCFOP_Variacao.Create(self);
  ffrmCadCFOP_Variacao.fDMCadCFOP := fDMCadCFOP;
  ffrmCadCFOP_Variacao.ShowModal;

  FreeAndNil(ffrmCadCFOP_Variacao);
end;

procedure TfrmCadCFOP.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP_Variacao.IsEmpty) or (fDMCadCFOP.cdsCFOP_VariacaoID.AsInteger < 1) then
    exit;
  fDMCadCFOP.cdsCFOP_Variacao.Edit;

  ffrmCadCFOP_Variacao := TfrmCadCFOP_Variacao.Create(self);
  ffrmCadCFOP_Variacao.fDMCadCFOP := fDMCadCFOP;
  ffrmCadCFOP_Variacao.ShowModal;

  FreeAndNil(ffrmCadCFOP_Variacao);
end;

procedure TfrmCadCFOP.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP_Variacao.IsEmpty) or (fDMCadCFOP.cdsCFOP_VariacaoID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if fDMCadCFOP.mAuxItens.Locate('ITEM',fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger,([Locaseinsensitive])) then
    fDMCadCFOP.mAuxItens.Delete;

  fDMCadCFOP.cdsCFOP_Variacao.Delete;
end;

procedure TfrmCadCFOP.edtCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCFOP.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCFOP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadCFOP.cdsCFOP);
end;

procedure TfrmCadCFOP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    btnGerar_Ori.Visible := not(btnGerar_Ori.Visible);
end;

procedure TfrmCadCFOP.btnGerar_OriClick(Sender: TObject);
begin
  if MessageDlg('Deseja Gerar as CFOPs?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  try
    //fDMCadCFOP.cdsCFOP.Close;
    //fDMCadCFOP.sdsCFOP.CommandText := fDMCadCFOP.ctCommand;
    //fDMCadCFOP.cdsCFOP.Open;
    fDMCadCFOP.cdsCFOP_Ori.Close;
    fDMCadCFOP.cdsCFOP_Ori.Open;
    RzPageControl2.ActivePage := TabSheet3;
    ProgressBar1.Visible := True;
    prc_Le_CFOP_Orig;
    ProgressBar1.Visible := False;

    fDMCadCFOP.cdsCFOP_Ori.Close;

  except
    on E: exception do
    begin
      raise Exception.Create('Não existe a tabela CFOP Original, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadCFOP.prc_Le_CFOP_Orig;
var
  sds: TSQLDataSet;
begin
  ProgressBar1.Min := 0;
  ProgressBar1.Max := fDMCadCFOP.cdsCFOP_Ori.RecordCount;
  while not fDMCadCFOP.cdsCFOP_Ori.Eof do
  begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      sds := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'UPDATE TAB_CFOP SET NOME_ORIGINAL = ' + QuotedStr(fDMCadCFOP.cdsCFOP_OriCFNOME.AsString) +
                           ' , OBS_CLASSIFICACAO = ' + QuotedStr(fDMCadCFOP.cdsCFOP_OriCFNOTA.Value) +
                           ' WHERE CODCFOP = ' + QuotedStr(fDMCadCFOP.cdsCFOP_OriCFCOD.AsString);
      sds.ExecSQL;
    fDMCadCFOP.cdsCFOP_Ori.Next;
  end;
  ShowMessage('Gerado!');
end;

procedure TfrmCadCFOP.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadCFOP.cdsCFOP_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadCFOP.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadCFOP.cdsCFOP.State in [dsEdit, dsInsert]) then
      prc_Posiciona_CFOP;
    DBCheckBox9Click(Sender);
    DBCheckBox17Click(Sender);
    btnGerar_Regra.Visible := (fDMCadCFOP.cdsCFOPID_REGRA.AsInteger > 0);
  end;
end;

procedure TfrmCadCFOP.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCFOP.prc_Limpar_Edit_Consulta;
begin
  edtCFOP.Clear;
  edtNome.Clear;
end;

procedure TfrmCadCFOP.btnSituacaoClick(Sender: TObject);
begin
  ffrmCadCFOP_Sit := TfrmCadCFOP_Sit.Create(self);
  ffrmCadCFOP_Sit.ShowModal;
  FreeAndNil(ffrmCadCFOP_Sit);
  btnConsultarClick(Sender);
end;

procedure TfrmCadCFOP.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadCFOP.cdsCFOP_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadCFOP.DBEdit7Exit(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP.State in [dsInsert]) or (trim(fDMCadCFOP.cdsCFOPCODCFOP.AsString) = '') then
  begin
    if (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '5101') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '5103')
      or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '5105') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '5109')
      or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '6101') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '6103')
      or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '6105') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '6109')
      or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '7101') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '7103')
      or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '7105') or (fDMCadCFOP.cdsCFOPCODCFOP.AsString = '7109') then
      fDMCadCFOP.cdsCFOPTIPO_IND_VEN.AsString := 'I';
  end;
  if (Length(fDMCadCFOP.cdsCFOPCODCFOP.AsString) = 4) and ((copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '5')
    or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '6') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '7')) then
    fDMCadCFOP.cdsCFOPENTRADASAIDA.AsString := 'S'
  else
    fDMCadCFOP.cdsCFOPENTRADASAIDA.AsString := 'E';
end;

procedure TfrmCadCFOP.prc_Posiciona_CFOP;
begin
  if fDMCadCFOP.cdsCFOP_ConsultaID.AsInteger = 0 then
    fDMCadCFOP.prc_Localizar(-1)
  else
    fDMCadCFOP.prc_Localizar(fDMCadCFOP.cdsCFOP_ConsultaID.AsInteger);
  fDMCadCFOP.cdsCFOP_Variacao.Close;
  fDMCadCFOP.cdsCFOP_Variacao.Open;
end;

procedure TfrmCadCFOP.btnImprimirClick(Sender: TObject);
var
  vArq : String;
  vIn : string;
  i : Integer;
  vTeste : String;
begin
  fDMCadCFOP.cdsCFOP_Consulta.First;
  i := 1;
  while not fDMCadCFOP.cdsCFOP_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      if i = 1 then
        vIn := IntToStr(fDMCadCFOP.cdsCFOP_ConsultaID.AsInteger)
      else
        vIn := vIn + ',' + IntToStr(fdmcadcfop.cdsCFOP_ConsultaID.AsInteger);
     i := i + 1;
     end;
    fDMCadCFOP.cdsCFOP_Consulta.Next;
  end;
  fDMCadCFOP.prc_Abre_CFOP_Imp(vIn);

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\cfop.fr3';
  if FileExists(vArq) then
    fDMCadCFOP.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  fDMCadCFOP.frxReport1.Variables['Empresa'] := QuotedStr(vFilial_Nome);
  fDMCadCFOP.frxReport1.ShowReport;

end;

procedure TfrmCadCFOP.DBCheckBox9Click(Sender: TObject);
begin
  Label54.Visible  := (DBCheckBox9.Checked);
  DBEdit35.Visible := (DBCheckBox9.Checked);
end;

procedure TfrmCadCFOP.DBCheckBox17Click(Sender: TObject);
begin
  DBCheckBox18.Visible := (DBCheckBox17.Checked);
end;

procedure TfrmCadCFOP.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
    AFont.Color := clBlue
  else
  if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadCFOP.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadCFOP.cdsRegra.IndexFieldNames := 'NOME';
end;

procedure TfrmCadCFOP.RxDBLookupCombo8Change(Sender: TObject);
begin
  btnGerar_Regra.Visible := (trim(RxDBLookupCombo8.Text) <> '');
end;

procedure TfrmCadCFOP.btnGerar_RegraClick(Sender: TObject);
begin
  if fDMCadCFOP.cdsCFOPID_REGRA.AsInteger <= 0 then
  begin
    MessageDlg('*** Regra não informada para a geração!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not fDMCadCFOP.cdsRegra.Locate('ID',fDMCadCFOP.cdsCFOPID_REGRA.AsInteger,([Locaseinsensitive])) then
  begin
    MessageDlg('*** Regra não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMCadCFOP.cdsCFOPID_PIS.AsInteger <= 0) and (fDMCadCFOP.cdsRegraID_CSTPIS.AsInteger > 0) then
  begin
    fDMCadCFOP.cdsCFOPID_PIS.AsInteger  := fDMCadCFOP.cdsRegraID_CSTPIS.AsInteger;
    fDMCadCFOP.cdsCFOPTIPO_PIS.AsString := fDMCadCFOP.cdsRegraTIPO_PIS.AsString;
    fDMCadCFOP.cdsCFOPPERC_PIS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadCFOP.cdsRegraPERC_PIS.AsFloat));
  end;
  if (fDMCadCFOP.cdsCFOPID_PIS_SIMP.AsInteger <= 0) and (fDMCadCFOP.cdsRegraID_CSTPIS_SIMP.AsInteger > 0) then
  begin
    fDMCadCFOP.cdsCFOPID_PIS_SIMP.AsInteger  := fDMCadCFOP.cdsRegraID_CSTPIS_SIMP.AsInteger;
    fDMCadCFOP.cdsCFOPTIPO_PIS_SIMP.AsString := fDMCadCFOP.cdsRegraTIPO_PIS_SIMP.AsString;
    fDMCadCFOP.cdsCFOPPERC_PIS_SIMP.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadCFOP.cdsRegraPERC_PIS_SIMP.AsFloat));
  end;
  if (fDMCadCFOP.cdsCFOPID_COFINS.AsInteger <= 0) and (fDMCadCFOP.cdsRegraID_CSTCOFINS.AsInteger > 0) then
  begin
    fDMCadCFOP.cdsCFOPID_COFINS.AsInteger  := fDMCadCFOP.cdsRegraID_CSTCOFINS.AsInteger;
    fDMCadCFOP.cdsCFOPTIPO_COFINS.AsString := fDMCadCFOP.cdsRegraTIPO_COFINS.AsString;
    fDMCadCFOP.cdsCFOPPERC_COFINS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadCFOP.cdsRegraPERC_COFINS.AsFloat));
  end;
  if (fDMCadCFOP.cdsCFOPID_COFINS_SIMP.AsInteger <= 0) and (fDMCadCFOP.cdsRegraID_CSTCOFINS.AsInteger > 0) then
  begin
    fDMCadCFOP.cdsCFOPID_COFINS_SIMP.AsInteger  := fDMCadCFOP.cdsRegraID_CSTCOFINS_SIMP.AsInteger;
    fDMCadCFOP.cdsCFOPTIPO_COFINS_SIMP.AsString := fDMCadCFOP.cdsRegraTIPO_COFINS_SIMP.AsString;
    fDMCadCFOP.cdsCFOPPERC_COFINS_SIMP.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadCFOP.cdsRegraPERC_COFINS_SIMP.AsFloat));
  end;

  if fDMCadCFOP.cdsCFOP_Variacao.RecordCount > 0 then
  begin
    MessageDlg('*** Já existe variações!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadCFOP.cdsRegra_Itens.Close;
  fDMCadCFOP.sdsRegra_Itens.ParamByName('ID').AsInteger := fDMCadCFOP.cdsCFOPID_REGRA.AsInteger;
  fDMCadCFOP.cdsRegra_Itens.Open;
  if fDMCadCFOP.cdsRegra_Itens.RecordCount <= 0 then
  begin
    MessageDlg('*** Não foi cadastrada as variações na Regra!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadCFOP.cdsRegra_Itens.First;
  while not fDMCadCFOP.cdsRegra_Itens.Eof do
  begin
    fDMCadCFOP.cdsCFOP_Variacao.Insert;
    fDMCadCFOP.cdsCFOP_VariacaoID.AsInteger := fDMCadCFOP.cdsCFOPID.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger := fDMCadCFOP.cdsRegra_ItensITEM.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger := fDMCadCFOP.cdsRegra_ItensID_CSTICMS.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoID_CSTIPI.AsInteger  := fDMCadCFOP.cdsRegra_ItensID_CSTIPI.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString    := fDMCadCFOP.cdsRegra_ItensCOD_CST.AsString;
    fDMCadCFOP.cdsCFOP_VariacaoCOD_IPI.AsString     := fDMCadCFOP.cdsRegra_ItensCOD_IPI.AsString;
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString := fDMCadCFOP.cdsRegra_ItensTIPO_EMPRESA.AsString;
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString := fDMCadCFOP.cdsRegra_ItensTIPO_CLIENTE.AsString;
    if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '5') then
      fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'D'
    else
    if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '2') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '6') then
      fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'F'
    else
    if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '3') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '7') then
      fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'E';
    fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsRegra_ItensNOME.AsString;
    fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString := fDMCadCFOP.cdsRegra_ItensPESSOA_CLIENTE.AsString;
    fDMCadCFOP.cdsCFOP_VariacaoLEI.Value               := fDMCadCFOP.cdsRegra_ItensOBS_LEI.Value;
    fDMCadCFOP.cdsCFOP_VariacaoPERC_TRIBUTO.AsFloat    := 0;
    fDMCadCFOP.cdsCFOP_VariacaoID_ENQIPI.AsInteger     := fDMCadCFOP.cdsRegra_ItensID_ENQIPI.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoCOD_ENQ.AsString        := fDMCadCFOP.cdsRegra_ItensCOD_ENQIPI.AsString;
    if not fDMCadCFOP.cdsRegra_ItensTIPO_CONSUMIDOR.IsNull then
      fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger := fDMCadCFOP.cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger;
    fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString        := fDMCadCFOP.cdsRegra_ItensCALCULAR_ST.AsString;
    fDMCadCFOP.cdsCFOP_Variacao.Post;
    fDMCadCFOP.cdsRegra_Itens.Next;
  end;
end;

procedure TfrmCadCFOP.btnGerar_VarClick(Sender: TObject);
var
  ffrmCadCFOP_Ger: TfrmCadCFOP_Ger;
begin
  if not fDMCadCFOP.cdsCFOP_Variacao.IsEmpty then
  begin
    MessageDlg('*** Já existe variações!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja gerar os itens das variações automático?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  ffrmCadCFOP_Ger := TfrmCadCFOP_Ger.Create(self);
  ffrmCadCFOP_Ger.fDMCadCFOP := fDMCadCFOP;
  ffrmCadCFOP_Ger.ShowModal;
  FreeAndNil(ffrmCadCFOP_Ger);
end;

procedure TfrmCadCFOP.prc_Gerar_mAuxItens;
begin
  fDMCadCFOP.mAuxItens.EmptyDataSet;
  fDMCadCFOP.cdsCFOP_Variacao.First;
  while not fDMCadCFOP.cdsCFOP_Variacao.Eof do
  begin
    fDMCadCFOP.mAuxItens.Insert;
    fDMCadCFOP.mAuxItensItem.AsInteger := fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger;
    fDMCadCFOP.mAuxItensPessoa_Cliente.AsString   := fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString;
    fDMCadCFOP.mAuxItensTipo_Cliente.AsString     := fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString;
    fDMCadCFOP.mAuxItensTipo_Empresa.AsString     := fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString;
    fDMCadCFOP.mAuxItensTipo_Consumidor.AsInteger := fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger;
    fDMCadCFOP.mAuxItens.Post;
    fDMCadCFOP.cdsCFOP_Variacao.Next;
  end;
end;

end.
