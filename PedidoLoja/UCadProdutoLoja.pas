unit UCadProdutoLoja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB,
  UCadUnidade, UCadNCM, UCBase, StdCtrls, DBCtrls, RxDBComb, RxLookup, RXDBCtrl, ToolEdit, CurrEdit, ExtCtrls, RzTabs, dbXPress,
  UCadProduto_Forn, UCadProduto_Consumo, RzPanel, Mask, NxCollection, DBVGrids, DBGrids, UDMCopiarProduto, SqlExpr, DBAdvGrid,
  AdvDBLookupComboBox, UCadProduto_UF, UCadProduto_Uni, ComCtrls, RzChkLst, RzLstBox, ExtDlgs, UCadProduto_Matriz, UCadProduto_Comb,
  UCadProduto_Cor, UCadProduto_Emb, UCadProduto_Atelier, UGerar_CBarra, Menus, UCadProduto_Comissao, USenha, UCadProduto_Comissao_Vend,
  UCadProduto_Carimbo, uEtiq_Individual, Variants;

type
  TfrmCadProdutoLoja = class(TForm)
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
    TS_Engenharia: TRzTabSheet;
    Label30: TLabel;
    rxdbGrupo: TRxDBLookupCombo;
    Label32: TLabel;
    rxdbMarca: TRxDBLookupCombo;
    UCControls1: TUCControls;
    Label34: TLabel;
    rxdbFornecedor: TRxDBLookupCombo;
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
    Label98: TLabel;
    DBEdit49: TDBEdit;
    Label99: TLabel;
    DBEdit50: TDBEdit;
    Label101: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    TabSheet4: TRzTabSheet;
    Panel6: TPanel;
    btnInserir_Uni: TNxButton;
    btnAlterar_Uni: TNxButton;
    btnExcluir_Uni: TNxButton;
    SMDBGrid7: TSMDBGrid;
    TS_Foto: TRzTabSheet;
    DBEdit55: TDBEdit;
    BitBtn20: TBitBtn;
    Label106: TLabel;
    Image1: TImage;
    Label107: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet5: TRzTabSheet;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    Label112: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label113: TLabel;
    Edit9: TEdit;
    Label115: TLabel;
    DBEdit58: TDBEdit;
    edtNome_Orcamento: TEdit;
    TabSheet2: TRzTabSheet;
    pnlCadastro_Forn: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    pnl_Eng_Consumo: TPanel;
    pnlConsumo: TPanel;
    Label74: TLabel;
    btnInserir_Consumo: TNxButton;
    btnAlterar_Consumo: TNxButton;
    btnExcluir_Consumo: TNxButton;
    btnRecalcular_Mat: TNxButton;
    ceVlr_Total_Mat: TCurrencyEdit;
    DBEdit29: TDBEdit;
    SMDBGrid3: TSMDBGrid;
    Label116: TLabel;
    Panel9: TPanel;
    btnEmbalagem: TNxButton;
    Label119: TLabel;
    ceCodAnt: TCurrencyEdit;
    TS_Comissao: TRzTabSheet;
    pnlComissao: TPanel;
    Panel10: TPanel;
    btnInserir_Comissao: TNxButton;
    btnAlterar_Comissao: TNxButton;
    Label120: TLabel;
    DBEdit59: TDBEdit;
    btnExcluir_Comissao: TNxButton;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label121: TLabel;
    edtCod_EnqIPI: TEdit;
    Label122: TLabel;
    RzPageControl5: TRzPageControl;
    TS_Comissao_Cli: TRzTabSheet;
    SMDBGrid10: TSMDBGrid;
    TS_Comissao_Vend: TRzTabSheet;
    SMDBGrid11: TSMDBGrid;
    DBCheckBox7: TDBCheckBox;
    Label123: TLabel;
    DBEdit60: TDBEdit;
    Label124: TLabel;
    Label127: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    Label131: TLabel;
    DBDateEdit4: TDBDateEdit;
    TS_Balanca: TRzTabSheet;
    pnlBalanca: TPanel;
    Label132: TLabel;
    Label133: TLabel;
    DBCheckBox13: TDBCheckBox;
    DBEdit66: TDBEdit;
    Label143: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    RxDBComboBox9: TRxDBComboBox;
    GroupBox4: TGroupBox;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    GroupBox5: TGroupBox;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    GroupBox6: TGroupBox;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    GroupBox7: TGroupBox;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    Label159: TLabel;
    DBEdit91: TDBEdit;
    btnGravaPrVenda: TBitBtn;
    Label160: TLabel;
    DBEdit92: TDBEdit;
    TS_TabPreco: TRzTabSheet;
    pnlTabPreco: TPanel;
    SMDBGrid12: TSMDBGrid;
    Label161: TLabel;
    RxDBLookupCombo20: TRxDBLookupCombo;
    Etiqueta1: TMenuItem;
    btnGravaPrCusto: TBitBtn;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
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
    Label16: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label36: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label100: TLabel;
    SpeedButton3: TSpeedButton;
    Image2: TImage;
    Label114: TLabel;
    Label25: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label168: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBEdit15: TDBEdit;
    DBEdit51: TDBEdit;
    ListBox1: TListBox;
    btnAlterar_Nome: TNxButton;
    DBEdit57: TDBEdit;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit95: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
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
    procedure btnExcluir_ConsumoClick(Sender: TObject);
    procedure btnInserir_ConsumoClick(Sender: TObject);
    procedure btnAlterar_ConsumoClick(Sender: TObject);
    procedure RxDBComboBox7Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzPageControl2Change(Sender: TObject);
    procedure pnlVeiculoEnter(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnRecalcular_MatClick(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure btnCopiarProdutoClick(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure pnlPCPEnter(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit38DblClick(Sender: TObject);
    procedure DBEdit37DblClick(Sender: TObject);
    procedure RxDBLookupCombo5CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
    procedure rxdbGrupoDropDown(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure rxdbGrupoExit(Sender: TObject);
    procedure RxDBComboBox7Exit(Sender: TObject);
    procedure RxDBComboBox4Change(Sender: TObject);
    procedure RxDBLookupCombo11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnInserir_UniClick(Sender: TObject);
    procedure btnAlterar_UniClick(Sender: TObject);
    procedure btnExcluir_UniClick(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SMDBGrid7DblClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnAlterar_NomeClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure RxDBComboBox7Enter(Sender: TObject);
    procedure btnEmbalagemClick(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit58KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btnInserir_ComissaoClick(Sender: TObject);
    procedure btnAlterar_ComissaoClick(Sender: TObject);
    procedure btnExcluir_ComissaoClick(Sender: TObject);
    procedure edtCod_EnqIPIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60Exit(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit57Exit(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure btnGravaPrVendaClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SMDBGrid12GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit10Exit(Sender: TObject);
    procedure Etiqueta1Click(Sender: TObject);
    procedure btnGravaPrCustoClick(Sender: TObject);
    procedure DBEdit93KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit94KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit94Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadProduto: TDMCadProduto;
    fDMCopiarProduto: TDMCopiarProduto;
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmEtiq_Individual: TfrmEtiq_Individual;
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
    ffrmCadProduto_Comissao: TfrmCadProduto_Comissao;
    ffrmCadProduto_Comissao_Vend: TfrmCadProduto_Comissao_Vend;
    ffrmCadProduto_Carimbo: TfrmCadProduto_Carimbo;

    vReferencia_Ant: String;
    vTipo_Reg_Ant: String;
    vID_Linha_Ant: Integer;
    vID_Grupo_Ant: Integer;
    vOrigem_Ant: String;

    //*** 16/06/2016  usado para gravar a tabela Produto_Cad_Ant
    vNome_Cad_Ant, vReferencia_Cad_Ant: String;
    vAltera_Nome: Boolean;
    //*****************
    vItem2: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Produto;
    procedure prc_Controle_Veiculo;
    procedure prc_Controle_Balanca;
    procedure prc_Controle_Ativo;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Gravar_ProdutoTam;
    procedure prc_Controle_PCP;
    procedure prc_Controle_Serie;
    procedure prc_Habilita;

    procedure marcaFibra;
    procedure prc_Verificar_mGrupo(ID_Grupo: Integer);
    procedure prc_Gravar_mGrupo(ID: Integer; Codigo, Nome: String);
    procedure prc_Gravar_mGrupo_Produto;

    procedure prc_Imprimir_Estruturado(Agrupado: Boolean = False);
    procedure prc_Mostrar_Foto;
    procedure prc_Verifica_Grupo;

    procedure prc_Combinacao;
    procedure prc_Abrir_qConta_Orcamento(ID: Integer);
    function fnc_Verificar_Tipo: Boolean;
    procedure prc_Abrir_EnqIPI(ID: Integer);

    procedure prc_Gravar_Produto_Cad_Ant;
    procedure prc_Ajustar_Produto_Ped;

    procedure prc_Aplicar_Margem;
    procedure prc_Monta_mTabPreco;
    procedure prc_Grava_Tab_Preco;
    procedure prc_Mostra_Material_Cru;
    procedure prc_Mostra_Forma(ID_Material : Integer);


    function fnc_Filial: Boolean;

  public
    { Public declarations }
    vID_Produto_Local: Integer;
  end;

var
  frmCadProdutoLoja: TfrmCadProdutoLoja;

implementation

uses rsDBUtils, uUtilPadrao, URelProduto, URelProduto_Grupo, USel_Grupo, USel_Plano_Contas, DmdDatabase, UCadProduto_Processo,
  USel_EnqIPI, USel_CodCest, VarUtils, UCadProduto_Serie, UCadProduto_Cad_Ant, UCadProcesso_Grupo, USel_ContaOrc,
  USel_Produto, uCopiar_Comb_Agrupado, UCadProduto_GradeNum;

{$R *.dfm}

procedure TfrmCadProdutoLoja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Produto_Local := 0;
  Action := Cafree;
end;

procedure TfrmCadProdutoLoja.btnExcluirClick(Sender: TObject);
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

procedure TfrmCadProdutoLoja.prc_Excluir_Registro;
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

procedure TfrmCadProdutoLoja.prc_Gravar_Registro;
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

  if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_MAT.AsString = 'A')
    and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') then
  begin
    if not fDMCadProduto.cdsProduto_Comb.Locate('ID;ID_COR_COMBINACAO',VarArrayOf([fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.qParametros_LoteID_COR_CRU.Value]),[locaseinsensitive]) then
    //if not fDMCadProduto.cdsProduto_Comb.Locate('ID_COR_COMBINACAO',fDMCadProduto.qParametros_LoteID_COR_CRU.AsInteger,([Locaseinsensitive])) then
      if MessageDlg('Não foi lançado a combinação "CRU", confirmar o produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
  end;

  sds  := TSQLDataSet.Create(nil);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    sds2 := TSQLDataSet.Create(nil);

  ID.TransactionID  := 3;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
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

    if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') and (fDMCadProduto.cdsProduto_Veiculo.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Veiculo.Post;
      fDMCadProduto.cdsProduto_Veiculo.ApplyUpdates(0);
    end;

    if (fDMCadProduto.cdsProdutoUSA_NA_BALANCA.AsString = 'S') and (fDMCadProduto.cdsProduto_Balanca.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Balanca.Post;
      fDMCadProduto.cdsProduto_Balanca.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S') and (fDMCadProduto.cdsProduto_Ativo.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Ativo.Post;
      fDMCadProduto.cdsProduto_Ativo.ApplyUpdates(0);
    end;

    if ((fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S') or (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S'))
      and (fDMCadProduto.cdsProduto_Pcp.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Pcp.Post;
      fDMCadProduto.cdsProduto_Pcp.ApplyUpdates(0);
    end;

    if ((fDMCadProduto.qParametrosUSA_NUM_SERIE_PROD.AsString = 'S') or (fDMCadProduto.qParametrosUSA_NUM_SERIE_PROD.AsString = 'M')) and (fDMCadProduto.cdsProduto_Serie.Active) then
    begin
      if (fDMCadProduto.cdsProduto_Serie.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProduto_Serie.Post;
      fDMCadProduto.cdsProduto_Serie.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S') and (fDMCadProduto.cdsProduto_Matriz.Active) then
    begin
      if (fDMCadProduto.cdsProduto_Matriz.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProduto_Matriz.Post;
      fDMCadProduto.cdsProduto_Matriz.ApplyUpdates(0);
    end;

    if (((fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M')) or
       ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P')) or
       ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))) then
      fDMCadProduto.cdsProduto_Cor.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
      fDMCadProduto.cdsProduto_Comb.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
      fDMCadProduto.cdsProduto_Emb.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
      fDMCadProduto.cdsProduto_Atelier.ApplyUpdates(0);

    if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
    begin
      fDMCadProduto.cdsProduto_Comissao.ApplyUpdates(0);
      fDMCadProduto.cdsProduto_Comissao_Vend.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.cdsProduto_GradeNum.Active) then
    begin
      if fDMCadProduto.cdsProduto_GradeNum.State in [dsEdit,dsInsert] then
        fDMCadProduto.cdsProduto_GradeNum.Post;
      fDMCadProduto.cdsProduto_GradeNum.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') then
    begin
      if (fDMCadProduto.cdsProduto_Carimbo.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProduto_Carimbo.Post;
      fDMCadProduto.cdsProduto_Carimbo.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N') and (fDMCadProduto.cdsProdutoProcesso.Active) then
    begin
      if (fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProdutoProcesso.Post;
      fDMCadProduto.cdsProdutoProcesso.ApplyUpdates(0);
    end;

    //16/06/2016
    if (vAltera_Nome) and ((trim(vNome_Cad_Ant) <> '') or (trim(vReferencia_Cad_Ant) <> '')) then
    begin
      if (vNome_Cad_Ant <> fDMCadProduto.cdsProdutoNOME.AsString) or (vReferencia_Cad_Ant <> fDMCadProduto.cdsProdutoREFERENCIA.AsString) then
      begin
        fDMCadProduto.prc_Abrir_Produto_Cad_Ant(fDMCadProduto.cdsProdutoID.AsInteger);
        prc_Gravar_Produto_Cad_Ant;
        prc_Ajustar_Produto_Ped;
      end;
    end;
    //****************

    vCodProduto_Pos := 0;
    vReferencia_Pos := '';

    //07/01/2017
    if fDMCadProduto.qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
      prc_Grava_Tab_Preco;
    //*******************

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

procedure TfrmCadProdutoLoja.prc_Inserir_Registro;
begin
  if not fnc_Filial then
    exit;

  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;

  vNome_Cad_Ant       := '';
  vReferencia_Cad_Ant := '';
  vAltera_Nome        := False;

  RzPageControl1.ActivePage := TS_Cadastro;
  DBEdit2.ReadOnly := False;
  DBEdit7.ReadOnly := False;
  btnAlterar_Nome.Enabled := False;

  prc_Habilita;
  RxDBComboBox7.Enabled := True;

  RxDBComboBox7.SetFocus;
end;

procedure TfrmCadProdutoLoja.FormShow(Sender: TObject);
var
  i: Integer;
  vTipo_Consulta_Produto_Padrao: String;
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);

  DBEdit3.Visible  := not(Label4.Enabled);
  DBEdit57.Visible := not(Label4.Enabled);
  DBEdit5.Visible  := not(Label12.Enabled);
  DBEdit11.Visible := not(Label24.Enabled);
  DBEdit57.Visible := not(Label4.Enabled);

  label4.Enabled   := not(label4.Enabled);
  label12.Enabled  := not(label12.Enabled);
  label24.Enabled  := not(label24.Enabled);
  Label114.Enabled := (Label4.Enabled);

  TS_Engenharia.TabVisible := (fDMCadProduto.qParametrosUSA_CONSUMO.AsString = 'S');
  TS_Grade.TabVisible      := (fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'COD_BARRA') then
      SMDBGrid1.Columns[i].Visible := False
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid1.Columns[i].Visible := label4.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO_TOTAL') then
      SMDBGrid1.Columns[i].Visible := label4.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA') then
      SMDBGrid1.Columns[i].Visible := label12.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'COD_ANT') then
      SMDBGrid1.Columns[i].Visible := fDMCadProduto.qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT.AsString = 'S'
    else
    if (SMDBGrid1.Columns[i].FieldName = 'SPED_TIPO_ITEM') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'OBS') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'TAMANHO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S');
  end;
  DBMemo2.Visible     := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S');
  Label37.Visible     := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  edtCodBarra.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  Label36.Visible  := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  DBEdit15.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  btnCBarra.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S'));

  Label102.Visible          := (fDMCadProduto.qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S');
  RxDBLookupCombo14.Visible := (fDMCadProduto.qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S');

  RxDbCliente.Visible := (fDMCadProduto.qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S');
  Label111.Visible    := (fDMCadProduto.qParametrosUSA_PRODUTO_CLIENTE.AsString = 'S');

  SMDBGrid1.Visible := (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString <> 'S');
  SMDBGrid4.Visible := (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S');
  if fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S' then
    SMDBGrid4.Align := alClient;
  ceVlr_Total_Mat.Visible := btnRecalcular_Mat.Enabled;
  TS_Serie.TabVisible := ((fDMCadProduto.qParametrosUSA_NUM_SERIE_PROD.AsString = 'S') or (fDMCadProduto.qParametrosUSA_NUM_SERIE_PROD.AsString = 'M'));
  if fDMCadProduto.qParametrosUSA_EDI.AsString = 'S' then
    TabSheet2.Caption := 'Dados Fornecedor/Cliente'
  else
    TabSheet2.Caption := 'Dados Fornecedor';
  Label28.Visible       := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S');
  RxDBComboBox4.Visible := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S');
  Label97.Visible       := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');
  DBEdit41.Visible      := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');

  Label103.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');
  DBEdit52.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');
  Label104.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');
  DBEdit53.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');
  Label105.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');
  DBEdit54.Visible := (fDMCadProduto.qParametrosPRODUTO_PRECO_POR_FINALIDADE.AsString = 'S');

  vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO.AsString);
  if vTipo_Consulta_Produto_Padrao = '' then
    vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametrosTIPO_CONSULTA_PRODUTO_PADRAO.AsString);

  if (trim(vTipo_Consulta_Produto_Padrao) = '') then
    ComboBox2.ItemIndex := 6
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
    ComboBox2.ItemIndex := 4
  else
  if vTipo_Consulta_Produto_Padrao = 'S' then
    ComboBox2.ItemIndex := 5;

  DBCheckBox5.Visible       := (fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
  TS_Matriz.TabVisible      := (fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
  Label110.Visible          := (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S');
  RxDBLookupCombo16.Visible := (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S');
  SpeedButton12.Visible     := (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S');
  Label29.Visible           := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  RxDBLookupCombo7.Visible  := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');

  for i := 1 to SMDBGrid3.ColCount - 2 do
  begin
    if (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString <> 'S') and (SMDBGrid3.Columns[i].FieldName = 'NOME_POSICAO') then
      SMDBGrid3.Columns[i].Visible := False;
    if (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString <> 'S') and (SMDBGrid3.Columns[i].FieldName = 'NOME_SETOR') then
      SMDBGrid3.Columns[i].Visible := False;
    if (SMDBGrid3.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid3.Columns[i].Visible := (fDMCadProduto.qParametrosGRAVAR_CONSUMO_NOTA.AsString <> 'S');
    if (SMDBGrid3.Columns[i].FieldName = 'clPreco_Venda') then
      SMDBGrid3.Columns[i].Visible := (fDMCadProduto.qParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S');
  end;
  
  if vID_Produto_Local > 0 then
  begin
    ceID.AsInteger := vID_Produto_Local;
    prc_Consultar;
  end;
  Label115.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  DBEdit58.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  edtNome_Orcamento.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  Label117.Visible          := (fDMCadProduto.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RxDBLookupCombo18.Visible := (fDMCadProduto.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  TS_Comissao.TabVisible    := (fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  Label119.Visible          := (fDMCadProduto.qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT.AsString = 'S');
  ceCodAnt.Visible          := (fDMCadProduto.qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT.AsString = 'S');
  DBCheckBox7.Visible       := (fDMCadProduto.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
  DBCheckBox10.Visible      := (fDMCadProduto.qParametros_EstGERAR_LOTE_AUT.AsString = 'S');
  DBEdit28.Visible          := (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S');
  Label69.Visible           := (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S');
  btnCarimbo.Visible        := (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S');
  DBCheckBox12.Visible      := (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S');
  Label125.Visible          := (fDMCadProduto.qParametros_NFeUSA_OPCAO_IMP_COD_CLI.AsString = 'S');
  DBEdit61.Visible          := (fDMCadProduto.qParametros_NFeUSA_OPCAO_IMP_COD_CLI.AsString = 'S');
  Label126.Visible          := (fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S');
  rxdbFilial.Visible        := (fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S');
  Label127.Visible          := (fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S');
  RxDBLookupCombo19.Visible := (fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S');
  Label129.Visible          := (fDMCadProduto.qParametros_ProdUSA_MEDIDA.AsString = 'S');
  DBEdit64.Visible          := (fDMCadProduto.qParametros_ProdUSA_MEDIDA.AsString = 'S');
  Label130.Visible          := (fDMCadProduto.qParametros_ProdUSA_QTD_EMBALAGEM.AsString = 'S');
  DBEdit65.Visible          := (fDMCadProduto.qParametros_ProdUSA_QTD_EMBALAGEM.AsString = 'S');
  Label159.Visible          := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  DBEdit91.Visible          := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  btnGravaPrVenda.Visible   := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  btnGravaPrCusto.Visible   := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  Label160.Visible          := (fDMCadProduto.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S');
  DBEdit92.Visible          := (fDMCadProduto.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S');
  TS_TabPreco.TabVisible    := (fDMCadProduto.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');

  for i := 1 to SMDBGrid9.ColCount - 2 do
  begin
    if (SMDBGrid9.Columns[i].FieldName = 'QTD') or (SMDBGrid9.Columns[i].FieldName = 'UN')
      or (SMDBGrid9.Columns[i].FieldName = 'VLR_UNIT') or (SMDBGrid9.Columns[i].FieldName = 'VLR_TOTAL')
      or (SMDBGrid9.Columns[i].FieldName = 'OBS') then
      SMDBGrid9.Columns[i].Visible := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'S');
  end;
  //btnGerar_Processo.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  Label162.Visible            := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  RxDBComboBox10.Visible      := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  Label164.Visible            := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  RxDBComboBox11.Visible      := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  Label163.Visible            := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  RxDBLookupCombo21.Visible   := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  SpeedButton13.Visible       := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  SpeedButton14.Visible       := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  btnInserir_Processo.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S');
  btnAlterar_Processo.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S');
  btnExcluir_Processo.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S');
  TS_Pictograma.TabVisible    := (fDMCadProduto.qParametros_ProdUSA_PICTOGRAMA.AsString = 'S');
  Panel11.Visible             := (fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S');
  Panel8.Visible              := (fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString <> 'S');
  SMDBGrid9.Visible           := (fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString <> 'S');
  Label168.Visible            := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S');
  DBEdit95.Visible            := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S');
end;

procedure TfrmCadProdutoLoja.prc_Consultar;
begin
  SMDBGrid1.DisableScroll;
  fDMCadProduto.cdsProduto_Consulta.Close;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta;
  if ceID.AsInteger > 0 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.ID =  ' + ceID.Text
  else
  if ceCodAnt.AsInteger > 0 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.COD_ANT =  ' + ceCodAnt.Text
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
    if RxDbCliente.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_CLIENTE = ' + IntToStr(RxDbCliente.KeyValue);
    if (RxDbFilial.Text <> '') and (fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.FILIAL = ' + IntToStr(RxDbFilial.KeyValue);

    case ComboBox2.ItemIndex of
      0: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('P');
      1: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('M');
      2: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('N');
      3: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('C');
      5: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('S');
    end;

    //Consulta Veículo
    if Trim(Edit1.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if Trim(Edit2.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.MARCA LIKE ' + QuotedStr('%'+Edit2.Text+'%');
    if Trim(Edit4.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.MODELO LIKE ' + QuotedStr('%'+Edit4.Text+'%');
    if Trim(Edit3.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.PLACA LIKE ' + QuotedStr('%'+Edit3.Text+'%');
    if Trim(Edit8.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.MOTORIZACAO LIKE ' + QuotedStr('%'+Edit8.Text+'%');
    if Trim(Edit9.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.LOCALIZACAO LIKE ' + QuotedStr('%'+Edit9.Text+'%');

    if CurrencyEdit1.AsInteger > 0 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.ANO_FAB = ' + IntToStr(CurrencyEdit1.AsInteger);
    if CurrencyEdit2.AsInteger > 0 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.ANO_MOD = ' + IntToStr(CurrencyEdit2.AsInteger);
    if Trim(Edit5.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.NOME_COR LIKE ' + QuotedStr('%'+Edit5.Text+'%');
    if Trim(Edit6.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.COMBUSTIVEL LIKE ' + QuotedStr('%'+Edit6.Text+'%');
    if Trim(Edit7.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PV.ESPECIE LIKE ' + QuotedStr('%'+Edit7.Text+'%');

    if DateEdit1.Date > 10 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                          + ' AND PV.DT_ENTRADA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                          + ' AND PV.DT_ENTRADA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

    if DateEdit3.Date > 10 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                          + ' AND PV.DT_VENDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                          + ' AND PV.DT_VENDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    case ComboBox1.ItemIndex of
      0: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND PV.DT_VENDA IS NULL ';
      1: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND PV.DT_VENDA IS NOT NULL ';
    end;
    if not ckInativo.Checked then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND PRO.INATIVO = ' + QuotedStr('N');
  end;
  fDMCadProduto.cdsProduto_Consulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadProdutoLoja.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProdutoLoja.btnCancelarClick(Sender: TObject);
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
  if (fDMCadProduto.cdsProdutoUSA_NA_BALANCA.AsString = 'S') and (fDMCadProduto.cdsProduto_Balanca.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Balanca.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  RzPageControl2.ActivePage := TabSheet1;
end;

procedure TfrmCadProdutoLoja.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProdutoLoja.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.IsEmpty) or not(fDMCadProduto.cdsProduto.Active) or (fDMCadProduto.cdsProdutoID.AsInteger < 1) then
    exit;

  fDMCadProduto.cdsProduto.Edit;

  vNome_Cad_Ant       := fDMCadProduto.cdsProdutoNOME.AsString;
  vReferencia_Cad_Ant := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  vAltera_Nome        := False;

  DBEdit2.ReadOnly        := True;
  DBEdit7.ReadOnly        := True;
  btnAlterar_Nome.Enabled := True;

  RxDBComboBox7.Enabled := True;

  prc_Habilita;
end;

procedure TfrmCadProdutoLoja.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
  if  (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') and (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin
    if MessageDlg('Deseja copiar as combinações do Produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    frmCopiar_Comb_Agrupado := TfrmCopiar_Comb_Agrupado.Create(self);
    frmCopiar_Comb_Agrupado.vID_Produto := fDMCadProduto.cdsProdutoID.AsInteger;
    frmCopiar_Comb_Agrupado.fdmCadProduto := fdmCadProduto;
    frmCopiar_Comb_Agrupado.ShowModal;
    FreeAndNil(frmCopiar_Comb_Agrupado);
    fDMCadProduto.cdsProduto_Comb.Close;
  end;
end;

procedure TfrmCadProdutoLoja.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadProdutoLoja.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProdutoLoja.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProdutoLoja.DBEdit11Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProdutoLoja.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProdutoLoja.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadProdutoLoja.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProdutoLoja.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProdutoLoja.ceIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProdutoLoja.BitBtn1Click(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdForn;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadProdutoLoja.BitBtn4Click(Sender: TObject);
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

procedure TfrmCadProdutoLoja.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Forn.Delete;
end;

procedure TfrmCadProdutoLoja.btnExcluir_ConsumoClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Consumo_Tam.First;
  while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof do
    fDMCadProduto.cdsProduto_Consumo_Tam.Delete;

  fDMCadProduto.cdsProduto_Consumo.Delete;

  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProdutoLoja.btnInserir_ConsumoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdConsumo;

  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.ShowModal;

  FreeAndNil(ffrmCadProduto_Consumo);

  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProdutoLoja.btnAlterar_ConsumoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Consumo.Active) or
     (fDMCadProduto.cdsProduto_Consumo.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Consumo.Edit;

  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.ShowModal;

  FreeAndNil(ffrmCadProduto_Consumo);
  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProdutoLoja.RxDBComboBox7Change(Sender: TObject);
begin
  if fDMCadProduto.qParametrosUSA_CONSUMO.AsString = 'S' then
  begin
    TS_Engenharia.TabVisible := ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5));
  end;
  btnGradeRef.Visible := (RxDBComboBox7.ItemIndex = 1);

  if fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S' then
    TS_Grade.TabVisible := ((RxDBComboBox7.ItemIndex < 2) or (RxDBComboBox7.ItemIndex = 5));
  DBCheckBox4.Visible       := (RxDBComboBox7.ItemIndex = 1);
  Label108.Visible          := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));
  RxDBLookupCombo15.Visible := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));
  SpeedButton10.Visible     := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));

  Label110.Visible          := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S'));
  RxDBLookupCombo16.Visible := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S'));
  SpeedButton12.Visible     := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and (fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S'));
  DBCheckBox6.Visible       := (RxDBComboBox7.ItemIndex = 1);
  if (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'N') or (RxDBComboBox7.ItemIndex = 2) or (RxDBComboBox7.ItemIndex = 4) then
  begin
    Label16.Visible  := False;
    DBEdit14.Visible := False;
  end
  else
  begin
    Label16.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'A'));
    DBEdit14.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
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
    Label33.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'));
    RxDBLookupCombo8.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                             or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'))
  end;
  DBCheckBox11.Visible := ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'));
  TS_Tingimento.TabVisible := ((fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M'));
end;

procedure TfrmCadProdutoLoja.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadProdutoLoja.RzPageControl1Change(Sender: TObject);
var
  i: Byte;
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if (fDMCadProduto.cdsProduto_Consulta.Active) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
      Label73.Caption := FormatFloat('###,###,##0.####',fDMCadProduto.cdsProduto_ConsultaQTD_ESTOQUE.AsFloat);
    RzPageControl2.ActivePage := TabSheet1;
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      TS_Veiculo.TabVisible     := (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S');
      TS_PCP.TabVisible         := ((fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S') or (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S'));
      TS_Injetados.TabVisible   := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');
      TS_Cartonagem.TabVisible  := (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S');
      TS_Ativo.TabVisible       := ((fDMCadProduto.qParametrosUSA_SPED.AsString = 'S') and (fDMCadProduto.cdsProduto_ConsultaSPED_TIPO_ITEM.AsString = '08')) ;
      RZPageControl3.ActivePage := TS_Fiscal;
      TS_Balanca.TabVisible     := (fDMCadProduto.cdsProdutoUSA_NA_BALANCA.AsString = 'S');
    end;
    DBEdit1Change(Sender);
    edtCod_EnqIPI.Clear;
    prc_Abrir_EnqIPI(fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger);
    edtCod_EnqIPI.Text := fDMCadProduto.qEnqIPICODIGO.AsString;
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
      if btnRecalcular_Mat.Enabled then
        ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
      RZPageControl3.ActivePage := TS_Fiscal;
      prc_Mostrar_Foto;
      prc_Mostra_Forma(fDMCadProduto.cdsProdutoID_FORMA.AsInteger);
      //07/01/2017
      if fDMCadProduto.qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
      begin
        prc_Monta_mTabPreco;
        RzPageControl3.ActivePage := TS_TabPreco;
      end;
      //*******************
      TS_Tingimento.TabVisible := ((fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M'));
    end;
  end;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    TS_Engenharia.TabVisible := ((fDMCadProduto.qParametrosUSA_CONSUMO.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')));
  end;
  btnGradeRef.Visible := fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M';
  RxDBComboBox7Change(Sender);
  prc_Verifica_Grupo;
  if fDMCadProduto.cdsProdutoID.AsInteger > 0 then
    prc_Combinacao;

  for i := 1 to 4 do
    TCheckBox(FindComponent('CheckBox'+IntToStr(i))).Checked := copy(fDMCadProduto.cdsProdutoPICTO_CABEDAL.AsString,i,1) = '1';
  for i := 5 to 8 do
    TCheckBox(FindComponent('CheckBox'+IntToStr(i))).Checked := copy(fDMCadProduto.cdsProdutoPICTO_INTERIOR.AsString,i,1) = '1';
  for i := 9 to 12 do
    TCheckBox(FindComponent('CheckBox'+IntToStr(i))).Checked := copy(fDMCadProduto.cdsProdutoPICTO_SOLA.AsString,i,1) = '1';
end;

procedure TfrmCadProdutoLoja.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.IndexFieldNames := 'CODIGO';
  StaticText2.Visible := True;
  vID_Grupo_Ant       := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo7Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProdutoLoja.prc_Posiciona_Produto;
begin
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
  fDMCadProduto.cdsProduto_Forn.Close;
  fDMCadProduto.cdsProduto_Forn.Open;
  fDMCadProduto.cdsProduto_Consumo.Close;
  fDMCadProduto.cdsProduto_Consumo.Open;
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') then
    fDMCadProduto.prc_Abrir_Veiculo(fDMCadProduto.cdsProdutoID.AsInteger);

  if fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Matriz(fDMCadProduto.cdsProdutoID.AsInteger);
  if ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and  ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))) or
     ((fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M')) then
    fDMCadProduto.prc_Abrir_Produto_Cor(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Emb(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Atelier(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
  begin
    fDMCadProduto.prc_Abrir_Comissao(fDMCadProduto.cdsProdutoID.AsInteger);
    fDMCadProduto.prc_Abrir_Comissao_Vend(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  prc_Abrir_qConta_Orcamento(fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger);
  if (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  //27/02/2017
  if fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N' then
    fDMCadProduto.prc_Abrir_Produto_Processo(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger > 0 then
    prc_Mostra_Material_Cru
  else
    Edit10.Clear;
end;

procedure TfrmCadProdutoLoja.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.Close;
  fDMCadProduto.cdsGrupo.Open;
end;

procedure TfrmCadProdutoLoja.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.Close;
  fDMCadProduto.cdsMarca.Open;
end;

procedure TfrmCadProdutoLoja.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProdutoLoja.SpeedButton7Click(Sender: TObject);
begin
  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProdutoLoja.edtCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProdutoLoja.RzPageControl2Change(Sender: TObject);
begin
  if (RzPageControl2.ActivePage = TS_Veiculo) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Veiculo
  else
  if (RzPageControl2.ActivePage = TS_PCP) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_PCP
  else
  if (RzPageControl2.ActivePage = TS_Serie) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Serie
  else
  if (RzPageControl2.ActivePage = TS_Ativo) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Ativo
  else
  if (RzPageControl2.ActivePage = TS_Balanca) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Balanca;
  marcaFibra;
end;

procedure TfrmCadProdutoLoja.pnlVeiculoEnter(Sender: TObject);
begin
  prc_Controle_Veiculo;
end;

procedure TfrmCadProdutoLoja.prc_Controle_Veiculo;
begin
  if not(fDMCadProduto.cdsProduto_Veiculo.Active) or not(fDMCadProduto.cdsProduto_Veiculo.State in [dsEdit, dsInsert]) then
  begin
    fDMCadProduto.prc_Abrir_Veiculo(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Veiculo.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Veiculo.Insert;
        fDMCadProduto.cdsProduto_VeiculoID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Veiculo.Edit;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.btnPesquisarClick(Sender: TObject);
begin
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString <> 'S') then
    pnlCons_Produto.Visible := not(pnlCons_Produto.Visible)
  else
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') then
    pnlCons_Veiculo.Visible := not(pnlCons_Veiculo.Visible);

  if pnlCons_Produto.Visible then
  begin
    edtNome.SetFocus;
    //btnConsultarClick(Sender);
  end
  else
  if pnlCons_Veiculo.Visible then
    Edit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadProdutoLoja.prc_Limpar_Edit_Consulta;
begin
  edtCodBarra.Clear;
  edtNome.Clear;
  edtReferencia.Clear;
  rxdbMarca.ClearValue;
  ceID.Clear;
  rxdbGrupo.ClearValue;
  rxdbFornecedor.ClearValue;

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;

  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit3.Clear;
  DateEdit4.Clear;

  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;

  ComboBox1.ItemIndex := 2;
end;

procedure TfrmCadProdutoLoja.btnRecalcular_MatClick(Sender: TObject);
begin
  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProdutoLoja.prc_Gravar_ProdutoTam;
begin
  fDMCadProduto.qGrade_Itens.Close;
  fDMCadProduto.qGrade_Itens.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID_GRADE.AsInteger;
  fDMCadProduto.qGrade_Itens.Open;
  while not fDMCadProduto.qGrade_Itens.Eof do
  begin
    if not fDMCadProduto.cdsProduto_Tam.Locate('TAMANHO',fDMCadProduto.qGrade_ItensTAMANHO.AsString,([Locaseinsensitive])) then
    begin
      fDMCadProduto.cdsProduto_Tam.Insert;
      fDMCadProduto.cdsProduto_TamID.AsInteger     := fDMCadProduto.cdsProdutoID.AsInteger;
      fDMCadProduto.cdsProduto_TamTAMANHO.AsString := fDMCadProduto.qGrade_ItensTAMANHO.AsString;
      fDMCadProduto.cdsProduto_Tam.Post;
    end;
    fDMCadProduto.qGrade_Itens.Next;
  end;
end;

procedure TfrmCadProdutoLoja.DBCheckBox2Click(Sender: TObject);
begin
  Label72.Visible := ((DBCheckBox2.Checked));
  Label73.Visible := ((DBCheckBox2.Checked));
end;

procedure TfrmCadProdutoLoja.btnCopiarProdutoClick(Sender: TObject);
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

procedure TfrmCadProdutoLoja.SMDBGrid3DblClick(Sender: TObject);
begin
  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.VDBGrid1.ReadOnly := True;
  ffrmCadProduto_Consumo.Panel2.Enabled    := False;
  ffrmCadProduto_Consumo.BitBtn1.Enabled   := False;
  ffrmCadProduto_Consumo.ShowModal;
  FreeAndNil(ffrmCadProduto_Consumo);
end;

procedure TfrmCadProdutoLoja.pnlPCPEnter(Sender: TObject);
begin
  prc_Controle_PCP;
end;

procedure TfrmCadProdutoLoja.prc_Controle_PCP;
begin
  if fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S' then
    RzPageControl4.ActivePage := TS_Injetados
  else
  if fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S' then
    RzPageControl4.ActivePage := TS_Cartonagem;
  if not(fDMCadProduto.cdsProduto_Pcp.Active) or not(fDMCadProduto.cdsProduto_Pcp.State in [dsEdit, dsInsert]) then
  begin
    fDMCadProduto.prc_Abrir_PCP(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Pcp.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Pcp.Insert;
        fDMCadProduto.cdsProduto_PcpID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Pcp.Edit;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.RxDBComboBox2Change(Sender: TObject);
begin
  DBEdit36.Visible := (RxDBComboBox2.ItemIndex <= 1);
  Label83.Visible  := (RxDBComboBox2.ItemIndex <= 1);
end;

procedure TfrmCadProdutoLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 107) and (btnInserir_Serie.Enabled) and (RzPageControl2.ActivePage = TS_Serie) then
    btnInserir_SerieClick(Sender)
  else
  if (Key = 109) and (btnInserir_Serie.Enabled) and (RzPageControl2.ActivePage = TS_Serie) then
    btnExcluir_SerieClick(Sender)
  else
  if (Key = 82) and (RzPageControl1.ActivePage = TS_Consulta) then
  begin
    btnConverter.Visible := not(btnConverter.Visible);
    BitBtn6.Visible      := not(BitBtn6.Visible);
  end;
end;

procedure TfrmCadProdutoLoja.prc_Habilita;
var
  i: Integer;
  vTexto: String;
begin
  TS_Consulta.TabEnabled      := not(TS_Consulta.TabEnabled);
  pnlVeiculo.Enabled          := not(pnlVeiculo.Enabled);
  pnlAtivo.Enabled            := not(pnlAtivo.Enabled);
  pnlInjetados.Enabled        := not(pnlInjetados.Enabled);
  pnlCartonagem.Enabled       := not(pnlCartonagem.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
  pnlBalanca.Enabled          := not(pnlBalanca.Enabled);
  pnlCadastro_Forn.Enabled    := not(pnlCadastro_Forn.Enabled);
  btnInserir_Consumo.Enabled  := not(btnInserir_Consumo.Enabled);
  btnAlterar_Consumo.Enabled  := not(btnAlterar_Consumo.Enabled);
  btnExcluir_Consumo.Enabled  := not(btnExcluir_Consumo.Enabled);
  btnGravaPrVenda.Enabled     := not(btnGravaPrVenda.Enabled);
  btnGravaPrCusto.Enabled     := not(btnGravaPrCusto.Enabled);
  btnInserir_Processo.Enabled := not(btnInserir_Processo.Enabled);
  btnAlterar_Processo.Enabled := not(btnAlterar_Processo.Enabled);
  btnExcluir_Processo.Enabled := not(btnExcluir_Processo.Enabled);
  btnInserir_UF.Enabled       := not(btnInserir_UF.Enabled);
  btnAlterar_UF.Enabled       := not(btnAlterar_UF.Enabled);
  btnExcluir_UF.Enabled       := not(btnExcluir_UF.Enabled);
  btnInserir_Uni.Enabled      := not(btnInserir_Uni.Enabled);
  btnAlterar_Uni.Enabled      := not(btnAlterar_Uni.Enabled);
  btnExcluir_Uni.Enabled      := not(btnExcluir_Uni.Enabled);
  btnInserir_Serie.Enabled    := not(btnInserir_Serie.Enabled);
  btnAlterar_Serie.Enabled    := not(btnAlterar_Serie.Enabled);
  btnExcluir_Serie.Enabled    := not(btnExcluir_Serie.Enabled);
  btnInserir_Matriz.Enabled   := not(btnInserir_Matriz.Enabled);
  btnAlterar_Matriz.Enabled   := not(btnAlterar_Matriz.Enabled);
  btnExcluir_Matriz.Enabled   := not(btnExcluir_Matriz.Enabled);
  btnInserir_Comissao.Enabled := not(btnInserir_Comissao.Enabled);
  btnAlterar_Comissao.Enabled := not(btnAlterar_Comissao.Enabled);
  btnExcluir_Comissao.Enabled := not(btnExcluir_Comissao.Enabled);
  pnlFiscal.Enabled           := not(pnlFiscal.Enabled);
  pnlTingimento.Enabled       := not(pnlTingimento.Enabled);
  pnlOpcoes.Enabled          := not(pnlOpcoes.Enabled);
  DBEdit29.ReadOnly          := not(DBEdit29.ReadOnly);
  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  TS_Foto.Enabled            := not(TS_Foto.Enabled);
  TS_Pictograma.Enabled      := not(TS_Pictograma.Enabled);
  btnCBarra.Enabled          := not(btnCBarra.Enabled);
  DBEdit59.ReadOnly          := not(DBEdit59.ReadOnly);
  Panel8.Enabled             := not(Panel8.Enabled);
  Panel11.Enabled            := not(Panel11.Enabled);
  //SMDBGrid2.ReadOnly         := not(SMDBGrid2.ReadOnly);
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    vTexto := SMDBGrid2.Columns[i].FieldName;
    if (vTexto = 'COD_MATERIAL_FORN') or (vTexto = 'TAMANHO_CLIENTE') or (vTexto = 'NOME_MATERIAL_FORN') then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
  VDBGrid1.Columns[1].ReadOnly := not(VDBGrid1.Columns[1].ReadOnly);
  VDBGrid1.Columns[4].ReadOnly := not(VDBGrid1.Columns[4].ReadOnly);
  VDBGrid1.Columns[5].ReadOnly := not(VDBGrid1.Columns[5].ReadOnly);

  if fDMCadProduto.qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
  begin
    for i := 0 to SMDBGrid12.ColCount - 2 do
    begin
      vTexto := SMDBGrid12.Columns[i].FieldName;
      if (vTexto = 'Vlr_Venda') then
        SMDBGrid12.Columns[i].ReadOnly := not(SMDBGrid12.Columns[i].ReadOnly);
    end;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Controle_Serie;
begin
  if not(fDMCadProduto.cdsProduto_Serie.Active) or not(fDMCadProduto.cdsProduto_Serie.State in [dsEdit, dsInsert]) then
    fDMCadProduto.prc_Abrir_Serie(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProdutoLoja.DBEdit38DblClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Pcp.State in [dsBrowse] then
    fDMCadProduto.cdsProduto_Pcp.Edit;
  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'C' then
    fDMCadProduto.cdsProduto_PcpFIBRA.Clear
  else
    fDMCadProduto.cdsProduto_PcpFIBRA.AsString := 'C';
  DBEdit1.SelStart := Length(DBEdit1.Text);
  marcaFibra;
end;

procedure TfrmCadProdutoLoja.DBEdit37DblClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Pcp.State in [dsBrowse] then
    fDMCadProduto.cdsProduto_Pcp.Edit;
  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'L' then
    fDMCadProduto.cdsProduto_PcpFIBRA.Clear
  else
    fDMCadProduto.cdsProduto_PcpFIBRA.AsString := 'L';
  DBEdit1.SelStart := Length(DBEdit1.Text);
  marcaFibra;
end;

procedure TfrmCadProdutoLoja.marcaFibra;
begin
  DBEdit38.Color := clWindow;
  DBEdit37.Color := clWindow;

  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'C' then
    DBEdit38.Color := $0080FFFF;
  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'L' then
    DBEdit37.Color := $0080FFFF;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo5CloseUp(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME';
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadProdutoLoja.rxdbGrupoDropDown(Sender: TObject);
begin
  rxdbGrupo.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadProdutoLoja.Normal1Click(Sender: TObject);
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

procedure TfrmCadProdutoLoja.prc_Verificar_mGrupo(ID_Grupo: Integer);
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

procedure TfrmCadProdutoLoja.prc_Gravar_mGrupo(ID: Integer; Codigo,
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

procedure TfrmCadProdutoLoja.prc_Gravar_mGrupo_Produto;
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

procedure TfrmCadProdutoLoja.RxDBLookupCombo5KeyDown(Sender: TObject;
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

procedure TfrmCadProdutoLoja.rxdbGrupoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadProdutoLoja.RxDBLookupCombo5Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
  prc_Verifica_Grupo;
end;

procedure TfrmCadProdutoLoja.rxdbGrupoExit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProdutoLoja.RxDBComboBox7Exit(Sender: TObject);
begin
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProduto.State in [dsInsert]) and
     (copy(fDMCadProduto.cdsProdutoREFERENCIA.AsString,2,1) = '.') then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := '';
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '04'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '06'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '01'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '07'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'I' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '08';
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') then
  begin
    if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Cor(fDMCadProduto.cdsProdutoID.AsInteger);
  end
  else
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
  begin
    if fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Matriz(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
    begin
      fDMCadProduto.prc_Abrir_Comissao(fDMCadProduto.cdsProdutoID.AsInteger);
      fDMCadProduto.prc_Abrir_Comissao_Vend(fDMCadProduto.cdsProdutoID.AsInteger);
    end;
    if fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B' then
      fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Emb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Atelier(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  prc_Combinacao;
end;

procedure TfrmCadProdutoLoja.RxDBComboBox4Change(Sender: TObject);
begin
  TS_Ativo.TabVisible := (RxDBComboBox4.ItemIndex = 8);
end;

procedure TfrmCadProdutoLoja.prc_Controle_Ativo;
begin
  if not(fDMCadProduto.cdsProduto_Ativo.Active) or not(fDMCadProduto.cdsProduto_Ativo.State in [dsEdit, dsInsert]) then
  begin
    fDMCadProduto.prc_Abrir_Ativo(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Ativo.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Ativo.Insert;
        fDMCadProduto.cdsProduto_AtivoID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Ativo.Edit;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_F2 then
  begin
    if RxDBLookupCombo11.Text <> '' then
      vID_Plano_Contas_Pos := RxDBLookupCombo11.KeyValue;
    frmSel_Plano_Contas := TfrmSel_Plano_Contas.Create(Self);
    frmSel_Plano_Contas.ShowModal;
    if vID_Plano_Contas_Pos > 0 then
      RxDBLookupCombo11.KeyValue := vID_Plano_Contas_Pos;
  end;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo11Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo11Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label98.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit49.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  Label99.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit50.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
end;

procedure TfrmCadProdutoLoja.SpeedButton3Click(Sender: TObject);
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

procedure TfrmCadProdutoLoja.ListBox1DblClick(Sender: TObject);
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

procedure TfrmCadProdutoLoja.ListBox1Exit(Sender: TObject);
begin
  ListBox1.Visible := False;
end;

procedure TfrmCadProdutoLoja.DBEdit51Exit(Sender: TObject);
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

procedure TfrmCadProdutoLoja.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ListBox1DblClick(Sender);
end;

procedure TfrmCadProdutoLoja.SpeedButton11Click(Sender: TObject);
begin
  fDMCadProduto.cdsSitTribCf.Close;
  fDMCadProduto.cdsSitTribCf.Open;
end;

procedure TfrmCadProdutoLoja.prc_Imprimir_Estruturado(Agrupado: Boolean);
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

procedure TfrmCadProdutoLoja.DBEdit7Exit(Sender: TObject);
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

procedure TfrmCadProdutoLoja.btnInserir_UniClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;
  if trim(fDMCadProduto.cdsProdutoUNIDADE.AsString) = '' then
  begin
    MessageDlg('*** Unidade de medida não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadProduto.prc_Inserir_ProdUNI;

  ffrmCadProduto_UNI := TfrmCadProduto_UNI.Create(self);
  ffrmCadProduto_UNI.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UNI.ShowModal;

  FreeAndNil(ffrmCadProduto_UNI);
end;

procedure TfrmCadProdutoLoja.btnAlterar_UniClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_UniItem.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Uni.Active) or
     (fDMCadProduto.cdsProduto_Uni.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Uni.Edit;

  ffrmCadProduto_Uni := TfrmCadProduto_Uni.Create(self);
  ffrmCadProduto_Uni.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Uni.ShowModal;

  FreeAndNil(ffrmCadProduto_Uni);
end;

procedure TfrmCadProdutoLoja.btnExcluir_UniClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Uni.Delete;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo2Enter(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := not(fDMCadProduto.cdsProduto_Uni.IsEmpty);
end;

procedure TfrmCadProdutoLoja.SMDBGrid7DblClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.IsEmpty then
    exit;
  ffrmCadProduto_Uni := TfrmCadProduto_Uni.Create(self);
  ffrmCadProduto_Uni.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Uni.RxDBLookupCombo2.ReadOnly := True;
  ffrmCadProduto_Uni.BitBtn1.Enabled           := False;
  ffrmCadProduto_Uni.ShowModal;
  FreeAndNil(ffrmCadProduto_Uni);
end;

procedure TfrmCadProdutoLoja.BitBtn20Click(Sender: TObject);
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

procedure TfrmCadProdutoLoja.btnAlterar_NomeClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vFlag: Boolean;
  ffrmSenha: TfrmSenha;
  vMsgSenha: String;
begin
  vAltera_Nome := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(M.ID_PRODUTO) CONTADOR, '
                     + ' (SELECT COUNT(E.ID_PRODUTO) FROM ESTOQUE_MOV E  '
                     + '  WHERE E.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger)
                     + '    AND (e.tipo_mov = ' + QuotedStr('NTS')
                     + '     OR E.tipo_mov = ' + QuotedStr('NTE')
                     + '     OR E.tipo_mov = ' + QuotedStr('CFI')
                     + '     OR E.tipo_mov = ' + QuotedStr('NFC')
                     + ' )) CONTADOR2 '
                     + ', (SELECT COUNT(PI.ID_PRODUTO) FROM PEDIDO_ITEM PI '
                     + ' WHERE PI.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger)
                     + '   AND PI.qtd_restante > 0 ) CONTADOR3 '
                     + ' FROM MOVIMENTO M '
                     + ' WHERE M.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger);
    sds.Open;
    vMsgSenha := '';
    if (sds.FieldByName('CONTADOR').AsInteger > 0) then
      vMsgSenha := '*** Esse produto possui pedido em aberto, '
    else
    if (sds.FieldByName('CONTADOR2').AsInteger > 0) or (sds.FieldByName('CONTADOR3').AsInteger > 0)then
      vMsgSenha := '*** Esse produto já teve movimentação, ';

    //24/06/2016
    //if (sds.FieldByName('CONTADOR3').AsInteger > 0) then
    //begin
    //  MessageDlg('*** Esse produto possui pedido em aberto, não pode ser alterado nome/referência!', mtInformation, [mbOk], 0);
    //  DBEdit2.ReadOnly := True;
    //  DBEdit7.ReadOnly := True;
    //end
    //else
    //if (sds.FieldByName('CONTADOR').AsInteger > 0) or (sds.FieldByName('CONTADOR2').AsInteger > 0) then
    if (sds.FieldByName('CONTADOR').AsInteger > 0) or (sds.FieldByName('CONTADOR2').AsInteger > 0) or (sds.FieldByName('CONTADOR3').AsInteger > 0)  then
    begin
      vFlag := False;
      if (trim(fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString) = '') or (fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.IsNull) then
      begin
        //MessageDlg('*** Esse produto já teve movimentação, para alterar nome/referência precisa informar a senha!' + #13 +
        MessageDlg(vMsgSenha + 'para alterar nome/referência precisa informar a senha!' + #13 +
                   '*** Senha não cadastrada para alterar o Nome/Referência!', mtInformation, [mbOk], 0);
        vFlag := True;
      end
      else
      begin
        ffrmSenha := TfrmSenha.Create(self);
        if (sds.FieldByName('CONTADOR3').AsInteger > 0) then
          ffrmSenha.Label2.Caption := 'Produto com pedido em aberto!'
        else
          ffrmSenha.Label2.Caption := 'Produto com movimentação!';
        ffrmSenha.Label3.Caption := 'Informe a senha para alterar';
        ffrmSenha.Label4.Caption := ' Nome/Referência: ';
        ffrmSenha.vControlaSenha := True;
        ffrmSenha.vSenha_Param := fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString;
        ffrmSenha.ShowModal;
        FreeAndNil(ffrmSenha);
        if vSenha <>  fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString then
          vFlag := True;
      end;
      DBEdit2.ReadOnly := vFlag;
      DBEdit7.ReadOnly := vFlag;
      if not vFlag then
      begin
        vAltera_Nome := True;
        DBEdit2.SetFocus;
      end;
    end
    else
    begin
      DBEdit2.ReadOnly := False;
      DBEdit7.ReadOnly := False;
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

procedure TfrmCadProdutoLoja.DBEdit1Change(Sender: TObject);
var
  vAux: Real;
begin
  vAux := 0;
  if trim(DBEdit1.Text) <> '' then
    vAux := StrToFloat(DBEdit1.Text);
  //25/11/2015
  //Label11.Visible          := (vAux > 0);
  //RxDBLookupCombo4.Visible := (vAux > 0);
end;

procedure TfrmCadProdutoLoja.DBEdit7Enter(Sender: TObject);
begin
  vReferencia_Ant  := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
    DBEdit7.SelStart := Length(DBEdit7.Text) + 1;
end;

procedure TfrmCadProdutoLoja.prc_Mostrar_Foto;
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

procedure TfrmCadProdutoLoja.RxDBComboBox7Enter(Sender: TObject);
begin
  vTipo_Reg_Ant := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
  if not fnc_Verificar_Tipo then
    DBEdit7.SetFocus;
end;

procedure TfrmCadProdutoLoja.prc_Verifica_Grupo;
begin
  if (fDMCadProduto.cdsProduto.Active) and (fDMCadProduto.cdsProdutoID_GRUPO.AsInteger > 0) then
  begin
    fDMCadProduto.cdsGrupo.Locate('ID',fDMCadProduto.cdsProdutoID_GRUPO.AsInteger,([Locaseinsensitive]));
    Label109.Visible    := (fDMCadProduto.cdsGrupoTIPO_PROD.AsString = 'V');
    DBEdit56.Visible    := (fDMCadProduto.cdsGrupoTIPO_PROD.AsString = 'V');
    DBCheckBox5.Visible := (fDMCadProduto.cdsGrupoTIPO_PROD.AsString = 'R');
    if (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) then
    begin
      if (fDMCadProduto.cdsProdutoID_GRUPO.AsInteger <> vID_Grupo_Ant) then
        fDMCadProduto.cdsProdutoCALCULAR_2_LADOS.AsString := 'S';
      if fDMCadProduto.cdsGrupoTIPO_PROD.AsString <> 'R' then
        fDMCadProduto.cdsProdutoCALCULAR_2_LADOS.AsString := 'N';
    end;
  end
  else
  begin
    Label109.Visible := False;
    DBEdit56.Visible := False;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Combinacao;
begin
  btnCor.Visible        := ((((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C'))  and
                           (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')) or (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
                           (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) and (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C')));
  btnCor2.Visible        := btnCor.Visible;
  btnCombinacao.Visible := ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')));
  btnEmbalagem.Visible  := (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) and (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S'));
  btnAtelier.Visible    := (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) and (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S'));

  DBCheckBox14.Visible  := ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.qParametrosOPCAO_ESCOLHER_PRECO_COR.AsString = 'S'))
                         or (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) and (fDMCadProduto.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S'));
end;

procedure TfrmCadProdutoLoja.btnEmbalagemClick(Sender: TObject);
begin
  ffrmCadProduto_Emb := TfrmCadProduto_Emb.Create(self);
  ffrmCadProduto_Emb.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Emb.ShowModal;
  FreeAndNil(ffrmCadProduto_Emb);
end;

procedure TfrmCadProdutoLoja.DBEdit58Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadProdutoLoja.DBEdit58Exit(Sender: TObject);
var
  vIDAux: String;
begin
  StaticText2.Visible := False;
  if (trim(DBEdit58.Text) = '') or (trim(DBEdit58.Text) = '0') then
    prc_Abrir_qConta_Orcamento(0)
  else
  begin
    prc_Abrir_qConta_Orcamento(StrToInt(DBEdit58.Text));
    if fDMCadProduto.qConta_Orcamento.IsEmpty then
    begin
      MessageDlg('*** ID Conta de orçamento não cadastrada', mtError, [mbOk], 0);
      DBEdit58.SetFocus;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Abrir_qConta_Orcamento(ID: Integer);
begin
  edtNome_Orcamento.Clear;
  if ID <= 0 then
    exit;
  fDMCadProduto.qConta_Orcamento.Close;
  fDMCadProduto.qConta_Orcamento.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qConta_Orcamento.Open;
  edtNome_Orcamento.Text := fDMCadProduto.qConta_OrcamentoDESCRICAO.AsString;
end;

procedure TfrmCadProdutoLoja.DBEdit58KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 2;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.Clear;
    prc_Abrir_qConta_Orcamento(fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger);
  end;
end;

function TfrmCadProdutoLoja.fnc_Verificar_Tipo: Boolean;
begin
  Result := True;
  if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') then
  begin
    if (fDMCadProduto.cdsProduto_Cor.Active) and not(fDMCadProduto.cdsProduto_Cor.IsEmpty) then
      Result := False;
  end
  else
  if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') then
  begin
    if (fDMCadProduto.cdsProduto_Comb.Active) and not(fDMCadProduto.cdsProduto_Comb.IsEmpty) then
      Result := False
    else
    if (fDMCadProduto.cdsProduto_Atelier.Active) and not(fDMCadProduto.cdsProduto_Atelier.IsEmpty) then
      Result := False
    else
    if (fDMCadProduto.cdsProduto_Consumo.Active) and not(fDMCadProduto.cdsProduto_Consumo.IsEmpty) then
      Result := False
    else
    if (fDMCadProduto.cdsProduto_Emb.Active) and not(fDMCadProduto.cdsProduto_Emb.IsEmpty) then
      Result := False
    else
    if fDMCadProduto.cdsProdutoID_LINHA.AsInteger > 0 then
      Result := False;
  end;
end;

procedure TfrmCadProdutoLoja.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
  begin
    AFont.Color := clBlue;
  end;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> vOrigem_Ant) or (fDMCadProduto.cdsProduto.State in [dsInsert]) then
  begin
    if (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '1') or (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '2') or
       (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '3') or (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '8') then
      fDMCadProduto.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'S'
    else
      fDMCadProduto.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  end;
end;

procedure TfrmCadProdutoLoja.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vOrigem_Ant := fDMCadProduto.cdsProdutoORIGEM_PROD.AsString;
end;

procedure TfrmCadProdutoLoja.btnInserir_ComissaoClick(Sender: TObject);
begin
  if RzPageControl5.ActivePage = TS_Comissao_Cli then
  begin
    fDMCadProduto.prc_Inserir_ProdComissao;
    ffrmCadProduto_Comissao := TfrmCadProduto_Comissao.Create(self);
    ffrmCadProduto_Comissao.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_Comissao.ShowModal;
    FreeAndNil(ffrmCadProduto_Comissao);
  end
  else
  if RzPageControl5.ActivePage = TS_Comissao_Vend then
  begin
    fDMCadProduto.prc_Inserir_ProdComissao_Vend;
    ffrmCadProduto_Comissao_Vend := TfrmCadProduto_Comissao_Vend.Create(self);
    ffrmCadProduto_Comissao_Vend.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_Comissao_Vend.ShowModal;
    FreeAndNil(ffrmCadProduto_Comissao_Vend);
  end;
end;

procedure TfrmCadProdutoLoja.btnAlterar_ComissaoClick(Sender: TObject);
begin
  if RzPageControl5.ActivePage = TS_Comissao_Cli then
  begin
    if fDMCadProduto.cdsProduto_Comissao.IsEmpty then
      exit;

    fDMCadProduto.cdsProduto_Comissao.Edit;

    ffrmCadProduto_Comissao := TfrmCadProduto_Comissao.Create(self);
    ffrmCadProduto_Comissao.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_Comissao.ShowModal;
    FreeAndNil(ffrmCadProduto_Comissao);
  end
  else
  if RzPageControl5.ActivePage = TS_Comissao_Vend then
  begin
    if fDMCadProduto.cdsProduto_Comissao_Vend.IsEmpty then
      exit;

    fDMCadProduto.cdsProduto_Comissao_Vend.Edit;

    ffrmCadProduto_Comissao_Vend := TfrmCadProduto_Comissao_Vend.Create(self);
    ffrmCadProduto_Comissao_Vend.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_Comissao_Vend.ShowModal;
    FreeAndNil(ffrmCadProduto_Comissao_Vend);
  end;
end;

procedure TfrmCadProdutoLoja.btnExcluir_ComissaoClick(Sender: TObject);
begin
  if RzPageControl5.ActivePage = TS_Comissao_Cli then
  begin
    if fDMCadProduto.cdsProduto_Comissao.IsEmpty then
      exit;
    if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMCadProduto.cdsProduto_Comissao.Delete;
  end
  else
  if RzPageControl5.ActivePage = TS_Comissao_Vend then
  begin
    if fDMCadProduto.cdsProduto_Comissao_Vend.IsEmpty then
      exit;
    if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMCadProduto.cdsProduto_Comissao_Vend.Delete;
  end;
end;

procedure TfrmCadProdutoLoja.edtCod_EnqIPIKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) then
  begin
   fDMCadProduto.cdsProdutoID_ENQIPI.Clear;
   edtCod_EnqIPI.Clear;
  end
  else
  if (Key = Vk_F2) then
  begin
    viD_EnqIPI_Pos := fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger := viD_EnqIPI_Pos
    else
      fDMCadProduto.cdsProdutoID_ENQIPI.Clear;
    edtCod_EnqIPI.Clear;
    prc_Abrir_EnqIPI(fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger);
    edtCod_EnqIPI.Text := fDMCadProduto.qEnqIPICODIGO.AsString;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Abrir_EnqIPI(ID: Integer);
begin
  fDMCadProduto.qEnqIPI.Close;
  fDMCadProduto.qEnqIPI.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qEnqIPI.Open;
end;

procedure TfrmCadProdutoLoja.DBEdit60KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_CodCest: TfrmSel_CodCest;
begin
  if (Key = Vk_F2) then
  begin
    vCodCest_Pos := fDMCadProduto.cdsProdutoCOD_CEST.AsString;
    ffrmSel_CodCest := TfrmSel_CodCest.Create(Self);
    ffrmSel_CodCest.ShowModal;
    if vCodCest_Pos <> '' then
      fDMCadProduto.cdsProdutoCOD_CEST.AsString := vCodCest_Pos
    else
      fDMCadProduto.cdsProdutoCOD_CEST.Clear;
  end;
end;

procedure TfrmCadProdutoLoja.DBEdit60Exit(Sender: TObject);
begin
  if trim(fDMCadProduto.cdsProdutoCOD_CEST.AsString) <> '' then
  begin
    fDMCadProduto.qCest.Close;
    fDMCadProduto.qCest.ParamByName('COD_CEST').AsString := fDMCadProduto.cdsProdutoCOD_CEST.AsString;
    fDMCadProduto.qCest.Open;
    if fDMCadProduto.qCest.IsEmpty then
    begin
      MessageDlg('*** Código do CEST não encontrado na tabela! ', mtError, [mbOk], 0);
      DBEdit60.SetFocus;
      exit;
    end;
  end;
end;

function TfrmCadProdutoLoja.fnc_Filial: Boolean;
begin
  Result := True;
  if fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
  begin
    fDMCadProduto.cdsFilial.First;
    if fDMCadProduto.cdsFilial.RecordCount = 1 then
      vFilial := fDMCadProduto.cdsFilialID.AsInteger
    else
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

procedure TfrmCadProdutoLoja.prc_Gravar_Produto_Cad_Ant;
var
  vItemAux: Integer;
begin
  fDMCadProduto.cdsProduto_Cad_Ant.Last;
  vItemAux := fDMCadProduto.cdsProduto_Cad_AntITEM.AsInteger;

  fDMCadProduto.cdsProduto_Cad_Ant.Insert;
  fDMCadProduto.cdsProduto_Cad_AntID.AsInteger        := fDMCadProduto.cdsProdutoID.AsInteger;
  fDMCadProduto.cdsProduto_Cad_AntITEM.AsInteger      := vItemAux + 1;
  fDMCadProduto.cdsProduto_Cad_AntDATA.AsDateTime     := Date;
  fDMCadProduto.cdsProduto_Cad_AntHora.AsDateTime     := Now;
  fDMCadProduto.cdsProduto_Cad_AntNOME.AsString       := vNome_Cad_Ant;
  fDMCadProduto.cdsProduto_Cad_AntREFERENCIA.AsString := vReferencia_Cad_Ant;
  fDMCadProduto.cdsProduto_Cad_AntUSUARIO.AsString    := vUsuario;
  fDMCadProduto.cdsProduto_Cad_Ant.Post;
  fDMCadProduto.cdsProduto_Cad_Ant.ApplyUpdates(0);
end;

procedure TfrmCadProdutoLoja.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  
  ffrmCadProduto_Cad_Ant: TfrmCadProduto_Cad_Ant;
begin
  if (Key = Vk_F3) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    ffrmCadProduto_Cad_Ant := TfrmCadProduto_Cad_Ant.Create(self);
    ffrmCadProduto_Cad_Ant.fDMCadProduto := fDMCadProduto;
    fDMCadProduto.prc_Abrir_Produto_Cad_Ant(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
    ffrmCadProduto_Cad_Ant.ShowModal;
    FreeAndNil(ffrmCadProduto_Cad_Ant);
  end;
end;

procedure TfrmCadProdutoLoja.prc_Ajustar_Produto_Ped;
var
  sds: TSQLDataSet;
  vTamAux: String;
begin
  sds := TSQLDataSet.Create(nil);
  try
    vTamAux := '';
    if fDMCadProduto.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString <> 'S' then
    begin
      if fDMCadProduto.cdsProdutoUSA_GRADE.AsString = 'S' then
        vTamAux := ' TAM. ';
    end;
      
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE PEDIDO_ITEM I SET I.referencia = ' + QuotedStr(fDMCadProduto.cdsProdutoREFERENCIA.AsString)
                       + ' , I.nomeproduto = ' + QuotedStr(fDMCadProduto.cdsProdutoNOME.AsString + vTamAux)  + ' || coalesce(I.Tamanho,'''') '
                       + ' WHERE I.id_produto = ' + fDMCadProduto.cdsProdutoID.AsString
                       + '   AND I.qtd_restante > 0 '
                       + '   AND I.TIPO_REG = ' + QuotedStr('P');
    sds.ExecSQL();
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadProdutoLoja.prc_Aplicar_Margem;
var
  vAux: Real;
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) <= 0) then
    exit;
  if (fDMCadProduto.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString = 'C') then
  begin
    if StrToFloat(formatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) <= 0 then
      exit;
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat *
                                                              fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100) +
                                                              fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat));
  end
  else
  begin
    if StrToFloat(formatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat)) <= 0 then
      exit;
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat *
                                                              fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100) +
                                                              fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat));
  end;
end;

procedure TfrmCadProdutoLoja.DBEdit3Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProdutoLoja.DBEdit57Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProdutoLoja.DBCheckBox13Click(Sender: TObject);
begin
  TS_Balanca.TabVisible := DBCheckBox13.Checked;
end;

procedure TfrmCadProdutoLoja.btnGravaPrVendaClick(Sender: TObject);
begin
  if ceVlr_Total_Mat.Value <= 0 then
    MessageDlg('*** Preço do consumo está zerado, com isso, não podendo gravar o preço de venda!', mtInformation, [mbOk], 0)
  else
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := ceVlr_Total_Mat.Value;
end;

procedure TfrmCadProdutoLoja.prc_Controle_Balanca;
begin
  if not(fDMCadProduto.cdsProduto_Balanca.Active) or not(fDMCadProduto.cdsProduto_Balanca.State in [dsEdit, dsInsert]) then
  begin
    fDMCadProduto.prc_Abrir_Balanca(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Balanca.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Balanca.Insert;
        fDMCadProduto.cdsProduto_BalancaID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Balanca.Edit;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.DBEdit2Exit(Sender: TObject);
begin
  if copy(fdmCadProduto.cdsProdutoNOME.AsString,1,1) = ' ' then
    fdmCadProduto.cdsProdutoNOME.AsString := TrimLeft(fdmCadProduto.cdsProdutoNOME.AsString);
end;

procedure TfrmCadProdutoLoja.prc_Monta_mTabPreco;
var
  sds: TSQLDataSet;
begin
  fDMCadProduto.mTabPreco.EmptyDataSet;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT TP.ID, TP.NOME, ti.vlr_venda, TP.TABPROMOCIONAL, TP.DTINICIAL, TP.DTFINAL FROM tab_preco TP '
                       + ' LEFT JOIN tab_preco_itens TI  ON TP.ID = TI.ID  AND TI.id_produto = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger);
    sds.Open;
    while not sds.Eof do
    begin
      fDMCadProduto.mTabPreco.Insert;
      fDMCadProduto.mTabPrecoID_Tabela.AsInteger  := sds.FieldByName('ID').AsInteger;
      fDMCadProduto.mTabPrecoID_Produto.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      fDMCadProduto.mTabPrecoVlr_Venda.AsFloat    := sds.FieldByName('VLR_VENDA').AsFloat;
      fDMCadProduto.mTabPrecoNome_Tabela.AsString := sds.FieldByName('NOME').AsString;
      fDMCadProduto.mTabPrecoVlr_Ant.AsFloat      := sds.FieldByName('VLR_VENDA').AsFloat;
      if sds.FieldByName('TABPROMOCIONAL').AsString = 'S' then
        fDMCadProduto.mTabPrecoNome_Tabela.AsString := fDMCadProduto.mTabPrecoNome_Tabela.AsString + '. Vigencia: ' + sds.FieldByName('DTINICIAL').AsString + ' a ' + sds.FieldByName('DTFINAL').AsString;
      fDMCadProduto.mTabPrecoPromocao.AsString := sds.FieldByName('TABPROMOCIONAL').AsString;
      fDMCadProduto.mTabPreco.Post;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadProdutoLoja.prc_Grava_Tab_Preco;
begin
  fDMCadProduto.mTabPreco.First;
  while not fDMCadProduto.mTabPreco.Eof do
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadProduto.mTabPrecoVlr_Ant.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMCadProduto.mTabPrecoVlr_Venda.AsFloat)) then
    begin
      fDMCadProduto.cdsTab_Preco_Itens.Close;
      fDMCadProduto.sdsTab_Preco_Itens.ParamByName('ID').AsInteger         := fDMCadProduto.mTabPrecoID_Tabela.AsInteger;
      fDMCadProduto.sdsTab_Preco_Itens.ParamByName('ID_PRODUTO').AsInteger := fDMCadProduto.mTabPrecoID_Produto.AsInteger;
      fDMCadProduto.cdsTab_Preco_Itens.Open;
      if not fDMCadProduto.cdsTab_Preco_Itens.IsEmpty then
      begin
        fDMCadProduto.cdsTab_Preco_Itens.Edit;
        fDMCadProduto.cdsTab_Preco_ItensVLR_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadProduto.mTabPrecoVlr_Venda.AsFloat));
        fDMCadProduto.cdsTab_Preco_Itens.Post;
        fDMCadProduto.cdsTab_Preco_Itens.ApplyUpdates(0);
      end
      else
      begin
        if StrToFloat(FormatFloat('0.0000',fDMCadProduto.mTabPrecoVlr_Venda.AsFloat)) > 0 then
        begin
          fDMCadProduto.qProximoItem_TabPreco.Close;
          fDMCadProduto.qProximoItem_TabPreco.ParamByName('ID').AsInteger := fDMCadProduto.mTabPrecoID_Tabela.AsInteger;
          fDMCadProduto.qProximoItem_TabPreco.Open;

          fDMCadProduto.cdsTab_Preco_Itens.Insert;
          fDMCadProduto.cdsTab_Preco_ItensID.AsInteger         := fDMCadProduto.mTabPrecoID_Tabela.AsInteger;
          fDMCadProduto.cdsTab_Preco_ItensITEM.AsInteger       := fDMCadProduto.qProximoItem_TabPrecoITEM.AsInteger + 1;
          fDMCadProduto.cdsTab_Preco_ItensID_PRODUTO.AsInteger := fDMCadProduto.mTabPrecoID_Produto.AsInteger;
          fDMCadProduto.cdsTab_Preco_ItensVLR_VENDA.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadProduto.mTabPrecoVlr_Venda.AsFloat));
          fDMCadProduto.cdsTab_Preco_Itens.Post;
          fDMCadProduto.cdsTab_Preco_Itens.ApplyUpdates(0);
        end;
      end;
    end;
    fDMCadProduto.mTabPreco.Next;
  end;
end;

procedure TfrmCadProdutoLoja.SMDBGrid12GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.mTabPrecoPromocao.AsString = 'S' then
    Background := clYellow;
end;

procedure TfrmCadProdutoLoja.DBEdit10Exit(Sender: TObject);
begin
  Label161.Visible          := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  RxDBLookupCombo20.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) <= 0 then
    fDMCadProduto.cdsProdutoID_CSTICMS_BRED.Clear;
end;

procedure TfrmCadProdutoLoja.Etiqueta1Click(Sender: TObject);
begin
  vTipo_Pedido := '';
  ffrmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  ffrmEtiq_Individual.RzPageControl1.ActivePageIndex := 1;
  ffrmEtiq_Individual.ShowModal;
  FreeAndNil(ffrmEtiq_Individual);
end;

procedure TfrmCadProdutoLoja.btnGravaPrCustoClick(Sender: TObject);
begin
  if ceVlr_Total_Mat.Value <= 0 then
    MessageDlg('*** Preço do consumo está zerado, com isso, não podendo gravar o preço de custo!', mtInformation, [mbOk], 0)
  else
  begin
    fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat       := ceVlr_Total_Mat.Value;
    fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat := ceVlr_Total_Mat.Value;
    if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0 then
    begin
      if MessageDlg('Calcular o preço de venda aplicando a margem em cima do Preço de Custo Novo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        prc_Aplicar_Margem;
    end;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Mostra_Material_Cru;
begin
  Edit10.Clear;
  if fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger <= 0 then
    exit;
  fDMCadProduto.qMaterial.Close;
  fDMCadProduto.qMaterial.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger;
  fDMCadProduto.qMaterial.Open;
  if fDMCadProduto.qMaterialID.AsInteger = fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger then
    Edit10.Text := fDMCadProduto.qMaterialNOME.AsString;
end;

procedure TfrmCadProdutoLoja.DBEdit93KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) then
  begin
    vCodProduto_Pos := fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger := vCodProduto_Pos;
    prc_Mostra_Material_Cru;
  end;
end;

procedure TfrmCadProdutoLoja.DBEdit94KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(DBEdit94.Text) <> '') then
  begin
    prc_Mostra_Forma(StrToInt(DBEdit94.Text));
    if fDMCadProduto.qProdID.AsInteger <> StrToInt(DBEdit94.Text) then
      MessageDlg('*** Código do Material não encontrado!', mtError, [mbOk], 0);
  end
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadProduto.cdsProdutoID_FORMA.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    fDMCadProduto.cdsProdutoID_FORMA.AsInteger := vCodProduto_Pos;
    prc_Mostra_Forma(fDMCadProduto.cdsProdutoID_FORMA.AsInteger);
    if fDMCadProduto.cdsProdutoID_FORMA.AsInteger > 0 then
      DBEdit94.SetFocus;
  end;
end;

procedure TfrmCadProdutoLoja.prc_Mostra_Forma(ID_Material: Integer);
begin
  if fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString <> 'S' then
    exit;
  if ID_Material <= 0 then
    ID_Material := 0;
  fDMCadProduto.qProd.Close;
  fDMCadProduto.qProd.ParamByName('ID').AsInteger := ID_Material;
  fDMCadProduto.qProd.Open;
  Edit11.Text := fDMCadProduto.qProdNOME.AsString;
end;

procedure TfrmCadProdutoLoja.DBEdit94Exit(Sender: TObject);
begin
  if fDMCadProduto.cdsProdutoID_FORMA.AsInteger <= 0 then
    Edit11.Clear
  else
  begin
    prc_Mostra_Forma(fDMCadProduto.cdsProdutoID_FORMA.AsInteger);
    if fDMCadProduto.qProdID.AsInteger <> fDMCadProduto.cdsProdutoID_FORMA.AsInteger then
    begin
      MessageDlg('*** Código do Material não encontrado!', mtError, [mbOk], 0);
      DBEdit94.SetFocus;
      exit;
    end;
  end;
end;

end.

