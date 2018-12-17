unit UCadNotaFiscal;

interface

uses
  DBVGrids, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNotaFiscal,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UCadNotaFiscal_Itens, UCadNotaFiscal_Desconto, UDMEstoque, UCadNotaFiscal_Ref, TlHelp32,
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, UNFe, UCBase,
  UCadNotaFiscal_OutrasDesp, UEscolhe_Filial, UDMNFe, UCadNotaFiscal_Confirma, UCadNotaFiscal_CCe, USel_Pedido, USel_OS, RzPanel,
  UCadNotaFiscal_Canc, USel_NotaEntrada, UCadNotaFiscal_OutrosDados, Menus, dbXPress, DateUtils, UDMMovimento, NxEdit, USenha,
  UCadNotaFiscal_Obs, UConsNotaFiscal_NDevol, UCadNotaFiscal_Copia, UCadNotaFiscal_Alt_Imp, NxCollection, UCadNotaFiscal_Cons,
  UDMCadNotaFiscal_MP, UConsLimite_Credito, UImportar_TXT, UCadNotaFiscal_MObra, USel_Vale, Variants, UCadNotaFiscal_Imp_Aux,
  UCadNotaFiscal_ST, UEtiq_Rotulo, USel_Sacola, USel_Pedido_Tam, VarUtils, UDMPreFat, NFeFepam,
  xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmCadNotaFiscal = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    lblSerie: TLabel;
    edtSerie: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    lblDtSaida: TLabel;
    DBDateEdit2: TDBDateEdit;
    lblHrSaida: TLabel;
    rzdtHrSaida: TRzDBDateTimeEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    TabSheet3: TRzTabSheet;
    ts_NFe: TRzTabSheet;
    Panel8: TPanel;
    Label56: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label66: TLabel;
    DBText3: TDBText;
    Label68: TLabel;
    DBText2: TDBText;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    GroupBox5: TGroupBox;
    SMDBGrid3: TSMDBGrid;
    ts_NotasRef: TRzTabSheet;
    Panel10: TPanel;
    Label76: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Shape1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label11: TLabel;
    Shape4: TShape;
    Label13: TLabel;
    pnlNotaRef: TPanel;
    btnInserir_NotaRef: TBitBtn;
    btnExcluir_NotaRef: TBitBtn;
    btnAlterar_NotaRef: TBitBtn;
    SMDBGrid5: TSMDBGrid;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    UCControls1: TUCControls;
    TabSheet2: TRzTabSheet;
    pnlExportacao: TPanel;
    Label4: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    gbxTransportes: TRzGroupBox;
    RzGroupBox1: TRzGroupBox;
    gbxVendedor: TRzGroupBox;
    pnlDadosAdicionais: TPanel;
    btnBuscar_Obs_Aux: TBitBtn;
    DBMemo1: TDBMemo;
    gbxDuplicata: TRzGroupBox;
    SMDBGrid_Dupl2: TSMDBGrid;
    RzBitBtn1: TRzBitBtn;
    pnlTransporte: TPanel;
    Label57: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label34: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit24: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit27: TDBEdit;
    Label84: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    pnlVendedor: TPanel;
    Label82: TLabel;
    SpeedButton5: TSpeedButton;
    Label83: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBEdit53: TDBEdit;
    btnAtualizar_Estoque: TBitBtn;
    Label2: TLabel;
    Label19: TLabel;
    Panel4: TPanel;
    lblTipo_Nota: TLabel;
    Label18: TLabel;
    lblOperacao: TLabel;
    lblFinalidade: TLabel;
    rxcbTipo_Nota: TRxDBComboBox;
    DBDateEdit1: TDBDateEdit;
    rxdbOperacao: TRxDBLookupCombo;
    rxcbFinalidade: TRxDBComboBox;
    Label22: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label21: TLabel;
    SpeedButton4: TSpeedButton;
    Shape5: TShape;
    Label3: TLabel;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Label8: TLabel;
    Label72: TLabel;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    Label20: TLabel;
    PopupMenu1: TPopupMenu;
    ZerarDuplicata1: TMenuItem;
    GerarVlrDuplicata1: TMenuItem;
    RzMenuToolbarButton1: TRzMenuToolbarButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnCopiarNota: TNxButton;
    btnImportarXML: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnImp_Boleto: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    pnlCliTriangular: TPanel;
    Panel3: TPanel;
    btnCopiarNotaDevolucao: TBitBtn;
    btnCopiarPedido: TBitBtn;
    Label54: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    ckNaoEnviadas: TCheckBox;
    btnCopiarVale: TBitBtn;
    Label58: TLabel;
    rxdbTipoCobranca: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    Label59: TLabel;
    rxdbConta: TRxDBLookupCombo;
    DBEdit5: TDBEdit;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    Label60: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label62: TLabel;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    StaticText2: TStaticText;
    PopupMenu2: TPopupMenu;
    Reenviaraocliente1: TMenuItem;
    Enviarnomtodoantigo1: TMenuItem;
    Enviarparaoresponsvelpelosistematxt1: TMenuItem;
    pnlEnvio_Novo: TPanel;
    btnCCe2: TNxButton;
    btnCancelar_Nota2: TNxButton;
    btnEnvio: TNxButton;
    btnDanfe: TNxButton;
    btnOutras: TNxButton;
    SMDBGrid6: TSMDBGrid;
    SMDBGrid7: TSMDBGrid;
    Label71: TLabel;
    PopupMenu3: TPopupMenu;
    XML1: TMenuItem;
    XT1: TMenuItem;
    btnMaoObra: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    TS_Lei: TRzTabSheet;
    pnlObs_Lei: TPanel;
    Panel2: TPanel;
    Label73: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SMDBGrid8: TSMDBGrid;
    btnConfirmar_Lei: TNxButton;
    btnExcluir_Lei: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Label74: TLabel;
    DBDateEdit3: TDBDateEdit;
    N1: TMenuItem;
    ReativarProcesso1: TMenuItem;
    Panel5: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    pnlValores: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit19: TDBEdit;
    gbxIcmsSimples: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit44: TDBEdit;
    btnAjustar: TBitBtn;
    gbxIcms: TGroupBox;
    Label29: TLabel;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    btnDesconto: TBitBtn;
    btnOutrosValores: TBitBtn;
    btnCalcular_Valores: TBitBtn;
    gbxSubstituicao: TGroupBox;
    Label46: TLabel;
    Label53: TLabel;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    gbxTransfIcms: TGroupBox;
    Label55: TLabel;
    DBEdit35: TDBEdit;
    ckUsa_TransfIcms: TDBCheckBox;
    BitBtn2: TBitBtn;
    ckCalcular_Imp_Item: TDBCheckBox;
    gbxTributos: TGroupBox;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    btnSubstTributaria: TNxButton;
    lblTipo_Prazo: TLabel;
    rxcbTipo_Prazo: TRxDBComboBox;
    Label77: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label78: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label81: TLabel;
    DBEdit6: TDBEdit;
    Label85: TLabel;
    DBEdit34: TDBEdit;
    Label86: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    btnAdicao: TBitBtn;
    N2: TMenuItem;
    ImprimirRtulos1: TMenuItem;
    btnCopiarPedido_Fut: TBitBtn;
    btnCopiarOS: TBitBtn;
    Label87: TLabel;
    DBEdit43: TDBEdit;
    Label88: TLabel;
    DBEdit45: TDBEdit;
    Label89: TLabel;
    DBEdit46: TDBEdit;
    Label90: TLabel;
    DBEdit49: TDBEdit;
    Label91: TLabel;
    DBEdit50: TDBEdit;
    Label92: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    btnVlr_Outras_Despesas: TNxButton;
    Label93: TLabel;
    DBEdit54: TDBEdit;
    btnCopiarSacola: TBitBtn;
    Label95: TLabel;
    DBEdit55: TDBEdit;
    GroupBox1: TGroupBox;
    Label97: TLabel;
    DBEdit57: TDBEdit;
    Label98: TLabel;
    DBEdit58: TDBEdit;
    NxButton1: TNxButton;
    Shape6: TShape;
    Label75: TLabel;
    Label99: TLabel;
    DBEdit59: TDBEdit;
    BitBtn3: TBitBtn;
    SpeedButton7: TSpeedButton;
    btnAlterar_CondPgto: TSpeedButton;
    VDBGrid1: TVDBGrid;
    ckTotalDup: TCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    ckEnviarComErro: TCheckBox;
    btnRegravar: TBitBtn;
    btnAjustarComissaoItens: TBitBtn;
    CheckBox1: TCheckBox;
    Label100: TLabel;
    DBEdit60: TDBEdit;
    NxButton2: TNxButton;
    Label101: TLabel;
    DBEdit61: TDBEdit;
    btnAjusteCusto: TNxButton;
    Label102: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label103: TLabel;
    DBEdit64: TDBEdit;
    Label104: TLabel;
    ImprimirEtiquetas1: TMenuItem;
    DBCheckBox2: TDBCheckBox;
    Panel7: TPanel;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    pnlTab_Preco: TPanel;
    Label105: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    N3: TMenuItem;
    PrFaturamento1: TMenuItem;
    GroupBox2: TGroupBox;
    Label96: TLabel;
    DBEdit56: TDBEdit;
    Label106: TLabel;
    DBEdit65: TDBEdit;
    Label107: TLabel;
    DBEdit66: TDBEdit;
    Label108: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    btnCopiarRecNF: TBitBtn;
    Label109: TLabel;
    DBEdit70: TDBEdit;
    ckSomaFrete_II: TDBCheckBox;
    N4: TMenuItem;
    ArquivoSuframa1: TMenuItem;
    Label110: TLabel;
    DBEdit71: TDBEdit;
    ImprimirMinuta1: TMenuItem;
    Label111: TLabel;
    DBEdit72: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnBuscar_Obs_AuxClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure btnExcluir_NotaRefClick(Sender: TObject);
    procedure btnInserir_NotaRefClick(Sender: TObject);
    procedure btnAlterar_NotaRefClick(Sender: TObject);
    procedure btnOutrosValoresClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure rxcbTipo_NotaEnter(Sender: TObject);
    procedure rxcbTipo_NotaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlClienteEnter(Sender: TObject);
    procedure btnCopiarNotaDevolucaoClick(Sender: TObject);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiarPedidoClick(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure btnAtualizar_EstoqueClick(Sender: TObject);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel4Exit(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiarNotaClick(Sender: TObject);
    procedure btnAjustarClick(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure rxdbCondicaoPgtoChange(Sender: TObject);
    procedure ZerarDuplicata1Click(Sender: TObject);
    procedure GerarVlrDuplicata1Click(Sender: TObject);
    procedure btnImp_BoletoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnCopiarValeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClienteExit(Sender: TObject);
    procedure rxdbConta_OrcamentoEnter(Sender: TObject);
    procedure rxdbConta_OrcamentoExit(Sender: TObject);
    procedure rxdbConta_OrcamentoCloseUp(Sender: TObject);
    procedure rxdbConta_OrcamentoDropDown(Sender: TObject);
    procedure rxdbConta_OrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEnvioClick(Sender: TObject);
    procedure btnDanfeClick(Sender: TObject);
    procedure Reenviaraocliente1Click(Sender: TObject);
    procedure Enviarnomtodoantigo1Click(Sender: TObject);
    procedure Enviarparaoresponsvelpelosistematxt1Click(Sender: TObject);
    procedure btnCancelar_Nota2Click(Sender: TObject);
    procedure btnCCe2Click(Sender: TObject);
    procedure SMDBGrid6GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid6DblClick(Sender: TObject);
    procedure SMDBGrid7DblClick(Sender: TObject);
    procedure XML1Click(Sender: TObject);
    procedure XT1Click(Sender: TObject);
    procedure btnMaoObraClick(Sender: TObject);
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnConfirmar_LeiClick(Sender: TObject);
    procedure btnExcluir_LeiClick(Sender: TObject);
    procedure rxdbCondicaoPgtoEnter(Sender: TObject);
    procedure ReativarProcesso1Click(Sender: TObject);
    procedure btnSubstTributariaClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ImprimirRtulos1Click(Sender: TObject);
    procedure btnCopiarPedido_FutClick(Sender: TObject);
    procedure btnCopiarOSClick(Sender: TObject);
    procedure btnVlr_Outras_DespesasClick(Sender: TObject);
    procedure btnCopiarSacolaClick(Sender: TObject);
    procedure DBEdit55KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit55Enter(Sender: TObject);
    procedure rxdbOperacaoExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rxdbContaChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnAlterar_CondPgtoClick(Sender: TObject);
    procedure gbxDuplicataEnter(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure gbxDuplicataExit(Sender: TObject);
    procedure btnRegravarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnAjustarComissaoItensClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure btnAjusteCustoClick(Sender: TObject);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirEtiquetas1Click(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure PrFaturamento1Click(Sender: TObject);
    procedure RxDBComboBox4Exit(Sender: TObject);
    procedure RxDBComboBox4Enter(Sender: TObject);
    procedure btnCopiarRecNFClick(Sender: TObject);
    procedure ArquivoSuframa1Click(Sender: TObject);
    procedure DBDateEdit3Change(Sender: TObject);
    procedure ImprimirMinuta1Click(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;
    vTriangular_Copiar: Boolean;
    vVlrAdiantamento_Ant: Real;
    vID_CFOP_Ant: Integer;
    vFinalidade_Ant: String;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    //fDMCadExtComissao: TDMCadExtComissao;
    fDMNFE: TDMNFE;
    fDMCadNotaFiscal_MP: TDMCadNotaFiscal_MP;
    fDMPreFat: TDMPreFat;

    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
    ffrmCadNotaFiscal_ST: TfrmCadNotaFiscal_ST;
    ffrmCadNotaFiscal_Desconto: TfrmCadNotaFiscal_Desconto;
    ffrmCadNotaFiscal_Ref: TfrmCadNotaFiscal_Ref;
    ffrmCadNotaFiscal_OutrasDesp: TfrmCadNotaFiscal_OutrasDesp;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffNFe: TfNFe;
    ffrmCadNotaFiscal_Confirma: TfrmCadNotaFiscal_Confirma;
    ffrmCadNotaFiscal_CCe: TfrmCadNotaFiscal_CCe;
    ffrmCadNotaFiscal_Canc: TfrmCadNotaFiscal_Canc;
    ffrmCadNotaFiscal_Copia: TfrmCadNotaFiscal_Copia;
    ffrmSel_NotaEntrada: TfrmSel_NotaEntrada;
    ffrmSel_Pedido: TfrmSel_Pedido;
    ffrmSel_Pedido_Tam: TfrmSel_Pedido_Tam;
    ffrmSel_OS: TfrmSel_OS;
    ffrmCadNotaFiscal_OutrosDados: TfrmCadNotaFiscal_OutrosDados;
    ffrmCadNotaFiscal_Obs: TfrmCadNotaFiscal_Obs;
    ffrmConsLimite_Credito: TfrmConsLimite_Credito;
    ffrmImportar_TXT: TfrmImportar_TXT;
    ffrmCadNotaFiscal_MObra: TfrmCadNotaFiscal_MObra;
    ffrmCadNotaFiscal_Imp_Aux: TfrmCadNotaFiscal_Imp_Aux;
    ffrmSel_Vale: TfrmSel_Vale;
    ffrmSel_Sacola: TfrmSel_Sacola;

    fDMEstoque: TDMEstoque;
    fDMMovimento: TDMMovimento;
    ffrmConsNotaFiscal_NDevol: TfrmConsNotaFiscal_NDevol;
    ffrmCadNotaFiscal_Alt_Imp: TfrmCadNotaFiscal_Alt_Imp;
    ffrmCadNotaFiscal_Cons: TfrmCadNotaFiscal_Cons;
    ffrmEtiq_Rotulo: TfrmEtiq_Rotulo;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro(Ajuste: Boolean = False);
    procedure prc_Consultar(ID: Integer);
    procedure prc_Posiciona_NotaFiscal;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    procedure prc_Cancelamento(Cancelar: Boolean); //True = Cancelamento   False = Denegada
    procedure prc_Buscar_Percentual_Simples;
    procedure prc_Opcao_Prazo;
    procedure prc_Funcao_Inserir;

    function fnc_Verifica_Registro: Boolean;
    function fnc_Cancelar: Boolean;
    function Verifica_ConexaoInternet: Boolean;

    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Gravar_Triangular;

    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_scroll_Itens(DataSet: TDataSet);
    procedure prc_Controle_NFe(Tipo: String); //E=Enviar  D=Danfe  R=Reenvio ao cliente   T=Enviar ao responsável do sistema  C=Cancelamento

    procedure prc_Le_NotaFiscal_Ref;

    procedure prc_Abrir_NFeConfig;
    function fnc_ProcessoRodando(exeFileName: String): Boolean;
    function fnc_FinalizarProcesso(exeFileName: String): Integer;
    procedure prc_ExecutarProcesso(exeFileName: String);
    procedure prc_Ajustar_Grid_Itens;
    procedure prc_Excluir_ItensSacola;

    procedure prc_Voltar_Vale;
    procedure prc_Gravar_NotaFiscal_Desconto;
    procedure prc_Gravar_mItensAlt;
    procedure prc_ReGravar_DuplicataAux(Percentual: Real);

    procedure prc_Gravar_Itens_PreFat;
    procedure prc_Opcao_Triang;

    function fnc_Controla_Est(Tipo: String; Qtd: Real): Integer; //Tipo I=Lendo Tabela Itens   T=Lendo tabela de tamanhos

    function fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1, Desc2, Desc3: String; Item: Integer; Vlr_Limite: Real): Boolean;

    function fnc_Duplicata: Boolean;
    function fnc_Movimento: Boolean;
    function fnc_Duplicata_Enviada_Banco : String; //R= Remessa   N=Nosso Numero
  public
    { Public declarations }
    vTipo_Reg: String; //NTS = Nota Fiscal   NTE = Nota Entrada
  end;

var
  frmCadNotaFiscal: TfrmCadNotaFiscal;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa, URecebeXML, uCalculo_NotaFiscal, uNFeComandos, USel_ContaOrc, uUtilCliente,
  uUtilCobranca, DmdDatabase_NFeBD, UDMAprovacao_Ped, UConsPessoa_Fin, UConsPedido_Senha, uGrava_NotaFiscal, UCadNotaFiscal_Custo,
  UMenu, Math, UDMEtiqueta, USel_PreFat, uMenu1, USel_RecNF, uXMLSuframa;

{$R *.dfm}

procedure TfrmCadNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fMenu1.prc_Verifica_Nota_Dupl('N');
  FreeAndNil(fDMEstoque);
  FreeAndNil(fDMMovimento);
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal.btnExcluirClick(Sender: TObject);
var
  vChaveNFe: String;
  vExcluir: Boolean;
begin
  if not fnc_Verifica_Registro then
    exit;
  vExcluir := True;
  prc_Posiciona_NotaFiscal;

  if fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
  begin
    MessageDlg('*** Nota não encontrada!' , mtInformation, [mbOk], 0);
    exit;
  end;

  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString) = '1') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') then
  begin
    MessageDlg('*** Nota não pode ser excluída, já possui chave de acesso!' , mtInformation, [mbOk], 0);
    exit;
  end;

  //21/11/2015  Verificar a nota no Sefaz antes de excluir
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString) = '2') then
    vExcluir := True
  else
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString) = '1') or (fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString = 'P')
    or (fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString = 'S') then
  begin
    try
      fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString);
      fDMNFe := TDMNFe.Create(Self);
      ffNFe := TfNFe.Create(fNFe);
      try
        ffNfe.fDMCadNotaFiscal := fDMCadNotaFiscal;
        ffNfe.fDMNFe           := fDMNFe;
        ffNfe.prc_Configura_Tela_Alt;
        fDMNFE.vNovoProcesso := True;
        ffNfe.vGerar_Chave_Antiga := 'N';
        ffNFe.Gera_Chave(False);
        vChaveNFe := ffNFe.lbChaveAcesso.Caption;
        ffNFe.Button7Click(ffNFe);
        if trim(ffNFe.lbNroProtocolo.Caption) <> '' then
          vExcluir := False;
      finally
        FreeAndNil(fDMNFe);
        FreeAndNil(ffNFe);
      end;
    except
    end;
  end;
  if not vExcluir then
  begin
    MessageDlg('*** Nota não pode ser excluáda, já está na SEFAZ!' , mtInformation, [mbOk], 0);
    exit;
  end;
  //*************

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;

/////////////////////////////////////

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadNotaFiscal.prc_Excluir_Registro;
begin
  fDMCadNotaFiscal.prc_Excluir;
end;

procedure TfrmCadNotaFiscal.prc_Gravar_Registro(Ajuste: Boolean = False);
var
  vIDAux: Integer;
  vID_Estoque, vID_Mov: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vMotivo_CD: String;
  vDescAux: Real;
  vID_CFOP: Integer;
  vPedAux: Integer;
  vFonte, vVersao, vIBPT_Chave: String;
  vQtdAux: Real;
  vUnidade: String;
  vVlrAux: Real;
  vPercAux: Real;
  fDMAprovacao_Ped: TDMAprovacao_Ped;
  vGravar: Boolean;
  vMsgAux: String;
  vObsGNRE: WideString;
  vMSGUnidExp : String;
  vPrazoAux : String;
begin
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
     (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    fDMCadNotaFiscal_MP := TDMCadNotaFiscal_MP.Create(Self);

  if fDMCadNotaFiscal.qParametros_PedUSA_PROCESSO.AsString = 'S' then
    fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);

  vMSGUnidExp := '';

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  vMsgAux := '';

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
    sds.ExecSQL();
    vGravar := True;
    //29/11/2016  tirado o try
    //try
      fDMCadNotaFiscal.Excluir_Duplicata;
      fDMCadNotaFiscal.Excluir_ExtComissao;
      fDMCadNotaFiscal.prc_Excluir_Financeiro;
      fDMCadNotaFiscal.prc_Excluir_Movimento;
      if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
         (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
        fDMCadNotaFiscal.prc_Excluir_NotaFiscal_MP;
      if fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S' then
        prc_Le_NotaFiscal_Ref;//Para quando a nota for de estorno

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
        UGrava_NotaFiscal.prc_Gravar_Comissao(fDMCadNotaFiscal,'');

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat)) > 0 then
          UGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','S',1,fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat,fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'',100);
        if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'P' then
        begin
          if fDMCadNotaFiscal.cdsCondPgtoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger then
            fDMCadNotaFiscal.cdsCondPgto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,[loCaseInsensitive]);
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
          while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
          begin
            vPrazoAux := '';
            if (fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger = 1) then
              vPrazoAux := 'ENT';
            if (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger = 1) and (vPrazoAux = 'ENT') and
               (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat)) <>
               StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat))) then
            begin
              if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
                fDMCadNotaFiscal.cdsNotaFiscal.Edit;
              fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
            end;
            uGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','N',fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,
                                              fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,vPrazoAux,fDMCadNotaFiscal.cdsNotaFiscal_ParcPERC_BASE_COMISSAO.AsFloat);
            fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
          end;
        end
        else
        if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') then
        begin
          vPercAux := StrToFloat(FormatFloat('0.00',100));
          if (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S') then
          begin
            if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat)) > 0 then
              vPercAux := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat) * 100));
          end;
          uGrava_NotaFiscal.Gravar_Duplicata(fDMCadNotaFiscal,'R','N',1,fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat,fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,'AVI',vPercAux);
        end;
      end;

      vMotivo_CD := '';
      if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
        vMotivo_CD := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString
      else
      if fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
        vMotivo_CD := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CANCELADA.AsString;
      vFonte  := '';
      vVersao := '';
      vIBPT_Chave := '';
      fDMCadNotaFiscal.vPerc_Comissao_Rateio := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
      begin
        vID_Estoque := 0;
        vID_Mov     := 0;
        vDescAux    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat +
                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));

        if (trim(vFonte) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString) <> '') then
          vFonte := fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString;
        if (trim(vVersao) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString) <> '') then
          vVersao := fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString;
        //14/11/2016
        if (trim(vIBPT_Chave) = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString) <> '') then
          vIBPT_Chave := fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString;
        //**************************

        //23/01/2018
        if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E') then
        begin
          uCalculo_NotaFiscal.prc_Calcular_Custo_Total(fDMCadNotaFiscal);
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total));
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        end;
        //*************

        if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
        begin
          if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger then
            fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);

          //01/08/2018
          if (fDMCadNotaFiscal.cdsCFOPUSA_UNIDADE_TRIB.AsString = 'S')
             and ( (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) = StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_TRIB.AsFloat)))
                  or (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_TRIB.AsFloat)) <= 0))
             and ((fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE_TRIB.AsString)
                or (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE_TRIB.AsString) = '')) then
            vMSGUnidExp := vMSGUnidExp + #13 + 'Item: ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString + ', Verificar a Unidade Tributável, poís a  conversão não foi feita!';
          //*************************

          if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
             (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and
            (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
          begin
            if (fDMCadNotaFiscal.cdsCFOPGERAR_ESTOQUE_MP.AsString = 'S') or (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S') then
            begin
              fDMCadNotaFiscal_MP.fDMCadNotaFiscal := fDMCadNotaFiscal;
              fDMCadNotaFiscal_MP.prc_Abrir_NotaFiscal_MP(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
              fDMCadNotaFiscal_MP.fDMEstoque       := fDMEstoque;
              fDMCadNotaFiscal_MP.prc_Le_Produto_Consumo;
            end;
          end;

          if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'S') and not(fDMCadNotaFiscal.cdsNotaFiscal_Tam.IsEmpty) then
          begin
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.First;
            while not fDMCadNotaFiscal.cdsNotaFiscal_Tam.Eof do
            begin
              vID_Estoque := fnc_Controla_Est('T',StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat)));
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Edit;
              fDMCadNotaFiscal.cdsNotaFiscal_TamID_MOVESTOQUE.AsInteger := vID_Estoque;
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Next;
            end;
            vID_Estoque := 0;
          end
          else
            vID_Estoque := fnc_Controla_Est('I',vQtdAux);
        end;
        //11/11/2015
        if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
          vPercAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.vPerc_Comissao_Rateio))
        else
          vPercAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat));
        //****
        if (fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) and
           (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') then
        begin
          vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,0,'NTS',
                                                       fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NOT',
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,
                                                       vDescAux,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat,0,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat,
                                                       0,0,0,0,fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat,0,0,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                                       vMotivo_CD,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                                       fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,0,
                                                       fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,vPercAux,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat,1,
                                                       fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat,'N');
        end;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque) or
           (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov) then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        end;

        //Atualiza Status do pedido
        //29/11/2014 foi alterado para gravar o pedido futuro também
        vPedAux := 0;
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
          vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger
        else
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0 then
          vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger;
        //if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and
        if (vPedAux > 0) and not(fDMCadNotaFiscal.mPedidoAux.FindKey([vPedAux])) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          //fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := vPedAux;
          fDMCadNotaFiscal.mPedidoAux.Post;
        end;
        //****************
        //Vale 18/06/2014
        if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
        begin
          if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
          begin
            fDMCadNotaFiscal.mValeAux.Insert;
            fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
            fDMCadNotaFiscal.mValeAux.Post;
          end;
        end;

        //Recibo NF  03/09/2018
        if not fDMCadNotaFiscal.cdsNotaFiscal_Copia.IsEmpty then
        begin
          if not(fDMCadNotaFiscal.mRecNFAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger])) then
          begin
            fDMCadNotaFiscal.mRecNFAux.Insert;
            fDMCadNotaFiscal.mRecNFAuxID_RecNF.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger;
            fDMCadNotaFiscal.mRecNFAux.Post;
          end;
        end;

        //13/11/2017
        if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
          uCalculo_NotaFiscal.Atualiza_Preco2(fDMCadNotaFiscal);
        //*****************************

        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
      end;

      //25/01/2014 aqui
      if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
         (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
        fDMCadNotaFiscal_MP.prc_Le_mMaterial;

      //Adiciona o id pedido excluído no aux pedido.
      fDMCadNotaFiscal.mPedidoAuxExcluir.First;
      while not fDMCadNotaFiscal.mPedidoAuxExcluir.Eof do
      begin
      if (fDMCadNotaFiscal.mPedidoAuxExcluirID_pedido.AsInteger > 0) and not(fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.mPedidoAuxExcluirID_pedido.AsInteger])) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := fDMCadNotaFiscal.mPedidoAuxExcluirID_pedido.AsInteger;
          fDMCadNotaFiscal.mPedidoAux.Post;
          fDMCadNotaFiscal.mPedidoAuxExcluir.Next;
        end;
      end;

      //Atualiza Status do pedido
      fDMCadNotaFiscal.mPedidoAux.First;
      while not fDMCadNotaFiscal.mPedidoAux.Eof do
      begin
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.Close;
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
        fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;

        //aqui araujo 23/04/2016
        if (fDMCadNotaFiscal.qParametros_PedUSA_PROCESSO.AsString = 'S')  then
          fDMAprovacao_Ped.prc_Gravar_Pedido_Processo('',fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger,
                                                      'F','','',fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
        //******

        fDMCadNotaFiscal.mPedidoAux.Next;
      end;

      //Vale 18/06/2014
      if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
      begin
        fDMCadNotaFiscal.mValeAux.First;
        while not fDMCadNotaFiscal.mValeAux.Eof do
        begin
          fDMCadNotaFiscal.prc_Atualiza_Vale(fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger);
          fDMCadNotaFiscal.mValeAux.Next;
        end;
      end;

      if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
        fDMCadNotaFiscal.mValeAux.EmptyDataSet;

      //Rec NF 03/09/2018
      fDMCadNotaFiscal.mRecNFAux.First;
      while not fDMCadNotaFiscal.mRecNFAux.Eof do
      begin
        fDMCadNotaFiscal.prc_Atualiza_RecNF(fDMCadNotaFiscal.mRecNFAuxID_RecNF.AsInteger);
        fDMCadNotaFiscal.mRecNFAux.Next;
      end;

      //14/02/2018  Ciex, avisar que existe GNRE ST, Difal ou Fundo de combate a probreza
      vObsGNRE := '';
      if fDMCadNotaFiscal.qParametros_NFeAVISA_GNRE.AsString = 'S' then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat)) > 0 then
          vObsGNRE := vObsGNRE + #13 + '  Existe GNRE ST na Nota!';
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat)) > 0 then
          vObsGNRE := vObsGNRE + #13 + '  Existe GNRE Difal na Nota!';
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat)) > 0 then
          vObsGNRE := vObsGNRE + #13 + '  Existe Combate a ProbrezaDifal na Nota!';
        if trim(vObsGNRE) <> '' then
          MessageDlg(vObsGNRE , mtInformation, [mbOk], 0);
      end;
      //***************

      vID_CFOP := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

      if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Active) then
        fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Nota Fiscal: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);

  //29/11/2016
  fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDAux,[loCaseInsensitive]);
  if not ckTotalDup.Checked then
  begin
    if not fnc_Duplicata then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal.Edit;
      exit;
    end;
    if not fnc_Movimento then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal.Edit;
      exit;
    end;
  end;
  //***********

  vMsgAux := '';
  fDMCadNotaFiscal.mVerReserva.First;
  while not fDMCadNotaFiscal.mVerReserva.Eof do
  begin
    vMsgAux := vMsgAux + #13 + 'ID. Material: ' + fDMCadNotaFiscal.mVerReservaID_Material.AsString + '   Cor: ' + fDMCadNotaFiscal.mVerReservaNome_Cor.AsString;
    fDMCadNotaFiscal.mVerReserva.Next;
  end;
  if trim(vMsgAux) <> '' then
    MessageDlg('*** Materiais abaixo com OC pendentes (está sendo lançada a nota de saída antes da Nota de Entrada)!' + #13 + vMsgAux , mtInformation, [mbOk], 0);

  //01/08/2018
  if trim(vMSGUnidExp) <> '' then
    MessageDlg(vMSGUnidExp , mtInformation, [mbOk], 0);
  //***********************

  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') or
     (fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S')) and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    FreeAndNil(fDMCadNotaFiscal_MP);

  if Ajuste then
    exit;

  TS_Consulta.TabEnabled    := True;
  prc_Habilitar_CamposNota;

  if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> vID_CFOP then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',vID_CFOP,[loCaseInsensitive]);

  if fDMCadNotaFiscal.cdsCFOPCOPIARNOTATRIANGULAR.AsString <> 'S' then
  begin
    NxDatePicker1.Date    := fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
    ckNaoEnviadas.Checked := True;
    prc_Consultar(0);
  end
  else
  begin
    prc_Consultar(vIDAux);
    prc_Posiciona_NotaFiscal;
  end;
end;

procedure TfrmCadNotaFiscal.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  vID_LocalAux  := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  ckTotalDup.Checked := False;
  ckTotalDup.Visible := False;
  ckEnviarComErro.Checked := False;
  ckEnviarComErro.Visible := False;
  if vID_LocalAux <= 0 then
    exit;

  fDMCadNotaFiscal.mPedidoAuxExcluir.EmptyDataSet;
  if fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S' then
    fDMCadNotaFiscal.mItensAlt.EmptyDataSet;
  fDMCadNotaFiscal.cdsPedido.Close;
  fDMCadNotaFiscal.vCopia_Igual := False;
  //vTerminal := 0;
  fDMCadNotaFiscal.vExcluir_Com_Est := False;
  fDMCadNotaFiscal.vExcluir_Dup_Est := False;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;
  fDMCadNotaFiscal.mRecNFAux.EmptyDataSet;
  if fDMCadNotaFiscal.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadNotaFiscal.cdsFilial.Last;
    vFilial      := fDMCadNotaFiscal.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadNotaFiscal.prc_Inserir(vTipo_Reg);
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse] then
    exit;

  fDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(0);

  fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString := fDMCadNotaFiscal.cdsParametrosESPECIE_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString   := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;
  prc_Funcao_Inserir;
  fDMCadNotaFiscal.cdsPedido_Tam.Close;
  fDMCadNotaFiscal.cdsPedido.Close;
  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);

  if (fDMCadNotaFiscal.cdsParametrosID_OPERACAO_VENDA.AsInteger > 0) and (rxdbOperacao.Visible) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger := fDMCadNotaFiscal.cdsParametrosID_OPERACAO_VENDA.AsInteger;
    if (trim(fDMCadNotaFiscal.cdsFilialFINALIDADE_PADRAO.AsString) <> '') and (not(fDMCadNotaFiscal.cdsFilialFINALIDADE_PADRAO.IsNull)) then
      fDMCadNotaFiscal.cdsNotaFiscalFINALIDADE.AsString := fDMCadNotaFiscal.cdsFilialFINALIDADE_PADRAO.AsString;
  end;
  DBEdit68.ReadOnly := True;
  DBEdit69.ReadOnly := True;
  DBEdit36.ReadOnly := True;
  DBEdit37.ReadOnly := True;
  DBEdit38.ReadOnly := True;
end;

procedure TfrmCadNotaFiscal.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  fDMEstoque       := TDMEstoque.Create(Self);
  fDMMovimento     := TDMMovimento.Create(Self);
  FDMCADNOTAFISCAL.cdsNotaFiscal_Consulta.AFTERSCROLL := prc_scroll;
  if fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.AfterScroll := prc_scroll_Itens;
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  SMDBGrid1.ClearFilter;
  
  vTipo_Reg := 'NTS';
  //IF incluido no dia 04/08/2016
  if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString <> 'S') then
    fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,0);

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;
  btnConsultarClick(Sender);

  gbxVendedor.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  Label99.Visible     := ((fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));
  DBEdit59.Visible    := ((fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));
  //Label71.Visible     := (fDMCadNotaFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString = 'S');
  if fDMCadNotaFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString = 'S' then
    StaticText1.Caption := 'Duplo Clique para Consultar    F3 Consultar Limite de Crédito';
  if fDMCadNotaFiscal.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S' then
    StaticText1.Caption := StaticText1.Caption + '   F12 Cons.Alt.Por Senha';

  btnMaoObra.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA.AsString = 'S');
  btnCopiarVale.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S');
  TS_Lei.TabVisible  := (fDMCadNotaFiscal.cdsParametrosUSA_SPED.AsString = 'S');
  prc_Ajustar_Grid_Itens;
  btnCopiarPedido_Fut.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  btnCopiarOS.Visible         := (fDMCadNotaFiscal.cdsParametrosUSA_COPIA_OS_NOTA.AsString = 'S');
  Label91.Visible             := (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat)) > 0);
  DBEdit50.Visible            := (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat)) > 0);

  btnCopiarSacola.Visible := (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S');
  pnlLocalEstoque.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  pnlTab_Preco.Visible    := (fDMCadNotaFiscal.qParametros_PedUSA_TAB_PRECO.AsString = 'S');
  Panel7.Visible          := ((pnlLocalEstoque.Visible) or (pnlTab_Preco.Visible));

  Label95.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S');
  DBEdit55.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S');

  btnAjusteCusto.Visible := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  Label102.Visible       := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  DBEdit62.Visible       := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  DBEdit63.Visible       := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  Label103.Visible       := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  DBEdit64.Visible       := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');

  DBCheckBox2.Visible    := (fDMCadNotaFiscal.qParametros_FinUSA_NGR.AsString = 'S');

  PrFaturamento1.Visible := (fDMCadNotaFiscal.qParametros_NFeUSA_PREFAT.AsString = 'S');

  btnCopiarRecNF.Visible := (fDMCadNotaFiscal.qParametros_NFeCOPIAR_RECNF.AsString = 'S'); 
end;

procedure TfrmCadNotaFiscal.prc_Consultar(ID: Integer);
begin                                                                                
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Close;
  fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.ctConsulta;
  if ID > 0 then
    fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' WHERE NT.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' WHERE TIPO_REG = ' + QuotedStr(vTipo_Reg);

    if CurrencyEdit1.AsInteger > 0 then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                             ' AND NT.NUMNOTA = ' + CurrencyEdit1.Text;

    if not(RxDBLookupCombo1.Text = '') then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                             ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if Trim(edtSerie.Text) <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' AND SERIE = ' + QuotedStr(edtSerie.Text);

    if NxDatePicker1.Text <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                          + ' AND NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText
                          + ' AND NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if Trim(Edit2.Text) <> '' then
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                          ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')' +
                                                          ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    if ckNaoEnviadas.Checked then
    begin
      fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText +
                                                           ' AND ((NT.NFECHAVEACESSO = ' + QuotedStr('') + ') OR (NT.NFECHAVEACESSO IS NULL))';
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Open;
end;

procedure TfrmCadNotaFiscal.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadNotaFiscal.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsBrowse]) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal.CancelUpdates;

  prc_Habilitar_CamposNota;

  fDMCadNotaFiscal.mSenha.EmptyDataSet;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  ckTotalDup.Checked := False;
  ckTotalDup.Visible := False;
  ckEnviarComErro.Checked := False;
  ckEnviarComErro.Visible := False;
end;

procedure TfrmCadNotaFiscal.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNotaFiscal.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
  vChaveNFe: String;
  vExcluir: boolean;
  fdmDatabase_NFeBD: TdmDatabase_NFeBD;
begin
  fDMCadNotaFiscal.mPedidoAuxExcluir.EmptyDataSet;
  ckTotalDup.Checked := False;
  ckTotalDup.Visible := False;
  ckEnviarComErro.Checked := False;
  ckEnviarComErro.Visible := False;
  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or not(fDMCadNotaFiscal.cdsNotaFiscal.Active) or
     (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
    exit;

  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '' then
  begin
    MessageDlg('*** Nota não pode ser alterada pois já possui chave de acesso!' , mtError, [mbOk], 0);
    exit;
  end;

  vExcluir := True;

  fDMCadNotaFiscal.mSenha.EmptyDataSet;

  fDMCadNotaFiscal.vExcluir_Com_Est := False;
  fDMCadNotaFiscal.vExcluir_Dup_Est := False;

  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;
  fDMCadNotaFiscal.mRecNFAux.EmptyDataSet;

  fDMCadNotaFiscal.cdsNotaEntrada.Close;

  //21/11/2015  verificar no nfebd se esta nota já foi enviada
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString) = '1') or (fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString = 'P')
    or (fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString = 'S') then
  begin
    try
      //fdmDatabase_NFeBD := TdmDatabase_NFeBD.Create(Self);
      fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString);
      fDMNFe := TDMNFe.Create(Self);
      ffNFe := TfNFe.Create(fNFe);
      try
        ffNfe.fDMCadNotaFiscal := fDMCadNotaFiscal;
        ffNfe.fDMNFe           := fDMNFe;
        ffNfe.prc_Configura_Tela_Alt;
        fDMNFE.vNovoProcesso := True;
        ffNfe.vGerar_Chave_Antiga := 'N';
        ffNFe.Gera_Chave(False);
        vChaveNFe := ffNFe.lbChaveAcesso.Caption;
        fDMNFE.qNFeNota.Close;
        fDMNFE.qNFeNota.ParamByName('CHAVE_ACESSO').AsString := vChaveNFe;
        fDMNFE.qNFeNota.Open;
        if not fDMNFE.qNFeNota.IsEmpty then
        begin
          ffNFe.Button7Click(ffNFe);
          if trim(ffNFe.lbNroProtocolo.Caption) <> '' then
            vExcluir := False;
        end;
      finally
        FreeAndNil(fDMNFe);
        FreeAndNil(ffNFe);
      end;
    except
    end;
    //FreeAndNil(fdmDatabase_NFeBD);
  end;
  if not vExcluir then
  begin
    MessageDlg('*** Nota não pode ser alterada, já está na Sefaz!' , mtInformation, [mbOk], 0);
    exit;
  end;
  //**************

  fDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(0);

  if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') then
  begin
    fDMCadNotaFiscal.mItensAlt.EmptyDataSet;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
      begin
        prc_Gravar_mItensAlt;
        uCalculo_NotaFiscal.prc_Gravar_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal);
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString);
  fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
  vCodAux := RxDBLookupCombo2.Text;
  if trim(vCodAux) <> '' then
    ckCalcular_Imp_Item.Visible := copy(vCodAux,1,1) = '3'
  else
    ckCalcular_Imp_Item.Visible := True;
  ckSomaFrete_II.Visible := ckCalcular_Imp_Item.Visible;
  if fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
    fDMCadNotaFiscal.prc_Abrir_NotaFiscal_ProdPrincipal(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0);
  fDMCadNotaFiscal.cdsPedido_Tam.Close;
  fDMCadNotaFiscal.cdsPedido.Close;
end;

procedure TfrmCadNotaFiscal.btnConfirmarClick(Sender: TObject);
var
  vIDAux: Integer;
  vAux: Real;
  vID_LocalAux: Integer;
  vFlag: Boolean;
  vNaoContDupl: Boolean;
  vAuxLim: Real;
  vObsGNRE: WideString;
begin
  fDMCadNotaFiscal.mVerReserva.EmptyDataSet;

  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;

  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.IsNull) then
    fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString := 'N';
  if (fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger <= 0) and (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
    if vID_LocalAux <= 0 then
      vID_LocalAux := 1;
    fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := 1;
  end;
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsVendedorCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) then
    fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString <> 'P')
    and (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat)) > 0) then
  begin
    MessageDlg('*** Tipo do representante não pode ter parte da comissão paga na nota!', mtInformation, [mbOk], 0);
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0',0));
  end;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.Clear;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS' then
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and
       (fDMCadNotaFiscal.cdsCondPgto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
    begin
      if (fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString = 'N') then
        fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := fDMCadNotaFiscal.cdsCondPgtoTIPO.AsString;
    end;
  end;

  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    if not(fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger;
  end;

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and
     (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger <= 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger := fDMCadNotaFiscal.cdsParametrosID_CONTA_PADRAO.AsInteger;

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and
     (fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger <= 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger;

  if fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger < 1 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := 0;
  end;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString := vTipo_Reg;
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and not(fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  //13/11/2015
  if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);
  //if fDMCadNotaFiscal.cdsClienteUF.AsString = 'EX' then
  //  fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 3
  //else
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '5') then
  //if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1
  else
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') or (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '7') then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 3
  else
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 2;
  //****************

  //20/08/2016  Verifica se a finalidade de devolução, foi informada a nota referenciada
  if (fDMCadNotaFiscal.cdsCFOPNFEFINALIDADE.AsString = '2') and (fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString <> '4') then
  begin
    MessageDlg('*** CFOP é de devolução, o campo NFe Finalidade tem que estar marcado como "Devolução/Retorno"', mtError, [mbOk], 0);
    RxDBComboBox4.SetFocus;
    exit;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '4' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_Ref.IsEmpty then
    begin
      MessageDlg('*** Finalidade é de devolução e não está informada a nota referenciada!' +#13 + #13 +
                 'Informar a nota que está sendo devolvida na aba "Notas Referenciadas" do sistema!', mtError, [mbOk], 0);
      RzPageControl2.ActivePage := ts_NotasRef;
      exit;
    end;
  end;
  //**************

  //23/07/2016
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.IsNull then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.AsInteger := fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger;

  //18/11/2015  Alertar sobre frete por conta do destinatário e sem valor
  if fDMCadNotaFiscal.cdsParametrosALERTA_FRETE_DEST.AsString = 'S' then
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '2') and (StrToFloat(FormatFloat('0.00,',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat)) <= 0) then
      if MessageDlg('Valor do frete não informado para o tipo FRETE Por Conta Destinatário, confirmar a nota assim mesmo??',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
  end;
  //**********************

  //08/12/2015  Alertar sobre o cálculo da diferença de alíquotas
  if (StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat)) > 0) then
    if MessageDlg('O sistema calculou a diferença de alíquotas do ICMS, confirma?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;

  //**********************

  //Verifica a conta nas parcelas
  if (fDMCadNotaFiscal.qParametros_FinCONTROLAR_BANCO_REM_DEP.AsString = 'S') then
  begin
    vFlag := True;
    fDMCadNotaFiscal.vMsgErroParc := '';
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      if (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger) and (fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0) then
      begin
        if MessageDlg('Nas parcelas tem o banco diferente, confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        begin
          vFlag := False;
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Last;
        end;
      end
      else
      begin
        fDMCadNotaFiscal.vMSGNotaFiscal := '';
        if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsTipoCobrancaID.AsInteger then
          fDMCadNotaFiscal.cdsTipoCobranca.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger,[loCaseInsensitive]);
        if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsContasID.AsInteger then
            fDMCadNotaFiscal.cdsContas.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger,[loCaseInsensitive]);
          if (fDMCadNotaFiscal.cdsTipoCobrancaGERARBOLETO.AsString = 'S') and (fDMCadNotaFiscal.cdsContasGERAR_BOLETO.AsString <> 'S') then
            fDMCadNotaFiscal.vMSGNotaFiscal := '*** Banco ' + fDMCadNotaFiscal.cdsContasNOME.AsString + ' não está marcado para gerar boleto!'
          else
          if (fDMCadNotaFiscal.cdsTipoCobrancaDEPOSITO.AsString = 'S') and (fDMCadNotaFiscal.cdsContasGERAR_DEPOSITO.AsString <> 'S') then
            fDMCadNotaFiscal.vMSGNotaFiscal := '*** Banco ' + fDMCadNotaFiscal.cdsContasNOME.AsString + ' não está marcado para usar o tipo de cobrança depósito!';
          if (fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger) then
            fDMCadNotaFiscal.vMsgErroParc   := '*** Banco do cliente diferente do especificado na nota!';
        end;
        if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
        begin
          vFlag := False;
          MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Last;
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
    if not vFlag then
      exit
    else
    if trim(fDMCadNotaFiscal.vMsgErroParc) <> '' then
    begin
      if MessageDlg(fDMCadNotaFiscal.vMsgErroParc +  ' Confirmar nota?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end;
  end;

  //04/02/2014  Controlar o valor limite do crédito
  //Alerta valores em atraso 11/05/2015
  if (fDMCadNotaFiscal.cdsParametrosALERTA_VLR_ATRASO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) and
     (fDMCadNotaFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString <> 'S') then
  begin
    vAux := fnc_Limite_Credito(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,0,date);
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(fDMCadNotaFiscal.cdsParametrosSENHA_CREDITO.AsString) = EmptyStr) then
    begin
      if MessageDlg('Cliente possui título em atraso, confirma a nota?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end
    else
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(fDMCadNotaFiscal.cdsParametrosSENHA_CREDITO.AsString) <> '') then
    begin
      if not fnc_senha('ATR','SENHA_CREDITO','','Valor em atraso: ' + FormatFloat('###,###,##0.00',vAux),'','',0,0) then
        exit;
    end;
  end
  else
  if (fDMCadNotaFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClienteVLR_LIMITE_CREDITO.AsFloat)) > 0) and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and
     (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) then
  begin
    vAux    := fnc_Limite_Credito(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,0,0);
    vAux    := StrToFloat(FormatFloat('0.00',vAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
    vAuxLim := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClienteVLR_LIMITE_CREDITO.AsFloat - vAux));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClienteVLR_LIMITE_CREDITO.AsFloat)) <= StrToFloat(FormatFloat('0.00',vAux)) then
    begin
      if not fnc_senha('LCR','SENHA_CREDITO','',
                       'Limite de Crédito: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsClienteVLR_LIMITE_CREDITO.AsFloat),
                       'Limite Utilizado:' + FormatFloat('###,###,##0.00',vAux),
                       'Limite Disponível ==> ' + FormatFloat('###,###,##0.00',vAuxLim),0,StrToFloat(FormatFloat('0.00',vAuxLim))) then
        exit;
    end;
  end;
  //*******************

  //colocar aqui para somar consumo
  //if fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'S' then
    //prc_Verificar_Consumo(fDMCadNotaFiscal);

  fDMCadNotaFiscal.mMaterialConsumo.EmptyDataSet;
  fDMCadNotaFiscal.mMaterialConsumo.IndexFieldNames := 'ID_Material';
  if trim(fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString) = '' then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := 'N';

  vNaoContDupl := ckTotalDup.Checked;
  if not ckTotalDup.Visible then
    vNaoContDupl := False;

  if fDMCadNotaFiscal.fnc_Possui_Erro(vNaoContDupl) then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  if trim(vMSgNotificacao) <> '' then
    MessageDlg(vMSgNotificacao, mtInformation, [mbOk], 0);

  //30/07/2014
  if (fDMCadNotaFiscal.cdsParametrosUSA_CONSUMO.AsString = 'S') and (fDMCadNotaFiscal.vExiste_MObra = 'S') then
  begin
    fDMCadNotaFiscal.vMSGNotaFiscal := '';
    fDMCadNotaFiscal.mMaterialConsumo.First;
    while not fDMCadNotaFiscal.mMaterialConsumo.Eof do
    begin
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdConsumo.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mMaterialConsumoQtdJaInformada.AsFloat)) then
        fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + #13 + '*** Material com consumo informado diferente do calculado (' + fDMCadNotaFiscal.mMaterialConsumoNomeMaterial.AsString + ')';
      fDMCadNotaFiscal.mMaterialConsumo.Next;
    end;
    if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    begin
      if MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal + #13 + #13 + ' Confirma?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end;
  end;

  //soma quantidade total dos produtos
  if (fDMCadNotaFiscal.qParametros_NFeIMP_QTDE_PRODUTO.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalQTD_TOTAL_PRODUTOS.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P' then
      begin
         fDMCadNotaFiscal.cdsNotaFiscalQTD_TOTAL_PRODUTOS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalQTD_TOTAL_PRODUTOS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;

  end;

  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  //aqui 30/11/2016

  if fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger <= 0 then
  begin
    if vTriangular_Copiar then
      uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal,'1-NORMAL')
    else
    begin
      ffrmCadNotaFiscal_Confirma := TfrmCadNotaFiscal_Confirma.Create(self);
      ffrmCadNotaFiscal_Confirma.fDMCadNotaFiscal := fDMCadNotaFiscal;
      try
        if Verifica_ConexaoInternet then
        begin
          ffrmCadNotaFiscal_Confirma.btNormalClick(ffrmCadNotaFiscal_Confirma);
        end
        else
          ffrmCadNotaFiscal_Confirma.ShowModal;
      except
        ffrmCadNotaFiscal_Confirma.ShowModal;
      end;
      FreeAndNil(ffrmCadNotaFiscal_Confirma);
    end;
  end
  else
    uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal);

  //29/11/2016  aqui  
  //try
    fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDAux,[loCaseInsensitive]);
    prc_Gravar_Registro;
    RzPageControl1.ActivePage := TS_Consulta;
    if vIDAux > 0 then
      fDMCadNotaFiscal.prc_Localizar(vIDAux);
    if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0) then
      prc_Gravar_Triangular;

  //29/11/2016  aqui
  //except
  //  on e: Exception do
  //  begin
  //    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
  //    raise;
  //  end;
  //end;
  ckTotalDup.Checked := False;
  ckTotalDup.Visible := False;
  ckEnviarComErro.Checked := False;
  ckEnviarComErro.Visible := False;
end;

procedure TfrmCadNotaFiscal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal.prc_Posiciona_NotaFiscal;
begin
  fDMCadNotaFiscal.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_Tam.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Tam.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Open;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Open;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Open;
  vFilial      := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger > 0 then
  begin
    if (fDMCadNotaFiscal.cdsCFOP.Active) then
    begin
      fDMCadNotaFiscal.cdsCFOP.First;
      if fDMCadNotaFiscal.cdsCFOPENTRADASAIDA.AsString <> fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString then
        fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
    end
    else
      fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString);
  end;
end;

function TfrmCadNotaFiscal.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
        (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEAMBIENTE.AsString = '2' then
  begin
    Result := True;
    exit;
  end;
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '' then
    exit;
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECODBARRA_CONTINGENCIA.AsString) <> '' then
    exit;
  Result := True;
end;

procedure TfrmCadNotaFiscal.btnExcluir_ItensClick(Sender: TObject);
var
  vSacola: Boolean;
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Active) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger < 1) then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger > 0) then
  begin
    vSacola := True;
    if not fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Locate('ITEM_ORIGINAL',fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger,[loCaseInsensitive]) then
    begin
      //06/10/2017
      //MessageDlg('*** Produto (Sacola) não encontrado!' , mtError, [mbOk], 0);
      //exit;
      vSacola := False;
    end;
    //06/10/2017  Foi colocada essa variável no dia 06/10/2017 para deixar excluir o item que não é da sacola.
    if vSacola then
    begin
      if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID_PRODUTO.AsInteger,[loCaseInsensitive]) then
        exit;
      if MessageDlg('Deseja excluir os Itens da Sacola: ' + fDMCadNotaFiscal.cdsProdutoNOME.AsString,mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        prc_Excluir_ItensSacola;
      end;
      exit;
    end;
  end;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
  begin
    if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
    begin
      fDMCadNotaFiscal.mValeAux.Insert;
      fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
      fDMCadNotaFiscal.mValeAux.Post;
    end;
  end;
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and not(fDMCadNotaFiscal.mPedidoAuxExcluir.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger])) then
  begin
     fDMCadNotaFiscal.mPedidoAuxExcluir.Insert;
     fDMCadNotaFiscal.mPedidoAuxExcluirID_pedido.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
     fDMCadNotaFiscal.mPedidoAuxExcluir.Post;
  end;
  if not fDMCadNotaFiscal.cdsNotaFiscal_Copia.IsEmpty then
  begin
    if not(fDMCadNotaFiscal.mRecNFAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger])) then
    begin
      fDMCadNotaFiscal.mRecNFAux.Insert;
      fDMCadNotaFiscal.mRecNFAuxID_RecNF.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger;
      fDMCadNotaFiscal.mRecNFAux.Post;
    end;
  end;

  fDMCadNotaFiscal.prc_Excluir_Item;

  btnCalcular_ValoresClick(Sender);
  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
  fDMCadNotaFiscal.cdsNotaEntrada.Close;
end;

procedure TfrmCadNotaFiscal.btnInserir_ItensClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadNotaFiscal.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Cliente sem UF!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  fDMCadNotaFiscal.prc_Inserir_Itens;
  fDMCadNotaFiscal.vState_Item := 'I';

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal       := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Itens.lblOperacao.Visible    := lblOperacao.Visible;
  ffrmCadNotaFiscal_Itens.lblFinalidade.Visible  := lblFinalidade.Visible;
  ffrmCadNotaFiscal_Itens.rxdbOperacao.Visible   := rxdbOperacao.Visible;
  ffrmCadNotaFiscal_Itens.rxcbFinalidade.Visible := rxcbFinalidade.Visible;
  ffrmCadNotaFiscal_Itens.vNotaSelecionada       := False;
  ffrmCadNotaFiscal_Itens.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger > 0) then
    fDMCadNotaFiscal.prc_Excluir_Item;

  SMDBGrid2.DisableScroll;
  btnCalcular_ValoresClick(Sender);
  SMDBGrid2.EnableScroll;
  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.RzPageControl1Change(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit, dsInsert] then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      prc_Opcao_Prazo;
      fDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
      btnAdicao.Visible := (copy(RxDBLookupCombo2.Text,1,1) = '3');
      btnVlr_Outras_Despesas.Visible := (copy(RxDBLookupCombo2.Text,1,1) = '3');
      pnlLocalEstoque.Enabled := (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E');
    end;
  end
  else
  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
             (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_NotaFiscal;
      btnAdicao.Visible := (copy(RxDBLookupCombo2.Text,1,1) = '3');
      btnVlr_Outras_Despesas.Visible := (copy(RxDBLookupCombo2.Text,1,1) = '3');
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
        fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S')
      else
        fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E');

      //05/12/2018  
      fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);
      prc_Opcao_Prazo;
      prc_Opcao_Triang;
      fDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
      pnlLocalEstoque.Enabled := (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E');
      //04/08/2016
      if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger > 0 then
        if (fDMCadNotaFiscal.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S') then
          fDMCadNotaFiscal.prc_Abrir_cdsCliente(vTipo_Reg,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger);
////////////// testa se produto é filtrado por cliente
      //02/06/2016  incluido a filial
      if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
        fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////
    end;
  end;
end;

procedure TfrmCadNotaFiscal.btnAlterar_ItensClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger <= 0) then
    exit;

  if (fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger > 0) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Locate('ITEM_ORIGINAL',fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger,[loCaseInsensitive]) then
    begin
      if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipalID_PRODUTO.AsInteger,[loCaseInsensitive]) then
        exit;
      MessageDlg('*** Item não pode ser alterado, pois pertence a sacola: ' + fDMCadNotaFiscal.cdsProdutoNOME.AsString, mtInformation, [mbOk], 0);
      exit;
    end;
  end;
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;

  fDMCadNotaFiscal.vID_CFOP := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
  fDMCadNotaFiscal.vState_Item := 'E';

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.vBaseIcms_Cre := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
  ffrmCadNotaFiscal_Itens.vVlrIcms_Cre  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));

  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_NTE.AsInteger > 0 then
    ffrmCadNotaFiscal_Itens.DBEdit2.ReadOnly := True
  else
    ffrmCadNotaFiscal_Itens.DBEdit2.ReadOnly := False;
  ffrmCadNotaFiscal_Itens.ShowModal;

  ffrmCadNotaFiscal_Itens.lblOperacao.Visible    := lblOperacao.Visible;
  ffrmCadNotaFiscal_Itens.lblFinalidade.Visible  := lblFinalidade.Visible;
  ffrmCadNotaFiscal_Itens.rxdbOperacao.Visible   := rxdbOperacao.Visible;
  ffrmCadNotaFiscal_Itens.rxcbFinalidade.Visible := rxcbFinalidade.Visible;

  FreeAndNil(ffrmCadNotaFiscal_Itens);
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  btnCalcular_ValoresClick(Sender);

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID;Item',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,vItemAux]),[locaseinsensitive]);

  //30/07/2013
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnBuscar_Obs_AuxClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Obs := TfrmCadNotaFiscal_Obs.Create(self);
  ffrmCadNotaFiscal_Obs.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Obs.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Obs);
end;

procedure TfrmCadNotaFiscal.btnDescontoClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Desconto := TfrmCadNotaFiscal_Desconto.Create(self);
  ffrmCadNotaFiscal_Desconto.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Desconto.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnExcluir_NotaRefClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Ref.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_RefID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Ref.Delete;
end;

procedure TfrmCadNotaFiscal.btnInserir_NotaRefClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadNotaFiscal.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Cliente sem UF!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNotaFiscal.prc_Inserir_Ref;

  ffrmCadNotaFiscal_Ref := TfrmCadNotaFiscal_Ref.Create(self);
  ffrmCadNotaFiscal_Ref.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Ref.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Ref);
end;

procedure TfrmCadNotaFiscal.btnAlterar_NotaRefClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Ref.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_RefID.AsInteger <= 0) then
    Exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Ref.Edit;

  ffrmCadNotaFiscal_Ref := TfrmCadNotaFiscal_Ref.Create(self);
  ffrmCadNotaFiscal_Ref.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Ref.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Ref);
end;

procedure TfrmCadNotaFiscal.btnOutrosValoresClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);

  ffrmCadNotaFiscal_OutrasDesp := TfrmCadNotaFiscal_OutrasDesp.Create(self);
  ffrmCadNotaFiscal_OutrasDesp.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_OutrasDesp.TS_NotaEntrada.TabVisible := False;
  ffrmCadNotaFiscal_OutrasDesp.RzPageControl1.ActivePage := ffrmCadNotaFiscal_OutrasDesp.TS_NotaFiscal;
  ffrmCadNotaFiscal_OutrasDesp.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_OutrasDesp);

  if (copy(RxDBLookupCombo2.Text,1,1) <> '3') and (copy(RxDBLookupCombo2.Text,1,1) <> '7') then
    btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnCalcular_ValoresClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  fDMCadNotaFiscal.qParametros_NFe.Close;
  fDMCadNotaFiscal.qParametros_NFe.Open;
  SMDBGrid2.DisableScroll;
  prc_Calcular_Desconto_Novo(fDMCadNotaFiscal,False);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaFiscal.prc_Posicionar_Cliente;
begin
  fDMCadNotaFiscal.vAliqIcms := 0;
  fDMCadNotaFiscal.vSiglaUF  := '';
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsUFUF.AsString  <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsVendedorCODIGO.AsInteger <>
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) then
    fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger) then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadNotaFiscal.vAliqIcms := fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat;
  fDMCadNotaFiscal.vSiglaUF  := fDMCadNotaFiscal.cdsClienteUF.AsString;
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.IndexFieldNames := 'NOME';
  StaticText2.Visible := True;
  RxDBLookupCombo3.Tag := 0;
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo3.Tag := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmCadNotaFiscal.prc_Habilitar_CamposNota;
begin
  pnlItem.Enabled            := not(pnlItem.Enabled);
  pnlDadosAdicionais.Enabled := not(pnlDadosAdicionais.Enabled);
  pnlNotaRef.Enabled         := not(pnlNotaRef.Enabled);
  pnlExportacao.Enabled      := not(pnlExportacao.Enabled);

  btnDesconto.Enabled         := not(btnDesconto.Enabled);
  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnImp_Boleto.Enabled       := not(btnImp_Boleto.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnAjusteCusto.Enabled      := not(btnAjusteCusto.Enabled);

  btnInserir_Itens.Enabled    := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled    := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled    := not(btnExcluir_Itens.Enabled);

  gbxIcms.Enabled             := not(gbxIcms.Enabled);
  gbxIcmsSimples.Enabled      := not(gbxIcmsSimples.Enabled);
  gbxSubstituicao.Enabled     := not(gbxSubstituicao.Enabled);
  gbxTransfIcms.Enabled       := not(gbxTransfIcms.Enabled);
  gbxTributos.Enabled         := not(gbxTributos.Enabled);
  rxdbCondicaoPgto.Enabled    := not(rxdbCondicaoPgto.Enabled);
  rxdbTipoCobranca.Enabled    := not(rxdbTipoCobranca.Enabled);
  rxdbConta.Enabled           := not(rxdbConta.Enabled);
  rxdbConta_Orcamento.Enabled := not(rxdbConta_Orcamento.Enabled);
  DBEdit5.Enabled             := not(DBEdit5.Enabled);
  DBEdit55.Enabled            := not(DBEdit55.Enabled);

  DBMemo1.ReadOnly            := not(DBMemo1.ReadOnly);
  Panel5.Enabled              := not(Panel5.Enabled);

  SMDBGrid_Dupl2.ReadOnly     := not(SMDBGrid_Dupl2.ReadOnly);

  btnCopiarNotaDevolucao.Enabled := not(btnCopiarNotaDevolucao.Enabled);
  btnCopiarPedido.Enabled        := not(btnCopiarPedido.Enabled);
  btnCopiarPedido_Fut.Enabled    := not(btnCopiarPedido_Fut.Enabled);
  btnMaoObra.Enabled             := not(btnMaoObra.Enabled);
  btnCopiarVale.Enabled          := not(btnCopiarVale.Enabled);
  btnCopiarOS.Enabled            := not(btnCopiarOS.Enabled);
  btnCopiarSacola.Enabled        := not(btnCopiarSacola.Enabled);
  btnCopiarRecNF.Enabled         := not(btnCopiarRecNF.Enabled);

  pnlTransporte.Enabled    := not(pnlTransporte.Enabled);
  pnlVendedor.Enabled      := not(pnlVendedor.Enabled);
  pnlCliTriangular.Enabled := not(pnlCliTriangular.Enabled);

  btnGerarParcelas.Enabled     := not(btnGerarParcelas.Enabled);
  btnExcluirParcelas.Enabled   := not(btnExcluirParcelas.Enabled);
  RzBitBtn1.Enabled            := not(RzBitBtn1.Enabled);
  btnBuscar_Obs_Aux.Enabled    := not(btnBuscar_Obs_Aux.Enabled);
  RzMenuToolbarButton1.Enabled := not(RzMenuToolbarButton1.Enabled);

  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  RxDBComboBox1.Enabled     := not(RxDBComboBox1.Enabled);

  Panel2.Enabled            := not(Panel2.Enabled);
end;

procedure TfrmCadNotaFiscal.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty then
    exit;

  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) = '' then
    Background := clYellow
  else
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString) = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEDENEGADA.AsString) = 'S' then
  begin
    Background  := $000080FF;
    AFont.Color := clWhite;
  end
  else
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEAMBIENTE.AsString) = '2' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadNotaFiscal.rxcbTipo_NotaEnter(Sender: TObject);
begin
  case rxcbTipo_Nota.ItemIndex of
    0: vTipoNotaAnt := 'S';
    1: vTipoNotaAnt := 'E';
  end;
end;

procedure TfrmCadNotaFiscal.rxcbTipo_NotaExit(Sender: TObject);
var
  vAux: String;
begin
  case rxcbTipo_Nota.ItemIndex of
    0: vAux := 'S';
    1: vAux := 'E';
  end;
  if vAux <> vTipoNotaAnt then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP(vAux);
  pnlLocalEstoque.Enabled := (vAux = 'E');
end;

function TfrmCadNotaFiscal.fnc_Cancelar: Boolean;
var
  vDupAux : String;
begin
  Result := True;
  fDMCadNotaFiscal.vMSGNotaFiscal := '';
  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + '*** Não existe nota selecionada';
  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '' then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + '*** Nota Fiscal sem a chave de acesso!';
  if fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + '*** Nota Fiscal já cancelada!';
  //28/06/2018
  vDupAux := fnc_Duplicata_Enviada_Banco;
  if vDupAux = 'R' then
    fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + '*** Nota já enviada já gerado o Boleto e Enviado ao Banco, favor verificar!';
  if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    Result := False
  else
  if vDupAux = 'N' then
  begin
    if MessageDlg('Nota com Nosso Número Gerado ou Boleto Impresso!' + #13 + #13 + 'Confirma Cancelamento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    begin
      Result := False;
      fDMCadNotaFiscal.vMSGNotaFiscal := fDMCadNotaFiscal.vMSGNotaFiscal + '*** Nota com boleto gerado!';
    end;
  end;
end;

procedure TfrmCadNotaFiscal.prc_Cancelamento(Cancelar: Boolean);
var
  vPedAux: Integer;
  vID_CliAux: Integer;
begin
  //03/10/2015 na versão .889 ou superior passou essas funções para trigger
  //fDMCadNotaFiscal.Excluir_Duplicata;
  //fDMCadNotaFiscal.Excluir_ExtComissao;
  //fDMCadNotaFiscal.prc_Excluir_Financeiro;
  //****************

  vID_CliAux := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
    fDMCadNotaFiscal.mValeAux.EmptyDataSet;
  fDMCadNotaFiscal.mRecNFAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.eof do
  begin
    vPedAux := 0;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
      vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger
    else
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0 then
      vPedAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger;
    if (vPedAux > 0) and not (fDMCadNotaFiscal.mPedidoAux.FindKey([vPedAux])) then
    begin
      fDMCadNotaFiscal.mPedidoAux.Insert;
      fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger := vPedAux;
      fDMCadNotaFiscal.mPedidoAux.Post;
    end;
    //Vale 18/06/2014
    if (fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
    begin
      if not(fDMCadNotaFiscal.mValeAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger])) then
      begin
        fDMCadNotaFiscal.mValeAux.Insert;
        fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger;
        fDMCadNotaFiscal.mValeAux.Post;
      end;
    end;

    //Recibo 03/09/2018
    if not fDMCadNotaFiscal.cdsNotaFiscal_Copia.IsEmpty then
    begin
      if not(fDMCadNotaFiscal.mRecNFAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger])) then
      begin
        fDMCadNotaFiscal.mRecNFAux.Insert;
        fDMCadNotaFiscal.mRecNFAuxID_RecNF.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger;
        fDMCadNotaFiscal.mRecNFAux.Post;
      end;
    end;

    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger > 0 then
      prc_Voltar_Vale;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;

  //Atualiza Status do pedido
  fDMCadNotaFiscal.mPedidoAux.First;
  while not fDMCadNotaFiscal.mPedidoAux.Eof do
  begin
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.Close;
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
    fDMCadNotaFiscal.sdsPrc_Atualiza_Status_Ped.ExecSQL;
    fDMCadNotaFiscal.mPedidoAux.Next;
  end;

  if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString = 'S' then
  begin
    fDMCadNotaFiscal.mValeAux.First;
    while not fDMCadNotaFiscal.mValeAux.Eof do
    begin
      fDMCadNotaFiscal.prc_Atualiza_Vale(fDMCadNotaFiscal.mValeAuxID_Vale.AsInteger);
      fDMCadNotaFiscal.mValeAux.Next;
    end;
  end;

  fDMCadNotaFiscal.mRecNFAux.First;
  while not fDMCadNotaFiscal.mRecNFAux.Eof do
  begin
    fDMCadNotaFiscal.prc_Atualiza_RecNF(fDMCadNotaFiscal.mRecNFAuxID_RecNF.AsInteger);
    fDMCadNotaFiscal.mRecNFAux.Next;
  end;
  
  fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.Close;
  fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.ParamByName('C_ID').AsInteger := vID_CliAux;
  fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.ExecSQL;
end;

procedure TfrmCadNotaFiscal.SpeedButton1Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
end;

procedure TfrmCadNotaFiscal.SpeedButton2Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTransportadora.Close;
  fDMCadNotaFiscal.cdsTransportadora.Open;
end;

procedure TfrmCadNotaFiscal.SpeedButton4Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.Close;
  fDMCadNotaFiscal.cdsCFOP.Open;
end;

procedure TfrmCadNotaFiscal.SpeedButton5Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsVendedor.Close;
  fDMCadNotaFiscal.cdsVendedor.Open;
end;

procedure TfrmCadNotaFiscal.SpeedButton6Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCondPgto.Close;
  fDMCadNotaFiscal.cdsCondPgto.Open;
end;

procedure TfrmCadNotaFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNotaFiscal.cdsNotaFiscal);
end;

procedure TfrmCadNotaFiscal.pnlClienteEnter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames := 'CODCFOP';
end;

procedure TfrmCadNotaFiscal.btnCopiarNotaDevolucaoClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.cdsProduto.Close;
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente
  else
    fDMCadNotaFiscal.cdsProduto.Open;

  fDMCadNotaFiscal.vID_CFOP := 0;
  prc_Posicionar_Cliente;
  if fDMCadNotaFiscal.cdsParametrosID_OPERACAO_BENEF_RET.AsInteger > 0 then
    uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsParametrosID_OPERACAO_BENEF_RET.AsInteger,'O');

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada := TfrmSel_NotaEntrada.Create(self);
  ffrmSel_NotaEntrada.Tag := 0;
  ffrmSel_NotaEntrada.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_NotaEntrada.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_NotaEntrada.ShowModal;
  FreeAndNil(ffrmSel_NotaEntrada);
  FreeAndNil(ffrmCadNotaFiscal_Itens);
  prc_Opcao_Prazo;
end;

procedure TfrmCadNotaFiscal.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaFiscal.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaFiscal.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnCopiarPedidoClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0) and (fDMCadNotaFiscal.qParametros_NFePERMITE_IMPORTAR_S_CLIENTE.AsString <> 'S')  then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  if (fDMCadNotaFiscal.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'N') and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0) then
  begin
    MessageDlg('*** CFOP não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID_PEDIDO',fDMCadNotaFiscal.cdsPedidoID.AsInteger,[loCaseInsensitive]) then


  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  if (fDMCadNotaFiscal.qParametros_NFeUSA_SEL_PEDIDO_TAM.AsString = 'S') and (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') then
  begin
    ffrmSel_Pedido_Tam := TfrmSel_Pedido_Tam.Create(self);
    ffrmSel_Pedido_Tam.vTipo        := 'NTS';  //para distinguir do vale 'VAL'
    ffrmSel_Pedido_Tam.vTipo_RegPed := 'P';
    ffrmSel_Pedido_Tam.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    ffrmSel_Pedido_Tam.fDMCadNotaFiscal        := fDMCadNotaFiscal;
    ffrmSel_Pedido_Tam.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
    ffrmSel_Pedido_Tam.ShowModal;
    FreeAndNil(ffrmSel_Pedido_Tam);
  end
  else
  begin
    ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
    ffrmSel_Pedido.vTipo        := 'NTS';  //para distinguir do vale 'VAL'
    ffrmSel_Pedido.vTipo_RegPed := 'P';
    ffrmSel_Pedido.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    ffrmSel_Pedido.fDMCadNotaFiscal        := fDMCadNotaFiscal;
    ffrmSel_Pedido.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
    ffrmSel_Pedido.ShowModal;
    FreeAndNil(ffrmSel_Pedido);
  end;
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
  if fDMCadNotaFiscal.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger > 0 then
  begin
    rxdbCondicaoPgto.ReadOnly   := (fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 1);
    btnAlterar_CondPgto.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 1);
  end
  else
  begin
    rxdbCondicaoPgto.ReadOnly   := False;
    btnAlterar_CondPgto.Visible := False;
  end
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo3Exit(Sender: TObject);
begin
  StaticText2.Visible := False;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  prc_Verifica_Limite(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,fDMCadNotaFiscal.cdsClienteVLR_LIMITE_CREDITO.AsFloat);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> RxDBLookupCombo3.Tag) then
  begin
    if (trim(fDMCadNotaFiscal.cdsClienteCARIMBO.AsString) <> '') then
      fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString := fDMCadNotaFiscal.cdsClienteCARIMBO.AsString
    else
      fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;
  end;
  if (fDMCadNotaFiscal.qParametros_NFeENDERECO_ENTREGA_BRANCO.AsString = 'S') and (fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString <> '') then
    fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.Clear;
end;

procedure TfrmCadNotaFiscal.RzBitBtn1Click(Sender: TObject);
begin
  ffrmCadNotaFiscal_OutrosDados := TfrmCadNotaFiscal_OutrosDados.Create(self);
  ffrmCadNotaFiscal_OutrosDados.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_OutrosDados.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_OutrosDados);
end;

procedure TfrmCadNotaFiscal.btnAtualizar_EstoqueClick(Sender: TObject);
var
  vID_Estoque: Integer;
  vOpcao_Est: String;
  vGerar_Est: String;
  vGravar: Boolean;
  vGeraCusto: String;
  vFlag: Boolean;
begin
  if not fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active then
  begin
    MessageDlg('*** Não foi gerada a consulta!', mtError, [mbOk], 0);
    exit;
  end;

  vOpcao_Est := InputBox('Atualizar Estoque','Informe M=Matéria Prima  P=Produto  A=Ambos', '');
  vOpcao_Est := UpperCase(vOpcao_Est);
  if (vOpcao_Est <> 'M') and (vOpcao_Est <> 'P') and (vOpcao_Est <> 'A') then
  begin
    MessageDlg('*** Opção incorreta!', mtError, [mbOk], 0);
    exit;
  end;
  vGerar_Est := InputBox('Atualizar Estoque','S=Gerar estoque somente dos que não tem ID   N=Gera todos', '');
  vGerar_Est := UpperCase(vGerar_Est);
  if (vGerar_Est <> 'S') and (vGerar_Est <> 'N') then
  begin
    MessageDlg('*** Opção incorreta!', mtError, [mbOk], 0);
    exit;
  end;

  //25/01/2014 aqui
  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((vOpcao_Est = 'M') or (vOpcao_Est = 'A')) then
    fDMCadNotaFiscal_MP := TDMCadNotaFiscal_MP.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Eof do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger > 0 then
      begin
        prc_Posiciona_NotaFiscal;
        if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and
           (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and ((vOpcao_Est = 'M') or (vOpcao_Est = 'A')) then
          fDMCadNotaFiscal.prc_Excluir_NotaFiscal_MP;

        if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString <> 'S') and (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString <> 'S') then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
          while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
          begin
            if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger then
              fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);

            if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and
               (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and
               ((vOpcao_Est = 'M') or (vOpcao_Est = 'A')) then
            begin
              if fDMCadNotaFiscal.cdsCFOPGERAR_ESTOQUE_MP.AsString = 'S' then
              begin
                fDMCadNotaFiscal_MP.fDMCadNotaFiscal := fDMCadNotaFiscal;
                fDMCadNotaFiscal_MP.prc_Abrir_NotaFiscal_MP(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
                fDMCadNotaFiscal_MP.fDMEstoque       := fDMEstoque;
                fDMCadNotaFiscal_MP.prc_Le_Produto_Consumo;
                //fDMCadNotaFiscal_MP.prc_Le_mMaterial;
              end;
            end;
            vGravar := True;
            if vGerar_Est = 'S' then
            begin
              if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger > 0) then
                vGravar := False
            end;
            //23/01/2018
            vFlag := False;
            uCalculo_NotaFiscal.prc_Calcular_Custo_Total(fDMCadNotaFiscal);
            if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat)) <> StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total)) then
            begin
              vFlag := True;
              fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
              fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',uCalculo_NotaFiscal.vVlrCusto_Total));
              fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
            end;
            //*************

            //if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger <= 0) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.IsNull)) and
            if (vGravar) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S') then
            begin
              vGeraCusto := 'N';
              if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E') and (fDMCadNotaFiscal.cdsCFOPGERAR_CUSTO_MEDIO.AsString = 'S') then
                vGeraCusto := 'S';

              if (vOpcao_Est = 'P') or (vOpcao_Est = 'A') then
              begin
                vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,
                                                             fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NTS',
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString,
                                                             fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,
                                                             fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat,0,'',
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,
                                                             vGeraCusto,uCalculo_NotaFiscal.vVlrCusto_Total);  //ver aqui sobre Lote Controle  04/11/2015

                fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
                fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
                fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
                fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);
                vFlag := False;
              end;
            end;
            if vFlag then
              fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);

            fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
          end;

          //25/01/2014 aqui
          if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and ((vOpcao_Est = 'M') or (vOpcao_Est = 'A')) then
          begin
            fDMCadNotaFiscal_MP.prc_Le_mMaterial;
          end;
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Next;
    end;
  except
    on e: Exception do
      raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
  end;

  //25/01/2014 aqui
  if (fDMCadNotaFiscal.cdsParametrosBAIXA_ESTOQUE_MP.AsString = 'F') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and ((vOpcao_Est = 'M') or (vOpcao_Est = 'A')) then
    FreeAndNil(fDMCadNotaFiscal_MP);

  ShowMessage('Atualização concluída!');
  Screen.Cursor := crDefault;
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmConsPessoa_Fin: TfrmConsPessoa_Fin;
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end
  else
  if (Key = Vk_F5) and (RxDBLookupCombo3.Text <> '') then
  begin
    ffrmConsPessoa_Fin := TfrmConsPessoa_Fin.Create(self);
    ffrmConsPessoa_Fin.vID_Pessoa_Cons := RxDBLookupCombo3.KeyValue;
    ffrmConsPessoa_Fin.Label2.Caption  := RxDBLookupCombo3.Text;
    ffrmConsPessoa_Fin.ShowModal;
    FreeAndNil(ffrmConsPessoa_Fin);
  end;
end;

procedure TfrmCadNotaFiscal.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Active) then
  begin
    ffrmConsNotaFiscal_NDevol := TfrmConsNotaFiscal_NDevol.Create(self);
    ffrmConsNotaFiscal_NDevol.fDMCadNotaFiscal := fDMCadNotaFiscal;
    ffrmConsNotaFiscal_NDevol.ShowModal;
    FreeAndNil(ffrmConsNotaFiscal_NDevol);
  end;
  if (Key = Vk_F9) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Active) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger > 0) then
  begin
    ffrmCadNotaFiscal_Alt_Imp := TfrmCadNotaFiscal_Alt_Imp.Create(self);
    ffrmCadNotaFiscal_Alt_Imp.fDMCadNotaFiscal := fDMCadNotaFiscal;
    ffrmCadNotaFiscal_Alt_Imp.ShowModal;
    FreeAndNil(ffrmCadNotaFiscal_Alt_Imp);
  end;
end;

procedure TfrmCadNotaFiscal.Panel4Exit(Sender: TObject);
var
  vID_Aux: Integer;
  vFlag: Boolean;
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;

  if (vID_Cliente_Ant <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0) then
  begin
    fDMCadNotaFiscal.vID_CFOP          := 0;
    fDMCadNotaFiscal.vID_Variacao      := 0;
    fDMCadNotaFiscal.vUsarRegraEmpresa := False;
    prc_Posicionar_Cliente;
    uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalFINALIDADE.AsString,True);
    if fDMCadNotaFiscal.vID_CFOP > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.vID_CFOP;
  end;

  //25/05/2018
  if (fDMCadNotaFiscal.qParametros_PedUSA_TAB_PRECO.AsString = 'S') and (fDMCadNotaFiscal.cdsClienteID_TAB_PRECO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_TAB_PRECO.AsInteger := fDMCadNotaFiscal.cdsClienteID_TAB_PRECO.AsInteger;

  if (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) and
    not(fDMCadNotaFiscal.fnc_verificar_CFOP(fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger)) then
  begin
    if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    begin
      MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
      fDMCadNotaFiscal.vMSGNotaFiscal := '';
      RxDBLookupCombo2.SetFocus;
      Exit;
    end;
  end;

  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString    := fDMCadNotaFiscal.cdsClienteUSA_TRANSFICMS.AsString;
    fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger := fDMCadNotaFiscal.cdsClienteID_TIPOCOBRANCA.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger         := fDMCadNotaFiscal.cdsClienteID_CONTABOLETO.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger      := fDMCadNotaFiscal.cdsClienteID_CONDPGTO.AsInteger;

    if fDMCadNotaFiscal.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger := fDMCadNotaFiscal.cdsClienteCLIENTE_CONTA_ID.AsInteger;
    //06/04/2016
    vFlag := True;
    if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount > 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger = vID_Cliente_Ant) then
    begin
      SMDBGrid2.DisableScroll;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
      begin
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
        begin
          vFlag := False;
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
      end;
      SMDBGrid2.EnableScroll;
    end;
    if vFlag then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsClienteID_VENDEDOR.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',0));
      if fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0 then
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat
        else
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsVendedorPERC_COMISSAO_VEND.AsFloat;
        if fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'P' then
          fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat));
      end;
    end;
    //******************************
    //if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) then
      //if trim(fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString) <> '' then
        //fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString := 'E';
    //27/08/2018  Foi incluido o IF
    if fDMCadNotaFiscal.cdsNotaFiscalID_PREFAT.AsInteger <= 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsClienteID_TRANSPORTADORA.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalID_REDESPACHO.AsInteger     := fDMCadNotaFiscal.cdsClienteID_REDESPACHO.AsInteger;
    end;
    //*******************
    if fDMCadNotaFiscal.cdsClienteID_CONDPGTO.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger  := fDMCadNotaFiscal.cdsClienteID_CONDPGTO.AsInteger;
    if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString := fDMCadNotaFiscal.cdsClienteTIPO_FRETE.AsString;
    //07/01/2014 foi colocado o if
    //prc_Buscar_Percentual_Simples;

    //30/10/2015 Gravar Desconto Suframa   aqui
    //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_DESC_SUFRAMA.AsFloat)) > 0 then
   // begin
    //  prc_Gravar_NotaFiscal_Desconto;
    //end;
    //**************
  end;

  //13/11/2015
  {if fDMCadNotaFiscal.cdsClienteUF.AsString = 'EX' then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 3
  else
  if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1
  else
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 2;}
  if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '5') then
  //if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 1
  else
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') or (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '7') then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 3
  else
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESTINO_OPERACAO.AsInteger := 2;
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.IsNull) or (fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> vID_Cliente_Ant) then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_CONSUMIDOR.AsInteger := fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger;

  //**********

  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0) or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) then
  begin
    prc_Buscar_Percentual_Simples;
    if fDMCadNotaFiscal.cdsParametrosUSA_FAIXA_SIMPLES.AsString = 'S' then
    begin
      btnInserir_Itens.Enabled       := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarNotaDevolucao.Enabled := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarPedido.Enabled        := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarPedido_Fut.Enabled    := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarVale.Enabled          := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarOS.Enabled            := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
      btnCopiarSacola.Enabled        := (trim(fDMCadNotaFiscal.vMSGNotaFiscal) = '');
    end;
  end;
  RxDBLookupCombo2Exit(Sender);
  if (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant) then
    prc_Opcao_Prazo;

  //aqui verificar a condição para primeiro pedido    04/04/2016
  vID_Aux := 0;
  if (fDMCadNotaFiscal.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger > 0) and (fDMCadNotaFiscal.cdsParametrosUSA_APROVACAO_PED.AsString = 'S')
    and (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <> vID_Cliente_Ant)  then
    vID_Aux := fnc_Primeiro_Pedido(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger);
  if (fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 0) then
  begin
    if (vID_Aux > 0) then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger := vID_Aux;
    end;
  end;
  rxdbCondicaoPgto.ReadOnly   := (fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 1);
  btnAlterar_CondPgto.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 1);
  //****************
end;

procedure TfrmCadNotaFiscal.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
end;

procedure TfrmCadNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //CTRL W
  begin
    BitBtn3.Visible     := not(BitBtn3.Visible);
    btnRegravar.Visible := not(btnRegravar.Visible);
    btnAjustarComissaoItens.Visible := not(btnAjustarComissaoItens.Visible);
    CheckBox1.Visible := not(CheckBox1.Visible);
  end
  else
  if (Shift = [ssCtrl]) and (Key = 83) then //CTRL S
  begin
    ckTotalDup.Visible      := not(ckTotalDup.Visible);
    ckEnviarComErro.Visible := not(ckEnviarComErro.Visible);
    DBEdit68.ReadOnly       := not(DBEdit68.ReadOnly);
    DBEdit69.ReadOnly       := not(DBEdit69.ReadOnly);
    DBEdit36.ReadOnly       := not(DBEdit36.ReadOnly);
    DBEdit37.ReadOnly       := not(DBEdit37.ReadOnly);
    DBEdit38.ReadOnly       := not(DBEdit38.ReadOnly);
  end
  else
  if (Shift = [ssCtrl]) and (Key = 72) then
  begin
    SMDBGrid7.Visible := not(SMDBGrid7.Visible);
    SMDBGrid6.Visible := not(SMDBGrid6.Visible);
  end
  else
  if (Key = 114) and (fDMCadNotaFiscal.cdsParametrosUSA_LIMITE_CREDITO.AsString = 'S') then
  begin
    ffrmConsLimite_Credito := TfrmConsLimite_Credito.Create(self);
    if (fDMCadNotaFiscal.cdsNotaFiscal.Active) and (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger > 0) then
      ffrmConsLimite_Credito.vCodCliente_Lim := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
    ffrmConsLimite_Credito.ShowModal;
    FreeAndNil(ffrmConsLimite_Credito);
  end;
end;

procedure TfrmCadNotaFiscal.btnCopiarNotaClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
     (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
  begin
    MessageDlg('*** Não foi selecionada a nota de origem para a cópia!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString = 'S' then
  begin
    MessageDlg('*** Nota cancelada não pode ser copiada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);
  //05/12/2018
  fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Copia := TfrmCadNotaFiscal_Copia.Create(self);
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0 then
    ffrmCadNotaFiscal_Copia.vID_CliTriangular := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger;
  ffrmCadNotaFiscal_Copia.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Copia.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  if (ffrmCadNotaFiscal_Copia.RxDBLookupCombo1.Text = '') or (ffrmCadNotaFiscal_Copia.RxDBLookupCombo3.Text = '') then
    vTriangular_Copiar := False;
  if not vTriangular_Copiar then
    ffrmCadNotaFiscal_Copia.ShowModal
  else
    ffrmCadNotaFiscal_Copia.prc_Inicio_Tela;
  FreeAndNil(ffrmCadNotaFiscal_Copia);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsInactive,dsBrowse] then
    exit;

  vID_CFOP_Ant := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;

  fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);

  //26/09/2018
  prc_Posicionar_Cliente;
  //*****************

  vFilial      := fDMCadNotaFiscal.cdsFilialID.AsInteger;
  vFilial_Nome := fDMCadNotaFiscal.cdsFilialNOME.AsString;

  fDMCadNotaFiscal.cdsNotaEntrada.Close;

  prc_Habilitar_CamposNota;

  fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMCadNotaFiscal.cdsFilialSIMPLES.AsString;
  //05/12/2018
  fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString := fDMCadNotaFiscal.cdsParametrosESPECIE_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString   := fDMCadNotaFiscal.cdsParametrosMARCA_NOTA.AsString;

  rxcbTipo_Nota.SetFocus;
  vTipoNotaAnt := 'S';
  if not fDMCadNotaFiscal.cdsCFOP.Active then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');
  fDMCadNotaFiscal.vVlr_Entrada     := 0;

  if not fDMCadNotaFiscal.vCopia_Igual then
    btnCalcular_ValoresClick(Sender);
  fDMCadNotaFiscal.vCopia_Igual := False;
  //aqui triangular gravar automático a segunda nota
  if vTriangular_Copiar then
    btnConfirmarClick(Sender);
end;

procedure TfrmCadNotaFiscal.prc_Buscar_Percentual_Simples;
var
  vCalcICMSSimples: Boolean;
begin
  if fDMCadNotaFiscal.cdsFilialUSARICMSSIMPLES.AsString = 'N' then
    Exit;

  fDMCadNotaFiscal.vMSGNotaFiscal := '';
  fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat := 0;
  vCalcICMSSimples := True;
  if (vCalcICMSSimples) and (fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0) and
     (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') and (fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'J') then
  begin
    fDMCadNotaFiscal.qRegime_Trib.Close;
    fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadNotaFiscal.qRegime_Trib.Open;
    if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger > 2 then
      vCalcICMSSimples := True
    else
      vCalcICMSSimples := False;
  end;
  if (vCalcICMSSimples) and (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') then
  begin
    fDMCadNotaFiscal.qPercentual_Simples.Close;
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('FILIAL').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('ANO').AsInteger    := YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
    fDMCadNotaFiscal.qPercentual_Simples.ParamByName('MES').AsInteger    := MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
    fDMCadNotaFiscal.qPercentual_Simples.Open;
    if (fDMCadNotaFiscal.qPercentual_Simples.IsEmpty) or (fDMCadNotaFiscal.qPercentual_SimplesID.AsInteger <= 0) then
    begin
      MessageDlg('% do ICMS Simples não informado, o sistema não vai gerar valor de ICMS do Simples', mtError, [mbOk], 0);
      if fDMCadNotaFiscal.cdsParametrosUSA_FAIXA_SIMPLES.AsString = 'S' then
        fDMCadNotaFiscal.vMSGNotaFiscal := '% do ICMS Simples não informado, o sistema não vai gerar valor de ICMS do Simples';
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat := fDMCadNotaFiscal.qPercentual_SimplesPERCENTUAL.AsFloat;
  end;
end;

procedure TfrmCadNotaFiscal.btnAjustarClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
  prc_Posicionar_Cliente;
  prc_Buscar_Percentual_Simples;
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo9Exit(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) then
  begin
    if (fDMCadNotaFiscal.cdsClienteID_VENDEDOR.AsInteger > 0) and
       (fDMCadNotaFiscal.cdsClienteID_VENDEDOR.AsInteger = fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) and
       (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat)) > 0) then
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat:= StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_COMISSAO.AsFloat))
    else
    begin
      if (fDMCadNotaFiscal.cdsVendedorCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) then
        fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsVendedorPERC_COMISSAO_VEND.AsFloat));
    end;
    if fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'P' then
      fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat));
  end
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',0));
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo2Exit(Sender: TObject);
var
  vCodCFOP: String;
begin
  vCodCFOP := '';
  if (RxDBLookupCombo2.Text) <> '' then
    vCodCFOP := RxDBLookupCombo2.Text;
  pnlExportacao.Visible       := (copy(vCodCFOP,1,1) = '7');
  ckCalcular_Imp_Item.Visible := (copy(vCodCFOP,1,1) = '3');
  ckSomaFrete_II.Visible      := (copy(vCodCFOP,1,1) = '3');
  btnAdicao.Visible           := (copy(vCodCFOP,1,1) = '3');
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <> fDMCadNotaFiscal.cdsCFOPID.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsCFOPID.AsInteger,[loCaseInsensitive]);
  prc_Opcao_Triang;
  btnVlr_Outras_Despesas.Visible := (copy(vCodCFOP,1,1) = '3');

  //20/08/2016
  if vID_CFOP_Ant <> fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger then
  begin
    if fDMCadNotaFiscal.cdsCFOPNFEFINALIDADE.AsString = '2' then
      fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString := '4'
    else
      fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString := '1';
  end;
end;

procedure TfrmCadNotaFiscal.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  prc_Opcao_Prazo;
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.prc_Opcao_Prazo;
var
  vMostrarAux: String;
  vMostrarEntrada: String;
  vTipoCondicao: String;
begin
  vMostrarAux     := 'N';
  vMostrarEntrada := 'N';
  vTipoCondicao   := '';
  if ((rxdbCondicaoPgto.Text <> '') and (rxdbCondicaoPgto.Text <> '[..Nenhuma..]')) and (fDMCadNotaFiscal.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive])) then
  begin
    vMostrarAux     := fDMCadNotaFiscal.cdsCondPgtoTIPO.AsString;
    vMostrarEntrada := fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString;
    vTipoCondicao   := fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString;
  end;
  btnGerarParcelas.Visible   := (vMostrarAux = 'P');
  btnExcluirParcelas.Visible := (vMostrarAux = 'P');
  Label8.Visible             := ((vMostrarAux = 'P') and (vMostrarEntrada = 'S'));
  DBEdit5.Visible            := ((vMostrarAux = 'P') and (vMostrarEntrada = 'S'));
  Label74.Visible            := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  DBDateEdit3.Visible        := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  SMDBGrid_Dupl2.Visible     := (vMostrarAux = 'P');
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := vMostrarAux;
    if vMostrarAux = 'P' then
      rxcbTipo_Prazo.ItemIndex := 0
    else
    if vMostrarAux = 'V' then
      rxcbTipo_Prazo.ItemIndex := 1
    else
    if vMostrarAux = 'N' then
      rxcbTipo_Prazo.ItemIndex := 2;
    if vMostrarEntrada = 'N' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  rxdbTipoCobranca.Visible    := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  SpeedButton3.Visible        := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  SpeedButton7.Visible        := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  rxdbConta.Visible           := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  rxdbConta_Orcamento.Visible := ((fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label58.Visible             := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  Label59.Visible             := (fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0);
  Label62.Visible             := ((fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and (fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
end;

procedure TfrmCadNotaFiscal.ZerarDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadNotaFiscal.prc_Le_Itens(fDMCadNotaFiscal,'Z');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaFiscal.GerarVlrDuplicata1Click(Sender: TObject);
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    exit;
  SMDBGrid2.DisableScroll;
  fDMCadNotaFiscal.prc_Le_Itens(fDMCadNotaFiscal,'G');
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaFiscal.btnImp_BoletoClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
        (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  vTipo_Config_Email := 1;

  prc_Posiciona_NotaFiscal;

  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

  vEmail_Fortes := fDMCadNotaFiscal.cdsClienteEMAIL_PGTO.AsString;

  if fDMCadNotaFiscal.cdsParametrosUSA_BOLETO_ACBR.AsString = 'S' then
    prc_Chama_CobRemessa(0,fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                         fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString);
end;

procedure TfrmCadNotaFiscal.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtSerie.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadNotaFiscal.prc_Limpar_Edit_Consulta;
begin
  edtSerie.Clear;
  CurrencyEdit1.Clear;
  //NxDatePicker1.Clear;
  //NxDatePicker2.Clear;
  Edit2.Clear;
end;

procedure TfrmCadNotaFiscal.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key = #13) or (Key = #10)) and (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]) then
    Key := ' ';
end;

procedure TfrmCadNotaFiscal.BitBtn2Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString := 'N'
    else
      fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString := 'S';
    if fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat -
                                                             fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat));
    end
    else
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
        fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat +
                                                               fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat := 0;
    end;
  end;
end;

procedure TfrmCadNotaFiscal.prc_Gravar_Triangular;
var
  sds: TSQLDataSet;
begin
//  if (fDMCadNotaFiscal.cdsNotaFiscalID_NOTACOPIADA.AsInteger <= 0) then
//    exit;
  if not fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]) then
    exit;
  if (fDMCadNotaFiscal.cdsCFOPCOPIARNOTATRIANGULAR.AsString <> 'S') and (fDMCadNotaFiscal.cdsNotaFiscalID_NOTACOPIADA.AsInteger > 0) then
  begin
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'UPDATE NOTAFISCAL SET NUMNOTACOPIADA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) +
                       ' , SERIECOPIADA = ' + QuotedStr(fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString) +
                       ' , ID_NOTACOPIADA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger) +
                       ' WHERE ID = ' + fDMCadNotaFiscal.cdsNotaFiscalID_NOTACOPIADA.AsString;
    sds.ExecSQL();
    exit;
  end;

  try
    vTriangular_Copiar := True;
    btnCopiarNotaClick(frmCadNotaFiscal);
  except
    vTriangular_Copiar := False;
  end;
end;

procedure TfrmCadNotaFiscal.btnCopiarValeClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  //07/01/2014
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0) or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) then
  begin
    prc_Buscar_Percentual_Simples;
    if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
      exit;
  end;

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmSel_Vale := TfrmSel_Vale.Create(self);
  ffrmSel_Vale.vOperacao   := '';
  ffrmSel_Vale.vFinalidade := '';
  if rxdbOperacao.Value <> '' then
    ffrmSel_Vale.vOperacao := rxdbOperacao.Value;
  if rxcbFinalidade.Text <> '' then
    ffrmSel_Vale.vFinalidade := Copy(rxcbFinalidade.Text,1,1);
  ffrmSel_Vale.vCodCliente := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  if RxDBLookupCombo2.Text <> '' then
    ffrmSel_Vale.vID_CFOP := RxDBLookupCombo2.KeyValue
  else
    ffrmSel_Vale.vID_CFOP := 0;
  ffrmSel_Vale.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_Vale.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_Vale.ShowModal;

  FreeAndNil(ffrmSel_Vale);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.SpeedButton3Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTipoCobranca.Close;
  fDMCadNotaFiscal.cdsTipoCobranca.Open;
end;

procedure TfrmCadNotaFiscal.btnGerarParcelasClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
  end
  else
  if not fnc_Gerar_NotaFiscal_Parc(fDMCadNotaFiscal) then
    MessageDlg(fDMCadNotaFiscal.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadNotaFiscal.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
end;

procedure TfrmCadNotaFiscal.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if trim(DBEdit5.Text) <> '' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(DBEdit5.Text)
    else
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := 0;
    btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadNotaFiscal.pnlClienteExit(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) and
    not(fDMCadNotaFiscal.fnc_verificar_CFOP(fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger)) then
  begin
    if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> '' then
    begin
      MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
      fDMCadNotaFiscal.vMSGNotaFiscal := '';
      RxDBLookupCombo2.SetFocus;
    end;
  end;
end;

function TfrmCadNotaFiscal.Verifica_ConexaoInternet: Boolean;
var
  Texto: String;
  vLocalServidorNFe: String;
begin
  if fDMCadNotaFiscal.cdsFilialPESSOA.AsString = 'F' then
    texto  := Monta_Texto(fDMCadNotaFiscal.cdsFilialCNPJ_CPF.AsString,11)
  else
    texto  := Monta_Texto(fDMCadNotaFiscal.cdsFilialCNPJ_CPF.AsString,14);
  vLocalServidorNFe := fDMCadNotaFiscal.cdsParametrosLOCALSERVIDORNFE.AsString;
  if trim(fDMCadNotaFiscal.cdsFilialLOCALSERVIDORNFE.AsString) <> '' then
    vLocalServidorNFe := fDMCadNotaFiscal.cdsFilialLOCALSERVIDORNFE.AsString;
  Result := ConectadoInternet(vLocalServidorNFe,texto);
end;

procedure TfrmCadNotaFiscal.rxdbConta_OrcamentoEnter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadNotaFiscal.rxdbConta_OrcamentoExit(Sender: TObject);
begin
  StaticText2.Visible := False;
end;

procedure TfrmCadNotaFiscal.rxdbConta_OrcamentoCloseUp(Sender: TObject);
begin
  rxdbConta_Orcamento.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadNotaFiscal.rxdbConta_OrcamentoDropDown(Sender: TObject);
begin
  rxdbConta_Orcamento.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadNotaFiscal.rxdbConta_OrcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmCadNotaFiscal.prc_scroll(DataSet: TDataSet);
begin
  btnEnvio.Enabled := ((trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) = '') or
                      (trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEPROTOCOLO.AsString) = ''));
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '' then
    btnDanfe.Caption := 'Danfe'
  else
    btnDanfe.Caption := 'Pré Visualizar';
  Reenviaraocliente1.Enabled := ((trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '') and
                                (trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEPROTOCOLO.AsString) <> ''));

  btnCCe2.Enabled            := ((trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEPROTOCOLO.AsString) <> '') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString <> 'S'));
  btnCancelar_Nota2.Enabled  := ((trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString) <> '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEPROTOCOLO.AsString) <> '') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString <> 'S'));
end;

procedure TfrmCadNotaFiscal.btnEnvioClick(Sender: TObject);
begin
  prc_Controle_NFe('E');
end;

procedure TfrmCadNotaFiscal.prc_Controle_NFe(Tipo: String);
var
  vIDAux: Integer;
  vConexao: Boolean;
begin
  if CheckBox1.Visible then
    fDMCadNotaFiscal.vNaoMostrarCampoVazio := CheckBox1.Checked
  else
    fDMCadNotaFiscal.vNaoMostrarCampoVazio := False;
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.qParametros_UsuarioCONFIRMA_ENVIO_NFE.AsString = 'S' then
  begin
    if MessageDlg('Deseja enviar a Nota Fiscal?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;
  end;
  vTipo_Config_Email := 1;
  prc_Posiciona_NotaFiscal;
////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////
  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;
  if (Tipo = 'A') and ((trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S'))  then
  begin
    MessageDlg('*** Nota Fiscal sem a chave de acesso ou já cancelada!', mtError,[mbOk], 0);
    exit;
  end;
  if (Tipo = 'A') and ((trim(fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S'))  then
  begin
    MessageDlg('*** Nota Fiscal sem o protocolo!', mtError,[mbOk], 0);
    exit;
  end;

  if (Tipo = 'C') and not(fnc_cancelar) then
  begin
    MessageDlg(fDMCadNotaFiscal.vMSGNotaFiscal, mtError, [mbOk], 0);
    exit;
  end;

  //30/11/2016
  if not ckEnviarComErro.Checked then
  begin
    if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.IsNull) then
    begin
      if not fnc_Duplicata then
        exit;
      if not fnc_Movimento then
        exit;
    end;
  end;
  //**********

  //aqui 17/10/2014
  if fDMCadNotaFiscal.cdsParametrosABRIR_NFECONFIG.AsString = 'S' then
  begin
    try
      vConexao := Verifica_ConexaoInternet;
    except
      prc_Abrir_NFeConfig;
      Sleep(5000);
      vConexao := Verifica_ConexaoInternet;
    end;
    if not vConexao then
      MessageDlg('*** Programa NFeConfig está fechado! Favor executar esse programa!', mtError, [mbOk], 0);
  end;

  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  try
    //Cancelamento
    if Tipo = 'C' then
    begin
      if MessageDlg('Deseja realmente cancelar esta nota fiscal?',mtWarning,[mbOK,mbNO],0) = mrNo then
        exit;
      if MessageDlg('                                  ATENÇÃO'
                      +#13#13+
                      'Após cancelada, esta operação não mais poderá ser desfeita!'+#13+
                      '  Clique no botão OK para cancelar a nota fiscal.',mtInformation,
                      [mbOK,mbNO],0) = mrNo then
        exit;
      ffrmCadNotaFiscal_Canc := TfrmCadNotaFiscal_Canc.Create(fNFe);
      ffrmCadNotaFiscal_Canc.fDMCadNotaFiscal := fDMCadNotaFiscal;
      ffrmCadNotaFiscal_Canc.ShowModal;
      FreeAndNil(ffrmCadNotaFiscal_Canc);
      if trim(fDMCadNotaFiscal.vMotivoCancelamento) = '' then
        exit;
    end;
    //Fim processo cancelamento
    
    if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
      fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
    //05/12/2018
    fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);
    fDMCadNotaFiscal.cdsParametros.Close;
    fDMCadNotaFiscal.cdsParametros.Open;
    fDMNFe := TDMNFe.Create(Self);
    fDMNFE.vNovoProcesso := True;

    vFilial := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

    //Carta de Correção
    if Tipo = 'A' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_CCe.Close;
      fDMCadNotaFiscal.sdsNotaFiscal_CCe.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscal_CCe.Open;

      fDMNFE.qFilial.Close;
      fDMNFE.qFilial.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
      fDMNFE.qFilial.Open;

      ffrmCadNotaFiscal_CCe := TfrmCadNotaFiscal_CCe.Create(self);
      ffrmCadNotaFiscal_CCe.fDMCadNotaFiscal := fDMCadNotaFiscal;
      ffrmCadNotaFiscal_CCe.fDMNFe           := fDMNFe;
      ffrmCadNotaFiscal_CCe.ShowModal;
      FreeAndNil(ffrmCadNotaFiscal_CCe);
      //FreeAndNil(ffNFe);
      FreeAndNil(fDMNFe);
      exit;
    end;
    //Fim do processo da carta de correção
    ffNFe := TfNFe.Create(fNFe);
    ffNfe.fDMCadNotaFiscal := fDMCadNotaFiscal;
    ffNfe.fDMNFe           := fDMNFe;

    if Tipo = 'C' then // Cancelamento, antes era a tag igual a 99
      ffNFe.Tag := 2;
    ffNFe.vPessoaTransp := '';
    ffNFe.prc_Configura_Tela;
    if Tipo = 'R' then
    begin
      ffNFe.ComboBox5.ItemIndex := 3;
      ffNFe.btEnviarAntClick(fNFe);
    end
    else
    if Tipo = 'T' then
    begin
      ffNFe.ComboBox5.ItemIndex := 1;
      ffNFe.btEnviarAntClick(fNFe);
    end
    else
    if (Tipo = 'E') then
    begin
      //29/04/2015
      //28/10/2015 vai usar somente o novo envio
      //if fDMNFE.qParametrosUSA_ENVIO_NOVO_NFE.AsString = 'S' then
      //begin
        //if trim(fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString) = 'S' then
        //  ffNFe.btBuscarStatusClick(ffNFe)
        //else
          ffNFe.btEnviarNovoClick(ffNFe);
      //end
      //else
      //  ffNFe.btEnviarAntClick(ffNFe);
    end
    else
    if Tipo = 'C' then
      ffNFe.btCancelarClick(ffNFe);
    if (Tipo = 'E') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString) <> '') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') then
      ffNFe.btDanfeClick(ffNFe);
    if (Tipo = 'D') then
      ffNFe.btDanfeClick(ffNFe);

    //if ((trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') and (Tipo = 'E')) or (Tipo = 'D') then
    //    ffNFe.btDanfeClick(ffNFe);

  finally
    if (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S') and (Tipo = 'E') then
      prc_Cancelamento(False)
    else
    if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S') and (Tipo = 'C') then
      prc_Cancelamento(True);
    Tag := 0;
    if (vIDAux > 0) and ((Tipo = 'E') or (Tipo = 'C')) then
      prc_Consultar(vIDAux);
    FreeAndNil(ffNFe);
    FreeAndNil(fDMNFe);
  end;
end;

procedure TfrmCadNotaFiscal.btnDanfeClick(Sender: TObject);
begin
  prc_Controle_NFe('D');
end;

procedure TfrmCadNotaFiscal.Reenviaraocliente1Click(Sender: TObject);
begin
  prc_Controle_NFe('R');
end;

procedure TfrmCadNotaFiscal.Enviarnomtodoantigo1Click(Sender: TObject);
var
  vIDAux: Integer;
begin
  if not (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_NotaFiscal;
  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

////////////// testa se produto é filtrado por cliente
  //02/06/2016  incluido a filial
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente;
/////////////////////////////////////

  if (fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger < 1) then
  begin
    MessageDlg('*** Não existe nota selecionada!', mtError, [mbOk], 0);
    exit;
  end;

  //30/11/2016
  if not ckEnviarComErro.Checked then
  begin
    if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.IsNull) then
    begin
      if not fnc_Duplicata then
        exit;
      if not fnc_Movimento then
        exit;
    end;
  end;
  //**********

  vIDAux := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;

  try
    if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
      fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);

    //05/12/2018  
    fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);
    fDMCadNotaFiscal.cdsParametros.Close;
    fDMCadNotaFiscal.cdsParametros.Open;
    fDMNFe := TDMNFe.Create(Self);
    fDMNFE.vNovoProcesso := False;

    ffNFe := TfNFe.Create(fNFe);
    ffNfe.fDMCadNotaFiscal := fDMCadNotaFiscal;
    ffNfe.fDMNFe           := fDMNFe;
    vFilial                := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

    if Tag = 99 then
      ffNFe.Tag := 2;
    ffNFe.vPessoaTransp := '';
    ffNFe.ShowModal;
  finally
    if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
      prc_Cancelamento(False);
    FreeAndNil(ffNFe);
    FreeAndNil(fDMNFe);
  end;
  if vIDAux > 0 then
    prc_Consultar(vIDAux);
end;

procedure TfrmCadNotaFiscal.Enviarparaoresponsvelpelosistematxt1Click(
  Sender: TObject);
begin
  prc_Controle_NFe('T');
end;

procedure TfrmCadNotaFiscal.btnCancelar_Nota2Click(Sender: TObject);
begin
  vTipo_Config_Email := 1;
  prc_Controle_NFe('C');
end;

procedure TfrmCadNotaFiscal.btnCCe2Click(Sender: TObject);
begin
  vTipo_Config_Email := 1;
  prc_Controle_NFe('A');
end;

procedure TfrmCadNotaFiscal.SMDBGrid6GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := $00FFD2A6;
end;

procedure TfrmCadNotaFiscal.SMDBGrid6DblClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Cons := TfrmCadNotaFiscal_Cons.Create(self);
  ffrmCadNotaFiscal_Cons.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Cons.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Cons);
end;

procedure TfrmCadNotaFiscal.SMDBGrid7DblClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Cons := TfrmCadNotaFiscal_Cons.Create(self);
  ffrmCadNotaFiscal_Cons.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Cons.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Cons);
end;

procedure TfrmCadNotaFiscal.XML1Click(Sender: TObject);
var
  ffrmRecebeXML: TfrmRecebeXML;
begin
  vImportar_NotaSaida := True;
  ffrmRecebeXML       := TfrmRecebeXML.Create(self);
  ffrmRecebeXML.Tag   := 2;
  ffrmRecebeXML.ShowModal;

  FreeAndNil(ffrmRecebeXML);

  fDMCadNotaFiscal.cdsCliente.Close;
  fDMCadNotaFiscal.cdsCliente.Open;

  if vID_Nota > 0 then
  begin
    prc_Consultar(vID_Nota);
    if fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty then
      MessageDlg('*** Nota não encontrada na importação!', mtError, [mbOk], 0)
    else
    begin
      RzPageControl1.ActivePage := TS_Cadastro;
      btnAlterarClick(Sender);
      prc_Opcao_Prazo;
    end;
  end
  else
    MessageDlg('*** Nota não importada!', mtError, [mbOk], 0);
  vImportar_NotaSaida := False;
end;

procedure TfrmCadNotaFiscal.XT1Click(Sender: TObject);
begin
  fDMCadNotaFiscal.vID_Nota_Imp := 0;
  fDMCadNotaFiscal.cdsProduto.Close;
  fDMCadNotaFiscal.sdsProduto.CommandText := fDMCadNotaFiscal.ctProduto;
  fDMCadNotaFiscal.cdsProduto.Open;

  ffrmImportar_TXT       := TfrmImportar_TXT.Create(self);
  ffrmImportar_TXT.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmImportar_TXT.ShowModal;
  FreeAndNil(ffrmImportar_TXT);

  if fDMCadNotaFiscal.vID_Nota_Imp > 0 then
  begin
    prc_Consultar(fDMCadNotaFiscal.vID_Nota_Imp);
    RzPageControl1.ActivePage := TS_Cadastro;
    prc_Posiciona_NotaFiscal;
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    prc_Funcao_Inserir;
  end;
end;

procedure TfrmCadNotaFiscal.prc_Funcao_Inserir;
begin
  fDMCadNotaFiscal.cdsNotaEntrada.Close;
  prc_Habilitar_CamposNota;
  fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMCadNotaFiscal.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMCadNotaFiscal.cdsFilialSIMPLES.AsString;
  fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.Clear;
  if fDMCadNotaFiscal.qParametros_NFeTIPO_ATENDIMENTO.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := fDMCadNotaFiscal.qParametros_NFeTIPO_ATENDIMENTO.AsInteger
  else
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := 1;

  //05/12/2018  
  fDMCadNotaFiscal.prc_Abrir_CSTICMS(fDMCadNotaFiscal.cdsFilialSIMPLES.AsString);
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  rxcbTipo_Nota.SetFocus;
  vTipoNotaAnt := 'S';
  fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');
  fDMCadNotaFiscal.vVlr_Entrada     := 0;
  if fDMCadNotaFiscal.cdsParametrosGRAVAR_CONSUMO_NOTA.AsString = 'S' then
    fDMCadNotaFiscal.prc_Abrir_NotaFiscal_ProdPrincipal(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0);
end;

procedure TfrmCadNotaFiscal.btnMaoObraClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadNotaFiscal.vID_CFOP := 0;
  prc_Posicionar_Cliente;

  ffrmCadNotaFiscal_MObra := TfrmCadNotaFiscal_MObra.Create(self);
  ffrmCadNotaFiscal_MObra.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_MObra.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_MObra);
  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnAdicaoClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Imp_Aux                   := TfrmCadNotaFiscal_Imp_Aux.Create(self);
  ffrmCadNotaFiscal_Imp_Aux.fDMCadNotaFiscal  := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Imp_Aux.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Imp_Aux);
end;

procedure TfrmCadNotaFiscal.prc_Le_NotaFiscal_Ref;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  fDMCadNotaFiscal.cdsNotaFiscal_Ref.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Ref.Eof do
  begin
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString) <> '' then
    begin
      sds.Close;
      sds.CommandText := 'SELECT ID, NUMNOTA FROM NOTAFISCAL WHERE NFECHAVEACESSO = ' + QuotedStr(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString);
      sds.Open;
      if not(sds.IsEmpty) and (sds.FieldByName('ID').AsInteger > 0) then
      begin
        // 04/10/2015
        if fDMCadNotaFiscal.vExcluir_Dup_Est then
        begin
          fDMCadNotaFiscal.Excluir_Duplicata(sds.FieldByName('ID').AsInteger);
          fDMCadNotaFiscal.prc_Excluir_Financeiro(sds.FieldByName('ID').AsInteger);
        end;
        if fDMCadNotaFiscal.vExcluir_Com_Est then
          fDMCadNotaFiscal.Excluir_ExtComissao(sds.FieldByName('ID').AsInteger);
        fDMCadNotaFiscal.prc_Cancelar_Movimento(sds.FieldByName('ID').AsInteger);
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Ref.Next;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadNotaFiscal.btnConfirmar_LeiClick(Sender: TObject);
begin
  if RxDBLookupCombo7.Text = '' then
  begin
    MessageDlg('*** Observação não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_Lei.Locate('ID_OBS_LEI',RxDBLookupCombo7.KeyValue,[loCaseInsensitive]) then
  begin
    MessageDlg('*** Observação já informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not fDMCadNotaFiscal.cdsObs_Lei.Locate('ID',RxDBLookupCombo7.KeyValue,[loCaseInsensitive]) then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Lei.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_LeiID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_LeiID_OBS_LEI.AsInteger := RxDBLookupCombo7.KeyValue;
  fDMCadNotaFiscal.cdsNotaFiscal_LeiOBS.AsString         := fDMCadNotaFiscal.cdsObs_LeiOBS.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_Lei.Post;
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo7.SetFocus;
end;

procedure TfrmCadNotaFiscal.btnExcluir_LeiClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Lei.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Lei.Delete;
end;

procedure TfrmCadNotaFiscal.rxdbCondicaoPgtoEnter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadNotaFiscal.ReativarProcesso1Click(Sender: TObject);
begin
  if MessageDlg('Essa opção deverá ser executada na máquina onde o NFeConfig está instalado.' +#13 +
                'O NFeConfig (Certificado) está instalado neste computador?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Abrir_NFeConfig;
end;

function TfrmCadNotaFiscal.fnc_ProcessoRodando(exeFileName: string): Boolean;
var  //declarar TlHelp32
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle        := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop           := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName)) or
       (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfrmCadNotaFiscal.fnc_FinalizarProcesso(exeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle:THandle;
  FProcessEntry32:TProcessEntry32;
begin
  result :=0;

  FSnapshotHandle        := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop           := Process32First(FSnapshotHandle,FProcessEntry32);

  while integer(ContinueLoop)<>0do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName)) or
       (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),FProcessEntry32.th32ProcessID),0));

    ContinueLoop := Process32Next(FSnapshotHandle,FProcessEntry32);
  end;
end;

procedure TfrmCadNotaFiscal.prc_ExecutarProcesso(exeFileName: String);
begin
  WinExec(Pchar(exeFileName), SW_SHOW);
end;

procedure TfrmCadNotaFiscal.prc_Ajustar_Grid_Itens;
var
  i: Integer;
begin
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if fDMCadNotaFiscal.cdsParametrosUSA_VALE.AsString <> 'S' then
    begin
      if (SMDBGrid2.Columns[i].FieldName = 'NUM_VALE') or (SMDBGrid2.Columns[i].FieldName = 'ITEM_VALE') then
        SMDBGrid2.Columns[i].Visible := False;
    end;
    if (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'NUM_LOTE_CONTROLE') then
      SMDBGrid2.Columns[i].Visible := False;
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or
                                      (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or
                                      (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
    if (SMDBGrid2.Columns[i].FieldName = 'QTD_LANCAR_ESTOQUE') then
      SMDBGrid2.Columns[i].Visible := (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'PERC_COMISSAO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
    if (SMDBGrid2.Columns[i].FieldName = 'NUM_TALAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'I') or
                                      (fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
    if (SMDBGrid2.Columns[i].FieldName = 'PRECO_CUSTO_TOTAL') then
      SMDBGrid2.Columns[i].Visible := (fDMCadNotaFiscal.qParametros_GeralUSA_AJUSTE_CUSTO.AsString = 'S');
  end;

  for i := 1 to SMDBGrid_Dupl2.ColCount - 2 do
  begin
    if (SMDBGrid_Dupl2.Columns[i].FieldName = 'PERC_BASE_COMISSAO')  then
      SMDBGrid_Dupl2.Columns[i].Visible := ((fDMCadNotaFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'S') and
                                           (fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S'));
  end;
end;

procedure TfrmCadNotaFiscal.btnSubstTributariaClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_ST := TfrmCadNotaFiscal_ST.Create(self);
  ffrmCadNotaFiscal_ST.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_ST.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_ST);
end;

procedure TfrmCadNotaFiscal.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CSI') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CST') then
    AFont.Color := clRed;
end;

procedure TfrmCadNotaFiscal.prc_Abrir_NFeConfig;
var
  vTexto: String;
begin
  if fnc_ProcessoRodando('NfeConfig.exe') then
    fnc_FinalizarProcesso('NfeConfig.exe');
  vTexto := ExtractFilePath(Application.ExeName) + '..\NFeConfig\NFeConfig.exe';
  prc_ExecutarProcesso(vTexto);
end;

procedure TfrmCadNotaFiscal.ImprimirRtulos1Click(Sender: TObject);
begin
  ffrmEtiq_Rotulo := TfrmEtiq_Rotulo.Create(self);
  ffrmEtiq_Rotulo.CurrencyEdit1.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsInteger;
  ffrmEtiq_Rotulo.Edit1.Text              := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaSERIE.AsString;
  ffrmEtiq_Rotulo.vFilial_Rot             := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaFILIAL.AsInteger;
  ffrmEtiq_Rotulo.ShowModal;
  FreeAndNil(ffrmEtiq_Rotulo);
end;

procedure TfrmCadNotaFiscal.btnCopiarPedido_FutClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  if (fDMCadNotaFiscal.cdsParametrosID_OPERACAO_PED_FUT.AsInteger <= 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0) then
  begin
    MessageDlg('*** CFOP não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Pedido := TfrmSel_Pedido.Create(self);
  ffrmSel_Pedido.Tag          := 11;
  ffrmSel_Pedido.vTipo        := 'NTS';  //para distinguir do vale 'VAL'
  ffrmSel_Pedido.vTipo_RegPed := 'P';
  ffrmSel_Pedido.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_Pedido.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_Pedido.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_Pedido.ShowModal;

  FreeAndNil(ffrmSel_Pedido);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnCopiarOSClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_OS := TfrmSel_OS.Create(self);
  ffrmSel_OS.vCodCliente  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_OS.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_OS.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  ffrmSel_OS.ShowModal;
                 
  FreeAndNil(ffrmSel_OS);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.btnVlr_Outras_DespesasClick(Sender: TObject);
var
  vMSGAux: String;
begin
  vMSGAux := '';
  if fDMCadNotaFiscal.cdsParametrosSOMAR_ADUANEIRA_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Aduaneira: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_II_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Imp.Importação: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_IPI_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. IPI: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Pis: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Cofins: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_SEGURO_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Seguro: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat);
  if fDMCadNotaFiscal.cdsParametrosSOMAR_SISCOMEX_IMP.AsString = 'S' then
    vMSGAux := vMSGAux + #13 + 'Vlr. Siscomex: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat);

  MessageDlg('*** Valor de Outras Despesas e Acessórios *** ' + #13 + #13 + vMSGAux, mtInformation, [mbOk], 0);
end;

procedure TfrmCadNotaFiscal.btnCopiarSacolaClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_Sacola := TfrmSel_Sacola.Create(self);
  ffrmSel_Sacola.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_Sacola.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  if RxDBLookupCombo2.Text <> '' then
  begin
    ffrmSel_Sacola.RxDBLookupCombo2.KeyValue := RxDBLookupCombo2.KeyValue;
  end;
  ffrmSel_Sacola.ShowModal;
  FreeAndNil(ffrmSel_Sacola);
  FreeAndNil(ffrmCadNotaFiscal_Itens);
  if vItemAux <> fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.prc_Excluir_ItensSacola;
var
  vItemOriginal: Integer;
begin
  vItemOriginal := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger;
  SMDBGrid2.DisableScroll;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger = vItemOriginal then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Delete
    else
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ProdPrincipal.Delete;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadNotaFiscal.prc_Voltar_Vale;
var
  sds: TSQLDataSet;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText := ' UPDATE VALE_ITENS SET FATURADO = ' + QuotedStr('N')
                   + ' WHERE ID = ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsString
                   + ' AND ITEM = ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_VALE.AsString;
  sds.ExecSQL();
  FreeAndNil(sds);
end;

procedure TfrmCadNotaFiscal.prc_Gravar_NotaFiscal_Desconto;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Eof do
    fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Delete;

  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoITEM.AsInteger        := 1;
  fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsClientePERC_DESC_SUFRAMA.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Post;
end;

procedure TfrmCadNotaFiscal.DBEdit55KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //09/11/2015
  if (Key = Vk_Return) and (StrToFloat(FormatFloat('0.00',vVlrAdiantamento_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat))) then
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)) > StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) then
    begin
      MessageDlg('*** Vlr. adiatamento não pode ser maior que o valor das duplicatas!' , mtInformation, [mbOk], 0);
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAdiantamento_Ant));
    end;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + vVlrAdiantamento_Ant) - fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat));
      btnGerarParcelasClick(Sender);
    end;
  end;
end;

procedure TfrmCadNotaFiscal.DBEdit55Enter(Sender: TObject);
begin
  vVlrAdiantamento_Ant := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat));
end;

procedure TfrmCadNotaFiscal.rxdbOperacaoExit(Sender: TObject);
begin
  if rxdbOperacao.Text <> '' then
  begin
    fDMCadNotaFiscal.cdsOperacao_Nota.Locate('ID',rxdbOperacao.KeyValue,[loCaseInsensitive]);
    rxcbFinalidade.Visible := (fDMCadNotaFiscal.cdsOperacao_NotaPEDIR_FINALIDADE.AsString = 'S');
    lblFinalidade.Visible  := (fDMCadNotaFiscal.cdsOperacao_NotaPEDIR_FINALIDADE.AsString = 'S');
    prc_Opcao_Triang;
    if not rxcbFinalidade.Visible then
    begin
      rxcbFinalidade.ItemIndex := 3;
      fDMCadNotaFiscal.cdsNotaFiscalFINALIDADE.AsString := 'O';
    end;
    if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_SERIE_OPERACAO.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsOperacao_NotaSERIE_NFE.AsString) <> '') then
    begin
      if trim(fDMCadNotaFiscal.cdsFilialSERIENORMAL.AsString) <> fDMCadNotaFiscal.cdsOperacao_NotaSERIE_NFE.AsString then
      begin
        MessageDlg('*** Esta operação muda a séria da Nota: ' + #13 +
                   'Série Normal: '  + fDMCadNotaFiscal.cdsFilialSERIENORMAL.AsString + #13 +
                   'Série da Operação: ' + fDMCadNotaFiscal.cdsOperacao_NotaSERIE_NFE.AsString, mtInformation, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TfrmCadNotaFiscal.prc_Gravar_mItensAlt;
var
  vIDCor: Integer;
  vTamanho: String;
begin
  vIDCor   := 0;
  vTamanho := '';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    vIDCor := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    vTamanho := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
  if fDMCadNotaFiscal.mItensAlt.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,vIDCor,vTamanho]) then
    fDMCadNotaFiscal.mItensAlt.Edit
  else
  begin
    fDMCadNotaFiscal.mItensAlt.Insert;
    fDMCadNotaFiscal.mItensAltID_Produto.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.mItensAltID_Cor.AsInteger     := vIDCor;
    fDMCadNotaFiscal.mItensAltTamanho.AsString     := vTamanho;
    fDMCadNotaFiscal.mItensAltQtd.AsFloat          := 0;
  end;
  fDMCadNotaFiscal.mItensAltQtd.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.mItensAltQtd.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.mItensAlt.Post;
end;

procedure TfrmCadNotaFiscal.BitBtn3Click(Sender: TObject);
var
  vPerc_Base_Com: Real;
begin
  //vUsuario := 'Ajust.Base Com.';
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Eof do
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaCANCELADA.AsString = 'N') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFEDENEGADA.AsString = 'N') and
       (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaVLR_DUPLICATA.AsFloat)) > 0) then
    begin
      prc_Posiciona_NotaFiscal;
      if not fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal.Edit;
        fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat;
        if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
          fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat
                                                                   - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
        fDMCadNotaFiscal.cdsNotaFiscal.Post;
        vPerc_Base_Com := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat) * 100));
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
        while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ParcPERC_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00000',vPerc_Base_Com));
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Post;
          fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
        end;
        prc_ReGravar_DuplicataAux(vPerc_Base_Com);
        fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Next;
  end;
end;

procedure TfrmCadNotaFiscal.prc_ReGravar_DuplicataAux(Percentual: Real);
begin
  fDMCadNotaFiscal.cdsDuplicata.Close;
  fDMCadNotaFiscal.sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID_NOTA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
  fDMCadNotaFiscal.cdsDuplicata.Open;
  fDMCadNotaFiscal.cdsDuplicata.First;
  while not fDMCadNotaFiscal.cdsDuplicata.Eof do
  begin
    fDMCadNotaFiscal.cdsDuplicata.Edit;
    fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00000',Percentual));
    fDMCadNotaFiscal.cdsDuplicata.Post;
    fDMCadNotaFiscal.cdsDuplicata.Next;
  end;
  fDMCadNotaFiscal.cdsDuplicata.ApplyUpdates(0);
end;

procedure TfrmCadNotaFiscal.rxdbContaChange(Sender: TObject);
begin
  if not fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger) or
         (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger) then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Edit;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger) then
        begin
          if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger
          else
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.Clear;
        end;
        if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger) then
        begin
          if (fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger > 0) then
            if (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger = 1) and (fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat > 0) then
            else
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger
          else
            fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.Clear;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Post;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
  end;
end;

procedure TfrmCadNotaFiscal.SpeedButton7Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsContas.Close;
  fDMCadNotaFiscal.cdsContas.Open;
end;

procedure TfrmCadNotaFiscal.btnAlterar_CondPgtoClick(Sender: TObject);
var
  vTexto: String;
begin
  vTexto := '';
  if fDMCadNotaFiscal.cdsNotaFiscalNOTIFICACAO.AsInteger = 1 then
    vTexto := 'Cliente possui menos de 4 pedidos';
  if not fnc_senha('CPG','SENHA_PEDIDO','',vTexto,'','',0,0) then
    exit;
  rxdbCondicaoPgto.ReadOnly := False;
end;

function TfrmCadNotaFiscal.fnc_Controla_Est(Tipo: String; Qtd: Real): Integer; //Tipo I=Lendo Tabela Itens   T=Lendo tabela de tamanhos
var
  vID: Integer;
  vUnidade: String;
  vVlrAux: Real;
  vQtdAux: Real;
  vDescAux: Real;
  vAux2: Real;
  vTamAux: String;
  vGeraCusto: String;
begin
  vDescAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat +
              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
  vUnidade := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
  vVlrAux  := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> fDMCadNotaFiscal.cdsProdutoID.AsInteger then
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    vUnidade := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat));
  end
  else
  begin
    vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S' then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsFloat));
      if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
        vQtdAux := StrToFloat(FormatFloat('0.0000',0));
    end;
  end;

  if Tipo = 'T' then
  begin
    vTamAux := fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString;
    vID     := fDMCadNotaFiscal.cdsNotaFiscal_TamID_MOVESTOQUE.AsInteger;
    vQtdAux := fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat;
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
    if StrToFloat(FormatFloat('0.0000',vDescAux)) > 0 then
    begin
      vAux2 := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat) * 100));
      vAux2 := StrToFloat(FormatFloat('0.0000',(vDescAux * vAux2) / 100));
      vDescAux := vAux2;
    end;
  end
  else
  begin
    vTamAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    vID     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger;
  end;
  //21/12/2017
  vGeraCusto := 'N';
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E') and (fDMCadNotaFiscal.cdsCFOPGERAR_CUSTO_MEDIO.AsString = 'S') then
    vGeraCusto := 'S';
  //*******************

  Result := fDMEstoque.fnc_Gravar_Estoque(vID,
                                          fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,0,
                                          fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString,'NTS',
                                          vUnidade,
                                          vUnidade,
                                          fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
                                          vTamAux,
                                          fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                          //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat, 11/09/2015
                                          vVlrAux,
                                          //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,  16/02/2015
                                          vQtdAux,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                          vDescAux,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                          //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,
                                          vQtdAux,
                                          //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat, 11/09/2015
                                          vVlrAux,
                                          vDescAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat,'',
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,vGeraCusto,
                                          fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat);
end;

procedure TfrmCadNotaFiscal.prc_scroll_Itens(DataSet: TDataSet);
begin
  VDBGrid1.Visible := ((fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'S') and not(fDMCadNotaFiscal.cdsNotaFiscal_Tam.IsEmpty));
end;

procedure TfrmCadNotaFiscal.gbxDuplicataEnter(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger <= 0 then
    rxdbCondicaoPgto.ReadOnly := False;
end;

function TfrmCadNotaFiscal.fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1,
  Desc2, Desc3: String; Item: Integer; Vlr_Limite: Real): Boolean;
var
  ffrmSenha: TfrmSenha;
  vSenha_Pertence: String;
begin
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  Result := True;

  if (trim(fDMCadNotaFiscal.cdsParametros.FieldByName(Campo_Senha).AsString) <> '') or
  (trim(fDMCadNotaFiscal.qParametros_Usuario.FieldByName(Campo_Senha).AsString) <> '') then
  begin
    vSenha    := '';
    vSenha_Pertence := 'Principal';
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Panel1.Visible := (Tipo = 'R');
    ffrmSenha.Label2.Caption := Desc1;
    ffrmSenha.Label3.Caption := Desc2;
    ffrmSenha.Label4.Caption := Desc3;
    if (StrToFloat(FormatFloat('0.00',Vlr_Limite)) <> 0) and (StrToFloat(FormatFloat('0.00',Vlr_Limite)) < 0) then
      ffrmSenha.Label4.Font.Color := clRed
    else
    if (StrToFloat(FormatFloat('0.00',Vlr_Limite)) <> 0) and (StrToFloat(FormatFloat('0.00',Vlr_Limite)) > 0) then
      ffrmSenha.Label4.Font.Color := clNavy;
      
    ffrmSenha.ShowModal;
    FreeAndNil(ffrmSenha);
    if (trim(vSenha) = '') and (Tipo <> 'R') then
    begin
      Result := False;
      MessageDlg('*** Senha não informada!', mtError, [mbOk], 0);
      exit;
    end;
    if Tipo <> 'R' then
    begin
      if vSenha <> fDMCadNotaFiscal.cdsParametros.FieldByName(Campo_Senha).AsString then
      begin
        if vSenha <> fDMCadNotaFiscal.qParametros_Usuario.FieldByName(Campo_Senha).AsString then
        begin
          Result := False;
          MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
          exit;
        end
        else
          vSenha_Pertence := vUsuario;
      end;
      if fDMCadNotaFiscal.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S' then
      begin
        if not fDMCadNotaFiscal.mSenha.Locate('Tipo_Alt;Item',VarArrayOf([Opcao_Senha,Item]),[locaseinsensitive]) then
        begin
          fDMCadNotaFiscal.mSenha.Insert;
          fDMCadNotaFiscal.mSenhaTipo_Alt.AsString       := Opcao_Senha;
          fDMCadNotaFiscal.mSenhaSenha.AsString          := vSenha;
          fDMCadNotaFiscal.mSenhaItem.AsInteger          := Item;
          fDMCadNotaFiscal.mSenhaTipo_Doc.AsString       := 'NTS';
          fDMCadNotaFiscal.mSenhaSenha_Pertence.AsString := vSenha_Pertence;
          fDMCadNotaFiscal.mSenha.Post;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadNotaFiscal.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmConsPedido_Senha: TfrmConsPedido_Senha;
begin
  if (Key = Vk_F12) then
  begin
    ffrmConsPedido_Senha := TfrmConsPedido_Senha.Create(self);
    ffrmConsPedido_Senha.CurrencyEdit1.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsInteger;
    ffrmConsPedido_Senha.ComboBox1.ItemIndex     := 1;
    ffrmConsPedido_Senha.ShowModal;
    FreeAndNil(ffrmConsPedido_Senha);
  end
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vID_CFOP_Ant := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
end;

procedure TfrmCadNotaFiscal.gbxDuplicataExit(Sender: TObject);
begin
  if rxdbCondicaoPgto.Text = '[..Nenhuma..]' then
    prc_Opcao_Prazo;
end;

function TfrmCadNotaFiscal.fnc_Duplicata: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := True;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString <> 'S' then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.Close;
  sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM DUPLICATA WHERE ID_NOTA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
  sds.Open;
  if (sds.IsEmpty) or (sds.FieldByName('CONTADOR').AsInteger <= 0) then
  begin
    Result := False;
    MessageDlg('*** Duplicata não gerada, favor alterar a nota e confirmar novamente!' , mtInformation, [mbOk], 0);
  end;
  FreeAndNil(sds);
end;

function TfrmCadNotaFiscal.fnc_Movimento: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := True;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.Close;
  sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM NOTAFISCAL_ITENS I '
                     + 'INNER join PRODUTO PRO ON I.id_produto = PRO.ID '
                     + 'WHERE I.ID = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger) 
                     + ' AND PRO.tipo_reg <> ' + QuotedStr('N')
                     + ' AND ((i.gravou_tab_tamanho = ' + QuotedStr('N') + ')' + ' or (i.gravou_tab_tamanho is null))'
                     + ' AND (((I.gerar_estoque = ' + QuotedStr('S') + ') '
                     + ' AND (I.id_movestoque <= 0)) '
                     + '  or (I.id_movimento <= 0)) ';
  sds.Open;
  if not(sds.IsEmpty) and (sds.FieldByName('CONTADOR').AsInteger > 0) then
  begin
    Result := False;
    MessageDlg('*** Movimento ou Estoque não gerado, favor alterar e confirmar a nota novamente!!' , mtInformation, [mbOk], 0);
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadNotaFiscal.btnRegravarClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) then
    exit;
  prc_Posiciona_NotaFiscal;
  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '' then
    prc_Gravar_Registro(True);
end;

procedure TfrmCadNotaFiscal.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadNotaFiscal.btnAjustarComissaoItensClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) then
    exit;
  uGrava_NotaFiscal.prc_Ajustar_Comissao_Itens(fDMCadNotaFiscal);  
end;

procedure TfrmCadNotaFiscal.NxButton2Click(Sender: TObject);
var
  vArq: String;
  vId: Integer;
begin
  if fDmCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty then
    Exit
  else
  begin
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CarnePgtoNF.fr3';
    if FileExists(vArq) then
      fDmCadNotaFiscal.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    vId := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Filtered := False;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Filter   := 'ID = ' + IntToStr(vId);
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Filtered := True;
    fDMCadNotaFiscal.Abrir_DuplicatasNota(fDmCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);

    fDmCadNotaFiscal.frxReport1.ShowReport;

    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Filtered := False;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Filter   := '';
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IndexFieldNames := 'ID';
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.FindKey([vId]);
  end;
end;

procedure TfrmCadNotaFiscal.btnAjusteCustoClick(Sender: TObject);
var
  ffrmCadNotaFiscal_Custo: TfrmCadNotaFiscal_Custo;
  vVlrAnt: Real;
  vVlrNovo: Real;
  vVlrFrete: Real;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <= 0) then
    exit;

  vVlrAnt := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat));
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString = '-' then
    vVlrAnt := StrToFloat(FormatFloat('0.00',vVlrAnt *-1));

  fDMCadNotaFiscal.vMSGNotaFiscal := '';
  ffrmCadNotaFiscal_Custo := TfrmCadNotaFiscal_Custo.Create(self);
  ffrmCadNotaFiscal_Custo.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Custo.ShowModal;
  FreeAndNil(ffrmCadNotaFiscal_Custo);

  if trim(fDMCadNotaFiscal.vMSGNotaFiscal) <> 'OK' then
    exit;

  vVlrNovo  := StrToFloat(FormatFloat('0.00',0));
  vVlrFrete := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Custo.Eof do
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString = '-' then
      vVlrNovo := StrToFloat(FormatFloat('0.00',vVlrNovo - fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat))
    else
      vVlrNovo := StrToFloat(FormatFloat('0.00',vVlrNovo + fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat));
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoFRETE.AsString = 'S' then
      vVlrFrete := vVlrFrete + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_Custo.Next;
  end;
  if (StrToFloat(FormatFloat('0.00',vVlrAnt)) <> StrToFloat(FormatFloat('0.00',vVlrNovo))) or
     (StrToFloat(FormatFloat('0.00',vVlrFrete)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE_CUSTO.AsFloat))) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrNovo));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat)) < 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString := '-';
      fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat * -1));
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString := '+';
    fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrFrete));
    prc_Calcular_Ajuste_Custo(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscal.Post;
    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
  end;
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo5.SetFocus;
  end;
end;

procedure TfrmCadNotaFiscal.ImprimirEtiquetas1Click(Sender: TObject);
var
  vArq: String;
  fDMEtiqueta: TDMEtiqueta;
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
    exit;

  fDMEtiqueta := TDMEtiqueta.Create(Self);

  fDMEtiqueta.prc_Monta_Etiqueta_Calcado('A',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\SulTextil_Etiq_Nota.fr3';
  if FileExists(vArq) then
    fDMEtiqueta.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMEtiqueta.frxReport1.ShowReport;
  FreeAndNil(fDMEtiqueta);
end;

procedure TfrmCadNotaFiscal.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
  begin
    if RxDBLookupCombo4.KeyValue <> fDMCadNotaFiscal.cdsTransportadoraCODIGO.AsInteger then
      fDMCadNotaFiscal.cdsTransportadora.Locate('CODIGO',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
    if trim(fDMCadNotaFiscal.cdsTransportadoraPLACA.AsString) <> '' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString   := fDMCadNotaFiscal.cdsTransportadoraPLACA.AsString;
      fDMCadNotaFiscal.cdsNotaFiscalUFPLACA.AsString := fDMCadNotaFiscal.cdsTransportadoraUF_PLACA.AsString;
    end;
  end;
end;

procedure TfrmCadNotaFiscal.PrFaturamento1Click(Sender: TObject);
var
  ffrmSel_PreFat: TfrmSel_PreFat;
begin
  fDMPreFat := TDMPreFat.Create(Self);

  ffrmSel_PreFat := TfrmSel_PreFat.Create(self);
  ffrmSel_PreFat.fDMPreFat := fDMPreFat;
  ffrmSel_PreFat.ShowModal;
  FreeAndNil(ffrmSel_PreFat);

  if fDMPreFat.vID_PreFat <= 0 then
  begin
    FreeAndNil(fDMPreFat);
    exit;
  end;

  fDMPreFat.cdsPreFat.Close;
  fDMPreFat.sdsPreFat.ParamByName('ID').AsInteger := fDMPreFat.vID_PreFat;
  fDMPreFat.cdsPreFat.Open;
  if fDMPreFat.cdsPreFatID.AsInteger <= 0 then
  begin
    FreeAndNil(fDMPreFat);
    MessageDlg('*** Pré faturamento não encontrado!' , mtInformation, [mbOk], 0);
    exit;
  end;

  btnInserirClick(Self);
  fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger := fDMPreFat.cdsPreFatID_CLIENTE.AsInteger;
  RxDBLookupCombo3Exit(Sender);
  vID_Cliente_Ant := 0;
  vID_CFOP_Ant    := 0;
  Panel4Exit(Sender);
  fDMCadNotaFiscal.cdsNotaFiscalID_PREFAT.AsInteger  := fDMPreFat.vID_PreFat;
  fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger  := fDMPreFat.cdsPreFatQTD_VOLUME.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger    := fDMPreFat.vID_CFOP_PreFat;
  if fDMPreFat.cdsPreFatID_TRANSPORTADORA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMPreFat.cdsPreFatID_TRANSPORTADORA.AsInteger;
  RxDBLookupCombo2Exit(Sender);
  pnlClienteExit(Sender);

  //Itens
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  fDMPreFat.cdsPreFat_Itens.First;
  while not fDMPreFat.cdsPreFat_Itens.Eof do
  begin
    prc_Gravar_Itens_PreFat;
    fDMPreFat.cdsPreFat_Itens.Next;
  end;
  FreeAndNil(fDMPreFat);
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.prc_Gravar_Itens_PreFat;
var
  vItemAux: Integer;
  vNum_Controle_Tam: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
  vExiste: Boolean;
  vQtd_Tam: Real;
  vGravaAux: Boolean;
begin
  fDMCadNotaFiscal.cdsPedido.Close;
  fDMCadNotaFiscal.sdsPedido.CommandText := fDMCadNotaFiscal.ctPedido
                                          + ' AND PI.ID = ' + IntToStr(fDMPreFat.cdsPreFat_ItensID_PEDIDO.AsInteger)
                                          + ' AND PI.ITEM = ' + IntToStr(fDMPreFat.cdsPreFat_ItensITEM_PEDIDO.AsInteger);
  fDMCadNotaFiscal.cdsPedido.Open;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger       := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := fDMCadNotaFiscal.cdsPedidoID_PRODUTO.AsInteger;
  if fDMCadNotaFiscal.cdsPedidoID_COR.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger := fDMCadNotaFiscal.cdsPedidoID_COR.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue     := fDMCadNotaFiscal.cdsPedidoID_CFOP.AsInteger;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
  fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsPedidoID_NCM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString   := fDMCadNotaFiscal.cdsPedidoUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat        := fDMPreFat.cdsPreFat_ItensQTD.AsFloat;
  if fDMCadNotaFiscal.qParametros_NFeCOPIA_PED_IMPOSTO.AsString <> 'N' then 
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat := fDMCadNotaFiscal.cdsPedidoPERC_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsPedidoVLR_UNITARIO.AsFloat;
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString   := fDMCadNotaFiscal.cdsPedidoNOMEPRODUTO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString     := fDMCadNotaFiscal.cdsPedidoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := 0;
  if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := 0
  else
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO_ITEM.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO_ITEM.AsFloat))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsPedidoPERC_COMISSAO.AsFloat));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat     := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsPedidoOBS_COMPLEMENTAR.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString      := fDMCadNotaFiscal.cdsPedidoPEDIDO_CLIENTE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString      := fDMCadNotaFiscal.cdsPedidoNUMOS.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger  := fDMCadNotaFiscal.cdsPedidoITEM_CLIENTE.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_PEDIDO.AsInteger    := fDMCadNotaFiscal.cdsPedidoNUM_PEDIDO.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString    := fDMCadNotaFiscal.cdsPedidoIMP_OC_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString      := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_TALAO.AsString      := fDMCadNotaFiscal.cdsPedidoNUM_TALAO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString := fDMCadNotaFiscal.cdsPedidoTAMANHO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger   := fDMCadNotaFiscal.cdsPedidoITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger     := fDMCadNotaFiscal.cdsPedidoID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger := fDMCadNotaFiscal.cdsPedidoITEM_ORIGINAL.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_COR_COMBINACAO.AsString := fDMCadNotaFiscal.cdsPedidoNOME_COR.AsString;
  if fDMCadNotaFiscal.cdsPedidoID_MOVESTOQUE.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE_PED.AsInteger := fDMCadNotaFiscal.cdsPedidoID_MOVESTOQUE.AsInteger;

  ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;
  ffrmCadNotaFiscal_Itens.vPedidoSelecionado := True;
  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
  vFlag := ffrmCadNotaFiscal_Itens.vGravacao_Ok;
end;

procedure TfrmCadNotaFiscal.RxDBComboBox4Exit(Sender: TObject);
begin
  if vFinalidade_Ant <> fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString then
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2') or (fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '3') then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := 0
    else
    if (fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '4') then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := 9
    else
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger := 1;
  end;
end;

procedure TfrmCadNotaFiscal.RxDBComboBox4Enter(Sender: TObject);
begin
  vFinalidade_Ant := fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString;
end;

function TfrmCadNotaFiscal.fnc_Duplicata_Enviada_Banco : String; //R= Remessa   N=Nosso Numero
var
  sds: TSQLDataSet;
begin
  Result := '';
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString <> 'S' then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.Close;
  sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM DUPLICATA D WHERE ((coalesce(D.NUM_REMESSA,0) > 0) '
                   + ' or (D.arquivo_gerado = ' + QuotedStr('S') + '))'
                   + ' AND D.id_nota = '  + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
  sds.Open;
  if (sds.FieldByName('CONTADOR').AsInteger > 0) then
    Result := 'R'
  else
  begin
    sds.Close;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM DUPLICATA D WHERE D.ID_NOTA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger)
                     + ' AND (coalesce(D.NOSSONUMERO,' + QuotedStr('')+') <> ' + QuotedStr('')+')';
    sds.Open;
    if (sds.FieldByName('CONTADOR').AsInteger > 0) then
      Result := 'N';
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadNotaFiscal.prc_Opcao_Triang;
var
  vAux : String;
begin
  vAux := 'N';
  if (fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0) then
  begin
    if (fDMCadNotaFiscal.cdsOperacao_NotaID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger) then
      (fDMCadNotaFiscal.cdsOperacao_Nota.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]));
    vAux := fDMCadNotaFiscal.cdsOperacao_NotaMOSTRAR_CLI_TRIANG2.AsString;
  end;
  pnlCliTriangular.Visible := ((fDMCadNotaFiscal.cdsCFOPCOPIARNOTATRIANGULAR.AsString = 'S') OR (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0)
                               OR (vAux = 'S'));
end;

procedure TfrmCadNotaFiscal.btnCopiarRecNFClick(Sender: TObject);
var
  vItemAux: Integer;
  ffrmSel_RecNF: TfrmSel_RecNF;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
  begin
    MessageDlg('*** Essa opção pode ser usada somente em Nota de Saída!' , mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger <= 0) then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;

  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  ffrmCadNotaFiscal_Itens := TfrmCadNotaFiscal_Itens.Create(self);
  ffrmCadNotaFiscal_Itens.fDMCadNotaFiscal := fDMCadNotaFiscal;

  ffrmSel_RecNF := TfrmSel_RecNF.Create(self);
  ffrmSel_RecNF.vCodCliente             := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  ffrmSel_RecNF.fDMCadNotaFiscal        := fDMCadNotaFiscal;
  ffrmSel_RecNF.ffrmCadNotaFiscal_Itens := ffrmCadNotaFiscal_Itens;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0 then
    ffrmSel_RecNF.vID_CFOP := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
  ffrmSel_RecNF.ShowModal;
  FreeAndNil(ffrmSel_RecNF);
  FreeAndNil(ffrmCadNotaFiscal_Itens);

  btnCalcular_ValoresClick(Sender);
  prc_Opcao_Prazo;
  btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.ArquivoSuframa1Click(Sender: TObject);
var
  Xml: IXMLLote;
  XmlNota: IXMLLote_notasFiscais_notaFiscal;
  vNomeArquivo : string;
begin
  if MessageDlg('Deseja gerar o arquivo  Suframa (XML)?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if not fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_CLIENTE.AsInteger,[loCaseInsensitive]) then
  begin
    MessageDlg('*** Cliente não encontrado!' , mtInformation, [mbOk], 0);
    exit;
  end;
  if not fDMCadNotaFiscal.cdsTransportadora.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_TRANSPORTADORA.AsInteger,[loCaseInsensitive]) then
  begin
    MessageDlg('*** Transportadora não encontrada!' , mtInformation, [mbOk], 0);
    exit;
  end;

  Xml := Newlote;

  Xml.Attributes['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
  Xml.Attributes['xsi:schemaLocation'] := 'http://www.portal.fucapi.br http://alvaraes.suframa.gov.br:7778/PMNRecEViewController/jsp/importardados/NFe.xsd';
  Xml.DtEmissao := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaDTEMISSAO.AsString;
  Xml.Versao_sw := fDMCadNotaFiscal.qParametros_NFeVERSAO_SUFRAMA.AsString;
  Xml.Nro := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsInteger;
  Xml.CnpjDestinatario := Monta_Numero(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,0);
  Xml.cnpjTransp := Monta_Numero(fDMCadNotaFiscal.cdsTransportadoraCNPJ_CPF.AsString,0);
  Xml.inscSufDestinatario := fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString;
  Xml.ufDestino := fDMCadNotaFiscal.cdsClienteUF.AsString;
  Xml.ufOrigem  := fDMCadNotaFiscal.cdsFilialUF.AsString;
  Xml.qtdeNF := 1;

  XmlNota := Xml.NotasFiscais.Add;
  XmlNota.chaveAcesso := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNFECHAVEACESSO.AsString;
  XmlNota.TxZero := True;

 //  Xml.OwnerDocument.Options := [doNodeAutoIndent];

  try
    vNomeArquivo := fDMCadNotaFiscal.qParametros_NFeEND_ARQUIVO_SUFRAMA.AsString + '\' + fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsString + '.sin';
    Xml.OwnerDocument.Encoding := 'UTF-8';
    xml.OwnerDocument.SaveToFile(vNomeArquivo);
    MessageDlg('*** Arquivo Sufrma gerado ' + vNomeArquivo , mtInformation, [mbOk], 0);
  except
    on e: Exception do
      begin
        raise Exception.Create('Erro ao gravar o Arquivo Suframal: ' + vNomeArquivo + #13 + e.Message);
      end;
  end;

//  Memo1.Lines.Text := XMLDoc.FormatXMLData( Xml.XML );
end;

procedure TfrmCadNotaFiscal.DBDateEdit3Change(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadNotaFiscal.ImprimirMinuta1Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Active) or (fDMCadNotaFiscal.cdsNotaFiscal_Consulta.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger <= 0) then
    exit;

  fDMCadNotaFiscal.cdsImpNota.Close;
  fDMCadNotaFiscal.sdsImpNota.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger;
  fDMCadNotaFiscal.cdsImpNota.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Minuta_Entrega.fr3';
  if FileExists(vArq) then
    fDMCadNotaFiscal.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadNotaFiscal.frxReport1.ShowReport;
end;

end.





