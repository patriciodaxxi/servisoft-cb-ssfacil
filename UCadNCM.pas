unit UCadNCM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNCM, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, NxCollection, RxDBComb, ComCtrls,
  Variants;

type
  TfrmCadNCM = class(TForm)
    RZPageControl1: TRzPageControl;
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
    edtNCM: TEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    edtNome: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label22: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    RzPageControl2: TRzPageControl;
    TS_SubTrib: TRzTabSheet;
    TS_CST: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    ComboBox1: TComboBox;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    ComboBox2: TComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnInserir_CST: TNxButton;
    btnAlterar_CST: TNxButton;
    btnExcluir_CST: TNxButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SMDBGrid3: TSMDBGrid;
    btnGerador_CST: TNxButton;
    Label16: TLabel;
    ProgressBar1: TProgressBar;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    Label124: TLabel;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    Label18: TLabel;
    btnImprimir: TNxButton;
    Label19: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    TS_Unidade_Conv: TRzTabSheet;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    btnInserir_Unid: TNxButton;
    btnExcluir_Uni: TNxButton;
    SMDBGrid4: TSMDBGrid;
    TS_Geral: TRzTabSheet;
    pnlGeral: TPanel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label28: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    Label23: TLabel;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label25: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label26: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    DBCheckBox3: TDBCheckBox;
    NxButton1: TNxButton;
    btnAjustar_IBPT: TNxButton;
    DBCheckBox4: TDBCheckBox;
    Shape2: TShape;
    Label27: TLabel;
    Label29: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label31: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label38: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    Label39: TLabel;
    CurrencyEdit9: TCurrencyEdit;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure edtNCMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBComboBox6Change(Sender: TObject);
    procedure RZPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnInserir_CSTClick(Sender: TObject);
    procedure btnAlterar_CSTClick(Sender: TObject);
    procedure btnExcluir_CSTClick(Sender: TObject);
    procedure btnGerador_CSTClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure btnInserir_UnidClick(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure btnExcluir_UniClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAjustar_IBPTClick(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadNCM: TDMCadNCM;
    vItemNCM: Integer;
    vItem_Unidade : Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilita;
    procedure prc_Posiciona_NCM;
    procedure prc_Gerar_CST(UF: String ; ID_CST: Integer);
    procedure prc_Le_Cest(Contador: Integer);
    procedure prc_Gravar_IBPT(NCM : String);
    
  public
    { Public declarations }
  end;

var
  frmCadNCM: TfrmCadNCM;

implementation

uses rsDBUtils, UCadObs_Lei, USel_CodCest, uUtilPadrao, UDMCadTab_IBPT,
  uUtilIBPT;

{$R *.dfm}

procedure TfrmCadNCM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNCM.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadNCM.cdsNCM_Consulta.Active) or (fDMCadNCM.cdsNCM_Consulta.IsEmpty) or (fDMCadNCM.cdsNCM_ConsultaID.AsInteger <= 0) then
    exit;
  prc_Posiciona_NCM;

  if fDMCadNCM.cdsNCM.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadNCM.prc_Excluir_Registro;
begin
  fDMCadNCM.prc_Excluir;
end;

procedure TfrmCadNCM.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadNCM.cdsNCMID.AsInteger;
  fDMCadNCM.prc_Gravar;
  if fDMCadNCM.cdsNCM.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNCM.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilita;
  prc_Consultar;
  if vIDAux > 0 then
    fDMCadNCM.cdsNCM_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadNCM.prc_Inserir_Registro;
begin
  fDMCadNCM.prc_Inserir;
  if fDMCadNCM.cdsNCM.State in [dsBrowse] then
    exit;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled := False;
  prc_Habilita;
  DBEdit7.SetFocus;
end;

procedure TfrmCadNCM.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadNCM := TDMCadNCM.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNCM);

  if fDMCadNCM.qParametrosTIPO_LEI_TRANSPARENCIA.AsString <> 'I' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'ACHOU_IBPT') or (SMDBGrid1.Columns[i].FieldName = 'DT_IBPTFIM')  then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;

  Shape2.Visible  := (fDMCadNCM.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I');
  Label27.Visible := (fDMCadNCM.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I');
end;

procedure TfrmCadNCM.prc_Consultar;
begin
  fDMCadNCM.cdsNCM_Consulta.Close;
  fDMCadNCM.sdsNCM_Consulta.CommandText := fDMCadNCM.ctConsulta + ' WHERE 0 = 0 and 1 = 1 ';
  if Trim(edtNCM.Text) <> '' then
    fDMCadNCM.sdsNCM_Consulta.CommandText := fDMCadNCM.sdsNCM_Consulta.CommandText
                                    + ' AND NCM LIKE ' + QuotedStr('%'+edtNCM.Text+'%');
  if Trim(edtNome.Text) <> '' then
    fDMCadNCM.sdsNCM_Consulta.CommandText := fDMCadNCM.sdsNCM_Consulta.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadNCM.cdsNCM_Consulta.Open;
end;

procedure TfrmCadNCM.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadNCM.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNCM.cdsNCM.State in [dsBrowse]) or not(fDMCadNCM.cdsNCM.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNCM.cdsNCM.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Habilita;
end;

procedure TfrmCadNCM.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNCM.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadNCM.cdsNCM.IsEmpty) or not(fDMCadNCM.cdsNCM.Active) or (fDMCadNCM.cdsNCMID.AsInteger < 1) then
    exit;
  fDMCadNCM.cdsNCM.Edit;

  TS_Consulta.TabEnabled := False;
  prc_Habilita;
end;

procedure TfrmCadNCM.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadNCM.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNCM);
end;

procedure TfrmCadNCM.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadNCM.btnInserir_ItensClick(Sender: TObject);
var
  vMsgErroItem: String;
  vTipo_Produto: String;
begin
  vMsgErroItem := '';
  if RxDBLookupCombo1.Text = '' then
    vMsgErroItem := vMsgErroItem + #13 + '*** UF não informada!';
  if ComboBox1.ItemIndex < 0 then
    vMsgErroItem := vMsgErroItem + #13 + '*** Tipo do Produto não escolhido!';
  if ComboBox2.ItemIndex < 0 then
    vMsgErroItem := vMsgErroItem + #13 + '*** Não foi informado o campo Ajustar MVA!';
  if CurrencyEdit3.Value <= 0 then
    vMsgErroItem := vMsgErroItem + #13 + '*** % ICMS interno não informado!';
  if trim(vMsgErroItem) <> '' then
  begin
    MessageDlg(vMsgErroItem, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNCM.cdsUF.Locate('UF',RxDBLookupCombo1.Text,[loCaseInsensitive]);
  if (StrToFloat(FormatFloat('0.00',fDMCadNCM.cdsUFPERC_ICMS_INTERNO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNCM.cdsUFPERC_ICMS_INTERNO.AsFloat)) <> StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value))) then
    if MessageDlg('ICMS interno informado diferente do % ICMS interno do estado, confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;

  case ComboBox1.ItemIndex of
    0 : vTipo_Produto := 'I';
    1 : vTipo_Produto := 'N';
    2 : vTipo_Produto := 'A';
  end;

  if (vTipo_Produto = 'A') and (fDMCadNCM.cdsNCM_UF.Locate('UF',RxDBLookupCombo1.Text,[loCaseInsensitive])) and (vItemNCM <> fDMCadNCM.cdsNCM_UFITEM.AsInteger) then
  begin
    MessageDlg('*** Para informar o Tipo do Produto "Ambos", não pode repetir a mesma UF!', mtError, [mbOk], 0);
    exit;
  end;
  if (vTipo_Produto <> 'A') and (fDMCadNCM.cdsNCM_UF.Locate('UF;TIPO_PRODUTO',VarArrayOf([RxDBLookupCombo1.Text,'A']),[locaseinsensitive])) and (vItemNCM <> fDMCadNCM.cdsNCM_UFITEM.AsInteger) then
  begin
    MessageDlg('*** Já existe a UF com o Tipo de produto "Ambos", não pode ser incluir outro tipo!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMCadNCM.cdsNCM_UF.Locate('UF;TIPO_PRODUTO',VarArrayOf([RxDBLookupCombo1.Text,vTipo_Produto]),[locaseinsensitive])) and (vItemNCM <> fDMCadNCM.cdsNCM_UFITEM.AsInteger) then
  begin
    MessageDlg('*** UF já informada com o Tipo do Produto!', mtError, [mbOk], 0);
    exit;
  end;

  if vItemNCM > 0 then
    if fDMCadNCM.cdsNCM_UF.Locate('ITEM',vItemNCM,[loCaseInsensitive]) then
      fDMCadNCM.cdsNCM_UF.Edit;
  if not(fDMCadNCM.cdsNCM_UF.State in [dsEdit]) then
  begin
    fDMCadNCM.cdsNCM_UF.Last;
    vItemNCM := fDMCadNCM.cdsNCM_UFITEM.AsInteger;
    fDMCadNCM.cdsNCM_UF.Insert;
    fDMCadNCM.cdsNCM_UFID.AsInteger   := fDMCadNCM.cdsNCMID.AsInteger;
    fDMCadNCM.cdsNCM_UFITEM.AsInteger := vItemNCM + 1;
  end;
  fDMCadNCM.cdsNCM_UFUF.AsString                := RxDBLookupCombo1.Text;
  fDMCadNCM.cdsNCM_UFMVAINTERNO.AsFloat         := CurrencyEdit1.Value;     
  fDMCadNCM.cdsNCM_UFPERC_RED_MVA.AsFloat       := CurrencyEdit2.Value;
  fDMCadNCM.cdsNCM_UFPERC_ICMS_INTERNO.AsFloat  := CurrencyEdit3.Value;
  fDMCadNCM.cdsNCM_UFPERC_RED_MVA_GERAL.AsFloat := CurrencyEdit4.Value;
  fDMCadNCM.cdsNCM_UFPERC_RED_BASE_ST.AsFloat   := CurrencyEdit6.Value;
  fDMCadNCM.cdsNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat := CurrencyEdit7.Value;
  fDMCadNCM.cdsNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat := CurrencyEdit8.Value;
  fDMCadNCM.cdsNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat   := CurrencyEdit9.Value;
  fDMCadNCM.cdsNCM_UFTIPO_EMPRESA.AsString      := 'A';
  case ComboBox1.ItemIndex of
    0: fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString := 'I';
    1: fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString := 'N';
    2: fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString := 'A';
  end;
  case ComboBox2.ItemIndex of
    0: fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString := 'S';
    1: fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString := 'G';
    2: fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString := 'A';
    3: fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString := 'N';
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    fDMCadNCM.cdsNCM_UFID_OBS_LEI.AsInteger := RxDBLookupCombo2.KeyValue;
    fDMCadNCM.cdsObs_Lei.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);
  end
  else
    fDMCadNCM.cdsNCM_UFID_OBS_LEI.Clear;
  fDMCadNCM.cdsNCM_UF.Post;

  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit6.Clear;
  CurrencyEdit7.Clear;
  CurrencyEdit8.Clear;
  CurrencyEdit9.Clear;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo1.SetFocus;
  vItemNCM := 0;
end;

procedure TfrmCadNCM.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadNCM.cdsNCM_UF.IsEmpty) or (fDMCadNCM.cdsNCM_UFID.AsInteger < 1) then
    exit;

  vItemNCM               := fDMCadNCM.cdsNCM_UFITEM.AsInteger;
  RxDBLookupCombo1.Value := fDMCadNCM.cdsNCM_UFUF.AsString;
  CurrencyEdit1.Value    := fDMCadNCM.cdsNCM_UFMVAINTERNO.AsFloat;
  CurrencyEdit2.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_MVA.AsFloat;
  CurrencyEdit3.Value    := fDMCadNCM.cdsNCM_UFPERC_ICMS_INTERNO.AsFloat;
  CurrencyEdit4.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_MVA_GERAL.AsFloat;
  CurrencyEdit6.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_BASE_ST.AsFloat;
  CurrencyEdit7.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat;
  CurrencyEdit8.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat;
  CurrencyEdit9.Value    := fDMCadNCM.cdsNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat;
  if fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString = 'I' then
    ComboBox1.ItemIndex := 0
  else
  if fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString = 'N' then
    ComboBox1.ItemIndex := 1
  else
  if fDMCadNCM.cdsNCM_UFTIPO_PRODUTO.AsString = 'A' then
    ComboBox1.ItemIndex := 2;
  if fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString = 'S' then
    ComboBox2.ItemIndex := 0
  else
  if fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString = 'G' then
    ComboBox2.ItemIndex := 1
  else
  if fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString = 'A' then
    ComboBox2.ItemIndex := 2
  else
  if fDMCadNCM.cdsNCM_UFAJUSTAR_MVA.AsString = 'N' then
    ComboBox2.ItemIndex := 3;
  if fDMCadNCM.cdsNCM_UFID_OBS_LEI.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := fDMCadNCM.cdsNCM_UFID_OBS_LEI.AsInteger;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmCadNCM.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadNCM.cdsNCM_UF.IsEmpty) or (fDMCadNCM.cdsNCM_UFID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNCM.cdsNCM_UF.Delete;
end;

procedure TfrmCadNCM.edtNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNCM.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadNCM.prc_Limpar_Edit_Consulta;
begin
  edtNCM.Clear;
  edtNome.Clear;
end;

procedure TfrmCadNCM.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNCM.cdsNCM_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadNCM.RxDBComboBox6Change(Sender: TObject);
begin
  //GroupBox1.Visible := (RxDBComboBox6.ItemIndex = 0);
  //SMDBGrid2.Visible := (RxDBComboBox6.ItemIndex = 0);
  TS_SubTrib.TabVisible     := (RxDBComboBox6.ItemIndex = 0);
  if TS_SubTrib.TabVisible then
    RzPageControl2.ActivePage := TS_SubTrib
  else
    RzPageControl2.ActivePage := TS_CST;
end;

procedure TfrmCadNCM.RZPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadNCM.cdsNCM.State in [dsEdit, dsInsert]) then
      prc_Posiciona_NCM;
    RxDBComboBox6Change(Sender);
  end;
end;

procedure TfrmCadNCM.prc_Habilita;
begin
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);
  pnlGeral.Enabled         := not(pnlGeral.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
  btnInserir_CST.Enabled   := not(btnInserir_CST.Enabled);
  btnAlterar_CST.Enabled   := not(btnAlterar_CST.Enabled);
  btnExcluir_CST.Enabled   := not(btnExcluir_CST.Enabled);
  btnGerador_CST.Enabled   := not(btnGerador_CST.Enabled);
  btnInserir_Unid.Enabled  := not(btnInserir_Unid.Enabled);
  btnExcluir_Uni.Enabled   := not(btnExcluir_Uni.Enabled);
end;

procedure TfrmCadNCM.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) <> '' then
  begin
    fDMCadNCM.cdsUF.Locate('UF',RxDBLookupCombo1.Text,[loCaseInsensitive]);
    CurrencyEdit3.Value := fDMCadNCM.cdsUFPERC_ICMS_INTERNO.AsFloat;
  end
  else
    CurrencyEdit3.Value := 0;
end;

procedure TfrmCadNCM.btnInserir_CSTClick(Sender: TObject);
var
  vMsgErroItem: String;
  vGerador: Boolean;
begin
  vGerador := (vItemNCM = 0);
  vMsgErroItem := '';
  if trim(vMsgErroItem) <> '' then
  begin
    MessageDlg(vMsgErroItem, mtError, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo3.Text = '' then
  begin
    btnGerador_CSTClick(Sender);
    exit;
  end;

  fDMCadNCM.cdsUF.Locate('UF',RxDBLookupCombo3.Text,[loCaseInsensitive]);
  if (fDMCadNCM.cdsNCM_CST.Locate('UF',RxDBLookupCombo3.Text,[loCaseInsensitive])) and (vItemNCM <> fDMCadNCM.cdsNCM_CSTITEM.AsInteger) then
  begin
    MessageDlg('*** UF já informada!', mtError, [mbOk], 0);
    exit;
  end;
  if vItemNCM > 0 then
    if fDMCadNCM.cdsNCM_CST.Locate('ITEM',vItemNCM,[loCaseInsensitive]) then
      fDMCadNCM.cdsNCM_CST.Edit;
  if not(fDMCadNCM.cdsNCM_CST.State in [dsEdit]) then
  begin
    fDMCadNCM.cdsNCM_CST.Last;
    vItemNCM := fDMCadNCM.cdsNCM_CSTITEM.AsInteger;
    fDMCadNCM.cdsNCM_CST.Insert;
    fDMCadNCM.cdsNCM_CSTID.AsInteger   := fDMCadNCM.cdsNCMID.AsInteger;
    fDMCadNCM.cdsNCM_CSTITEM.AsInteger := vItemNCM + 1;
  end;
  fDMCadNCM.cdsNCM_CSTUF.AsString           := RxDBLookupCombo3.Text;
  if trim(RxDBLookupCombo4.Text) <> '' then
    fDMCadNCM.cdsNCM_CSTID_CST_ICMS.AsInteger := RxDBLookupCombo4.KeyValue;
  fDMCadNCM.cdsNCM_CSTPERC_FCP.AsFloat      := CurrencyEdit5.Value;
  fDMCadNCM.cdsNCM_CST.Post;
  vItemNCM := 0;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmCadNCM.prc_Posiciona_NCM;
begin
  fDMCadNCM.prc_Localizar(fDMCadNCM.cdsNCM_ConsultaID.AsInteger);
  fDMCadNCM.cdsNCM_UF.Close;
  fDMCadNCM.cdsNCM_UF.Open;
  fDMCadNCM.cdsNCM_CST.Close;
  fDMCadNCM.cdsNCM_CST.Open;
  fDMCadNCM.cdsNCM_Uni.Close;
  fDMCadNCM.cdsNCM_Uni.Open;
end;

procedure TfrmCadNCM.btnAlterar_CSTClick(Sender: TObject);
begin
  if fDMCadNCM.cdsNCM_CST.IsEmpty then
    exit;
  RxDBLookupCombo3.Value    := fDMCadNCM.cdsNCM_CSTUF.AsString;
  RxDBLookupCombo4.KeyValue := fDMCadNCM.cdsNCM_CSTID_CST_ICMS.AsInteger;
  vItemNCM                  := fDMCadNCM.cdsNCM_CSTITEM.AsInteger;
  CurrencyEdit5.Value       := fDMCadNCM.cdsNCM_CSTPERC_FCP.AsFloat;
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmCadNCM.btnExcluir_CSTClick(Sender: TObject);
begin
  if fDMCadNCM.cdsNCM_CST.IsEmpty then
    exit;

  if MessageDlg('Excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNCM.cdsNCM_CST.Delete;
end;

procedure TfrmCadNCM.btnGerador_CSTClick(Sender: TObject);
begin
  {if fDMCadNCM.cdsNCM_CST.IsEmpty then
  begin
    MessageDlg('*** Não existe registro inicial', mtError, [mbOk], 0);
    exit;
  end;}
  if RxDBLookupCombo4.Text = ''  then
  begin
    MessageDlg('*** Não foi informado a CST ICMS!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Gerar o CST para todas as UFs?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  ProgressBar1.Visible := True;
  Label16.Visible      := True;
  Label16.Refresh;
  try
    ProgressBar1.Max      := fDMCadNCM.cdsUF.RecordCount;
    ProgressBar1.Position := 0;
    fDMCadNCM.cdsUF.First;
    while not fDMCadNCM.cdsUF.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if fDMCadNCM.cdsUFIDPAIS.AsInteger = 1 then
      begin
        if RxDBLookupCombo4.Text <> '' then
          prc_Gerar_CST(fDMCadNCM.cdsUFUF.AsString,RxDBLookupCombo4.KeyValue)
        else
          prc_Gerar_CST(fDMCadNCM.cdsUFUF.AsString,fDMCadNCM.cdsNCM_CSTID_CST_ICMS.AsInteger);
      end;
      fDMCadNCM.cdsUF.Next;
    end;
    MessageDlg('Processo concluido!', mtInformation, [mbOk], 0);
  except
    MessageDlg('Erro na gravação por UF!', mtError, [mbOk], 0);
  end;
  ProgressBar1.Visible := False;
  Label16.Visible      := False;
end;

procedure TfrmCadNCM.prc_Gerar_CST(UF: String; ID_CST: Integer);
var
  vItemAux: Integer;
begin
  if fDMCadNCM.cdsNCM_CST.Locate('UF',UF,[loCaseInsensitive]) then
    exit;

  fDMCadNCM.cdsNCM_CST.Last;
  vItemAux := fDMCadNCM.cdsNCM_CSTITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNCM.cdsNCM_CST.Insert;
  fDMCadNCM.cdsNCM_CSTID.AsInteger          := fDMCadNCM.cdsNCMID.AsInteger;
  fDMCadNCM.cdsNCM_CSTITEM.AsInteger        := vItemAux;
  fDMCadNCM.cdsNCM_CSTUF.AsString           := UF;
  fDMCadNCM.cdsNCM_CSTID_CST_ICMS.AsInteger := ID_CST;
  fDMCadNCM.cdsNCM_CST.Post;
end;

procedure TfrmCadNCM.SpeedButton1Click(Sender: TObject);
var
  ffrmCadObs_Lei: TfrmCadObs_Lei;
begin
  ffrmCadObs_Lei := TfrmCadObs_Lei.Create(self);
  ffrmCadObs_Lei.ShowModal;

  FreeAndNil(ffrmCadObs_Lei);

  fDMCadNCM.cdsObs_Lei.Close;
  fDMCadNCM.cdsObs_Lei.Open;
end;

procedure TfrmCadNCM.SpeedButton7Click(Sender: TObject);
begin
  fDMCadNCM.cdsObs_Lei.Close;
  fDMCadNCM.cdsObs_Lei.Open;
end;

procedure TfrmCadNCM.DBEdit2Exit(Sender: TObject);
begin
  if trim(fDMCadNCM.cdsNCMCOD_CEST.AsString) <> '' then
  begin
    fDMCadNCM.qCest.Close;
    fDMCadNCM.qCest.ParamByName('COD_CEST').AsString := fDMCadNCM.cdsNCMCOD_CEST.AsString;
    fDMCadNCM.qCest.Open;
    if fDMCadNCM.qCest.IsEmpty then
    begin
      MessageDlg('*** Código do CEST não encontrado na tabela! ', mtError, [mbOk], 0);
      DBEdit2.SetFocus;
      exit;
    end;
  end;
end;

procedure TfrmCadNCM.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_CodCest: TfrmSel_CodCest;
begin
  if (Key = Vk_F2) then
  begin
    vCodCest_Pos := fDMCadNCM.cdsNCMCOD_CEST.AsString;
    ffrmSel_CodCest := TfrmSel_CodCest.Create(Self);
    ffrmSel_CodCest.ShowModal;
    if vCodCest_Pos <> '' then
      fDMCadNCM.cdsNCMCOD_CEST.AsString := vCodCest_Pos
    else
      fDMCadNCM.cdsNCMCOD_CEST.Clear;
  end;
end;

procedure TfrmCadNCM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
    BitBtn1.Visible := not(BitBtn1.Visible);
end;

procedure TfrmCadNCM.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realizar a atualização do Código CEST?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Le_Cest(8);
  prc_Le_Cest(6);
  prc_Le_Cest(5);
  prc_Le_Cest(4);
end;

procedure TfrmCadNCM.prc_Le_Cest(Contador: Integer);
var
  vGravarAux  : Boolean;
begin
  fDMCadNCM.cdsTab_Cest.Close;
  fDMCadNCM.cdsTab_Cest.Open;
  fDMCadNCM.cdsTab_Cest.First;
  while not fDMCadNCM.cdsTab_Cest.Eof do
  begin
    if fDMCadNCM.cdsTab_CestCONTADOR.AsInteger = 1 then
    begin
      if Length(fDMCadNCM.cdsTab_CestNCM.AsString) = Contador then
      begin
        fDMCadNCM.cdsNCMAux.Close;
        fDMCadNCM.sdsNCMAux.ParamByName('NCM').AsString := fDMCadNCM.cdsTab_CestNCM.AsString;
        fDMCadNCM.cdsNCMAux.Open;
        fDMCadNCM.cdsNCMAux.First;
        while not fDMCadNCM.cdsNCMAux.Eof do
        begin
          if (trim(fDMCadNCM.cdsNCMAuxCOD_CEST.AsString) = '') or (fDMCadNCM.cdsNCMAuxCOD_CEST.IsNull) then
          begin
            fDMCadNCM.prc_Localizar(fDMCadNCM.cdsNCMAuxID.AsInteger);
            if not fDMCadNCM.cdsNCM.IsEmpty then
            begin
              fDMCadNCM.qCestAux.Close;
              fDMCadNCM.qCestAux.ParamByName('NCM').AsString := fDMCadNCM.cdsTab_CestNCM.AsString;
              fDMCadNCM.qCestAux.Open;

              fDMCadNCM.cdsNCM.Edit;
              fDMCadNCM.cdsNCMCOD_CEST.AsString := fDMCadNCM.qCestAuxCOD_CEST.AsString;
              fDMCadNCM.cdsNCM.Post;
              fDMCadNCM.cdsNCM.ApplyUpdates(0);
            end;
          end; 
          fDMCadNCM.cdsNCMAux.Next;
        end;
      end;
    end;
    fDMCadNCM.cdsTab_Cest.Next;
  end;
end;

procedure TfrmCadNCM.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadNCM.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') and (fDMCadNCM.cdsNCM_ConsultaIBPT_INATIVO.AsString = 'N') and
     (fDMCadNCM.cdsNCM_ConsultaDT_IBPTFIM.AsDateTime < Date)  then
  begin
    Background  := $0053A9FF;
    AFont.Color := clBlack;
  end
  else
  if (trim(fDMCadNCM.cdsNCM_ConsultaCOD_CEST.AsString) = '') or (fDMCadNCM.cdsNCM_ConsultaCOD_CEST.IsNull) then
    Background := clYellow;
end;

procedure TfrmCadNCM.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\NCM.fr3';
  if FileExists(vArq) then
    fDMCadNCM.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadNCM.frxReport1.ShowReport;
end;

procedure TfrmCadNCM.SpeedButton5Click(Sender: TObject);
begin
  fDMCadNCM.cdsUnidade.Close;
  fDMCadNCM.cdsUnidade.Open;
end;

procedure TfrmCadNCM.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Unidade_Conv then
  begin
    fDMCadNCM.prc_Abrir_Unidade_Conv(fDMCadNCM.cdsNCMUNIDADE_TRIB.AsString);


  end;

end;

procedure TfrmCadNCM.btnInserir_UnidClick(Sender: TObject);
begin
  if fDMCadNCM.cdsNCMUNIDADE_TRIB.AsString = '' then
  begin
    MessageDlg('Unidade Tributável não informada', mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo6.Text) = '' then
  begin
    MessageDlg('Unidade Comercial não informada', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNCM.cdsUnidade_Conv.Locate('UNIDADE;ITEM',VarArrayOf([RxDBLookupCombo6.Text,vItem_Unidade]),[locaseinsensitive]);

  if fDMCadNCM.cdsNCM_Uni.Locate('UNIDADE;ITEM_UNIDADE',VarArrayOf([fDMCadNCM.cdsUnidade_ConvUNIDADE.AsString,fDMCadNCM.cdsUnidade_ConvITEM.AsInteger]),[locaseinsensitive]) then
  begin
    MessageDlg('Unidade Comercial já lançada', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNCM.cdsNCM_Uni.Insert;
  fDMCadNCM.cdsNCM_UniID.AsInteger           := fDMCadNCM.cdsNCMID.AsInteger;
  fDMCadNCM.cdsNCM_UniUNIDADE.AsString       := RxDBLookupCombo6.Text;
  fDMCadNCM.cdsNCM_UniITEM_UNIDADE.AsInteger := fDMCadNCM.cdsUnidade_ConvITEM.AsInteger;
  fDMCadNCM.cdsNCM_Uni.Post;
end;

procedure TfrmCadNCM.RxDBLookupCombo6Exit(Sender: TObject);
begin
  vItem_Unidade := fDMCadNCM.cdsUnidade_ConvITEM.AsInteger;
end;

procedure TfrmCadNCM.btnExcluir_UniClick(Sender: TObject);
begin
  if fDMCadNCM.cdsNCM_Uni.RecordCount <= 0 then
    exit;
  if MessageDlg('Deseja excluir a unidade?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNCM.cdsNCM_Uni.Delete;
end;

procedure TfrmCadNCM.NxButton1Click(Sender: TObject);
begin
  MessageDlg('Marcar esse campo para identificar que o NCM Cálcula o FCP,'+#13+
             'lembrando que é por UF'+#13+
             'Marcando esse campo e não preenchendo a informação por UF que esta na aba Sit. Trib (Por UF),'+#13+
             'o sistema vai buscar o % padrão que esta na UF!' , mtConfirmation, [mbOk], 0);
end;

procedure TfrmCadNCM.btnAjustar_IBPTClick(Sender: TObject);
begin
  fDMCadNCM.cdsNCM_Consulta.First;
  while not fDMCadNCM.cdsNCM_Consulta.Eof do
  begin
    if (fDMCadNCM.cdsNCM_ConsultaDT_IBPTFIM.AsDateTime < Date) and (fDMCadNCM.cdsNCM_ConsultaIBPT_INATIVO.AsString <> 'S') then
    begin
      fDMCadNCM.qIBPT.Close;
      fDMCadNCM.qIBPT.ParamByName('CODIGO').AsString := fDMCadNCM.cdsNCM_ConsultaNCM.AsString;
      fDMCadNCM.qIBPT.Open;
      if (fDMCadNCM.qIBPT.IsEmpty) or (fDMCadNCM.qIBPTDT_FINAL.AsDateTime < Date) then
        prc_Gravar_IBPT(fDMCadNCM.cdsNCM_ConsultaNCM.AsString);
    end;
    fDMCadNCM.cdsNCM_Consulta.Next;
  end;
  prc_Consultar;
end;

procedure TfrmCadNCM.prc_Gravar_IBPT(NCM: String);
var
  fDMCadTab_IBPT: TDMCadTab_IBPT;
begin
  fDMCadTab_IBPT := TDMCadTab_IBPT.Create(Self);
  try
  uUTILIBPT.prc_Busca_OnLine(fDMCadNCM.qParametros_NFETOKEN_IBPT.AsString,'09312127000110',NCM,fDMCadTab_IBPT.qFilialUF.AsString,'');
  except
  end;

  if trim(vIBPT_NCM) = '' then
    exit;

  try
    fDMCadTab_IBPT.prc_Localizar(0,NCM,'');
    if not fDMCadTab_IBPT.cdsIBPT.IsEmpty then
      fDMCadTab_IBPT.cdsIBPT.Edit
    else
    begin
      fDMCadTab_IBPT.prc_Inserir;
      fDMCadTab_IBPT.cdsIBPTCODIGO.AsString := vIBPT_NCM;
    end;
    fDMCadTab_IBPT.cdsIBPTNOME.AsString   := vIBPT_Descricao;
    if vIBPT_Ex <= 0 then
      fDMCadTab_IBPT.cdsIBPTEX.AsString := ''
    else
      fDMCadTab_IBPT.cdsIBPTEX.AsString := IntToStr(vIBPT_Ex);
    fDMCadTab_IBPT.cdsIBPTTABELA.AsString := '0';
    fDMCadTab_IBPT.cdsIBPTDT_INICIO.AsDateTime := StrToDate(vIBPT_VigenciaInicio);
    fDMCadTab_IBPT.cdsIBPTDT_FINAL.AsDateTime := StrToDate(vIBPT_VigenciaFim);
    fDMCadTab_IBPT.cdsIBPTCHAVE.AsString      := vIBPT_Chave;
    fDMCadTab_IBPT.cdsIBPTVERSAO.AsString     := vIBPT_Versao;
    fDMCadTab_IBPT.cdsIBPTFONTE.AsString      := vIBPT_Fonte;
    fDMCadTab_IBPT.cdsIBPTPERC_ESTADUAL.AsFloat   := StrToFloat(FormatFloat('0.000',vIBPT_Estadual));
    fDMCadTab_IBPT.cdsIBPTPERC_MUNICIPAL.AsFloat  := StrToFloat(FormatFloat('0.000',vIBPT_Municipal));
    fDMCadTab_IBPT.cdsIBPTPERC_NACIONAL.AsFloat   := StrToFloat(FormatFloat('0.000',vIBPT_Nacional));
    fDMCadTab_IBPT.cdsIBPTPERC_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.000',vIBPT_Importado));
    fDMCadTab_IBPT.prc_Gravar;
  finally
    FreeAndNil(fDMCadTab_IBPT);
  end;

end;

procedure TfrmCadNCM.GroupBox2Enter(Sender: TObject);
begin
  fDMCadNCM.cdsTab_CSTICMS.IndexFieldNames := 'COD_CST';
end;

procedure TfrmCadNCM.GroupBox2Exit(Sender: TObject);
begin
  fDMCadNCM.cdsTab_CSTICMS.IndexFieldNames := 'ID';
end;

end.
