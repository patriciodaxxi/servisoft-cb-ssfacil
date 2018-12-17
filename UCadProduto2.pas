unit UCadProduto2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB,
  UCadUnidade, UCadNCM, UCBase, StdCtrls, DBCtrls, RxDBComb, RxLookup, RXDBCtrl, ToolEdit, CurrEdit, ExtCtrls, RzTabs,
  UCadProduto_Forn, UCadProduto_Consumo, RzPanel, Mask, NxCollection, DBVGrids, DBGrids, UDMCopiarProduto, SqlExpr,
  dbXPress, Menus, BaseGrid, DBAdvGrid, AdvDBLookupComboBox, UCadProduto_UF, UCadProduto_Uni, ComCtrls, RzChkLst, RzLstBox,
  ExtDlgs, UCadProduto_Matriz, UCadProduto_Comb, UCadProduto_Cor, UCadProduto_Emb, UCadProduto_Atelier, UGerar_CBarra;

type
  TfrmCadProduto2 = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    pnlCons_Produto: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtReferencia: TEdit;
    ceID: TCurrencyEdit;
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
    Label4: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    RxDBComboBox7: TRxDBComboBox;
    TabSheet2: TRzTabSheet;
    pnlCadastro_Forn: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label29: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label30: TLabel;
    rxdbGrupo: TRxDBLookupCombo;
    Label32: TLabel;
    rxdbMarca: TRxDBLookupCombo;
    Label33: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label34: TLabel;
    rxdbFornecedor: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label36: TLabel;
    DBEdit15: TDBEdit;
    Label37: TLabel;
    edtCodBarra: TEdit;
    Label44: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label68: TLabel;
    ComboBox2: TComboBox;
    Label72: TLabel;
    Label73: TLabel;
    RzPageControl3: TRzPageControl;
    TS_Fiscal: TRzTabSheet;
    TS_Opcoes: TRzTabSheet;
    pnlOpcoes: TPanel;
    Label13: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    pnlFiscal: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    Label35: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit10: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    btnCopiarProduto: TNxButton;
    ckInativo: TCheckBox;
    btnImprimir: TNxButton;
    Label26: TLabel;
    DBDateEdit1: TDBDateEdit;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    Conferncia1: TMenuItem;
    ProgressBar1: TProgressBar;
    StaticText2: TStaticText;
    TS_Obs: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label92: TLabel;
    DBEdit44: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label50: TLabel;
    DBEdit27: TDBEdit;
    DBEdit45: TDBEdit;
    Label93: TLabel;
    Label94: TLabel;
    DBEdit46: TDBEdit;
    Label71: TLabel;
    Label95: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    RzCheckList1: TRzCheckList;
    TabSheet3: TRzTabSheet;
    Panel5: TPanel;
    btnInserir_UF: TNxButton;
    btnAlterar_UF: TNxButton;
    btnExcluir_UF: TNxButton;
    SMDBGrid6: TSMDBGrid;
    Label100: TLabel;
    DBEdit51: TDBEdit;
    SpeedButton3: TSpeedButton;
    ListBox1: TListBox;
    Label101: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    ProdutoAgrupadoRefPadro1: TMenuItem;
    TS_Foto: TRzTabSheet;
    DBEdit55: TDBEdit;
    BitBtn20: TBitBtn;
    Label106: TLabel;
    Image1: TImage;
    Label107: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    btnAlterar_Nome: TNxButton;
    TabSheet5: TRzTabSheet;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    Image2: TImage;
    btnConverter: TBitBtn;
    Label111: TLabel;
    Label112: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label113: TLabel;
    Edit9: TEdit;
    Label114: TLabel;
    DBEdit57: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    TS_Livro: TRzTabSheet;
    pnlLivro: TPanel;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label31: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBDateEdit2: TDBDateEdit;
    Edit1: TEdit;
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
    procedure ceIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBComboBox7Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure btnCopiarProdutoClick(Sender: TObject);
    procedure rxdbGrupoDropDown(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Conferncia1Click(Sender: TObject);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure rxdbGrupoExit(Sender: TObject);
    procedure RxDBComboBox7Exit(Sender: TObject);
    procedure btnExcluir_UFClick(Sender: TObject);
    procedure btnInserir_UFClick(Sender: TObject);
    procedure btnAlterar_UFClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure ProdutoAgrupadoRefPadro1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnAlterar_NomeClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure RxDBComboBox7Enter(Sender: TObject);
    procedure btnConverterClick(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadProduto: TDMCadProduto;
    fDMCopiarProduto: TDMCopiarProduto;
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadProduto_Forn: TfrmCadProduto_Forn;
    ffrmCadProduto_Consumo: TfrmCadProduto_Consumo;
    ffrmCadProduto_Matriz: TfrmCadProduto_Matriz;
    ffrmCadProduto_UF: TfrmCadProduto_UF;
    ffrmCadProduto_Uni: TfrmCadProduto_Uni;
    ffrmCadProduto_Comb: TfrmCadProduto_Comb;
    ffrmCadProduto_Cor: TfrmCadProduto_Cor;
    ffrmCadProduto_Emb: TfrmCadProduto_Emb;
    ffrmCadProduto_Atelier: TfrmCadProduto_Atelier;
    ffrmGerar_CBarra: TfrmGerar_CBarra;

    vReferencia_Ant: String;
    vTipo_Reg_Ant: String;
    vID_Linha_Ant: Integer;
    vID_Grupo_Ant: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Produto;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilita;

    procedure prc_Verificar_mGrupo(ID_Grupo: Integer);
    procedure prc_Gravar_mGrupo(ID: Integer ; Codigo, Nome: String);
    procedure prc_Gravar_mGrupo_Produto;

    procedure prc_Imprimir_Estruturado(Agrupado: Boolean = False);
    procedure prc_Mostrar_Foto;

    procedure prc_Controle_Produto_Livro;

    function fnc_Filial : Boolean;

  public
    { Public declarations }
    vID_Produto_Local: Integer;
  end;

var
  frmCadProduto2: TfrmCadProduto2;

implementation

uses rsDBUtils, uUtilPadrao, URelProduto, URelProduto_Grupo, USel_Grupo, USel_Plano_Contas, DmdDatabase;

{$R *.dfm}

procedure TfrmCadProduto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Produto_Local := 0;
  Action := Cafree;
end;

procedure TfrmCadProduto2.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
        (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Produto;

  if fDMCadProduto.cdsProduto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadProduto2.prc_Excluir_Registro;
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
    end
  end;
end;

procedure TfrmCadProduto2.prc_Gravar_Registro;
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  ID: TTransactionDesc;
  vGerar_Ref: Boolean;
  vAux: Integer;
begin
  vIDAux := fDMCadProduto.cdsProdutoID.AsInteger;
  if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := fDMCadProduto.cdsProdutoID.AsString;

  if fDMCadProduto.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadProduto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds  := TSQLDataSet.Create(nil);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    sds2 := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 2;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);

    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PRODUTO');
    sds.ExecSQL();

    vGerar_Ref := False;
    if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
      vGerar_Ref := True
    else
    if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    begin
      sds2.SQLConnection := dmDatabase.scoDados;
      sds2.Close;
      sds2.NoMetadata    := True;
      sds2.GetMetadata   := False;
      sds2.CommandText   := 'SELECT ID FROM PRODUTO '
                          + ' WHERE TIPO_REG = ' + QuotedStr(fDMCadProduto.cdsProdutoTIPO_REG.AsString)
                          + '   AND REFERENCIA_SEQ = ' + IntToStr(fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
      sds2.Open;
      if (sds2.FieldByName('ID').AsInteger > 0) and (sds2.FieldByName('ID').AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
        vGerar_Ref := True;
    end;

    if vGerar_Ref then
    begin
      vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
      fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
      fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString +
                                                          FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
    end;

    fDMCadProduto.prc_Gravar;

    if (fDMCadProduto.qParametrosEMPRESA_LIVRARIA.AsString = 'S') and (fDMCadProduto.cdsProduto_Livro.State in [dsEdit,dsInsert]) then
    begin
      if (trim(fDMCadProduto.cdsProduto_LivroAUTOR.AsString) <> '') or (trim(fDMCadProduto.cdsProduto_LivroCICLO.AsString) <> '') or
         (trim(fDMCadProduto.cdsProduto_LivroSELO.AsString) <> '') or (fDMCadProduto.cdsProduto_LivroPAGINA.AsInteger > 0) or
         (fDMCadProduto.cdsProduto_LivroDTLANCAMENTO.AsDateTime > 10) then
      begin
        fDMCadProduto.cdsProduto_Livro.Post;
        fDMCadProduto.cdsProduto_Livro.ApplyUpdates(0);
      end
      else
        fDMCadProduto.cdsProduto_Livro.Cancel;
    end;

    vCodProduto_Pos := 0;
    vReferencia_Pos := '';

    dmDatabase.scoDados.Commit(ID);

    if fDMCadProduto.cdsProduto_Forn.RecordCount < 1 then
    begin
      vCodProduto_Pos := fDMCadProduto.cdsProdutoID.AsInteger;
      vReferencia_Pos := fDMCadProduto.cdsProdutoReferencia.AsString;
    end;
    prc_Habilita;
    if (vIDAux > 0) then
    begin
      if fDMCadProduto.cdsProduto_Consulta.IsEmpty then
        ceID.AsInteger := vIDAux;
      prc_Consultar;
      fDMCadProduto.cdsProduto_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
      ceID.Clear;
    end;
    RzPageControl2.ActivePage := TabSheet1;
    RzPageControl1.ActivePage := TS_Consulta;

  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Produto: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    FreeAndNil(sds2);
end;

procedure TfrmCadProduto2.prc_Inserir_Registro;
begin
  if not fnc_Filial then
    exit;
    
  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;

  prc_Controle_Produto_Livro;

  RzPageControl1.ActivePage := TS_Cadastro;
  DBEdit2.ReadOnly := False;
  btnAlterar_Nome.Enabled := False;

  prc_Habilita;

  RxDBComboBox7.SetFocus;
end;

procedure TfrmCadProduto2.FormShow(Sender: TObject);
var
  i: Integer;
  vTipo_Consulta_Produto_Padrao: String;
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);

  {DBEdit3.Visible  := not(Label4.Enabled);
  DBEdit57.Visible := not(Label4.Enabled);
  DBEdit5.Visible  := not(Label12.Enabled);
  DBEdit11.Visible := not(Label24.Enabled);

  label4.Enabled   := not(label4.Enabled);
  label12.Enabled  := not(label12.Enabled);
  label24.Enabled  := not(label24.Enabled);
  Label114.Enabled := (Label4.Enabled);}

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'COD_BARRA') then
      SMDBGrid1.Columns[i].Visible := False
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid1.Columns[i].Visible := label4.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA') then
      SMDBGrid1.Columns[i].Visible := label12.Enabled;
  end;

  Label37.Visible     := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  edtCodBarra.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  Label36.Visible  := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  DBEdit15.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  if fDMCadProduto.qParametrosUSA_EDI.AsString = 'S' then
    TabSheet2.Caption := 'Dados Fornecedor/Cliente'
  else
    TabSheet2.Caption := 'Dados Fornecedor';

  vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO.AsString);
  if vTipo_Consulta_Produto_Padrao = '' then
    vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametrosTIPO_CONSULTA_PRODUTO_PADRAO.AsString);

  if (trim(vTipo_Consulta_Produto_Padrao) = '') then
    ComboBox2.ItemIndex := 5
  else
  if vTipo_Consulta_Produto_Padrao = 'P' then
    ComboBox2.ItemIndex := 0
  else
  if vTipo_Consulta_Produto_Padrao = 'M' then
    ComboBox2.ItemIndex := 1
  else
  if vTipo_Consulta_Produto_Padrao = 'N' then
    ComboBox2.ItemIndex := 2
  else
  if vTipo_Consulta_Produto_Padrao = 'C' then
    ComboBox2.ItemIndex := 3
  else
  if vTipo_Consulta_Produto_Padrao = 'I' then
    ComboBox2.ItemIndex := 4;
  Label29.Visible           := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  RxDBLookupCombo7.Visible  := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');

  if vID_Produto_Local > 0 then
  begin
    ceID.AsInteger := vID_Produto_Local;
    prc_Consultar;
  end;
end;

procedure TfrmCadProduto2.prc_Consultar;
begin
  SMDBGrid1.DisableScroll;
  fDMCadProduto.cdsProduto_Consulta.Close;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta;
  if ceID.AsInteger > 0 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.ID =  ' + ceID.Text
  else
  if edtCodBarra.Text <> '' then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.COD_BARRA = ' + QuotedStr(edtCodBarra.Text)
  else
  begin
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE 0 = 0 ';
    if Trim(edtNome.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
    if Trim(edtReferencia.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtReferencia.Text+'%');
    if rxdbGrupo.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_GRUPO = ' + IntToStr(rxdbGrupo.KeyValue);
    if rxdbMarca.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_MARCA = ' + IntToStr(rxdbMarca.KeyValue);
    if rxdbFornecedor.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_FORNECEDOR = ' + IntToStr(rxdbFornecedor.KeyValue);
    if trim(Edit1.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND LI.AUTOR  LIKE ' + QuotedStr('%'+Edit1.Text+'%');

    case ComboBox2.ItemIndex of
      0: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('P');
      1: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('M');
      2: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('N');
      3: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('C');
    end;

    if Trim(Edit9.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.LOCALIZACAO LIKE ' + QuotedStr('%'+Edit9.Text+'%');

    if not ckInativo.Checked then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND PRO.INATIVO = ' + QuotedStr('N');
  end;
  fDMCadProduto.cdsProduto_Consulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadProduto2.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProduto2.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.State in [dsBrowse]) or not(fDMCadProduto.cdsProduto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto.CancelUpdates;
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') and (fDMCadProduto.cdsProduto_Veiculo.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Veiculo.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  RzPageControl2.ActivePage := TabSheet1;
end;

procedure TfrmCadProduto2.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProduto2.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.IsEmpty) or not(fDMCadProduto.cdsProduto.Active) or (fDMCadProduto.cdsProdutoID.AsInteger < 1) then
    exit;

  fDMCadProduto.cdsProduto.Edit;
  DBEdit2.ReadOnly        := True;
  btnAlterar_Nome.Enabled := True;

  prc_Controle_Produto_Livro;

  prc_Habilita;
end;

procedure TfrmCadProduto2.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProduto2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadProduto2.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProduto2.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(frmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto2.DBEdit11Exit(Sender: TObject);
begin
  if (StrToFloat(FormatFloat('0.00000',fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) then
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat *
                                                              fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100) +
                                                              fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat));
end;

procedure TfrmCadProduto2.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadProduto2.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto2.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto2.ceIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto2.BitBtn1Click(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdForn;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadProduto2.BitBtn4Click(Sender: TObject);
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

procedure TfrmCadProduto2.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Forn.Delete;
end;

procedure TfrmCadProduto2.RxDBComboBox7Change(Sender: TObject);
begin
  if (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'N') or (RxDBComboBox7.ItemIndex = 2) or (RxDBComboBox7.ItemIndex = 4) then
  begin
    Label16.Visible  := False;
    DBEdit14.Visible := False;
  end
  else
  begin
    Label16.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and (RxDBComboBox7.ItemIndex = 0))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 1))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'A'));
    DBEdit14.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and (RxDBComboBox7.ItemIndex = 0))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 1))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'A'));
  end;
  if (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'N') or (RxDBComboBox7.ItemIndex = 2) or (RxDBComboBox7.ItemIndex = 4) then
  begin
    Label33.Visible          := False;
    RxDBLookupCombo8.Visible := False;
  end
  else
  begin
    Label33.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and (RxDBComboBox7.ItemIndex = 0))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 1))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'));
    RxDBLookupCombo8.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and (RxDBComboBox7.ItemIndex = 0))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 1))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                             or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'))
  end;
end;

procedure TfrmCadProduto2.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadProduto2.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if (fDMCadProduto.cdsProduto_Consulta.Active) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
      Label73.Caption := FormatFloat('###,###,##0.000##',fDMCadProduto.cdsProduto_ConsultaQTD_ESTOQUE.AsFloat);
    RzPageControl2.ActivePage := TabSheet1;
    //if RzPageControl1.ActivePage = TS_Cadastro then
    //  RZPageControl3.ActivePage := TS_Fiscal;
    DBEdit1Change(Sender);
  end
  else
    fDMCadProduto.cdsProduto_Serie.Close;
  if not(fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
            (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Produto;
      //RZPageControl3.ActivePage := TS_Fiscal;
      prc_Mostrar_Foto;
    end;
  end;
  RxDBComboBox7Change(Sender);
end;

procedure TfrmCadProduto2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto2.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.IndexFieldNames := 'CODIGO';
  StaticText2.Visible := True;
  vID_Grupo_Ant       := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
end;

procedure TfrmCadProduto2.RxDBLookupCombo7Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto2.prc_Posiciona_Produto;
begin
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
  fDMCadProduto.cdsProduto_Forn.Close;
  fDMCadProduto.cdsProduto_Forn.Open;
  fDMCadProduto.cdsProduto_Consumo.Close;
  fDMCadProduto.cdsProduto_Consumo.Open;
  fDMCadProduto.prc_Abrir_Produto_Livro(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto2.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadProduto.cdsFornecedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto2.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.Close;
  fDMCadProduto.cdsGrupo.Open;
end;

procedure TfrmCadProduto2.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.Close;
  fDMCadProduto.cdsMarca.Open;
end;

procedure TfrmCadProduto2.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto2.SpeedButton7Click(Sender: TObject);
begin
  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto2.edtCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto2.btnPesquisarClick(Sender: TObject);
begin
  pnlCons_Produto.Visible := not(pnlCons_Produto.Visible);
  if pnlCons_Produto.Visible then
  begin
    edtNome.SetFocus;
    btnConsultarClick(Sender);
  end
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadProduto2.prc_Limpar_Edit_Consulta;
begin
  edtCodBarra.Clear;
  edtNome.Clear;
  edtReferencia.Clear;
  rxdbMarca.ClearValue;
  ceID.Clear;
  rxdbGrupo.ClearValue;
  rxdbFornecedor.ClearValue;
end;

procedure TfrmCadProduto2.DBCheckBox2Click(Sender: TObject);
begin
  Label72.Visible := ((DBCheckBox2.Checked));
  Label73.Visible := ((DBCheckBox2.Checked));
end;

procedure TfrmCadProduto2.btnCopiarProdutoClick(Sender: TObject);
var
  x, x2: Integer;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
    exit;

  if MessageDlg('Deseja copiar o produto selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCopiarProduto := TDMCopiarProduto.Create(Self);
  fDMCopiarProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
  if fDMCopiarProduto.cdsProduto.IsEmpty then
  begin
    MessageDlg('Produto não encontrado!', mtError, [mbOk], 0);
    FreeAndNil(fDMCopiarProduto);
    exit;
  end;

  if not fnc_Filial then
    exit;

  try
    fDMCadProduto.prc_Inserir;
    if not(fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) then
      exit;

    for x := 0 to (fDMCopiarProduto.cdsProduto.FieldCount - 1) do
    begin
      if (fDMCopiarProduto.cdsProduto.Fields[x].FieldName <> 'ID') and (fDMCopiarProduto.cdsProduto.Fields[x].FieldName <> 'COD_BARRA') then
         fDMCadProduto.cdsProduto.FieldByName(fDMCopiarProduto.cdsProduto.Fields[x].FieldName).AsVariant := fDMCopiarProduto.cdsProduto.Fields[x].Value;
    end;

    fDMCopiarProduto.cdsProduto_Consumo.First;
    while not fDMCopiarProduto.cdsProduto_Consumo.Eof do
    begin
      fDMCadProduto.prc_Inserir_ProdConsumo;
      for x := 0 to (fDMCopiarProduto.cdsProduto_Consumo.FieldCount - 1) do
      begin
        if (fDMCopiarProduto.cdsProduto_Consumo.Fields[x].FieldName <> 'ID') then
           fDMCadProduto.cdsProduto_Consumo.FieldByName(fDMCopiarProduto.cdsProduto_Consumo.Fields[x].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Consumo.Fields[x].Value;
      end;
      fDMCadProduto.cdsProduto_Consumo.Post;

      fDMCopiarProduto.cdsProduto_Consumo_Tam.First;
      while not fDMCopiarProduto.cdsProduto_Consumo_Tam.Eof do
      begin
        fDMCadProduto.cdsProduto_Consumo_Tam.Insert;
        for x2 := 0 to (fDMCopiarProduto.cdsProduto_Consumo_Tam.FieldCount - 1) do
        begin
          if (fDMCopiarProduto.cdsProduto_Consumo_Tam.Fields[x2].FieldName <> 'ID') then
             fDMCadProduto.cdsProduto_Consumo_Tam.FieldByName(fDMCopiarProduto.cdsProduto_Consumo_Tam.Fields[x2].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Consumo_Tam.Fields[x2].Value;
        end;
        fDMCadProduto.cdsProduto_Consumo_Tam.Post;
        fDMCopiarProduto.cdsProduto_Consumo_Tam.Next;
      end;

      fDMCopiarProduto.cdsProduto_Consumo.Next;
    end;

    fDMCopiarProduto.cdsProduto_Tam.First;
    while not fDMCopiarProduto.cdsProduto_Tam.Eof do
    begin
      fDMCadProduto.cdsProduto_Tam.Insert;
      for x := 0 to (fDMCopiarProduto.cdsProduto_Tam.FieldCount - 1) do
      begin
        if (fDMCopiarProduto.cdsProduto_Tam.Fields[x].FieldName <> 'ID') then
           fDMCadProduto.cdsProduto_Tam.FieldByName(fDMCopiarProduto.cdsProduto_Tam.Fields[x].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Tam.Fields[x].Value;
      end;
      fDMCadProduto.cdsProduto_Tam.Post;
      fDMCopiarProduto.cdsProduto_Tam.Next;
    end;

  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao copiar: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(fDMCopiarProduto);

  RzPageControl1.ActivePage := TS_Cadastro;
  btnAlterarClick(Sender);
end;

procedure TfrmCadProduto2.prc_Habilita;
var
  i: Integer;
  vTexto: String;
begin
  TS_Consulta.TabEnabled     := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled         := not(btnAlterar.Enabled);
  btnConfirmar.Enabled       := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled        := not(pnlCadastro.Enabled);
  pnlCadastro_Forn.Enabled   := not(pnlCadastro_Forn.Enabled);
  btnInserir_UF.Enabled      := not(btnInserir_UF.Enabled);
  btnAlterar_UF.Enabled      := not(btnAlterar_UF.Enabled);
  btnExcluir_UF.Enabled      := not(btnExcluir_UF.Enabled);
  pnlFiscal.Enabled          := not(pnlFiscal.Enabled);
  pnlOpcoes.Enabled          := not(pnlOpcoes.Enabled);
  pnlLivro.Enabled           := not(pnlLivro.Enabled);
  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  TS_Foto.Enabled            := not(TS_Foto.Enabled);
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    vTexto := SMDBGrid2.Columns[i].FieldName;
    if (vTexto = 'COD_MATERIAL_FORN') or (vTexto = 'TAMANHO_CLIENTE') or (vTexto = 'NOME_MATERIAL_FORN') then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
end;

procedure TfrmCadProduto2.rxdbGrupoDropDown(Sender: TObject);
begin
  rxdbGrupo.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadProduto2.Normal1Click(Sender: TObject);
var
  vIndice: String;
begin
  Screen.Cursor := crHourGlass;
  btnImprimir.Enabled := False;
  vTipo_Config_Email := 3;

  vIndice := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames;

  SMDBGrid1.DisableScroll;
  try
    fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := 'NOMEGRUPO';
    if trim(vIndice) <> '' then
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames + ';' + vIndice;
    fRelProduto               := TfRelProduto .Create(Self);
    fRelProduto.vImpPreco     := RzCheckList1.ItemChecked[1];
    fRelProduto.vImpConsumo   := RzCheckList1.ItemChecked[2];
    fRelProduto.fDMCadProduto := fDMCadProduto;
    fRelProduto.RLReport1.PreviewModal;
    fRelProduto.RLReport1.Free;
    FreeAndNil(fRelProduto);
  finally
    btnImprimir.Enabled := True;
    Screen.Cursor := crDefault;
    SMDBGrid1.EnableScroll;
    if trim(vIndice) <> '' then
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := vIndice;
  end;
end;

procedure TfrmCadProduto2.Conferncia1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  prc_Imprimir_Estruturado(False);
end;

procedure TfrmCadProduto2.prc_Verificar_mGrupo(ID_Grupo: Integer);
var
  sds: TSQLDataSet;
begin
  if ID_Grupo <= 0 then
  begin
    prc_Gravar_mGrupo(0,'','');
    exit;
  end;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO, G.NIVEL, G.SUPERIOR, CASE NIVEL '
                       + 'WHEN 5 THEN ' + QuotedStr('          ') + ' ||  NOME '
                       + 'WHEN 4 THEN ' + QuotedStr('        ') + ' ||  NOME '
                       + 'WHEN 3 THEN ' + QuotedStr('      ') + ' ||  NOME '
                       + 'WHEN 2 THEN ' + QuotedStr('    ') + '||  NOME '
                       + 'WHEN 1 THEN NOME '
                       + 'ELSE G.NOME '
                       + 'END AS NOME_AUX '
                       + 'FROM GRUPO G '
                       + 'WHERE G.ID = ' + IntToStr(ID_Grupo);
    sds.Open;
    if (sds.FieldByName('Superior').IsNull) or (sds.FieldByName('Superior').AsInteger <= 0) then
      ID_Grupo := 0
    else
      ID_Grupo := sds.FieldByName('Superior').AsInteger;
    prc_Gravar_mGrupo(sds.FieldByName('ID').AsInteger,sds.FieldByName('Codigo').AsString,sds.FieldByName('Nome_Aux').AsString);
  finally
    FreeAndNil(sds);
  end;
  if ID_Grupo > 0 then
    prc_Verificar_mGrupo(ID_Grupo);
end;

procedure TfrmCadProduto2.prc_Gravar_mGrupo(ID: Integer; Codigo,
  Nome: String);
begin
  if not fDMCadProduto.mGrupo.FindKey([ID]) then
  begin
    fDMCadProduto.mGrupo.Insert;
    fDMCadProduto.mGrupoID_Grupo.AsInteger := ID;
    fDMCadProduto.mGrupoCodigo.AsString    := Codigo;
    fDMCadProduto.mGrupoNome.AsString      := Nome;
    fDMCadProduto.mGrupo.Post;
  end;
end;

procedure TfrmCadProduto2.prc_Gravar_mGrupo_Produto;
begin
  fDMCadProduto.mGrupo_Produto.Insert;
  fDMCadProduto.mGrupo_ProdutoID_Produto.AsInteger  := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
  fDMCadProduto.mGrupo_ProdutoID_Grupo.AsInteger    := fDMCadProduto.cdsProduto_ConsultaID_GRUPO.AsInteger;
  fDMCadProduto.mGrupo_ProdutoCod_Grupo.AsString    := fDMCadProduto.cdsProduto_ConsultaCOD_GRUPO.AsString;
  fDMCadProduto.mGrupo_ProdutoReferencia.AsString   := fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString;
  fDMCadProduto.mGrupo_ProdutoNome_Produto.AsString := fDMCadProduto.cdsProduto_ConsultaNOME.AsString;
  fDMCadProduto.mGrupo_ProdutoNCM.AsString          := fDMCadProduto.cdsProduto_ConsultaNCM.AsString;
  fDMCadProduto.mGrupo_ProdutoUnidade.AsString      := fDMCadProduto.cdsProduto_ConsultaUNIDADE.AsString;
  fDMCadProduto.mGrupo_ProdutoPreco_Custo.AsFloat   := StrToFloat(FormatFloat('0.000##',fDMCadProduto.cdsProduto_ConsultaPRECO_CUSTO.AsFloat));
  fDMCadProduto.mGrupo_ProdutoPreco_Venda.AsFloat   := StrToFloat(FormatFloat('0.000##',fDMCadProduto.cdsProduto_ConsultaPRECO_VENDA.AsFloat));
  fDMCadProduto.mGrupo_ProdutoSaldo_Estoque.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadProduto.cdsProduto_ConsultaQTD_ESTOQUE.AsFloat));
  fDMCadProduto.mGrupo_Produto.Post;
end;

procedure TfrmCadProduto2.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Grupo_Pos := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
    frmSel_Grupo  := TfrmSel_Grupo.Create(Self);
    frmSel_Grupo.ShowModal;
    fDMCadProduto.cdsProdutoID_GRUPO.AsInteger := vID_Grupo_Pos;
  end;
end;

procedure TfrmCadProduto2.rxdbGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if rxdbGrupo.Text <> '' then
      vID_Grupo_Pos := rxdbGrupo.KeyValue;
    frmSel_Grupo := TfrmSel_Grupo.Create(Self);
    frmSel_Grupo.ShowModal;
    if vID_Grupo_Pos > 0 then
      rxdbGrupo.KeyValue := vID_Grupo_Pos;
  end;
end;

procedure TfrmCadProduto2.RxDBLookupCombo5Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProduto2.rxdbGrupoExit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProduto2.RxDBComboBox7Exit(Sender: TObject);
begin
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProduto.State in [dsInsert]) and
     (copy(fDMCadProduto.cdsProdutoREFERENCIA.AsString,2,1) = '.') then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := '';
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '04'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '01'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '07'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'I' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '08';
end;

procedure TfrmCadProduto2.btnExcluir_UFClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_UF.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_UF.Delete;
end;

procedure TfrmCadProduto2.btnInserir_UFClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdUF;

  ffrmCadProduto_UF := TfrmCadProduto_UF.Create(self);
  ffrmCadProduto_UF.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UF.ShowModal;
  FreeAndNil(ffrmCadProduto_UF);
end;

procedure TfrmCadProduto2.btnAlterar_UFClick(Sender: TObject);
begin
  if (trim(fDMCadProduto.cdsProduto_UFUF.AsString) = '') or (fDMCadProduto.cdsProduto_UF.IsEmpty) then
    exit;
  fDMCadProduto.cdsProduto_UF.Edit;
  ffrmCadProduto_UF := TfrmCadProduto_UF.Create(self);
  ffrmCadProduto_UF.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UF.ShowModal;
  FreeAndNil(ffrmCadProduto_UF);
end;

procedure TfrmCadProduto2.SpeedButton3Click(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if ListBox1.Visible then
  begin
    ListBox1.Visible := False;
    exit;
  end;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadProduto.cdsNCM.Locate('ID',RxDBLookupCombo3.KeyValue,([Locaseinsensitive]))
  else
    exit;
  ListBox1.Height := 65;
  ListBox1.Items.Clear;
  ListBox1.Items.Add('EX  -  Descrição');
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'SELECT * FROM TAB_IBPT ' +
                       'WHERE CODIGO = ' + QuotedStr(fDMCadProduto.cdsNCMNCM.AsString) +
                       ' AND EX <> ' + QuotedStr('');
  sds.Open;
  sds.First;
  while not sds.Eof do
  begin
    ListBox1.Items.Add(sds.FieldByName('EX').AsString + ' - ' + sds.FieldByName('NOME').AsString);
    sds.Next;
  end;
  FreeAndNil(sds);

  ListBox1.Visible := True;
  ListBox1.SetFocus;
end;

procedure TfrmCadProduto2.ListBox1DblClick(Sender: TObject);
var
  vTexto: String;
begin
  if ListBox1.ItemIndex = 0 then
    exit;
  vTexto := ListBox1.Items[ListBox1.ItemIndex];
  fDMCadProduto.cdsProdutoNCM_EX.AsString := copy(vTexto,1,2);
  DBEdit51.SetFocus;
  ListBox1.Visible := False;
end;

procedure TfrmCadProduto2.ListBox1Exit(Sender: TObject);
begin
  ListBox1.Visible := False;
end;

procedure TfrmCadProduto2.DBEdit51Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if trim(DBEdit51.Text) = '' then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'SELECT * FROM TAB_IBPT '
                     + 'WHERE CODIGO = ' + QuotedStr(fDMCadProduto.cdsNCMNCM.AsString)
                     + ' AND EX = ' + QuotedStr(DBEdit51.Text);
  sds.Open;
  if sds.IsEmpty then
  begin
    MessageDlg('*** Excessão não encontrada na NCM, favor verificar!', mtError, [mbOk], 0);
    DBEdit51.SetFocus;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadProduto2.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ListBox1DblClick(Sender);
end;

procedure TfrmCadProduto2.SpeedButton11Click(Sender: TObject);
begin
  fDMCadProduto.cdsSitTribCf.Close;
  fDMCadProduto.cdsSitTribCf.Open;
end;

procedure TfrmCadProduto2.prc_Imprimir_Estruturado(Agrupado: Boolean);
var
  vCodGrupo_Ant: String;
  vRefAnt: String;
begin
  if fDMCadProduto.cdsProduto_Consulta.IsEmpty then
  begin
    MessageDlg('*** Não existe produto para imprimir!', mtInformation, [mbOk], 0);
    exit;
  end;
  Screen.Cursor := crHourGlass;
  SMDBGrid1.DisableScroll;
  try
    vCodGrupo_Ant := '-1';
    fDMCadProduto.mGrupo.EmptyDataSet;
    fDMCadProduto.mGrupo_Produto.EmptyDataSet;
    fDMCadProduto.mGrupo.IndexFieldNames         := 'Codigo';
    fDMCadProduto.mGrupo_Produto.IndexFieldNames := 'Cod_Grupo;Nome_Produto;Referencia';
    if Agrupado then
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := 'COD_GRUPO;REFERENCIA'
    else
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := 'COD_GRUPO;NOME;REFERENCIA';
    ProgressBar1.Max      := fDMCadProduto.cdsProduto_Consulta.RecordCount;
    ProgressBar1.Position := 0;
    ProgressBar1.Visible  := True;
    vRefAnt := '-1';
    fDMCadProduto.cdsProduto_Consulta.First;
    while not fDMCadProduto.cdsProduto_Consulta.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if vCodGrupo_Ant <> fDMCadProduto.cdsProduto_ConsultaCOD_GRUPO.AsString then
        prc_Verificar_mGrupo(fDMCadProduto.cdsProduto_ConsultaID_GRUPO.AsInteger);
      if not(Agrupado) or ((Agrupado) and (vRefAnt <> fDMCadProduto.cdsProduto_ConsultaREFERENCIA_PADRAO.AsString)) then
        prc_Gravar_mGrupo_Produto;
      vCodGrupo_Ant := fDMCadProduto.cdsProduto_ConsultaCOD_GRUPO.AsString;
      vRefAnt       := fDMCadProduto.cdsProduto_ConsultaREFERENCIA_PADRAO.AsString;
      fDMCadProduto.cdsProduto_Consulta.Next;
    end;
  finally
    ProgressBar1.Visible := False;
    Screen.Cursor        := crDefault;
    SMDBGrid1.EnableScroll;
  end;
  fRelProduto_Grupo               := TfRelProduto_Grupo.Create(Self);
  fRelProduto_Grupo.vImpPreco     := RzCheckList1.ItemChecked[1];
  fRelProduto_Grupo.vImpConsumo   := RzCheckList1.ItemChecked[2];
  fRelProduto_Grupo.fDMCadProduto := fDMCadProduto;
  fRelProduto_Grupo.RLReport1.PreviewModal;
  fRelProduto_Grupo.RLReport1.Free;
  FreeAndNil(fRelProduto_Grupo);
end;

procedure TfrmCadProduto2.ProdutoAgrupadoRefPadro1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  prc_Imprimir_Estruturado(True);
end;

procedure TfrmCadProduto2.DBEdit7Exit(Sender: TObject);
var
  vAux: Integer;
begin
  if (trim(DBEdit7.Text) = '') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString <> '') then
  begin
    vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
    fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.' +FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
  end;
  if ((trim(DBEdit7.Text) <> '') and ((trim(fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString) = '')) or (fDMCadProduto.cdsProduto.State in [dsInsert])
     or (DBEdit7.Text <> vReferencia_Ant)) then
    fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString := DBEdit7.Text;
  if (trim(DBEdit7.Text) <> '') and (Copy(DBEdit7.Text,1,2) <> fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.') then
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := 0;
end;

procedure TfrmCadProduto2.RxDBLookupCombo2Enter(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := not(fDMCadProduto.cdsProduto_Uni.IsEmpty);
end;

procedure TfrmCadProduto2.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  fDMCadProduto.cdsProdutoFOTO.AsString := OpenPictureDialog1.FileName;
  try
    Image1.Picture.LoadFromFile(fDMCadProduto.cdsProdutoFOTO.AsString)
  except
    Image1.Picture := nil;
  end;
  Image2.Picture := Image1.Picture;
end;

procedure TfrmCadProduto2.btnAlterar_NomeClick(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(M.ID_PRODUTO) CONTADOR, '
                     + ' (SELECT COUNT(E.ID_PRODUTO) FROM ESTOQUE_MOV E  '
                     + '  WHERE E.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger) + ' ) CONTADOR2 '
                     + ' FROM MOVIMENTO M '
                     + ' WHERE M.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger);
    sds.Open;
    if (sds.FieldByName('CONTADOR').AsInteger > 0) or (sds.FieldByName('CONTADOR2').AsInteger > 0) then
    begin
      MessageDlg('*** Esse produto já teve movimentação, não poderá ser alterado o nome!', mtInformation, [mbOk], 0);
      DBEdit2.ReadOnly := True;
    end
    else
    begin
      DBEdit2.ReadOnly := False;
      DBEdit2.SetFocus;
    end;
    sds.Close;

  except
    on e: Exception do
      begin
        raise Exception.Create(e.Message);
      end;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadProduto2.DBEdit1Change(Sender: TObject);
var
  vAux: Real;
begin
  vAux := 0;
  if trim(DBEdit1.Text) <> '' then
    vAux := StrToFloat(DBEdit1.Text);
  Label11.Visible          := (vAux > 0);
  RxDBLookupCombo4.Visible := (vAux > 0);
end;

procedure TfrmCadProduto2.DBEdit7Enter(Sender: TObject);
begin
  vReferencia_Ant  := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
    DBEdit7.SelStart := Length(DBEdit7.Text) + 1;
end;

procedure TfrmCadProduto2.prc_Mostrar_Foto;
begin
  Image1.Picture := nil;
  if trim(fDMCadProduto.cdsProdutoFOTO.AsString) <> '' then
  begin
    try
      Image1.Picture.LoadFromFile(fDMCadProduto.cdsProdutoFOTO.AsString);
    except
      Image1.Picture := nil;
    end;
  end;
  Image2.Picture := Image1.Picture; 
end;

procedure TfrmCadProduto2.RxDBComboBox7Enter(Sender: TObject);
begin
  vTipo_Reg_Ant := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
end;

procedure TfrmCadProduto2.btnConverterClick(Sender: TObject);
var
  vTipoAux: String;
  Texto: String;
  vAux: Integer;
begin
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if (copy(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,1,2) = 'P.') or (copy(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,1,2) = 'M.')
       or (copy(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,1,2) = 'O.') or (copy(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,1,2) = 'C.') then
    begin
      vTipoAux := copy(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,1,1);
      Texto    := Monta_Numero(fDMCadProduto.cdsProduto_ConsultaREFERENCIA.AsString,0);
      if trim(Texto) <> '' then
      begin
        prc_Posiciona_Produto;
        if fDMCadProduto.cdsProdutoID.AsInteger = fDMCadProduto.cdsProduto_ConsultaID.AsInteger then
        begin
          fDMCadProduto.cdsProduto.Edit;
          fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := StrToInt(Texto);
          fDMCadProduto.cdsProduto.Post;
          fDMCadProduto.cdsProduto.ApplyUpdates(0);
        end;
      end;
    end;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  ShowMessage('Conversão finalizada!');
  btnConverter.Visible := True;
end;

procedure TfrmCadProduto2.DBEdit15Exit(Sender: TObject);
var
  sds: TSQLDataSet;
  vExiste: Boolean;
  vMsgAux: String;
begin
  if trim(DBEdit15.Text) = '' then
    exit;
  vExiste := False;
  vMsgAux := '';

  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT P.ID, P.NOME, P.COD_BARRA FROM PRODUTO P  WHERE P.COD_BARRA = :COD_BARRA ';
    sds.ParamByName('COD_BARRA').AsString := DBEdit15.Text;
    sds.Open;
    if not(sds.IsEmpty) and (sds.FieldByName('ID').AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
    begin
      vExiste := True;
      vMsgAux := 'ID: ' + sds.FieldByName('ID').AsString + '  ' + sds.FieldByName('NOME').AsString;
    end;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
  if vExiste then
  begin
    MessageDlg('*** Código de barras já esta cadastrado no produto: ' + #13
               + vMsgAux, mtInformation, [mbOk], 0);
    DBEdit15.SetFocus;
  end;
end;

procedure TfrmCadProduto2.prc_Controle_Produto_Livro;
begin
  if not(fDMCadProduto.cdsProduto_Livro.Active) or not(fDMCadProduto.cdsProduto_Livro.State in [dsEdit, dsInsert]) then
  begin
    fDMCadProduto.prc_Abrir_Produto_Livro(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Livro.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Livro.Insert;
        fDMCadProduto.cdsProduto_LivroID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Livro.Edit;
    end;
  end;
end;

function TfrmCadProduto2.fnc_Filial: Boolean;
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
