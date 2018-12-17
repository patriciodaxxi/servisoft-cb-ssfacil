unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB, UCBase,
  UCadUnidade, UCadNCM, StdCtrls, DBCtrls, RxDBComb, RxLookup, RXDBCtrl, ToolEdit, CurrEdit, ExtCtrls, RzTabs, dbXPress, ExtDlgs,
  UCadProduto_Forn, UCadProduto_Consumo, RzPanel, NxCollection, DBVGrids, DBGrids, UDMCopiarProduto, SqlExpr, DBAdvGrid, USenha,
  AdvDBLookupComboBox, UCadProduto_UF, UCadProduto_Uni, ComCtrls, RzChkLst, RzLstBox, UCadProduto_Matriz, UCadProduto_Comb,
  UCadProduto_Cor, UCadProduto_Emb, UCadProduto_Atelier, UGerar_CBarra, Menus, UCadProduto_Comissao, UCadProduto_Carimbo, Mask,
  UCadProduto_Comissao_Vend, uEtiq_Individual, Variants, UConsEstoque_Mov, NxEdit, UCadProduto_Maq;

type
  TfrmCadProduto = class(TForm)
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
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    TS_Engenharia: TRzTabSheet;
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
    UCControls1: TUCControls;
    Label33: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label34: TLabel;
    rxdbFornecedor: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label37: TLabel;
    edtCodBarra: TEdit;
    TS_Veiculo: TRzTabSheet;
    pnlVeiculo: TPanel;
    Label38: TLabel;
    DBEdit16: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit17: TDBEdit;
    Label41: TLabel;
    DBEdit18: TDBEdit;
    Label42: TLabel;
    DBEdit19: TDBEdit;
    Label43: TLabel;
    DBEdit20: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit21: TDBEdit;
    Label46: TLabel;
    DBEdit22: TDBEdit;
    Label47: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label48: TLabel;
    DBEdit25: TDBEdit;
    Label49: TLabel;
    DBEdit26: TDBEdit;
    pnlCons_Veiculo: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label51: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label54: TLabel;
    Label55: TLabel;
    Edit5: TEdit;
    Label57: TLabel;
    Edit6: TEdit;
    Label59: TLabel;
    Edit7: TEdit;
    Label60: TLabel;
    Edit8: TEdit;
    SMDBGrid4: TSMDBGrid;
    Label61: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label62: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label63: TLabel;
    ComboBox1: TComboBox;
    Label64: TLabel;
    DateEdit1: TDateEdit;
    Label65: TLabel;
    DateEdit2: TDateEdit;
    Label66: TLabel;
    DateEdit3: TDateEdit;
    Label67: TLabel;
    DateEdit4: TDateEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    BitBtn3: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label68: TLabel;
    ComboBox2: TComboBox;
    Label72: TLabel;
    Label73: TLabel;
    RzPageControl3: TRzPageControl;
    TS_Grade: TRzTabSheet;
    TS_Fiscal: TRzTabSheet;
    VDBGrid1: TVDBGrid;
    NxPanel1: TNxPanel;
    Label70: TLabel;
    SpeedButton8: TSpeedButton;
    RxDBLookupCombo9: TRxDBLookupCombo;
    btnImportar_Tam: TNxButton;
    btnExcluir_Tam: TNxButton;
    TS_Opcoes: TRzTabSheet;
    pnlOpcoes: TPanel;
    Label13: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBCheckBox4: TDBCheckBox;
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
    Label69: TLabel;
    DBEdit28: TDBEdit;
    ckInativo: TCheckBox;
    btnImprimir: TNxButton;
    TS_PCP: TRzTabSheet;
    Label26: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl4: TRzPageControl;
    TS_Injetados: TRzTabSheet;
    TS_Cartonagem: TRzTabSheet;
    pnlInjetados: TPanel;
    Label75: TLabel;
    Label78: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    SpeedButton9: TSpeedButton;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit36: TDBEdit;
    pnlCartonagem: TPanel;
    Label22: TLabel;
    Label84: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    TS_Serie: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    Panel3: TPanel;
    btnInserir_Serie: TNxButton;
    btnExcluir_Serie: TNxButton;
    Label85: TLabel;
    DBEdit39: TDBEdit;
    Label86: TLabel;
    DBEdit40: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    Label87: TLabel;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    Conferncia1: TMenuItem;
    ProgressBar1: TProgressBar;
    StaticText2: TStaticText;
    TS_Obs: TRzTabSheet;
    DBMemo1: TDBMemo;
    TS_Ativo: TRzTabSheet;
    pnlAtivo: TPanel;
    Label28: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label31: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit42: TDBEdit;
    Label90: TLabel;
    DBEdit43: TDBEdit;
    Label91: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
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
    Label96: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    TabSheet3: TRzTabSheet;
    Panel5: TPanel;
    btnInserir_UF: TNxButton;
    btnAlterar_UF: TNxButton;
    btnExcluir_UF: TNxButton;
    SMDBGrid6: TSMDBGrid;
    Label97: TLabel;
    DBEdit41: TDBEdit;
    Label98: TLabel;
    DBEdit49: TDBEdit;
    Label99: TLabel;
    DBEdit50: TDBEdit;
    Label100: TLabel;
    DBEdit51: TDBEdit;
    SpeedButton3: TSpeedButton;
    ListBox1: TListBox;
    Label101: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    ProdutoAgrupadoRefPadro1: TMenuItem;
    Label102: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    TabSheet4: TRzTabSheet;
    Panel6: TPanel;
    btnInserir_Uni: TNxButton;
    btnAlterar_Uni: TNxButton;
    btnExcluir_Uni: TNxButton;
    SMDBGrid7: TSMDBGrid;
    Label103: TLabel;
    DBEdit52: TDBEdit;
    Label104: TLabel;
    DBEdit53: TDBEdit;
    Label105: TLabel;
    DBEdit54: TDBEdit;
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
    Label108: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    SpeedButton10: TSpeedButton;
    TS_Matriz: TRzTabSheet;
    Panel7: TPanel;
    btnInserir_Matriz: TNxButton;
    btnAlterar_Matriz: TNxButton;
    btnExcluir_Matriz: TNxButton;
    SMDBGrid8: TSMDBGrid;
    DBCheckBox5: TDBCheckBox;
    Label109: TLabel;
    DBEdit56: TDBEdit;
    Label110: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    SpeedButton12: TSpeedButton;
    Label111: TLabel;
    RxDbCliente: TRxDBLookupCombo;
    Label112: TLabel;
    RxDBLookupCombo17: TRxDBLookupCombo;
    Label113: TLabel;
    Edit9: TEdit;
    DBCheckBox6: TDBCheckBox;
    Label114: TLabel;
    DBEdit57: TDBEdit;
    Label115: TLabel;
    DBEdit58: TDBEdit;
    edtNome_Orcamento: TEdit;
    RxDBComboBox7: TRxDBComboBox;
    Label25: TLabel;
    TabSheet2: TRzTabSheet;
    pnlCadastro_Forn: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    pnl_Eng_Consumo: TPanel;
    pnl_Eng_Processo: TPanel;
    pnlConsumo: TPanel;
    Label74: TLabel;
    btnInserir_Consumo: TNxButton;
    btnAlterar_Consumo: TNxButton;
    btnExcluir_Consumo: TNxButton;
    btnRecalcular_Mat: TNxButton;
    ceVlr_Total_Mat: TCurrencyEdit;
    DBEdit29: TDBEdit;
    SMDBGrid3: TSMDBGrid;
    Panel9: TPanel;
    btnCor: TNxButton;
    btnCombinacao: TNxButton;
    btnEmbalagem: TNxButton;
    btnAtelier: TNxButton;
    btnCBarra: TNxButton;
    SMDBGrid9: TSMDBGrid;
    btnCor2: TNxButton;
    Label117: TLabel;
    RxDBLookupCombo18: TRxDBLookupCombo;
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
    FichaTcnica1: TMenuItem;
    RzPageControl5: TRzPageControl;
    TS_Comissao_Cli: TRzTabSheet;
    SMDBGrid10: TSMDBGrid;
    TS_Comissao_Vend: TRzTabSheet;
    SMDBGrid11: TSMDBGrid;
    DBCheckBox7: TDBCheckBox;
    Label123: TLabel;
    DBEdit60: TDBEdit;
    Label124: TLabel;
    btnCarimbo: TNxButton;
    Image3: TImage;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TS_Pictograma: TRzTabSheet;
    btnAlterar_Serie: TNxButton;
    Label125: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    BitBtn5: TBitBtn;
    Label126: TLabel;
    rxdbFilial: TRxDBLookupCombo;
    Label127: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    DBMemo2: TDBMemo;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    BitBtn6: TBitBtn;
    Label128: TLabel;
    DBEdit63: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    Label129: TLabel;
    DBEdit64: TDBEdit;
    Label130: TLabel;
    DBEdit65: TDBEdit;
    Label131: TLabel;
    DBDateEdit4: TDBDateEdit;
    DBCheckBox12: TDBCheckBox;
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
    ProdutoConsumoEstruturado1: TMenuItem;
    btnGravaPrCusto: TBitBtn;
    DBCheckBox14: TDBCheckBox;
    TS_Tingimento: TRzTabSheet;
    pnlTingimento: TPanel;
    Label165: TLabel;
    DBEdit93: TDBEdit;
    Edit10: TEdit;
    Label166: TLabel;
    Panel11: TPanel;
    Label167: TLabel;
    DBEdit94: TDBEdit;
    Edit11: TEdit;
    FichaTcnica2: TMenuItem;
    FichaTcnicaPrincipal1: TMenuItem;
    FichaTcnicaporCombinao1: TMenuItem;
    Label168: TLabel;
    DBEdit95: TDBEdit;
    btnGradeRef: TNxButton;
    Label169: TLabel;
    DBEdit96: TDBEdit;
    DBCheckBox15: TDBCheckBox;
    TS_Lote: TRzTabSheet;
    Panel12: TPanel;
    btnInserir_Lote: TNxButton;
    btnAlterar_Lote: TNxButton;
    btnExcluir_Lote: TNxButton;
    SMDBGrid13: TSMDBGrid;
    Label170: TLabel;
    DBEdit97: TDBEdit;
    ProdutosSelecionados1: TMenuItem;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label36: TLabel;
    DBEdit15: TDBEdit;
    NxButton1: TNxButton;
    TS_CBarra: TRzTabSheet;
    Panel17: TPanel;
    btnCBarra2: TNxButton;
    SMDBGrid14: TSMDBGrid;
    lblDescLargura: TLabel;
    btnAjustaRef2: TBitBtn;
    Label171: TLabel;
    DBEdit98: TDBEdit;
    btnAjustarObsMat: TBitBtn;
    btnAjustarRef_Ord: TBitBtn;
    DBCheckBox16: TDBCheckBox;
    Label172: TLabel;
    DBEdit99: TDBEdit;
    Label173: TLabel;
    DBEdit100: TDBEdit;
    DBCheckBox17: TDBCheckBox;
    Label174: TLabel;
    DBEdit101: TDBEdit;
    btnAjudaCod_Barra: TNxButton;
    Label175: TLabel;
    RxDBLookupCombo22: TRxDBLookupCombo;
    Label181: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    TS_Maquina: TRzTabSheet;
    SMDBGrid15: TSMDBGrid;
    TS_Ficha_Textil: TRzTabSheet;
    pnlTempoMaquina: TPanel;
    btnInserir_Maq: TNxButton;
    btnAlterar_Maq: TNxButton;
    btnExcluir_Maq: TNxButton;
    NxPanel2: TNxPanel;
    DBText1: TDBText;
    Label177: TLabel;
    DBText2: TDBText;
    btnSelecionar_Maq: TNxButton;
    TS_Desenho_Passamento: TRzTabSheet;
    pnlDigitaDP: TPanel;
    btnDigita_DP: TNxButton;
    NxPanel4: TNxPanel;
    DBText7: TDBText;
    Label116: TLabel;
    DBText8: TDBText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    pnlDesenho_Passamento: TPanel;
    SMDBGrid17: TSMDBGrid;
    Panel18: TPanel;
    Label176: TLabel;
    DBMemo4: TDBMemo;
    NxPanel3: TNxPanel;
    DBText5: TDBText;
    Label189: TLabel;
    DBText6: TDBText;
    RzPageControl6: TRzPageControl;
    TS_Ficha_Tear: TRzTabSheet;
    TS_Ficha_Trancadeira: TRzTabSheet;
    pnlFicha_Textil: TPanel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    RxDBLookupCombo23: TRxDBLookupCombo;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    ckGoma: TNxCheckBox;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    DBMemo3: TDBMemo;
    ckFioAuxiliar: TNxCheckBox;
    ckBorracha: TNxCheckBox;
    pnlFicha_Trancadeira: TPanel;
    Label178: TLabel;
    Label179: TLabel;
    Label182: TLabel;
    Label224: TLabel;
    Label226: TLabel;
    Label230: TLabel;
    Label237: TLabel;
    Label241: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit105: TDBEdit;
    RxDBLookupCombo24: TRxDBLookupCombo;
    DBEdit146: TDBEdit;
    DBEdit153: TDBEdit;
    DBEdit157: TDBEdit;
    DBDateEdit6: TDBDateEdit;
    DBMemo5: TDBMemo;
    Label180: TLabel;
    DBEdit104: TDBEdit;
    DBEdit106: TDBEdit;
    Label225: TLabel;
    Label227: TLabel;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    Label228: TLabel;
    Label229: TLabel;
    DBEdit145: TDBEdit;
    Label231: TLabel;
    DBEdit147: TDBEdit;
    Label232: TLabel;
    DBEdit148: TDBEdit;
    Label233: TLabel;
    DBEdit149: TDBEdit;
    Label234: TLabel;
    DBEdit150: TDBEdit;
    Label235: TLabel;
    DBEdit151: TDBEdit;
    DBEdit152: TDBEdit;
    Label236: TLabel;
    btnAjustarPeso: TBitBtn;
    gbxProcesso: TRzGroupBox;
    btnInserir_Processo: TNxButton;
    btnAlterar_Processo: TNxButton;
    btnExcluir_Processo: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label163: TLabel;
    RxDBLookupCombo21: TRxDBLookupCombo;
    Label162: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label164: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label118: TLabel;
    SMDBGrid16: TSMDBGrid;
    Label238: TLabel;
    DBEdit154: TDBEdit;
    Label239: TLabel;
    DBEdit155: TDBEdit;
    btnAjuda_TipoMat: TNxButton;
    Exportaparabalana1: TMenuItem;
    ExportarProduto1: TMenuItem;
    AtualizarPreo1: TMenuItem;
    Label240: TLabel;
    DBEdit156: TDBEdit;
    Label242: TLabel;
    Label243: TLabel;
    RxDBLookupCombo25: TRxDBLookupCombo;
    Label244: TLabel;
    DBEdit158: TDBEdit;
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
    procedure RxDBLookupCombo8Enter(Sender: TObject);
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
    procedure btnImportar_TamClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure btnExcluir_TamClick(Sender: TObject);
    procedure btnCopiarProdutoClick(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserir_SerieClick(Sender: TObject);
    procedure btnExcluir_SerieClick(Sender: TObject);
    procedure IndepCombo10Enter(Sender: TObject);
    procedure DBEdit38DblClick(Sender: TObject);
    procedure DBEdit37DblClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo5CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
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
    procedure RxDBComboBox4Change(Sender: TObject);
    procedure pnlAtivoEnter(Sender: TObject);
    procedure RxDBLookupCombo11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure RxDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluir_UFClick(Sender: TObject);
    procedure btnInserir_UFClick(Sender: TObject);
    procedure btnAlterar_UFClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure ProdutoAgrupadoRefPadro1Click(Sender: TObject);
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
    procedure btnConverterClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnInserir_MatrizClick(Sender: TObject);
    procedure btnAlterar_MatrizClick(Sender: TObject);
    procedure btnExcluir_MatrizClick(Sender: TObject);
    procedure btnCombinacaoClick(Sender: TObject);
    procedure RxDBLookupCombo16Enter(Sender: TObject);
    procedure RxDBLookupCombo16Exit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure btnEmbalagemClick(Sender: TObject);
    procedure btnAtelierClick(Sender: TObject);
    procedure btnCBarraClick(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit58KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCorClick(Sender: TObject);
    procedure btnInserir_ProcessoClick(Sender: TObject);
    procedure btnAlterar_ProcessoClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btnInserir_ComissaoClick(Sender: TObject);
    procedure btnAlterar_ComissaoClick(Sender: TObject);
    procedure btnExcluir_ComissaoClick(Sender: TObject);
    procedure edtCod_EnqIPIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FichaTcnica1Click(Sender: TObject);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60Exit(Sender: TObject);
    procedure btnCarimboClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnAlterar_SerieClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit57Exit(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure btnGravaPrVendaClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SMDBGrid12GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit10Exit(Sender: TObject);
    procedure btnExcluir_ProcessoClick(Sender: TObject);
    procedure Etiqueta1Click(Sender: TObject);
    procedure ProdutoConsumoEstruturado1Click(Sender: TObject);
    procedure btnGravaPrCustoClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure DBEdit93Exit(Sender: TObject);
    procedure DBEdit93KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit94KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit94Exit(Sender: TObject);
    procedure FichaTcnicaPrincipal1Click(Sender: TObject);
    procedure btnGradeRefClick(Sender: TObject);
    procedure btnInserir_LoteClick(Sender: TObject);
    procedure btnAlterar_LoteClick(Sender: TObject);
    procedure btnExcluir_LoteClick(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure ProdutosSelecionados1Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RzPageControl3Change(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure btnAjustaRef2Click(Sender: TObject);
    procedure btnAjustarObsMatClick(Sender: TObject);
    procedure btnAjustarRef_OrdClick(Sender: TObject);
    procedure DBEdit100Exit(Sender: TObject);
    procedure btnAjudaCod_BarraClick(Sender: TObject);
    procedure btnInserir_MaqClick(Sender: TObject);
    procedure btnAlterar_MaqClick(Sender: TObject);
    procedure btnExcluir_MaqClick(Sender: TObject);
    procedure btnSelecionar_MaqClick(Sender: TObject);
    procedure pnlTempoMaquinaEnter(Sender: TObject);
    procedure btnDigita_DPClick(Sender: TObject);
    procedure SMDBGrid17Exit(Sender: TObject);
    procedure btnAjustarPesoClick(Sender: TObject);
    procedure SMDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAjuda_TipoMatClick(Sender: TObject);
    procedure AtualizarPreo1Click(Sender: TObject);
    procedure ExportarProduto1Click(Sender: TObject);
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
    ffrmConsEstoque_Mov: TfrmConsEstoque_Mov;
    ffrmCadProduto_Maq: TfrmCadProduto_Maq;

    vReferencia_Ant: String;
    vTipo_Reg_Ant: String;
    vID_Linha_Ant: Integer;
    vID_Grupo_Ant: Integer;
    vOrigem_Ant: String;
    vPreco_Venda_Ant: Real;
    vID_Semi_Ant: Integer;
    vUser_Exclui: Boolean;
    vEstoqueLoteTotal: Double;

    //*** 16/06/2016  usado para gravar a tabela Produto_Cad_Ant
    vNome_Cad_Ant, vReferencia_Cad_Ant: String;
    vAltera_Nome: Boolean;
    //*****************
    vItem2: Integer;

    procedure prc_Consultar_Estoque_Lote(ID:Integer);
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
    procedure prc_Controle_Ficha_Textil;
    procedure prc_Controle_Ficha_Tranc;
    procedure prc_Controle_Ficha_Textil_DP;
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
    procedure prc_Imp_Produto(Selecionados: Boolean);

    procedure prc_Aplicar_Margem;
    procedure prc_Monta_mTabPreco;
    procedure prc_Grava_Tab_Preco;
    procedure prc_Mostra_Material_Cru;
    procedure prc_Mostra_Forma(ID_Material: Integer);
    procedure prc_Atualiza_Preco_Lote;
    procedure prc_Atualiza_Percentual;
    procedure prc_Gerar_Ref_Estruturada;
    procedure prc_Grava_Peso;
    function fnc_Duplicidade_Mat(ID_Prod : Integer): String;

    function fnc_Verifica_Lote(ID: Integer; Num_Lote: String): Boolean;

    function fnc_Filial: Boolean;

    function fnc_Busca_Semi: Integer;
    //function fnc_Custo(ID : Integer ; Combinacao : Boolean = False) : Boolean;

    procedure prcExportaCadastroMGV5;
    procedure prcAtualizaPrecoMGV5;
  public
    { Public declarations }
    vID_Produto_Local: Integer;
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

uses rsDBUtils, uUtilPadrao, URelProduto, URelProduto_Grupo, USel_Grupo, USel_Plano_Contas, DmdDatabase, UCadProduto_Processo,
  USel_EnqIPI, USel_CodCest, VarUtils, UCadProduto_Serie, UCadProduto_Cad_Ant, UCadProcesso_Grupo, USel_ContaOrc, USel_Produto,
  uCopiar_Comb_Agrupado, UCadProduto_GradeNum, UCadProduto_Lote, USel_Produto_Lote, UCadProduto_Larg,
  UAltProd, UCadProduto_GradeRefTam, USel_Maquina,
  UCadProduto_Consumo_Proc;

{$R *.dfm}

procedure TfrmCadProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Produto_Local := 0;
  SMDBGrid1.ClearFilter;
  try
    fDMCadProduto.qParametros_Geral.Close;
    fDMCadProduto.qParametros_Geral.Open;
    prc_Grava_Grid(SMDBGrid1, Name, fDMCadProduto.qParametros_GeralENDGRIDS.AsString);
  finally
    Action := Cafree;
  end;
end;

procedure TfrmCadProduto.btnExcluirClick(Sender: TObject);
var
  vExcluir: Boolean;
  vCont: Integer;
  vContTotal: Integer;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
        (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
    exit;

  if (trim(fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString) <> 'S') and (SMDBGrid1.SelectedRows.Count > 1) then
  begin
    MessageDlg('*** Existe mais de um produto selecionado para a exclusão, favor verificar!', mtError, [mbOk], 0);
    exit;
  end;
  vExcluir := False;

  if (SMDBGrid1.SelectedRows.Count > 1) then
    MessageDlg('*** Existe mais de um produto selecionado para a exclusão!', mtWarning, [mbOk], 0)
  else
  if (SMDBGrid1.SelectedRows.Count <= 0) then
  begin
    MessageDlg('*** Não existe produto selecionado para a exclusão!', mtInformation, [mbOk], 0);
    exit;
  end;

  if (fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString = 'S') then
  begin
    if (SMDBGrid1.SelectedRows.Count > 1) then
      if MessageDlg('Deseja excluir os produtos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        vExcluir := True;
    if not(vExcluir) and (SMDBGrid1.SelectedRows.Count = 1) then
      if MessageDlg('Deseja excluir o produtos selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        vExcluir := True;
  end
  else
  if (fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString <> 'S') and (SMDBGrid1.SelectedRows.Count = 1) then
  begin
    if MessageDlg('Deseja excluir o produtos selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      vExcluir := True;
  end;
  if not vExcluir then
    exit;

  vCont := SMDBGrid1.SelectedRows.Count;
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vCont := vCont - 1;
      prc_Posiciona_Produto;
      if not fDMCadProduto.cdsProduto.IsEmpty then
        prc_Excluir_Registro;
    end;
    if vCont <= 0 then
      fDMCadProduto.cdsProduto_Consulta.Last;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  //if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  //  exit;

 ///prc_Excluir_Registro;
  btnExcluir.Enabled := False;
  btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.prc_Excluir_Registro;
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

procedure TfrmCadProduto.prc_Gravar_Registro;
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  ID: TTransactionDesc;
  vGerar_Ref: Boolean;
  vAux: Integer;
  vID_SemiAux: Integer;
  vMaterial : String;
  Flag : Boolean;
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
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PRODUTO');
      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
          begin
            Flag := False;
          end;
        end;
      end;
    except
      raise
    end;

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

    if fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
    begin
      vID_SemiAux := fnc_Busca_Semi;
      if vID_SemiAux <> vID_Semi_Ant then
        fDMCadProduto.cdsProdutoTESTE.AsString := TimeToStr(Now)
      else
      begin
        fDMCadProduto.qProdSemi.Close;
        fDMCadProduto.qProdSemi.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
        fDMCadProduto.qProdSemi.Open;
        if fDMCadProduto.qProdSemiCONTADOR.AsInteger <= 0 then
          fDMCadProduto.cdsProdutoTESTE.AsString := TimeToStr(Now)
      end;
    end;

    //16/10/2018
    if fDMCadProduto.qParametros_ProdATUALIZA_PESO_ENG.AsString = 'S' then
      prc_Grava_Peso;
    //*********************

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

    if ((fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S') or (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S') or
       (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S')) and (fDMCadProduto.cdsProduto_Pcp.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Pcp.Post;
      fDMCadProduto.cdsProduto_Pcp.ApplyUpdates(0);
    end;

    //19/09/2018
    if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))
      and (fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'E') and (fDMCadProduto.cdsProduto_Textil.State in [dsEdit,dsInsert]) then
    begin
      if ckFioAuxiliar.Checked then
        fDMCadProduto.cdsProduto_TextilFIO_AUXILIAR.AsString := 'S'
      else
        fDMCadProduto.cdsProduto_TextilFIO_AUXILIAR.AsString := 'N';
      if ckBorracha.Checked then
        fDMCadProduto.cdsProduto_TextilBORRACHA.AsString := 'S'
      else
        fDMCadProduto.cdsProduto_TextilBORRACHA.AsString := 'N';
      if ckGoma.Checked then
        fDMCadProduto.cdsProduto_TextilGOMA.AsString := 'S'
      else
        fDMCadProduto.cdsProduto_TextilGOMA.AsString := 'N';
      fDMCadProduto.cdsProduto_Textil.Post;
      fDMCadProduto.cdsProduto_Textil.ApplyUpdates(0);
    end;
    //13/10/2018
    if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))
      and (fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'T') and (fDMCadProduto.cdsProduto_Tranc.State in [dsEdit,dsInsert]) then
    begin
      fDMCadProduto.cdsProduto_Tranc.Post;
      fDMCadProduto.cdsProduto_Tranc.ApplyUpdates(0);
    end;
    //**************
    //19/09/2018
    if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))
      and (fDMCadProduto.cdsProduto_Textil_DP.Active) then
    begin
      if fDMCadProduto.cdsProduto_Textil_DP.State in [dsEdit,dsInsert] then
        fDMCadProduto.cdsProduto_Textil_DP.Post;
      fDMCadProduto.cdsProduto_Textil_DP.ApplyUpdates(0);
    end;
    //******************

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

    if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
      fDMCadProduto.cdsProduto_Lote.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
      fDMCadProduto.cdsCBarra2.ApplyUpdates(0);

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

    if (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    begin
      if (fDMCadProduto.cdsProduto_Maq.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProduto_Maq.Post;
      fDMCadProduto.cdsProduto_Maq.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N') and (fDMCadProduto.cdsProdutoProcesso.Active) then
    begin
      if (fDMCadProduto.cdsProdutoProcesso.State in [dsEdit,dsInsert]) then
        fDMCadProduto.cdsProdutoProcesso.Post;
      fDMCadProduto.cdsProdutoProcesso.ApplyUpdates(0);
    end;

    if (fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S') then
      fDMCadProduto.cdsProduto_MatTam.ApplyUpdates(0);

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
  if (trim(fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString) <> 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.IsNull) then
  begin
    vMaterial := fnc_Duplicidade_Mat(vIDAux);
    if trim(vMaterial) <> '' then
      MessageDlg(vMaterial + #13 + #13 + ' Esta repetido na mesma posição, favor verificar!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmCadProduto.prc_Inserir_Registro;
begin
  if not fnc_Filial then
    exit;

  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;

  vNome_Cad_Ant       := '';
  vReferencia_Cad_Ant := '';
  vAltera_Nome        := False;
  vID_Semi_Ant        := 0;

  RzPageControl1.ActivePage := TS_Cadastro;
  DBEdit2.ReadOnly := False;
  DBEdit7.ReadOnly := False;
  btnAlterar_Nome.Enabled := False;

  prc_Habilita;
  RxDBComboBox7.Enabled := True;

  RxDBComboBox7.SetFocus;
  lblDescLargura.Caption := '';

  if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N')  then
    fDMCadProduto.prc_Abrir_Produto_Processo(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
var
  i: Integer;
  vTipo_Consulta_Produto_Padrao: String;
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.qParametros_Ped.Open;
  prc_le_Grid(SMDBGrid1, Name, fDMCadProduto.qParametros_GeralENDGRIDS.AsString);

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
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'QTD_EMBALAGEM') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_PedPEDIDO_LOJA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'QTD_PECA_EMB') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_PedPEDIDO_LOJA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'TAM_CALC') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  end;
  DBMemo2.Visible     := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S');
  Label37.Visible     := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  edtCodBarra.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  Label36.Visible  := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  DBEdit15.Visible := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));
  Panel16.Visible  := ((fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString = 'S') and (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString <> 'S'));

  Panel14.Visible  := (fDMCadProduto.qParametros_ProdUSA_LARG.AsString = 'S');

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
  Label110.Visible          := ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S'));
  RxDBLookupCombo16.Visible := ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S'));
  SpeedButton12.Visible     := ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S'));
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
  Label170.Visible          := (fDMCadProduto.qParametros_ProdUSA_QTD_EMBALAGEM.AsString = 'S');
  DBEdit97.Visible          := (fDMCadProduto.qParametros_ProdUSA_QTD_EMBALAGEM.AsString = 'S');
  Label159.Visible          := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  DBEdit91.Visible          := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  btnGravaPrVenda.Visible   := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  btnGravaPrCusto.Visible   := (fDMCadProduto.qParametros_ProdGRAVA_CONSUMO_PRVENDA.AsString = 'S');
  Label160.Visible          := (fDMCadProduto.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S');
  DBEdit92.Visible          := (fDMCadProduto.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S');
  TS_TabPreco.TabVisible    := (fDMCadProduto.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  TS_Lote.TabVisible        := (fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S');

  for i := 1 to SMDBGrid9.ColCount - 2 do
  begin
    if (SMDBGrid9.Columns[i].FieldName = 'QTD') or (SMDBGrid9.Columns[i].FieldName = 'UN')
      or (SMDBGrid9.Columns[i].FieldName = 'VLR_UNIT') or (SMDBGrid9.Columns[i].FieldName = 'VLR_TOTAL')
      or (SMDBGrid9.Columns[i].FieldName = 'OBS') then
      SMDBGrid9.Columns[i].Visible := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'S') and (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'L');
    if (SMDBGrid9.Columns[i].FieldName = 'lkPosicao') then
      SMDBGrid9.Columns[i].Visible := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
  end;
  //btnGerar_Processo.Visible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  RzGroupBox1.Visible         := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  TS_Pictograma.TabVisible    := (fDMCadProduto.qParametros_ProdUSA_PICTOGRAMA.AsString = 'S');
  Panel11.Visible             := ((fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S') and (fDMCadProduto.qParametros_ProdMOSTRAR_FORMA.AsString = 'S'));
  SMDBGrid9.Visible           := ((fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString <> 'S') and (trim(fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString) <> 'S'))
                               or ((fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S') and (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L'));
  gbxProcesso.Visible         := SMDBGrid9.Visible;
  pnl_Eng_Processo.Visible    := ((fDMCadProduto.qParametros_GeralEMPRESA_CALCADOS.AsString <> 'S') and (fDMCadProduto.qParametros_GeralUSA_CUSTO_PROC_ATE.AsString <> 'A') and
                                 ((fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'S') or (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'C')) or
                                 (fDMCadProduto.qParametros_SerUSA_PROCESSO_OS.AsString = 'S') and (fDMCadProduto.qParametros_LoteLOTE_PROCESSO.AsString = 'S'));
  Label168.Visible            := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S');
  DBEdit95.Visible            := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S');
  SMDBGrid16.Visible := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
  if SMDBGrid16.Visible then
    pnl_Eng_Processo.Visible := False;
  Label118.Visible    := (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L');
  StaticText1.Caption := 'Duplo clique para consultar     F3 Consultar Cadastro Anterior';
  if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    StaticText1.Caption := StaticText1.Caption + '   F4 Consulta Lotes';

  for i := 1 to SMDBGrid13.ColCount - 2 do
  begin
    if (SMDBGrid13.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid13.Columns[i].Visible := label4.Enabled;
    if (SMDBGrid13.Columns[i].FieldName = 'PRECO_VENDA') then
      SMDBGrid13.Columns[i].Visible := label12.Enabled;
  end;

  for i := 1 to SMDBGrid13.ColCount - 2 do
  begin
    if (SMDBGrid13.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid13.Columns[i].Visible := label4.Enabled;
    if (SMDBGrid13.Columns[i].FieldName = 'PRECO_VENDA') then
      SMDBGrid13.Columns[i].Visible := label12.Enabled;
  end;
  TS_CBarra.TabVisible := (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S');

  vUser_Exclui       := btnExcluir.Enabled;
  btnExcluir.Enabled := False;
  Label171.Visible   := (fDMCadProduto.qParametros_GeralUSA_TIPO_MATERIAL.AsString = 'S');
  DBEdit98.Visible   := (fDMCadProduto.qParametros_GeralUSA_TIPO_MATERIAL.AsString = 'S');
  Label172.Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  DBEdit99.Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  TS_Desenho_Passamento.TabVisible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  if not(pnl_Eng_Processo.Visible) and not(SMDBGrid16.Visible) then
    pnl_Eng_Consumo.Align := alClient
  else
  if (pnl_Eng_Processo.Visible) then
    pnl_Eng_Processo.Align := alClient
  else
  if SMDBGrid16.Visible then
     SMDBGrid16.Align := alClient;
  if fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S' then
    Label110.Caption := 'Construção/Linha:';
end;

procedure TfrmCadProduto.prc_Consultar;
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

procedure TfrmCadProduto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProduto.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadProduto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
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

  vID_Semi_Ant := 0;
  prc_Habilita;
  if fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
    vID_Semi_Ant := fnc_Busca_Semi;

  RzPageControl2Change(Sender);
end;

procedure TfrmCadProduto.btnConfirmarClick(Sender: TObject);
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

procedure TfrmCadProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadProduto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProduto.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto.DBEdit11Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProduto.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadProduto.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.ceIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.BitBtn1Click(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdForn;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadProduto.BitBtn4Click(Sender: TObject);
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

procedure TfrmCadProduto.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Forn.Delete;
end;

procedure TfrmCadProduto.btnExcluir_ConsumoClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Consumo.IsEmpty then
    exit;

  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Consumo_Tam.First;
  while not fDMCadProduto.cdsProduto_Consumo_Tam.Eof do
    fDMCadProduto.cdsProduto_Consumo_Tam.Delete;

  fDMCadProduto.cdsProduto_Consumo_Proc.First;
  while fDMCadProduto.cdsProduto_Consumo_Proc.Eof do
    fDMCadProduto.cdsProduto_Consumo_Proc.Delete;

  fDMCadProduto.cdsProduto_Consumo.Delete;

  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProduto.btnInserir_ConsumoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  fDMCadProduto.cdsProduto_Consumo.IndexFieldNames := 'ID;ITEM';

  fDMCadProduto.prc_Inserir_ProdConsumo;

  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.ShowModal;

  FreeAndNil(ffrmCadProduto_Consumo);

  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
  fDMCadProduto.cdsProduto_Consumo.IndexFieldNames := 'ID;ID_SETOR;ITEM';
end;

procedure TfrmCadProduto.btnAlterar_ConsumoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Consumo.Active) or
     (fDMCadProduto.cdsProduto_Consumo.IsEmpty) then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  fDMCadProduto.cdsProduto_Consumo.Edit;

  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.ShowModal;

  FreeAndNil(ffrmCadProduto_Consumo);
  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProduto.RxDBComboBox7Change(Sender: TObject);
begin
  if fDMCadProduto.qParametrosUSA_CONSUMO.AsString = 'S' then
  begin
    TS_Engenharia.TabVisible := ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5));
  end;
  btnGradeRef.Visible  := (RxDBComboBox7.ItemIndex = 1);

  if fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S' then
    TS_Grade.TabVisible := ((RxDBComboBox7.ItemIndex < 2) or (RxDBComboBox7.ItemIndex = 5));
  DBCheckBox4.Visible       := (RxDBComboBox7.ItemIndex = 1);
  Label108.Visible          := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));
  RxDBLookupCombo15.Visible := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));
  SpeedButton10.Visible     := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));

  Label110.Visible          := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S')));
  RxDBLookupCombo16.Visible := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S')));
  SpeedButton12.Visible     := (((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)) and ((fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSTRUCAO.AsString = 'S')));
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

procedure TfrmCadProduto.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadProduto.RzPageControl1Change(Sender: TObject);
var
  i: Byte;
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    vEstoqueLoteTotal := 0;
    prc_Consultar_Estoque_Lote(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
    if (fDMCadProduto.cdsProduto_Consulta.Active) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
      Label73.Caption := FormatFloat('###,###,##0.####',fDMCadProduto.cdsProduto_ConsultaQTD_ESTOQUE.AsFloat);
    if (vEstoqueLoteTotal > 0) then
      Label73.Caption := FormatFloat('###,###,##0.####',vEstoqueLoteTotal);
    RzPageControl2.ActivePage := TabSheet1;
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      TS_Veiculo.TabVisible      := (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S');
      TS_PCP.TabVisible          := ((fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S') or (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S'));
      TS_Injetados.TabVisible    := (fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S');
      TS_Cartonagem.TabVisible   := (fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S');
      TS_Ativo.TabVisible        := ((fDMCadProduto.qParametrosUSA_SPED.AsString = 'S') and (fDMCadProduto.cdsProduto_ConsultaSPED_TIPO_ITEM.AsString = '08')) ;
      RZPageControl3.ActivePage  := TS_Fiscal;
      TS_Balanca.TabVisible      := (fDMCadProduto.cdsProdutoUSA_NA_BALANCA.AsString = 'S');
      TS_Maquina.TabVisible      := (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S');
      TS_Ficha_Textil.TabVisible := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
      TS_Ficha_Tear.TabVisible        := ((fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadProduto.cdsProduto_ConsultaTIPO_PRODUCAO.AsString = 'E'));
      TS_Ficha_Trancadeira.TabVisible := ((fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadProduto.cdsProduto_ConsultaTIPO_PRODUCAO.AsString = 'T'));
      if TS_Ficha_Trancadeira.TabVisible then
        RzPageControl6.ActivePage := TS_Ficha_Trancadeira
      else
      if TS_Ficha_Tear.TabVisible then
        RzPageControl6.ActivePage := TS_Ficha_Tear;
    end;
    DBEdit1Change(Sender);
    edtCod_EnqIPI.Clear;
    prc_Abrir_EnqIPI(fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger);
    edtCod_EnqIPI.Text := fDMCadProduto.qEnqIPICODIGO.AsString;

    lblDescLargura.Caption := FormatFloat('0.000#',fDMCadProduto.cdsProduto_ConsultaLARGURA.AsFloat) + ' x '
                            + FormatFloat('0.000#',fDMCadProduto.cdsProduto_ConsultaALTURA.AsFloat) + ' x '
                            + FormatFloat('0.0000',fDMCadProduto.cdsProduto_ConsultaESPESSURA.AsFloat);
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
        if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
          RzPageControl3.ActivePage := TS_Lote
        else
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
  btnGradeRef.Visible  := fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M';

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

procedure TfrmCadProduto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.IndexFieldNames := 'CODIGO';
  StaticText2.Visible := True;
  vID_Grupo_Ant       := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
end;

procedure TfrmCadProduto.RxDBLookupCombo7Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.prc_Posiciona_Produto;
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
  if (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Maq(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Produto_MatTam(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
  begin
    fDMCadProduto.prc_Abrir_Comissao(fDMCadProduto.cdsProdutoID.AsInteger);
    fDMCadProduto.prc_Abrir_Comissao_Vend(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Produto_Lote(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
    fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);

  prc_Abrir_qConta_Orcamento(fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger);
  if (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  //27/02/2017
  if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N')  then
    fDMCadProduto.prc_Abrir_Produto_Processo(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger > 0 then
    prc_Mostra_Material_Cru
  else
    Edit10.Clear;
end;

procedure TfrmCadProduto.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadProduto.cdsFornecedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.Close;
  fDMCadProduto.cdsGrupo.Open;
  fDMCadProduto.qParametros_Prod.Close;
  fDMCadProduto.qParametros_Prod.Open;
end;

procedure TfrmCadProduto.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.Close;
  fDMCadProduto.cdsMarca.Open;
end;

procedure TfrmCadProduto.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto.SpeedButton7Click(Sender: TObject);
begin
  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto.edtCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.RzPageControl2Change(Sender: TObject);
begin
  if (RzPageControl2.ActivePage = TS_Veiculo) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Veiculo
  else
  if (RzPageControl2.ActivePage = TS_Engenharia) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) and (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString = 'L') then
    fDMCadProduto.cdsProduto_Consumo.IndexFieldNames := 'ID;ID_SETOR;ITEM'
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
    prc_Controle_Balanca
  else
  if (RzPageControl2.ActivePage = TS_Maquina) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
  begin
    prc_Controle_PCP;
  end
  else
  if (RzPageControl2.ActivePage = TS_Ficha_Textil) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
  begin
    RzPageControl6.Visible := True;
    if fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'E' then
    begin
      prc_Controle_Ficha_Textil;
      ckFioAuxiliar.Checked := (fDMCadProduto.cdsProduto_TextilFIO_AUXILIAR.AsString = 'S');
      ckBorracha.Checked    := (fDMCadProduto.cdsProduto_TextilBORRACHA.AsString = 'S');
      ckGoma.Checked        := (fDMCadProduto.cdsProduto_TextilGOMA.AsString = 'S');
    end
    else
    if fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'T' then
      prc_Controle_Ficha_Tranc
    else
      RzPageControl6.Visible := False;
  end
  else
  if (RzPageControl2.ActivePage = TS_Desenho_Passamento) and (fDMCadProduto.cdsProdutoID.AsInteger > 0) then
    prc_Controle_Ficha_Textil_DP;
  marcaFibra;
end;

procedure TfrmCadProduto.pnlVeiculoEnter(Sender: TObject);
begin
  prc_Controle_Veiculo;
end;

procedure TfrmCadProduto.prc_Controle_Veiculo;
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

procedure TfrmCadProduto.btnPesquisarClick(Sender: TObject);
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

procedure TfrmCadProduto.prc_Limpar_Edit_Consulta;
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

procedure TfrmCadProduto.btnRecalcular_MatClick(Sender: TObject);
begin
  ceVlr_Total_Mat.Value := fDMCadProduto.fnc_Calcular_Mat;
end;

procedure TfrmCadProduto.btnImportar_TamClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProdutoID_GRADE.AsInteger <= 0 then
  begin
    MessageDlg('*** Grade não foi informada!', mtError, [mbOk], 0);
    RxDBLookupCombo9.SetFocus;
    exit;
  end;

  prc_Gravar_ProdutoTam;
end;

procedure TfrmCadProduto.prc_Gravar_ProdutoTam;
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

procedure TfrmCadProduto.SpeedButton8Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrade.Close;
  fDMCadProduto.cdsGrade.Open;
end;

procedure TfrmCadProduto.DBCheckBox2Click(Sender: TObject);
begin
  Label72.Visible := ((DBCheckBox2.Checked));
  Label73.Visible := ((DBCheckBox2.Checked));
end;

procedure TfrmCadProduto.btnExcluir_TamClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Tam.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir os tamanhos?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Tam.First;
  while not fDMCadProduto.cdsProduto_Tam.Eof do
  fDMCadProduto.cdsProduto_Tam.Delete;

  fDMCadProduto.cdsProdutoID_GRADE.Clear;
end;

procedure TfrmCadProduto.btnCopiarProdutoClick(Sender: TObject);
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

      fDMCopiarProduto.cdsProduto_Consumo_Proc.First;
      while not fDMCopiarProduto.cdsProduto_Consumo_Proc.Eof do
      begin
        fDMCadProduto.cdsProduto_Consumo_Proc.Insert;
        for x2 := 0 to (fDMCopiarProduto.cdsProduto_Consumo_Proc.FieldCount - 1) do
        begin
          if (fDMCopiarProduto.cdsProduto_Consumo_Proc.Fields[x2].FieldName <> 'ID') then
            fDMCadProduto.cdsProduto_Consumo_Proc.FieldByName(fDMCopiarProduto.cdsProduto_Consumo_Proc.Fields[x2].FieldName).AsVariant := fDMCopiarProduto.cdsProduto_Consumo_Proc.Fields[x2].Value;
        end;
        fDMCadProduto.cdsProduto_Consumo_Proc.Post;
        fDMCopiarProduto.cdsProduto_Consumo_Proc.Next;
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

procedure TfrmCadProduto.SMDBGrid3DblClick(Sender: TObject);
begin
  ffrmCadProduto_Consumo := TfrmCadProduto_Consumo.Create(self);
  ffrmCadProduto_Consumo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Consumo.VDBGrid1.ReadOnly := True;
  ffrmCadProduto_Consumo.Panel2.Enabled    := False;
  ffrmCadProduto_Consumo.BitBtn1.Enabled   := False;
  ffrmCadProduto_Consumo.ShowModal;
  FreeAndNil(ffrmCadProduto_Consumo);
end;

procedure TfrmCadProduto.prc_Controle_PCP;
begin
  if fDMCadProduto.qParametrosEMPRESA_INJETADO.AsString = 'S' then
    RzPageControl4.ActivePage := TS_Injetados
  else
  if fDMCadProduto.qParametrosEMPRESA_CARTONAGEM.AsString = 'S' then
    RzPageControl4.ActivePage := TS_Cartonagem;
  if not(fDMCadProduto.cdsProduto_Pcp.Active) or not(fDMCadProduto.cdsProduto_Pcp.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_PcpID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
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

procedure TfrmCadProduto.SpeedButton9Click(Sender: TObject);
begin
  fDMCadProduto.cdsTipo_Matriz.Open;
  fDMCadProduto.cdsTipo_Matriz.Close;
end;

procedure TfrmCadProduto.RxDBComboBox2Change(Sender: TObject);
begin
  DBEdit36.Visible := (RxDBComboBox2.ItemIndex <= 1);
  Label83.Visible  := (RxDBComboBox2.ItemIndex <= 1);
end;

procedure TfrmCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 107) and (btnInserir_Serie.Enabled) and (RzPageControl2.ActivePage = TS_Serie) then
    btnInserir_SerieClick(Sender)
  else
  if (Shift = [ssCtrl]) and (Key = 109) and (btnInserir_Serie.Enabled) and (RzPageControl2.ActivePage = TS_Serie) then
    btnExcluir_SerieClick(Sender)
  else
  if (Shift = [ssCtrl]) and (Key = 82) and (RzPageControl1.ActivePage = TS_Consulta) then
  begin
    btnConverter.Visible      := not(btnConverter.Visible);
    BitBtn6.Visible           := not(BitBtn6.Visible);
    btnAjustaRef2.Visible     := not(btnAjustaRef2.Visible);
    btnAjustarObsMat.Visible  := not(btnAjustarObsMat.Visible);
    btnAjustarRef_Ord.Visible := not(btnAjustarRef_Ord.Visible);
    btnAjustarPeso.Visible    := not(btnAjustarPeso.Visible);
  end;
end;

procedure TfrmCadProduto.btnInserir_SerieClick(Sender: TObject);
var
  vAux: Integer;
  vItemAux: Integer;
  ffrmCadProduto_Serie: TfrmCadProduto_Serie;
begin
  if fDMCadProduto.qParametrosNUMERO_SERIE_INTERNO.AsString = 'S' then
  begin
    if MessageDlg('Gerar uma nova SÉRIE?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMCadProduto.qProximaSerie.Close;
    fDMCadProduto.qProximaSerie.Open;
    vAux := fDMCadProduto.qProximaSerieNUM_SERIE.AsInteger;
    fDMCadProduto.cdsProduto_Serie.First;
    while not fDMCadProduto.cdsProduto_Serie.Eof do
    begin
      if fDMCadProduto.cdsProduto_SerieNUM_SERIE.AsInteger > vAux then
        vAux := fDMCadProduto.cdsProduto_SerieNUM_SERIE.AsInteger;
      fDMCadProduto.cdsProduto_Serie.Next;
    end;
    fDMCadProduto.cdsProduto_Serie.Last;
    vItemAux := fDMCadProduto.cdsProduto_SerieITEM.AsInteger;
    vAux := vAux + 1;
    fDMCadProduto.cdsProduto_Serie.Insert;
    fDMCadProduto.cdsProduto_SerieID.AsInteger            := fDMCadProduto.cdsProdutoID.AsInteger;
    fDMCadProduto.cdsProduto_SerieITEM.AsInteger          := vItemAux + 1;
    fDMCadProduto.cdsProduto_SerieNUM_SERIE.AsString      := IntToStr(vAux);
    fDMCadProduto.cdsProduto_SerieNUM_SERIE_SEQ.AsInteger := vAux;
    fDMCadProduto.cdsProduto_SerieDTCADASTRO.AsDateTime   := Date;
    fDMCadProduto.cdsProduto_SerieINATIVO.AsString        := 'N';
    fDMCadProduto.cdsProduto_Serie.Post;
  end
  else
  begin
    fDMCadProduto.cdsProduto_Serie.Last;
    vItemAux := fDMCadProduto.cdsProduto_SerieITEM.AsInteger;
    fDMCadProduto.cdsProduto_Serie.Insert;
    fDMCadProduto.cdsProduto_SerieID.AsInteger          := fDMCadProduto.cdsProdutoID.AsInteger;
    fDMCadProduto.cdsProduto_SerieITEM.AsInteger        := vItemAux + 1;
    fDMCadProduto.cdsProduto_SerieDTCADASTRO.AsDateTime := Date;
    fDMCadProduto.cdsProduto_SerieINATIVO.AsString      := 'N';
    ffrmCadProduto_Serie := TfrmCadProduto_Serie.Create(self);
    ffrmCadProduto_Serie.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_Serie.DBCheckBox1.Visible := False;
    ffrmCadProduto_Serie.ShowModal;
    FreeAndNil(ffrmCadProduto_Serie);
  end;
end;

procedure TfrmCadProduto.prc_Habilita;
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
  btnInserir_Maq.Enabled      := not(btnInserir_Maq.Enabled);
  btnAlterar_Maq.Enabled      := not(btnAlterar_Maq.Enabled);
  btnExcluir_Maq.Enabled      := not(btnExcluir_Maq.Enabled);
  btnSelecionar_Maq.Enabled   := not(btnSelecionar_Maq.Enabled);
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
  btnInserir_Lote.Enabled     := not(btnInserir_Lote.Enabled);
  btnAlterar_Lote.Enabled     := not(btnAlterar_Lote.Enabled);
  btnExcluir_Lote.Enabled     := not(btnExcluir_Lote.Enabled);

  pnlFiscal.Enabled            := not(pnlFiscal.Enabled);
  pnlTingimento.Enabled        := not(pnlTingimento.Enabled);
  pnlOpcoes.Enabled            := not(pnlOpcoes.Enabled);
  pnlTempoMaquina.Enabled      := not(pnlTempoMaquina.Enabled);
  pnlFicha_Textil.Enabled      := not(pnlFicha_Textil.Enabled);
  pnlFicha_Trancadeira.Enabled := not(pnlFicha_Trancadeira.Enabled);

  //pnlDesenho_Passamento.Enabled := not(pnlDesenho_Passamento.Enabled);
  pnlDigitaDP.Enabled         := not(pnlDigitaDP.Enabled);

  DBEdit29.ReadOnly          := not(DBEdit29.ReadOnly);
  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  TS_Foto.Enabled            := not(TS_Foto.Enabled);
  TS_Pictograma.Enabled      := not(TS_Pictograma.Enabled);
  btnCBarra.Enabled          := not(btnCBarra.Enabled);
  btnCBarra2.Enabled         := not(btnCBarra2.Enabled);
  DBEdit59.ReadOnly          := not(DBEdit59.ReadOnly);
  RzGroupBox1.Enabled        := not(RzGroupBox1.Enabled);
  //btnAjuda_TipoMat.Enabled   := not(btnAjuda_TipoMat.Enabled);
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

procedure TfrmCadProduto.prc_Controle_Serie;
begin
  if not(fDMCadProduto.cdsProduto_Serie.Active) or not(fDMCadProduto.cdsProduto_Serie.State in [dsEdit, dsInsert]) then
    fDMCadProduto.prc_Abrir_Serie(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto.btnExcluir_SerieClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Serie.Delete;
end;

procedure TfrmCadProduto.IndepCombo10Enter(Sender: TObject);
begin
  fDMCadProduto.cdsTipo_Matriz.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.DBEdit38DblClick(Sender: TObject);
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

procedure TfrmCadProduto.DBEdit37DblClick(Sender: TObject);
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

procedure TfrmCadProduto.marcaFibra;
begin
  DBEdit38.Color := clWindow;
  DBEdit37.Color := clWindow;

  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'C' then
    DBEdit38.Color := $0080FFFF;
  if fDMCadProduto.cdsProduto_PcpFIBRA.AsString = 'L' then
    DBEdit37.Color := $0080FFFF;
end;

procedure TfrmCadProduto.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_SerieINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto.RxDBLookupCombo5CloseUp(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME';
end;

procedure TfrmCadProduto.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadProduto.rxdbGrupoDropDown(Sender: TObject);
begin
  rxdbGrupo.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadProduto.Normal1Click(Sender: TObject);
begin
  prc_Imp_Produto(False);
end;

procedure TfrmCadProduto.Conferncia1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  prc_Imprimir_Estruturado(False);
end;

procedure TfrmCadProduto.prc_Verificar_mGrupo(ID_Grupo: Integer);
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

procedure TfrmCadProduto.prc_Gravar_mGrupo(ID: Integer; Codigo,
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

procedure TfrmCadProduto.prc_Gravar_mGrupo_Produto;
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

procedure TfrmCadProduto.RxDBLookupCombo5KeyDown(Sender: TObject;
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

procedure TfrmCadProduto.rxdbGrupoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadProduto.RxDBLookupCombo5Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
  prc_Verifica_Grupo;
  if (vID_Grupo_Ant <> fDMCadProduto.cdsProdutoID_GRUPO.AsInteger) and (fDMCadProduto.cdsProdutoID_GRUPO.AsInteger > 0) then
    prc_Gerar_Ref_Estruturada;
end;

procedure TfrmCadProduto.rxdbGrupoExit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProduto.RxDBComboBox7Exit(Sender: TObject);
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
    if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Produto_Lote(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
      fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B' then
      fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Emb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Atelier(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Maq(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_MatTam(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  prc_Combinacao;
  DBCheckBox17.Visible := (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P');
end;

procedure TfrmCadProduto.RxDBComboBox4Change(Sender: TObject);
begin
  TS_Ativo.TabVisible := (RxDBComboBox4.ItemIndex = 8);
end;

procedure TfrmCadProduto.prc_Controle_Ativo;
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

procedure TfrmCadProduto.pnlAtivoEnter(Sender: TObject);
begin
  prc_Controle_Ativo;
end;

procedure TfrmCadProduto.RxDBLookupCombo11KeyDown(Sender: TObject;
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

procedure TfrmCadProduto.RxDBLookupCombo11Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadProduto.RxDBLookupCombo11Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadProduto.RxDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    fDMCadProduto.cdsProduto_PcpACABAMENTO.Clear;
end;

procedure TfrmCadProduto.btnExcluir_UFClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_UF.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_UF.Delete;
end;

procedure TfrmCadProduto.btnInserir_UFClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdUF;

  ffrmCadProduto_UF := TfrmCadProduto_UF.Create(self);
  ffrmCadProduto_UF.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UF.ShowModal;
  FreeAndNil(ffrmCadProduto_UF);
end;

procedure TfrmCadProduto.btnAlterar_UFClick(Sender: TObject);
begin
  if (trim(fDMCadProduto.cdsProduto_UFUF.AsString) = '') or (fDMCadProduto.cdsProduto_UF.IsEmpty) then
    exit;
  fDMCadProduto.cdsProduto_UF.Edit;
  ffrmCadProduto_UF := TfrmCadProduto_UF.Create(self);
  ffrmCadProduto_UF.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UF.ShowModal;
  FreeAndNil(ffrmCadProduto_UF);
end;

procedure TfrmCadProduto.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label98.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit49.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  Label99.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit50.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
end;

procedure TfrmCadProduto.SpeedButton3Click(Sender: TObject);
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

procedure TfrmCadProduto.ListBox1DblClick(Sender: TObject);
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

procedure TfrmCadProduto.ListBox1Exit(Sender: TObject);
begin
  ListBox1.Visible := False;
end;

procedure TfrmCadProduto.DBEdit51Exit(Sender: TObject);
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

procedure TfrmCadProduto.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ListBox1DblClick(Sender);
end;

procedure TfrmCadProduto.SpeedButton11Click(Sender: TObject);
begin
  fDMCadProduto.cdsSitTribCf.Close;
  fDMCadProduto.cdsSitTribCf.Open;
end;

procedure TfrmCadProduto.prc_Imprimir_Estruturado(Agrupado: Boolean);
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
  fRelProduto_Grupo.vImpConsumo   := RzCheckList1.ItemChecked[1];
  fRelProduto_Grupo.vImpPrecoCusto := RzCheckList1.ItemChecked[2];
  fRelProduto_Grupo.vImpPreco     := RzCheckList1.ItemChecked[3];
  fRelProduto_Grupo.fDMCadProduto := fDMCadProduto;
  fRelProduto_Grupo.RLReport1.PreviewModal;
  fRelProduto_Grupo.RLReport1.Free;
  FreeAndNil(fRelProduto_Grupo);
end;

procedure TfrmCadProduto.ProdutoAgrupadoRefPadro1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  prc_Imprimir_Estruturado(True);
end;

procedure TfrmCadProduto.DBEdit7Exit(Sender: TObject);
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

procedure TfrmCadProduto.btnInserir_UniClick(Sender: TObject);
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

procedure TfrmCadProduto.btnAlterar_UniClick(Sender: TObject);
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

procedure TfrmCadProduto.btnExcluir_UniClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Uni.Delete;
end;

procedure TfrmCadProduto.RxDBLookupCombo2Enter(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := not(fDMCadProduto.cdsProduto_Uni.IsEmpty);
end;

procedure TfrmCadProduto.SMDBGrid7DblClick(Sender: TObject);
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

procedure TfrmCadProduto.BitBtn20Click(Sender: TObject);
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

procedure TfrmCadProduto.btnAlterar_NomeClick(Sender: TObject);
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

procedure TfrmCadProduto.DBEdit1Change(Sender: TObject);
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

procedure TfrmCadProduto.DBEdit7Enter(Sender: TObject);
begin
  vReferencia_Ant  := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
    DBEdit7.SelStart := Length(DBEdit7.Text) + 1;
end;

procedure TfrmCadProduto.prc_Mostrar_Foto;
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

procedure TfrmCadProduto.RxDBComboBox7Enter(Sender: TObject);
begin
  vTipo_Reg_Ant := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
  if not fnc_Verificar_Tipo then
    DBEdit7.SetFocus;
end;

procedure TfrmCadProduto.btnConverterClick(Sender: TObject);
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

procedure TfrmCadProduto.SpeedButton10Click(Sender: TObject);
begin
  fDMCadProduto.cdsCor_RZ.Close;
  fDMCadProduto.cdsCor_RZ.Open;
end;

procedure TfrmCadProduto.btnInserir_MatrizClick(Sender: TObject);
begin
  fDMCadProduto.prc_Inserir_ProdMatriz;

  ffrmCadProduto_Matriz := TfrmCadProduto_Matriz.Create(self);
  ffrmCadProduto_Matriz.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Matriz.ShowModal;
  FreeAndNil(ffrmCadProduto_Matriz);
end;

procedure TfrmCadProduto.btnAlterar_MatrizClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Matriz.IsEmpty then
    exit;

  fDMCadProduto.cdsProduto_Matriz.Edit;

  ffrmCadProduto_Matriz := TfrmCadProduto_Matriz.Create(self);
  ffrmCadProduto_Matriz.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Matriz.ShowModal;
  FreeAndNil(ffrmCadProduto_Matriz);
end;

procedure TfrmCadProduto.btnExcluir_MatrizClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Matriz.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Matriz.Delete;
end;

procedure TfrmCadProduto.prc_Verifica_Grupo;
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

procedure TfrmCadProduto.prc_Combinacao;
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

procedure TfrmCadProduto.btnCombinacaoClick(Sender: TObject);
begin
  if not(fDMCadProduto.cdsMaterial.Active) then
    fDMCadProduto.prc_Abrir_Material;
  if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadProduto.qParametros_LoteUSA_COR_COMB.AsString = 'S') then
    fDMCadProduto.prc_Abrir_Cor_Combinacao('C')
  else
    fDMCadProduto.prc_Abrir_Cor_Combinacao('B');
  fDMCadProduto.cdsPosicao.Close;
  fDMCadProduto.cdsPosicao.Open;
  ffrmCadProduto_Comb := TfrmCadProduto_Comb.Create(self);
  ffrmCadProduto_Comb.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Comb.ShowModal;
  FreeAndNil(ffrmCadProduto_Comb);
end;

procedure TfrmCadProduto.RxDBLookupCombo16Enter(Sender: TObject);
begin
  vID_Linha_Ant := fDMCadProduto.cdsProdutoID_LINHA.AsInteger;
end;

procedure TfrmCadProduto.RxDBLookupCombo16Exit(Sender: TObject);
begin
  if (vID_Linha_Ant <> fDMCadProduto.cdsProdutoID_LINHA.AsInteger) and (fDMCadProduto.cdsProdutoID_LINHA.AsInteger > 0) then
  begin
    if fDMCadProduto.cdsLinhaID.AsInteger <> fDMCadProduto.cdsProdutoID_LINHA.AsInteger then
      fDMCadProduto.cdsLinha.Locate('ID',fDMCadProduto.cdsProdutoID_LINHA.AsInteger,([Locaseinsensitive]));
    if not(fDMCadProduto.cdsLinhaUNIDADE.IsNull) then
      fDMCadProduto.cdsProdutoUNIDADE.AsString := fDMCadProduto.cdsLinhaUNIDADE.AsString;
    if fDMCadProduto.cdsLinhaID_NCM.AsInteger > 0 then
      fDMCadProduto.cdsProdutoID_NCM.AsInteger := fDMCadProduto.cdsLinhaID_NCM.AsInteger;
    if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
      fDMCadProduto.cdsProdutoREFERENCIA.AsString := fDMCadProduto.cdsLinhaCODIGO.AsString + '.';
  end;
end;

procedure TfrmCadProduto.SpeedButton12Click(Sender: TObject);
begin
  fDMCadProduto.cdsLinha.Close;
  fDMCadProduto.cdsLinha.Open;
end;

procedure TfrmCadProduto.btnEmbalagemClick(Sender: TObject);
begin
  ffrmCadProduto_Emb := TfrmCadProduto_Emb.Create(self);
  ffrmCadProduto_Emb.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Emb.ShowModal;
  FreeAndNil(ffrmCadProduto_Emb);
end;

procedure TfrmCadProduto.btnAtelierClick(Sender: TObject);
begin
  SMDBGrid3.DisableScroll;
  fDMCadProduto.mSetor.EmptyDataSet;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    if fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
    begin
      if not fDMCadProduto.mSetor.Locate('ID',fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger,([Locaseinsensitive])) then
      begin
        fDMCadProduto.mSetor.Insert;
        fDMCadProduto.mSetorID.AsInteger  := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
        fDMCadProduto.mSetorNome.AsString := fDMCadProduto.cdsProduto_ConsumoNOME_SETOR.AsString;
        fDMCadProduto.mSetor.Post;
      end;
    end;
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;
  SMDBGrid3.EnableScroll;
  ffrmCadProduto_Atelier               := TfrmCadProduto_Atelier.Create(self);
  ffrmCadProduto_Atelier.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Atelier.ShowModal;
  FreeAndNil(ffrmCadProduto_Atelier);
end;

procedure TfrmCadProduto.btnCBarraClick(Sender: TObject);
begin
  ffrmGerar_CBarra := TfrmGerar_CBarra.Create(self);
  ffrmGerar_CBarra.RxDBLookupCombo1.KeyValue := fDMCadProduto.cdsProdutoID.AsInteger;
  ffrmGerar_CBarra.RxDBLookupCombo2.KeyValue := fDMCadProduto.cdsProdutoID.AsInteger;
  ffrmGerar_CBarra.ShowModal;
  FreeAndNil(ffrmGerar_CBarra);
  fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto.DBEdit15Exit(Sender: TObject);
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
    MessageDlg('*** Código de barras já está cadastrado no produto: ' + #13
               + vMsgAux, mtInformation, [mbOk], 0);
    DBEdit15.SetFocus;
  end;
end;

procedure TfrmCadProduto.DBEdit58Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadProduto.DBEdit58Exit(Sender: TObject);
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

procedure TfrmCadProduto.prc_Abrir_qConta_Orcamento(ID: Integer);
begin
  edtNome_Orcamento.Clear;
  if ID <= 0 then
    exit;
  fDMCadProduto.qConta_Orcamento.Close;
  fDMCadProduto.qConta_Orcamento.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qConta_Orcamento.Open;
  edtNome_Orcamento.Text := fDMCadProduto.qConta_OrcamentoDESCRICAO.AsString;
end;

procedure TfrmCadProduto.DBEdit58KeyDown(Sender: TObject; var Key: Word;
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

function TfrmCadProduto.fnc_Verificar_Tipo: Boolean;
begin
  Result := True;
  if fDMCadProduto.qParametros_ProdCONT_TIPO_PROD.AsString = 'S' then
  begin
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
end;

procedure TfrmCadProduto.btnCorClick(Sender: TObject);
var
  vPreco : Real;
begin
  fDMCadProduto.prc_Abrir_Cor_Combinacao('C');
  ffrmCadProduto_Cor := TfrmCadProduto_Cor.Create(self);
  ffrmCadProduto_Cor.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Cor.ShowModal;
  FreeAndNil(ffrmCadProduto_Cor);
  if (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
  begin
    vPreco := 0;
    fDMCadProduto.cdsProduto_Cor.First;
    while not fDMCadProduto.cdsProduto_Cor.Eof do
    begin
      if StrToFloat(FormatFloat('0.000000',fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat)) > StrToFloat(FormatFloat('0.000000',vPreco)) then
        vPreco := StrToFloat(FormatFloat('0.000000',fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat));
      fDMCadProduto.cdsProduto_Cor.Next;
    end;
    if StrToFloat(FormatFloat('0.000000',vPreco)) > 0 then
      fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.000000',vPreco));
  end;
end;

procedure TfrmCadProduto.btnInserir_ProcessoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdProcesso;

  frmCadProduto_Processo := TfrmCadProduto_Processo.Create(self);
  frmCadProduto_Processo.fDMCadProduto := fDMCadProduto;
  frmCadProduto_Processo.ShowModal;

  FreeAndNil(frmCadProduto_Processo);
end;

procedure TfrmCadProduto.btnAlterar_ProcessoClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoProcessoITEM.AsInteger < 1) or not(fDMCadProduto.cdsProdutoProcesso.Active) or
     (fDMCadProduto.cdsProdutoProcesso.IsEmpty) then
    exit;

  fDMCadProduto.cdsProdutoProcesso.Edit;

  frmCadProduto_Processo := TfrmCadProduto_Processo.Create(self);
  frmCadProduto_Processo.fDMCadProduto := fDMCadProduto;
  frmCadProduto_Processo.ShowModal;

  FreeAndNil(frmCadProduto_Processo);
end;

procedure TfrmCadProduto.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
    AFont.Color := clBlue
  else
  if fDMCadProduto.cdsProduto_ConsumoESPECIFICO.AsString = 'S' then
    AFont.Color := clGreen;
end;

procedure TfrmCadProduto.RxDBLookupCombo1Exit(Sender: TObject);
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

procedure TfrmCadProduto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vOrigem_Ant := fDMCadProduto.cdsProdutoORIGEM_PROD.AsString;
end;

procedure TfrmCadProduto.btnInserir_ComissaoClick(Sender: TObject);
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

procedure TfrmCadProduto.btnAlterar_ComissaoClick(Sender: TObject);
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

procedure TfrmCadProduto.btnExcluir_ComissaoClick(Sender: TObject);
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

procedure TfrmCadProduto.edtCod_EnqIPIKeyDown(Sender: TObject;
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

procedure TfrmCadProduto.prc_Abrir_EnqIPI(ID: Integer);
begin
  fDMCadProduto.qEnqIPI.Close;
  fDMCadProduto.qEnqIPI.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qEnqIPI.Open;
end;

procedure TfrmCadProduto.FichaTcnica1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Não há produto selecionado para a impressão!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Produto_Consumo.fr3';
  if FileExists(vArq) then
    fDMCadProduto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadProduto.frxReport1.ShowReport;
end;

procedure TfrmCadProduto.DBEdit60KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadProduto.DBEdit60Exit(Sender: TObject);
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

procedure TfrmCadProduto.btnCarimboClick(Sender: TObject);
begin
  if not(fDMCadProduto.cdsCliente.Active) then
    fDMCadProduto.cdsCliente.Open;
  ffrmCadProduto_Carimbo := TfrmCadProduto_Carimbo.Create(self);
  ffrmCadProduto_Carimbo.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Carimbo.ShowModal;
  FreeAndNil(ffrmCadProduto_Carimbo);
end;

procedure TfrmCadProduto.Button1Click(Sender: TObject);
var
  i: Byte;
  vTipo: Array[1..4]of String;
begin
  fDMCadProduto.cdsProdutoPICTO_CABEDAL.Clear;
  for i := 1 to 4 do
    vTipo[i] := '0';
  for i := 1 to 4 do
    if TCheckBox(FindComponent('CheckBox'+IntToStr(i))).Checked then
      vTipo[i] := '1';
  for i := 1 to 4 do
    fDMCadProduto.cdsProdutoPICTO_CABEDAL.AsString := fDMCadProduto.cdsProdutoPICTO_CABEDAL.AsString + vTipo[i];
end;

procedure TfrmCadProduto.Button2Click(Sender: TObject);
var
  i: Byte;
  vTipo: Array[1..4]of String;
begin
  fDMCadProduto.cdsProdutoPICTO_INTERIOR.Clear;
  for i := 1 to 4 do
    vTipo[i] := '0';
  for i := 1 to 4 do
    if TCheckBox(FindComponent('CheckBox'+IntToStr(i+4))).Checked then
      vTipo[i] := '1';
  for i := 1 to 4 do
    fDMCadProduto.cdsProdutoPICTO_INTERIOR.AsString := fDMCadProduto.cdsProdutoPICTO_INTERIOR.AsString + vTipo[i];
end;

procedure TfrmCadProduto.Button3Click(Sender: TObject);
var
  i: Byte;
  vTipo: Array[1..4]of String;
begin
  fDMCadProduto.cdsProdutoPICTO_SOLA.Clear;
  for i := 1 to 4 do
    vTipo[i] := '0';
  for i := 1 to 4 do
    if TCheckBox(FindComponent('CheckBox'+IntToStr(i+8))).Checked then
      vTipo[i] := '1';
  for i := 1 to 4 do
    fDMCadProduto.cdsProdutoPICTO_SOLA.AsString := fDMCadProduto.cdsProdutoPICTO_SOLA.AsString + vTipo[i];
end;

procedure TfrmCadProduto.BitBtn5Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  fDMCadProduto.cdsProdutoPICTOGRAMA.AsString := OpenPictureDialog1.FileName;
  try
    Image3.Picture.LoadFromFile(fDMCadProduto.cdsProdutoPICTOGRAMA.AsString)
  except
    Image3.Picture := nil;
  end;
end;

procedure TfrmCadProduto.btnAlterar_SerieClick(Sender: TObject);
var
  ffrmCadProduto_Serie: TfrmCadProduto_Serie;
begin
  if fDMCadProduto.cdsProduto_SerieNUM_SERIE.AsInteger <= 0 then
  begin
    MessageDlg('*** Sem registro para alteração!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadProduto.cdsProduto_Serie.Edit;
  ffrmCadProduto_Serie := TfrmCadProduto_Serie.Create(self);
  ffrmCadProduto_Serie.fDMCadProduto    := fDMCadProduto;
  ffrmCadProduto_Serie.DBEdit1.ReadOnly := True;
  ffrmCadProduto_Serie.ShowModal;
  FreeAndNil(ffrmCadProduto_Serie);
end;

function TfrmCadProduto.fnc_Filial: Boolean;
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

procedure TfrmCadProduto.prc_Gravar_Produto_Cad_Ant;
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

procedure TfrmCadProduto.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  
  ffrmCadProduto_Cad_Ant: TfrmCadProduto_Cad_Ant;
  ffrmSel_Produto_Lote: TfrmSel_Produto_Lote;
  vId: Integer;
  vTipoReg, vIndexName: String;
begin
  if (Key = Vk_F3) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    ffrmCadProduto_Cad_Ant := TfrmCadProduto_Cad_Ant.Create(self);
    ffrmCadProduto_Cad_Ant.fDMCadProduto := fDMCadProduto;
    fDMCadProduto.prc_Abrir_Produto_Cad_Ant(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
    ffrmCadProduto_Cad_Ant.ShowModal;
    FreeAndNil(ffrmCadProduto_Cad_Ant);
  end
  else
  if (Key = Vk_F4) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) and (fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') then
  begin
    vNum_Lote_Pos := '';
    ffrmSel_Produto_Lote := TfrmSel_Produto_Lote.Create(Self);
    ffrmSel_Produto_Lote.Tag := 5;
    ffrmSel_Produto_Lote.vID_Produto_Loc := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
    ffrmSel_Produto_Lote.ShowModal;
    FreeAndNil(ffrmSel_Produto_Lote);
  end
  else
  if (Key = Vk_F6) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    case ComboBox2.ItemIndex of
      0: vTipoReg := 'P';
      1: vTipoReg := 'M';
      3: vTipoReg := 'C';
      5: vTipoReg := 'S';
    end;
    vIndexName := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames;
    vId := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
    ceID.AsInteger := vId;
    ffrmConsEstoque_Mov := TfrmConsEstoque_Mov.Create(self);
    vControleExterno    := True;
//    ffrmConsEstoque_Mov.RxDBLookupCombo1.KeyValue := rxdbFilial.KeyValue;
    ffrmConsEstoque_Mov.ceIDProduto.AsInteger := ceID.AsInteger;
    ffrmConsEstoque_Mov.edtRef.Text := edtReferencia.Text;
    ffrmConsEstoque_Mov.WindowState := wsMaximized;
    ffrmConsEstoque_Mov.ShowModal;
    FreeAndNil(frmConsEstoque_Mov);
    ceID.Clear;
  end;
end;

procedure TfrmCadProduto.prc_Ajustar_Produto_Ped;
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
    sds.CommandText   := 'UPDATE PEDIDO_ITEM I SET I.referencia = ' + QuotedStr(fDMCadProduto.cdsProdutoREFERENCIA.AsString) +
                         ' , I.nomeproduto = ' + QuotedStr(fDMCadProduto.cdsProdutoNOME.AsString + vTamAux) + ' || coalesce(I.Tamanho,'''') ' +
                         'WHERE I.id_produto = ' + fDMCadProduto.cdsProdutoID.AsString +
                         ' AND I.qtd_restante > 0 ' +
                         ' AND I.TIPO_REG = ' + QuotedStr('P');
    sds.ExecSQL();
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadProduto.BitBtn6Click(Sender: TObject);
begin
  if not fDMCadProduto.cdsProduto_Consulta.Active then
    exit;
  if MessageDlg('Deseja inativar os produtos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
      if not fDMCadProduto.cdsProduto.IsEmpty then
      begin
        if fDMCadProduto.cdsProdutoINATIVO.AsString <> 'S' then
        begin
          fDMCadProduto.cdsProduto.Edit;
          fDMCadProduto.cdsProdutoINATIVO.AsString := 'S';
          fDMCadProduto.cdsProduto.Post;
          fDMCadProduto.cdsProduto.ApplyUpdates(0);
        end;
      end;
    end;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
end;

procedure TfrmCadProduto.prc_Aplicar_Margem;
var
  vAux: Real;
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) <= 0) then
    exit;
  vPreco_Venda_Ant := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat));
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
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat)) <> StrToFloat(FormatFloat('0.0000',vPreco_Venda_Ant)) then
    prc_Atualiza_Preco_Lote;
end;

procedure TfrmCadProduto.DBEdit3Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProduto.DBEdit57Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadProduto.DBCheckBox13Click(Sender: TObject);
begin
  TS_Balanca.TabVisible := DBCheckBox13.Checked;
end;

procedure TfrmCadProduto.btnGravaPrVendaClick(Sender: TObject);
begin
  if ceVlr_Total_Mat.Value <= 0 then
    MessageDlg('*** Preço do consumo está zerado, com isso, não pode gravar o preço de venda!', mtInformation, [mbOk], 0)
  else
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := ceVlr_Total_Mat.Value;
end;

procedure TfrmCadProduto.prc_Controle_Balanca;
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

procedure TfrmCadProduto.DBEdit2Exit(Sender: TObject);
begin
  if copy(fdmCadProduto.cdsProdutoNOME.AsString,1,1) = ' ' then
    fdmCadProduto.cdsProdutoNOME.AsString := TrimLeft(fdmCadProduto.cdsProdutoNOME.AsString);
end;

procedure TfrmCadProduto.prc_Monta_mTabPreco;
var
  sds: TSQLDataSet;
begin
  fDMCadProduto.mTabPreco.EmptyDataSet;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT TP.ID, TP.NOME, ti.vlr_venda, TP.TABPROMOCIONAL, TP.DTINICIAL, TP.DTFINAL FROM tab_preco TP '
                       + 'LEFT JOIN tab_preco_itens TI  ON TP.ID = TI.ID  AND TI.id_produto = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger);
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

procedure TfrmCadProduto.prc_Grava_Tab_Preco;
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

procedure TfrmCadProduto.SMDBGrid12GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.mTabPrecoPromocao.AsString = 'S' then
    Background := clYellow;
end;

procedure TfrmCadProduto.DBEdit10Exit(Sender: TObject);
begin
  Label161.Visible          := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  RxDBLookupCombo20.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) <= 0 then
    fDMCadProduto.cdsProdutoID_CSTICMS_BRED.Clear;
end;

procedure TfrmCadProduto.btnExcluir_ProcessoClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProdutoProcesso.Delete;
end;

procedure TfrmCadProduto.Etiqueta1Click(Sender: TObject);
begin
  vTipo_Pedido := '';
  ffrmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  ffrmEtiq_Individual.RzPageControl1.ActivePageIndex := 1;
  ffrmEtiq_Individual.ShowModal;
  FreeAndNil(ffrmEtiq_Individual);
end;

procedure TfrmCadProduto.ProdutoConsumoEstruturado1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Não há produto selecionado para a impressão!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);

  fDMCadProduto.cdsConsumo_Det.Close;
  fDMCadProduto.sdsConsumo_Det.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
  fDMCadProduto.cdsConsumo_Det.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Produto_Consumo2.fr3';
  if FileExists(vArq) then
    fDMCadProduto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadProduto.frxReport1.ShowReport;
end;

procedure TfrmCadProduto.btnGravaPrCustoClick(Sender: TObject);
begin
  if ceVlr_Total_Mat.Value <= 0 then
    MessageDlg('*** Preço do consumo está zerado, com isso, não pode gravar o preço de custo!', mtInformation, [mbOk], 0)
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

procedure TfrmCadProduto.SpeedButton13Click(Sender: TObject);
begin
  frmCadProcesso_Grupo := TfrmCadProcesso_Grupo.Create(self);
  frmCadProcesso_Grupo.ShowModal;
  FreeAndNil(frmCadProcesso_Grupo);
  fDMCadProduto.cdsProcesso_Grupo.Close;
  fDMCadProduto.cdsProcesso_Grupo.Open;
end;

procedure TfrmCadProduto.SpeedButton14Click(Sender: TObject);
begin
  fDMCadProduto.cdsProcesso_Grupo.Close;
  fDMCadProduto.cdsProcesso_Grupo.Open;
end;

procedure TfrmCadProduto.DBEdit93Exit(Sender: TObject);
begin
  if fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger > 0 then
  begin
    prc_Mostra_Material_Cru;
    if fDMCadProduto.qMaterialID.AsInteger <> fDMCadProduto.cdsProdutoID_MATERIAL_CRU.AsInteger then
    begin
      MessageDlg('*** Código Material não cadastrado!', mtError, [mbOk], 0);
      DBEdit93.SelectAll;
    end;
  end
  else
    Edit10.Clear;
end;

procedure TfrmCadProduto.prc_Mostra_Material_Cru;
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

procedure TfrmCadProduto.DBEdit93KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadProduto.DBEdit94KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadProduto.prc_Mostra_Forma(ID_Material: Integer);
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

procedure TfrmCadProduto.DBEdit94Exit(Sender: TObject);
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

procedure TfrmCadProduto.FichaTcnicaPrincipal1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Não há produto selecionado para a impressão!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);

  fDMCadProduto.cdsProduto_Consumo.Close;
  fDMCadProduto.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
  fDMCadProduto.cdsProduto_Consumo.Open;

  //vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Ficha_Tecnica_Principal.fr3';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Ficha_Tecnica.fr3';
  if FileExists(vArq) then
    fDMCadProduto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadProduto.frxReport1.ShowReport;
end;

procedure TfrmCadProduto.btnGradeRefClick(Sender: TObject);
var
  ffrmCadProduto_GradeNum: TfrmCadProduto_GradeNum;
  ffrmCadProduto_GradeRefTam : TfrmCadProduto_GradeRefTam;
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  if fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S' then
  begin
    ffrmCadProduto_GradeRefTam := TfrmCadProduto_GradeRefTam.Create(self);
    ffrmCadProduto_GradeRefTam.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_GradeRefTam.ShowModal;
    FreeAndNil(ffrmCadProduto_GradeRefTam);
  end
  else
  begin
    ffrmCadProduto_GradeNum := TfrmCadProduto_GradeNum.Create(self);
    ffrmCadProduto_GradeNum.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_GradeNum.ShowModal;
    FreeAndNil(ffrmCadProduto_GradeNum);
  end;
end;

procedure TfrmCadProduto.btnInserir_LoteClick(Sender: TObject);
var
  ffrmCadProduto_Lote: TfrmCadProduto_Lote;
begin
  fDMCadProduto.prc_Inserir_ProdLote;
  ffrmCadProduto_Lote := TfrmCadProduto_Lote.Create(self);
  ffrmCadProduto_Lote.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Lote.ShowModal;
  FreeAndNil(ffrmCadProduto_Lote);
end;

procedure TfrmCadProduto.btnAlterar_LoteClick(Sender: TObject);
var
  ffrmCadProduto_Lote: TfrmCadProduto_Lote;
begin
  if fDMCadProduto.cdsProduto_Lote.IsEmpty then
    exit;

  fDMCadProduto.cdsProduto_Lote.Edit;

  ffrmCadProduto_Lote := TfrmCadProduto_Lote.Create(self);
  ffrmCadProduto_Lote.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Lote.DBEdit2.ReadOnly := (fnc_Verifica_Lote(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.cdsProduto_LoteNUM_LOTE_CONTROLE.AsString));
  ffrmCadProduto_Lote.ShowModal;
  FreeAndNil(ffrmCadProduto_Lote);
end;

procedure TfrmCadProduto.btnExcluir_LoteClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Lote.IsEmpty then
    exit;

  if fnc_Verifica_Lote(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.cdsProduto_LoteNUM_LOTE_CONTROLE.AsString) then
  begin
    MessageDlg('*** Existe movimentação no estoque para este lote!' + #13 +' *** Não pode ser excluído!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Lote.Delete;
end;

function TfrmCadProduto.fnc_Verifica_Lote(ID: Integer;  Num_Lote: String): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := True;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM ESTOQUE_MOV E '
                       + 'WHERE E.ID_PRODUTO = ' + IntToStr(ID)
                       + ' AND E.NUM_LOTE_CONTROLE = ' + QuotedStr(Num_Lote);
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadProduto.DBEdit5Enter(Sender: TObject);
begin
  vPreco_Venda_Ant := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat));
end;

procedure TfrmCadProduto.DBEdit5Exit(Sender: TObject);
begin
  prc_Atualiza_Percentual;
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat)) <> StrToFloat(FormatFloat('0.0000',vPreco_Venda_Ant)) then
    prc_Atualiza_Preco_Lote;
end;

procedure TfrmCadProduto.prc_Atualiza_Preco_Lote;
begin
  if (fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString <> 'S') or not(fDMCadProduto.cdsProduto_Lote.Active) or
     (fDMCadProduto.cdsProduto_Lote.RecordCount <= 0) then
    exit;
  if MessageDlg('Deseja autalizar o Preço de Venda dos Lotes?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Lote.First;
  while not fDMCadProduto.cdsProduto_Lote.Eof do
  begin
    fDMCadProduto.cdsProduto_Lote.Edit;
    fDMCadProduto.cdsProduto_LotePRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat));
    fDMCadProduto.cdsProduto_Lote.Post;
    fDMCadProduto.cdsProduto_Lote.Next;
  end;
end;

procedure TfrmCadProduto.prc_Imp_Produto(Selecionados: Boolean);
var
  vIndice: String;
begin
  Screen.Cursor := crHourGlass;
  btnImprimir.Enabled := False;
  vTipo_Config_Email := 3;

  vIndice := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames;

  SMDBGrid1.DisableScroll;
  try
    if Selecionados then
    begin
      fDMCadProduto.cdsProduto_Consulta.First;
      while not fDMCadProduto.cdsProduto_Consulta.Eof do
      begin
        if SMDBGrid1.SelectedRows.CurrentRowSelected then
        begin
          fDMCadProduto.cdsProduto_Consulta.Edit;
          fDMCadProduto.cdsProduto_ConsultaTESTE.AsString := 'S';
          fDMCadProduto.cdsProduto_Consulta.Post;
        end;
        fDMCadProduto.cdsProduto_Consulta.Next;
      end;

    end;

    fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := 'NOMEGRUPO';
    if trim(vIndice) <> '' then
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames + ';' + vIndice;
    if Selecionados then
    begin
      fDMCadProduto.cdsProduto_Consulta.Filtered := False;
      fDMCadProduto.cdsProduto_Consulta.Filter   := 'TESTE = ' + QuotedStr('S');
      fDMCadProduto.cdsProduto_Consulta.Filtered := True;
    end;  
    fRelProduto               := TfRelProduto .Create(Self);
    fRelProduto.vSelecionados := Selecionados;
    fRelProduto.vImpConsumo   := RzCheckList1.ItemChecked[1];
    fRelProduto.vImpPrecoCusto := RzCheckList1.ItemChecked[2];
    fRelProduto.vImpPreco     := RzCheckList1.ItemChecked[3];
    fRelProduto.vImpEmbalagem := (fDMCadProduto.qParametros_ProdUSA_QTD_EMBALAGEM.AsString = 'S');
    fRelProduto.fDMCadProduto := fDMCadProduto;
    fRelProduto.RLReport1.PreviewModal;
    fRelProduto.RLReport1.Free;
    FreeAndNil(fRelProduto);
  finally
    fDMCadProduto.cdsProduto_Consulta.Filtered := False;
    SMDBGrid1.UnSelectAllClick(nil);
    btnImprimir.Enabled := True;
    Screen.Cursor := crDefault;
    SMDBGrid1.EnableScroll;
    if Selecionados then
      btnConsultarClick(nil);
    if trim(vIndice) <> '' then
      fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := vIndice;
  end;
end;

procedure TfrmCadProduto.ProdutosSelecionados1Click(Sender: TObject);
begin
  prc_Imp_Produto(True);
end;

function TfrmCadProduto.fnc_Busca_Semi: Integer;
begin
  Result := 0;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
    begin
      Result := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
      fDMCadProduto.cdsProduto_Consumo.Last;
    end;
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;
end;

procedure TfrmCadProduto.prc_Atualiza_Percentual;
var
  vPercentual, vValorCusto, vValorVenda: Real;
begin
   if (fDMCadProduto.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString = 'C') then
     vValorCusto := fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat
   else
     vValorCusto := fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat;
   vValorVenda := fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat;
   if (vValorCusto <= 0) or (vValorVenda <= 0) then
    exit;
   vPercentual := (vValorVenda - vValorCusto) / vValorCusto * 100;
   fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',vPercentual));
end;

procedure TfrmCadProduto.prc_Gerar_Ref_Estruturada;
var
  vRefAux: String;
  sds: TSQLDataSet;
  i: Integer;
begin
  if fDMCadProduto.qParametros_ProdGERAR_REF_GRUPO.AsString <> 'S' then
    exit;
  if fDMCadProduto.qParametros_ProdQTD_DIGITOS_REF.AsInteger <= 0 then
  begin
    MessageDlg('*** Quantidade de digitos da referência não informado nos Parâmetros na aba Produtos!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadProduto.cdsGrupoID.AsInteger <> fDMCadProduto.cdsProdutoID_GRUPO.AsInteger then
    fDMCadProduto.cdsGrupo.Locate('ID',fDMCadProduto.cdsProdutoID_GRUPO.AsInteger,([Locaseinsensitive]));
  if not(fDMCadProduto.cdsGrupoUNIDADE.IsNull) and (trim(fDMCadProduto.cdsProdutoUNIDADE.AsString) = '')  then
    fDMCadProduto.cdsProdutoUNIDADE.AsString := fDMCadProduto.cdsGrupoUNIDADE.AsString;
  if (fDMCadProduto.cdsGrupoID_NCM.AsInteger > 0) then
    fDMCadProduto.cdsProdutoID_NCM.AsInteger := fDMCadProduto.cdsGrupoID_NCM.AsInteger;
  vRefAux := fDMCadProduto.cdsGrupoCODIGO.AsString + '.';
  i := Length(fDMCadProduto.cdsGrupoCODIGO.AsString) + 2;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT max( SUBSTRING(REFERENCIA FROM ' + IntToStr(i) + ' FOR ' + IntToStr(fDMCadProduto.qParametros_ProdQTD_DIGITOS_REF.AsInteger) + ')) SEQ '
                       + ' FROM PRODUTO WHERE ID_GRUPO = :ID_GRUPO';
    sds.ParamByName('ID_GRUPO').AsInteger := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
    sds.Open;
    if sds.FieldByName('SEQ').IsNull then
      i := 1
    else
      i := sds.FieldByName('SEQ').AsInteger + 1;
    vRefAux := vRefAux + Monta_Numero(IntToStr(i),fDMCadProduto.qParametros_ProdQTD_DIGITOS_REF.AsInteger);
  finally
    FreeAndNil(sds);
  end;
  fDMCadProduto.cdsProdutoREFERENCIA.AsString := vRefAux;
end;

procedure TfrmCadProduto.NxButton1Click(Sender: TObject);
var
  ffrmCadProduto_Larg: TfrmCadProduto_Larg;
  vPesoBruto: Double;
begin
  ffrmCadProduto_Larg := TfrmCadProduto_Larg.Create(self);
  ffrmCadProduto_Larg.CurrencyEdit1.Value := fDMCadProduto.cdsProdutoLARGURA.AsFloat;
  ffrmCadProduto_Larg.CurrencyEdit2.Value := fDMCadProduto.cdsProdutoALTURA.AsFloat;
  ffrmCadProduto_Larg.CurrencyEdit3.Value := fDMCadProduto.cdsProdutoESPESSURA.AsFloat;
  ffrmCadProduto_Larg.CurrencyEdit4.Value := fDMCadProduto.cdsProdutoMULTIPLICADOR.AsFloat;
  ffrmCadProduto_Larg.fDMCadProduto           := fDMCadProduto;
  ffrmCadProduto_Larg.ShowModal;
  FreeAndNil(ffrmCadProduto_Larg);

  lblDescLargura.Caption := FormatFloat('0.000#',fDMCadProduto.cdsProdutoLARGURA.AsFloat) + ' x '
                          + FormatFloat('0.000#',fDMCadProduto.cdsProdutoALTURA.AsFloat) + ' x '
                          + FormatFloat('0.0000',fDMCadProduto.cdsProdutoESPESSURA.AsFloat);

  if (fDMCadProduto.vGravar_Larg) and (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) then
  begin
    if  fDMCadProduto.cdsProdutoMULTIPLICADOR.AsFloat <= 0 then
    begin
      fDMCadProduto.cdsProdutoPESOBRUTO.AsFloat   := StrToFloat(FormatFloat('0.0000',(fDMCadProduto.cdsProdutoLARGURA.AsFloat * fDMCadProduto.cdsProdutoALTURA.AsFloat
                                                   * fDMCadProduto.cdsProdutoESPESSURA.AsFloat)));
      fDMCadProduto.cdsProdutoPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPESOBRUTO.AsFloat));
    end else
    begin
      vPesoBruto := StrToFloat(FormatFloat('0.0000',(fDMCadProduto.cdsProdutoLARGURA.AsFloat * fDMCadProduto.cdsProdutoALTURA.AsFloat * fDMCadProduto.cdsProdutoESPESSURA.AsFloat)));
      vPesoBruto := vPesoBruto / 1000 * fDMCadProduto.cdsProdutoMULTIPLICADOR.AsFloat;
      fDMCadProduto.cdsProdutoPESOBRUTO.AsFloat := StrToFloat(FormatFloat('0.0000', vPesoBruto));

      fDMCadProduto.cdsProdutoPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPESOBRUTO.AsFloat));
    end;
  end;
end;

procedure TfrmCadProduto.RzPageControl3Change(Sender: TObject);
begin
  if (RzPageControl3.ActivePage = TS_CBarra) then
    fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if vUser_Exclui then
    begin
    if fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString = 'S' then
      btnExcluir.Enabled := (SMDBGrid1.SelectedRows.Count > 0)
    else
      btnExcluir.Enabled := (SMDBGrid1.SelectedRows.Count = 1);
  end;      
end;

procedure TfrmCadProduto.prc_Consultar_Estoque_Lote(ID: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    if fDMCadProduto.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
    begin
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT SUM(QTD) QTD FROM ESTOQUE_LOTE '
                         + 'WHERE ID_PRODUTO = :ID_PRODUTO ';
      sds.ParamByName('ID_PRODUTO').AsInteger   := ID;
      sds.Open;
      if sds.FieldByName('QTD').AsFloat > 0 then
        vEstoqueLoteTotal := sds.FieldByName('QTD').AsFloat;
      sds.Close;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadProduto.btnAjustaRef2Click(Sender: TObject);
var
  vTipoAux: String;
  Texto: String;
  vAux: Integer;
begin
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    prc_Posiciona_Produto;
    if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    begin
      fDMCadProduto.cdsProduto.Edit;
      fDMCadProduto.cdsProdutoREF2.AsString := Monta_Numero(fDMCadProduto.cdsProdutoREFERENCIA.AsString,0);
      fDMCadProduto.cdsProduto.Post;
      fDMCadProduto.cdsProduto.ApplyUpdates(0);
    end;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  ShowMessage('Conversão finalizada!');
end;

function TfrmCadProduto.fnc_Duplicidade_Mat(ID_Prod : Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';

  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT AUX.* '
                       + ' FROM ( SELECT COUNT(1) CONTADOR , P.id_material, P.id_posicao, MAT.NOME NOME_MATERIAL, '
                       + '        PS.NOME NOME_POSICAO '
                       + '         FROM PRODUTO_CONSUMO P '
                       + '         INNER JOIN PRODUTO MAT '
                       + '         ON P.id_material = MAT.ID '
                       + '         INNER JOIN POSICAO PS '
                       + '         ON P.id_posicao = PS.ID '
                       + '         WHERE P.ID = :ID '
                       + '         GROUP BY P.id_material, P.id_posicao, MAT.NOME, PS.NOME ) AUX '
                       + ' WHERE CONTADOR > 1 ';
    sds.ParamByName('ID').AsInteger := ID_Prod;
    sds.Open;
    if not sds.IsEmpty then
      Result := 'Material: ' + sds.FieldByName('NOME_MATERIAL').AsString + ' - Posição: ' + sds.FieldByName('NOME_POSICAO').AsString;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

{function TfrmCadProduto.fnc_Custo(ID : Integer ; Combinacao : Boolean = False) : Boolean;
var
  ffrmSenha: TfrmSenha;
begin
  if (trim(fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString) = '') or (fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.IsNull) then
  begin
    Result := False;
    exit;
  end;
  fDMCadProduto.vMSGAltProd := '';
  Result  := True;
  fDMCadProduto.qCustoNV.Close;
  fDMCadProduto.qCustoNV.ParamByName('ID_PRODUTO').AsInteger := ID;
  fDMCadProduto.qCustoNV.Open;
  if fDMCadProduto.qCustoNVCONTADOR.AsInteger <= 0 then
  begin
    //Result := False;
    fDMCadProduto.qCustoNV.Close;
    //exit;
  end
  else
    fDMCadProduto.vMSGAltProd := fDMCadProduto.vMSGAltProd + #13 + '*** Existe Cálculo do Custo já lançado!';

  fDMCadProduto.qTalaoAux.Close;
  fDMCadProduto.qTalaoAux.ParamByName('ID_PRODUTO').AsInteger := ID;
  fDMCadProduto.qTalaoAux.Open;
  if fDMCadProduto.qTalaoAuxCONTADOR.AsInteger > 0 then
    fDMCadProduto.vMSGAltProd := fDMCadProduto.vMSGAltProd + #13 + '*** Existe Lote/Talão em aberto!';

  if (trim(fDMCadProduto.vMSGAltProd) <> '') and not(Combinacao) then
    MessageDlg(fDMCadProduto.vMSGAltProd + #13 + #13 , mtInformation, [mbOk], 0);

  ffrmSenha := TfrmSenha.Create(self);
  ffrmSenha.Label2.Caption := '';
  ffrmSenha.Label3.Caption := 'Informe a senha para alterar';
  ffrmSenha.Label4.Caption := '';
  ffrmSenha.vControlaSenha := True;
  ffrmSenha.vSenha_Param := fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString;
  ffrmSenha.ShowModal;
  FreeAndNil(ffrmSenha);
  if vSenha <>  fDMCadProduto.qParametros_ProdSENHA_PROD_CUSTO.AsString then
    MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0)
  else
    Result := False;
  fDMCadProduto.qCustoNV.Close;
end;}

procedure TfrmCadProduto.btnAjustarObsMatClick(Sender: TObject);
var
  vObsMaterial : String;
begin
  if fDMCadProduto.qParametros_ProdGRAVAR_PRIMEIRO_MAT.AsString <> 'S' then
    exit;
    
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
    fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
    fDMCadProduto.cdsProduto_Comb.First;
    while not fDMCadProduto.cdsProduto_Comb.Eof do
    begin
      fDMCadProduto.mAux.EmptyDataSet;
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if fDMCadProduto.cdsProduto_Comb_MatclPrimeiro_Mat.AsString = 'S' then
        begin
          fDMCadProduto.mAux.Insert;
          fDMCadProduto.mAuxNomePosicao.AsString  := fDMCadProduto.cdsProduto_Comb_MatclNome_Posicao.AsString;
          fDMCadProduto.mAuxNomeMaterial.AsString := fDMCadProduto.cdsProduto_Comb_MatclNome_Material.AsString;
          fDMCadProduto.mAuxNomeCor.AsString      := fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString;
          fDMCadProduto.mAux.Post;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      vObsMaterial := '';
      fDMCadProduto.mAux.IndexFieldNames := 'NomePosicao';
      fDMCadProduto.mAux.First;
      while not fDMCadProduto.mAux.Eof do
      begin
        if trim(vObsMaterial) <> '' then
          vObsMaterial := vObsMaterial + ' / ';
        vObsMaterial := vObsMaterial + fDMCadProduto.mAuxNomeMaterial.AsString + ' ' + fDMCadProduto.mAuxNomeCor.AsString;
        fDMCadProduto.mAux.Next;
      end;
      if trim(vObsMaterial) <> '' then
      begin
        fDMCadProduto.cdsProduto_Comb.Edit;
        fDMCadProduto.cdsProduto_CombOBSMATERIAL.AsString := vObsMaterial;
        if trim(fDMCadProduto.cdsProduto_CombFOTO.AsString) = '' then
          fDMCadProduto.cdsProduto_CombNOME_FOTO.AsString := ''
        else
          fDMCadProduto.cdsProduto_CombNOME_FOTO.AsString := ExtractFileName(fDMCadProduto.cdsProduto_CombFOTO.AsString);
        fDMCadProduto.cdsProduto_Comb.Post;
      end;
      fDMCadProduto.cdsProduto_Comb.Next;
    end;
    fDMCadProduto.cdsProduto_Comb.ApplyUpdates(0);
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
end;

procedure TfrmCadProduto.btnAjustarRef_OrdClick(Sender: TObject);
var
  vTipoAux: String;
  Texto: String;
  vAux: Integer;
begin
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    prc_Posiciona_Produto;
    if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    begin
      fDMCadProduto.cdsProduto.Edit;
      fDMCadProduto.cdsProdutoREF_ORD.AsString := Monta_Numero(fDMCadProduto.cdsProdutoREFERENCIA.AsString,6);
      fDMCadProduto.cdsProduto.Post;
      fDMCadProduto.cdsProduto.ApplyUpdates(0);
    end;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  ShowMessage('Conversão finalizada!');
end;

procedure TfrmCadProduto.DBEdit100Exit(Sender: TObject);
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
    sds.CommandText   := 'SELECT P.ID, P.NOME, P.COD_BARRA FROM PRODUTO P  WHERE P.COD_BARRA2 = :COD_BARRA2 ';
    sds.ParamByName('COD_BARRA2').AsString := DBEdit100.Text;
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
    MessageDlg('*** Código de barras já está cadastrado no produto: ' + #13
               + vMsgAux, mtInformation, [mbOk], 0);
    DBEdit100.SetFocus;
  end;

end;

procedure TfrmCadProduto.btnAjudaCod_BarraClick(Sender: TObject);
var
  vMSGAux: String;
begin
  vMSGAux := 'Esse Código de Barras é o do Produto individual' + #13
           + ' Ao informar ele já coloca a quantidade que este produto vai no Pacote/Caixa ' + #13
           + ' e também coloca a unidade do produto ' + #13 + #13
           + ' Esse Código de Barras, só informar quando o cadastro for da Embalagem ';
  MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
end;

procedure TfrmCadProduto.btnInserir_MaqClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdMaq;

  ffrmCadProduto_Maq := TfrmCadProduto_Maq.Create(self);
  ffrmCadProduto_Maq.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Maq.ShowModal;

  FreeAndNil(ffrmCadProduto_Maq);
end;

procedure TfrmCadProduto.btnAlterar_MaqClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_MaqITEM.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Maq.Active) or
     (fDMCadProduto.cdsProduto_Maq.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Maq.Edit;

  ffrmCadProduto_Maq := TfrmCadProduto_Maq.Create(self);
  ffrmCadProduto_Maq.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Maq.ShowModal;
  FreeAndNil(ffrmCadProduto_Maq);
end;

procedure TfrmCadProduto.btnExcluir_MaqClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Maq.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Maq.Delete;
end;

procedure TfrmCadProduto.btnSelecionar_MaqClick(Sender: TObject);
var
  ffrmSel_Maquina: TfrmSel_Maquina;
begin
  ffrmSel_Maquina := TfrmSel_Maquina.Create(self);
  ffrmSel_Maquina.fDMCadProduto := fDMCadProduto;
  ffrmSel_Maquina.ShowModal;
  FreeAndNil(ffrmSel_Maquina);
end;

procedure TfrmCadProduto.pnlTempoMaquinaEnter(Sender: TObject);
begin
  {if not(fDMCadProduto.cdsProduto_Pcp.Active) or not(fDMCadProduto.cdsProduto_Pcp.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_PcpID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
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
  end;}
end;

procedure TfrmCadProduto.prc_Controle_Ficha_Textil;
begin
  if not(fDMCadProduto.cdsProduto_Textil.Active) or not(fDMCadProduto.cdsProduto_Textil.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_TextilID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
  begin
    fDMCadProduto.prc_Abrir_Ficha_Textil(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Textil.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Textil.Insert;
        fDMCadProduto.cdsProduto_TextilID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Textil.Edit;
    end;
  end;
end;

procedure TfrmCadProduto.btnDigita_DPClick(Sender: TObject);
begin
  pnlDesenho_Passamento.Enabled := not(pnlDesenho_Passamento.Enabled);
  if pnlDesenho_Passamento.Enabled then
    SMDBGrid17.SetFocus;
end;

procedure TfrmCadProduto.prc_Controle_Ficha_Textil_DP;
begin
  if not(fDMCadProduto.cdsProduto_Textil_DP.Active) or not(fDMCadProduto.cdsProduto_Textil_DP.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_Textil_DPID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
    fDMCadProduto.prc_Abrir_Ficha_Textil_DP(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadProduto.SMDBGrid17Exit(Sender: TObject);
begin
  pnlDesenho_Passamento.Enabled := False;
end;

procedure TfrmCadProduto.prc_Controle_Ficha_Tranc;
begin
  if not(fDMCadProduto.cdsProduto_Tranc.Active) or not(fDMCadProduto.cdsProduto_Tranc.State in [dsEdit, dsInsert])
    or (fDMCadProduto.cdsProduto_TrancID.AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
  begin
    fDMCadProduto.prc_Abrir_Ficha_Tranc(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
    begin
      if fDMCadProduto.cdsProduto_Tranc.IsEmpty then
      begin
        fDMCadProduto.cdsProduto_Tranc.Insert;
        fDMCadProduto.cdsProduto_TrancID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
      end
      else
        fDMCadProduto.cdsProduto_Tranc.Edit;
    end;
  end;
end;

procedure TfrmCadProduto.prc_Grava_Peso;
var
  vPesoAux : Real;
  sds: TSQLDataSet;
begin
  vPesoAux := 0;
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
  begin
    sds  := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
  end;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    fDMCadProduto.qMaterial.Close;
    fDMCadProduto.qMaterial.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    fDMCadProduto.qMaterial.Open;
    if fDMCadProduto.qMaterialTIPO_REG.AsString = 'M' then
      vPesoAux := StrToFloat(FormatFloat('0.0000',vPesoAux + fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat))
    else
    begin
      sds.Close;
      sds.CommandText := 'select sum(p.qtd_consumo) qtd_consumo from produto_consumo p WHERE P.ID = :ID ';
      sds.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
      sds.Open;
      vPesoAux := vPesoAux + (StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_consumo').AsFloat * fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat)));
    end;
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    FreeAndNil(sds);
  if StrToFloat(FormatFloat('0.0000',vPesoAux)) > 0 then
  begin
    if not(fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) then
      fDMCadProduto.cdsProduto.Edit;
    fDMCadProduto.cdsProdutoPESOBRUTO.AsFloat   := StrToFloat(FormatFloat('0.0000',vPesoAux));
    fDMCadProduto.cdsProdutoPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.0000',vPesoAux));
  end;
end;

procedure TfrmCadProduto.btnAjustarPesoClick(Sender: TObject);
begin
  if trim(fDMCadProduto.qParametros_ProdATUALIZA_PESO_ENG.AsString) <> 'S' then
    exit;
  SMDBGrid1.DisableScroll;
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if (fDMCadProduto.cdsProduto_ConsultaTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProduto_ConsultaTIPO_REG.AsString = 'S') then
    begin
      fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
      if not fDMCadProduto.cdsProduto.IsEmpty then
      begin
        fDMCadProduto.cdsProduto.Edit;
        prc_Grava_Peso;
        fDMCadProduto.cdsProduto.Post;
        fDMCadProduto.cdsProduto.ApplyUpdates(0);
      end;
    end;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  SMDBGrid1.EnableScroll;
  MessageDlg('*** Ajustado o Peso dos produtos da tela!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmCadProduto.SMDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadProduto_Consumo_Proc : TfrmCadProduto_Consumo_Proc;
begin
  if (Key = Vk_F3) then
  begin
    if (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) and (fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger > 0) then
    begin
      fDMCadProduto.prc_Inserir_Produto_Consumo_Proc;
      ffrmCadProduto_Consumo_Proc := TfrmCadProduto_Consumo_Proc.Create(self);
      ffrmCadProduto_Consumo_Proc.fDMCadProduto := fDMCadProduto;
      ffrmCadProduto_Consumo_Proc.ShowModal;
      FreeAndNil(ffrmCadProduto_Consumo_Proc);
    end;
  end;
end;

procedure TfrmCadProduto.btnAjuda_TipoMatClick(Sender: TObject);
var
  vMSGAux: String;
begin
  vMSGAux := ' --- Produtos Que SEPARAM as CORES nos Talões' + #13
           + '     Poliester ' + #13
           + '     Reflex ' + #13
           + '     Polipropileno ' + #13
           + '     Chenile ' + #13 + #13
           + ' --- Produtos que JUNTAM as CORES nos Talões' + #13
           + '     Algodão ' + #13
           + '     Juta ' + #13
           + '     Lurex ' + #13
           + '     Alma Produção Própria ' + #13
           + '     Elanca ' + #13;
  MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
end;

procedure TfrmCadProduto.prcAtualizaPrecoMGV5;
var
  vCont: Integer;
  f: TextFile;
  i: Word;
  vArq, vTxt, vTxt1: string;
begin
  vCont := SMDBGrid1.SelectedRows.Count;
  if vCont = 0 then
  begin
    ShowMessage('Não existe produto selecionado!');
    Exit;
  end;

  vArq := ExtractFilePath(Application.ExeName) + 'TXITENS.TXT';
  AssignFile(f,vArq);
  ReWrite(f);

  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vCont := vCont - 1;
      prc_Posiciona_Produto;
      if not fDMCadProduto.cdsProduto.IsEmpty then
      begin
        vTxt := '0101';
        if fDMCadProduto.cdsProdutoUNIDADE.AsString = 'KG' then
          vTxt := vTxt + '0'
        else
          vTxt := vTxt + '1';
        vTxt := vTxt + Monta_Numero(fDMCadProduto.cdsProdutoID.AsString,6);
        vTxt := vTxt + Monta_Numero(FormatFloat('0.00',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat),6);
        vTxt := vTxt + Monta_Texto(fDMCadProduto.cdsProdutoVALIDADE.AsString,3);
        vTxt1 := Formatar_Campo(fDMCadProduto.cdsProdutoNOME.AsString,25);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',25);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',25);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',50);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',50);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',50);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',50);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',50);
        vTxt := vTxt + vTxt1;
        Writeln(f,vTxt);
      end;
    end;
    if vCont <= 0 then
      fDMCadProduto.cdsProduto_Consulta.Last;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  CloseFile(f);
  ShowMessage('Arquivo ' + ExtractFilePath(Application.ExeName) + 'TXITENS.TXT gerado!');
end;

procedure TfrmCadProduto.prcExportaCadastroMGV5;
var
  vCont: Integer;
  f: TextFile;
  i: Word;
  vArq, vTxt, vTxt1: string;
begin
  vCont := SMDBGrid1.SelectedRows.Count;
  if vCont = 0 then
  begin
    ShowMessage('Não existe produto selecionado!');
    Exit;
  end;

  vArq := ExtractFilePath(Application.ExeName) + 'CADASTRO.TXT';
  AssignFile(f,vArq);
  ReWrite(f);

  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vCont := vCont - 1;
      prc_Posiciona_Produto;
      if not fDMCadProduto.cdsProduto.IsEmpty then
      begin
        vTxt := '01';
        if fDMCadProduto.cdsProdutoUNIDADE.AsString = 'KG' then
          vTxt := vTxt + '0'
        else
          vTxt := vTxt + '1';
        vTxt := vTxt + Monta_Numero(fDMCadProduto.cdsProdutoID.AsString,6);
        vTxt := vTxt + Monta_Numero(fDMCadProduto.cdsProdutoPRECO_VENDA.AsString,6);
        vTxt := vTxt + '005';
        vTxt1 := Formatar_Campo(fDMCadProduto.cdsProdutoNOME.AsString,25);
        vTxt := vTxt + vTxt1;
        vTxt1 := Formatar_Campo('',25);
        vTxt := vTxt + vTxt1;
        vTxt := vTxt + '000000' + '000' + '000000';
        Writeln(f,vTxt);
      end;
    end;
    if vCont <= 0 then
      fDMCadProduto.cdsProduto_Consulta.Last;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  CloseFile(f);
  ShowMessage('Arquivo ' + ExtractFilePath(Application.ExeName) + 'CADASTRO.TXT gerado!');
end;


procedure TfrmCadProduto.AtualizarPreo1Click(Sender: TObject);
begin
  prcAtualizaPrecoMGV5;
end;

procedure TfrmCadProduto.ExportarProduto1Click(Sender: TObject);
begin
  prcExportaCadastroMGV5;
end;

end.

