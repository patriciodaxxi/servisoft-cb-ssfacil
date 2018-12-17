UNIT UCadPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCadPedido_Itens, UCadPedido_Desconto, UEscolhe_Filial, UCBase, RzPanel, UCadTabPreco, Math, UCadPedido_Cancelamento,
  DateUtils, dbXPress, NxCollection, Menus, Variants, USel_TabPreco, ULeExcel, NxEdit, VarUtils, UEtiq_Individual, Provider,
  UCadPedido_Ace, UGerar_Rotulos, UGerar_Rotulos_Color, DBClient, UCadPedido_Itens_Copia, UConsOrdProd_Ped, UConsHist_Chapa,
  UDMSel_Produto, uCadObs_Aux, UCadPedido_ItensRed;

type
  TfrmCadPedido = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    edtCliente: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    cePedInterno: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    RzTabSheet2: TRzTabSheet;
    pnlTransporte_Geral: TPanel;
    TS_Valores: TRzTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    pnlValores: TPanel;
    Label24: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit19: TDBEdit;
    gbxIcms: TGroupBox;
    Label29: TLabel;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    btnDesconto: TBitBtn;
    btnCalcular_Valores: TBitBtn;
    gbxSubstituicao: TGroupBox;
    Label46: TLabel;
    Label53: TLabel;
    DBEdit18: TDBEdit;
    DBEdit33: TDBEdit;
    gbxTransfIcms: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel10: TPanel;
    Label76: TLabel;
    Label80: TLabel;
    DBEdit47: TDBEdit;
    DBEdit52: TDBEdit;
    Panel11: TPanel;
    lblSerie: TLabel;
    edtPedCliente: TEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    UCControls1: TUCControls;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    Panel12: TPanel;
    Label13: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    pnlCliente: TPanel;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label20: TLabel;
    rxcbFinalidade: TRxDBComboBox;
    Label21: TLabel;
    DBDateEdit2: TDBDateEdit;
    btnTab_Preco: TBitBtn;
    Panel4: TPanel;
    Label25: TLabel;
    Shape1: TShape;
    Shape5: TShape;
    Label30: TLabel;
    Shape6: TShape;
    Label31: TLabel;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnImprimir: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnConsultar: TNxButton;
    PopupMenu1: TPopupMenu;
    Normal1: TMenuItem;
    amanho1: TMenuItem;
    Conferncia1: TMenuItem;
    Etiqueta1: TMenuItem;
    pnlMaterial: TPanel;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    amanhoSemMaterial1: TMenuItem;
    lblNaoMostrarPreco: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit11: TDBEdit;
    Etiqueta2: TMenuItem;
    Label41: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    ckImpPreco: TCheckBox;
    ckMeiaFolha: TCheckBox;
    ckImpImposto: TCheckBox;
    ckImpPeso: TCheckBox;
    ckImpDtProducao: TCheckBox;
    btnImportarXML: TNxButton;
    PopupMenu3: TPopupMenu;
    Excel1: TMenuItem;
    Label42: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    pnlTipoItem: TPanel;
    SMDBGrid6: TSMDBGrid;
    ckImpFoto: TCheckBox;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    EtiquetaA41: TMenuItem;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label43: TLabel;
    Shape8: TShape;
    Label44: TLabel;
    EtiquetaCaixaIndividual1: TMenuItem;
    btnFilial: TNxButton;
    Shape9: TShape;
    Label45: TLabel;
    N1: TMenuItem;
    Personalizado1: TMenuItem;
    gbxTransportes: TRzGroupBox;
    pnlTransporte: TPanel;
    Label84: TLabel;
    Label57: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label36: TLabel;
    Label37: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox6: TRxDBComboBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    gbxDuplicata: TRzGroupBox;
    Label47: TLabel;
    Label72: TLabel;
    SpeedButton6: TSpeedButton;
    Label58: TLabel;
    SpeedButton5: TSpeedButton;
    Label59: TLabel;
    Label62: TLabel;
    Label74: TLabel;
    SMDBGrid_Dupl2: TSMDBGrid;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    rxdbTipoCobranca: TRxDBLookupCombo;
    rxdbConta: TRxDBLookupCombo;
    DBEdit16: TDBEdit;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    pnlPorta: TPanel;
    SMDBGrid8: TSMDBGrid;
    pnlVidro: TPanel;
    SMDBGrid7: TSMDBGrid;
    TS_Trilhos: TRzTabSheet;
    TS_Roldanas: TRzTabSheet;
    Panel5: TPanel;
    btnInserir_Trilhos: TNxButton;
    btnAlterar_Trilhos: TNxButton;
    btnExcluir_Trilhos: TNxButton;
    SMDBGrid9: TSMDBGrid;
    Panel6: TPanel;
    btnInserir_Roldanas: TNxButton;
    btnAlterar_Roldanas: TNxButton;
    btnExcluir_Roldanas: TNxButton;
    SMDBGrid10: TSMDBGrid;
    pnlAcessorios: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    gbImpressao: TGroupBox;
    cbPorta: TCheckBox;
    cbVidro: TCheckBox;
    Personalizado21: TMenuItem;
    Personalizado31: TMenuItem;
    EtiquetaRtulo1: TMenuItem;
    Rtulo11: TMenuItem;
    Rtulo21: TMenuItem;
    EtiquetaIndividual1: TMenuItem;
    Pedido1: TMenuItem;
    PedidosPersonalizados1: TMenuItem;
    btnCopiar_Item: TBitBtn;
    btnCopiarPedido: TNxButton;
    Rtulo31: TMenuItem;
    btnConsOrd_Prod: TNxButton;
    cbOutros: TCheckBox;
    Shape10: TShape;
    Label50: TLabel;
    Shape7: TShape;
    Label32: TLabel;
    ckNaoAprovado: TCheckBox;
    gbxVlr_Adiantado: TRzGroupBox;
    Label52: TLabel;
    DBEdit20: TDBEdit;
    gbxVendedor: TRzGroupBox;
    pnlVendedor: TPanel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    pnlTotal: TPanel;
    Label23: TLabel;
    Label51: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    btnRecalcular: TNxButton;
    Label56: TLabel;
    NxDatePicker3: TNxDatePicker;
    Label60: TLabel;
    NxDatePicker4: TNxDatePicker;
    TS_ObsNota: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    DBMemo2: TDBMemo;
    lblInfDtExpedicao: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    SpeedButton7: TSpeedButton;
    btnAlterar_CondPgto: TSpeedButton;
    N2: TMenuItem;
    PedidoProduo1: TMenuItem;
    RomaneioParaExpedio1: TMenuItem;
    RtuloPorGrade1: TMenuItem;
    Label66: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    Pictograma1: TMenuItem;
    PedidoSaldo1: TMenuItem;
    PedidoProduoTerceiro1: TMenuItem;
    Label61: TLabel;
    cbxOpcao: TComboBox;
    Label67: TLabel;
    Shape11: TShape;
    Label68: TLabel;
    EtiquetaPorItemdoPedido1: TMenuItem;
    btnAltDtEntrega: TBitBtn;
    Label69: TLabel;
    rxdbTipoCobranca2: TRxDBLookupCombo;
    btnRegravaItens: TBitBtn;
    Label70: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnDadosCupom: TBitBtn;
    Label71: TLabel;
    DBEdit22: TDBEdit;
    btnOutrasOpcoes: TNxButton;
    PopupMenu2: TPopupMenu;
    CancelarPedido1: TMenuItem;
    CancelarItemdoPedido1: TMenuItem;
    Shape12: TShape;
    Label75: TLabel;
    PedidoProduo2: TMenuItem;
    ckImpAcumulado: TCheckBox;
    Label77: TLabel;
    DBEdit24: TDBEdit;
    pnlServico: TPanel;
    Label73: TLabel;
    DBEdit23: TDBEdit;
    Label78: TLabel;
    DBDateEdit4: TDBDateEdit;
    btnCopiarOS: TBitBtn;
    Label79: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    pnlDadosAdicionais: TPanel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    BitBtn2: TBitBtn;
    Label81: TLabel;
    btnAltProdCli: TBitBtn;
    CarndePagamento1: TMenuItem;
    Shape13: TShape;
    Label82: TLabel;
    aloPorPedido1: TMenuItem;
    N3: TMenuItem;
    ckImpOrdem: TCheckBox;
    btnConsTempo: TBitBtn;
    Panel7: TPanel;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    pnlTab_Preco: TPanel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label83: TLabel;
    DBCheckBox5: TDBCheckBox;
    Panel2: TPanel;
    Label33: TLabel;
    Label63: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    EtiquetaA4Seleciona1: TMenuItem;
    aloPorProcesso1: TMenuItem;
    DBCheckBox6: TDBCheckBox;
    Label85: TLabel;
    DBEdit27: TDBEdit;
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
    procedure btnDescontoClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlClienteEnter(Sender: TObject);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure btnTab_PrecoClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Conferncia1Click(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure Etiqueta1Click(Sender: TObject);
    procedure amanhoSemMaterial1Click(Sender: TObject);
    procedure ckImpPrecoClick(Sender: TObject);
    procedure Etiqueta2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure EtiquetaA41Click(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure EtiquetaCaixaIndividual1Click(Sender: TObject);
    procedure btnFilialClick(Sender: TObject);
    procedure Personalizado1Click(Sender: TObject);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure rxdbCondicaoPgtoChange(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserir_TrilhosClick(Sender: TObject);
    procedure btnAlterar_TrilhosClick(Sender: TObject);
    procedure btnExcluir_TrilhosClick(Sender: TObject);
    procedure btnInserir_RoldanasClick(Sender: TObject);
    procedure btnAlterar_RoldanasClick(Sender: TObject);
    procedure btnExcluir_RoldanasClick(Sender: TObject);
    procedure Rtulo11Click(Sender: TObject);
    procedure Rtulo21Click(Sender: TObject);
    procedure Personalizado21Click(Sender: TObject);
    procedure btnCopiar_ItemClick(Sender: TObject);
    procedure btnCopiarPedidoClick(Sender: TObject);
    procedure Rtulo31Click(Sender: TObject);
    procedure Personalizado31Click(Sender: TObject);
    procedure SMDBGrid9GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid10GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsOrd_ProdClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure rxdbContaChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnAlterar_CondPgtoClick(Sender: TObject);
    procedure PedidoProduo1Click(Sender: TObject);
    procedure RomaneioParaExpedio1Click(Sender: TObject);
    procedure RtuloPorGrade1Click(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
    procedure Pictograma1Click(Sender: TObject);
    procedure PedidoSaldo1Click(Sender: TObject);
    procedure PedidoProduoTerceiro1Click(Sender: TObject);
    procedure EtiquetaPorItemdoPedido1Click(Sender: TObject);
    procedure btnRegravaItensClick(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure btnDadosCupomClick(Sender: TObject);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure CancelarItemdoPedido1Click(Sender: TObject);
    procedure btnAltDtEntregaClick(Sender: TObject);
    procedure PedidoProduo2Click(Sender: TObject);
    procedure btnCopiarOSClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure pnlDadosAdicionaisEnter(Sender: TObject);
    procedure btnAltProdCliClick(Sender: TObject);
    procedure CarndePagamento1Click(Sender: TObject);
    procedure aloPorPedido1Click(Sender: TObject);
    procedure btnConsTempoClick(Sender: TObject);
    procedure EtiquetaA4Seleciona1Click(Sender: TObject);
    procedure aloPorProcesso1Click(Sender: TObject);
  private
    { Private declarations }
    vRetirada: String;
    fDMCadPedido: TDMCadPedido;
    fDMSel_Produto: TDMSel_Produto;
    ffrmCadPedido_Itens: TfrmCadPedido_Itens;
    ffrmCadPedido_ItensRed: TfrmCadPedido_ItensRed;
    ffrmCadPedido_Desconto: TfrmCadPedido_Desconto;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadTabPreco: TfrmCadTabPreco;
    ffrmCadPedido_Cancelamento: TfrmCadPedido_Cancelamento;
    ffrmSel_TabPreco: TfrmSel_TabPreco;
    ffrmLeExcel: TfrmLeExcel;
    ffrmEtiq_Individual: TfrmEtiq_Individual;
    ffrmCadPedido_Ace: TfrmCadPedido_Ace;
    ffrmGerar_Rotulos: TfrmGerar_Rotulos;
    ffrmGerar_Rotulos_Color: TfrmGerar_Rotulos_Color;
    ffrmConsHist_Chapa: TfrmConsHist_Chapa;
    ffrmCadObs_Aux: TfrmCadObs_Aux;

    vID_ClienteAnt: Integer;
    vVlrFrete_Ant: Real;
    vInclusao_Edicao: String; //I=Incluir   E=Editar

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Informar_Filial;
    procedure prc_Posiciona_Pedido;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    procedure Mostrar_Tab_Preco(ID_Cliente: Integer);
    function fnc_Verifica_Registro: Boolean;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Imp;
    procedure prc_Monta_Etiqueta_Nav;
    procedure prc_Monta_Etiqueta_Calcado(Tipo: String); //D= DOS   A=A4 em windows
    procedure prc_Gravar_mEtiqueta_Nav(Tamanho: String);
    procedure prc_Imprimir_Etiqueta;
    procedure prc_Gravar_Pedido_Excel;
    procedure prc_Opcao_Consumidor;
    procedure prc_Opcao_Prazo;

    function fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1, Desc2, Desc3: String ; Item: Integer): Boolean;

    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_scroll2(DataSet: TDataSet);
    procedure prc_Monta_Impressao(vGerar_Tamanho: Boolean);

    procedure prc_Controle_Imp(Tipo_Imp: String = 'N');

    procedure prc_Gravar_Carrinho;
    function fnc_Lote: Boolean;
    function fnc_Existe_Baixa(ID, Item : Integer) : Boolean;

  public
    { Public declarations }
    vQtd_Caixa: Integer;
  end;

var
  frmCadPedido: TfrmCadPedido;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, uRelPedido, uRelPedido_SulTextil, uRelPedido2, USel_Pessoa, UDMUtil, USenha,
  URelPedido_Tam, URelEtiqueta_Nav, URelPedido_Tam2, URelPedido_JW, URelEtiqueta, uUtilCliente, uCalculo_Pedido, UCadPedido_Copia,
  UConsPedido_Nota, UDMConsPedido, UInformar_DtExpedicao, UInformar_Processo_Ped, UConsPedido_Senha, USel_Produto, UCadPedido_Cupom,
  UDMPedidoImp, USel_OS_Proc, UCadPedido_ItensCli, UTalaoPed,
  UConsPedido_Real, UImpEtiq_Emb, UTalaoPedProc, uGrava_Pedido;

{$R *.dfm}

procedure TfrmCadPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vNum_Pedido_Pos := 0;
  vTipo_Pedido    := '';
  FreeAndNil(fDMCadPedido);
  Action := Cafree;
end;

procedure TfrmCadPedido.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    Exit;

  if (((fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (trim(fDMCadPedido.qParametros_LoteUSA_LOTE_PED_SPROC.AsString) = 'S'))  and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S')) or
     ((fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and ((fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or
     (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0))) then
  begin
    MessageDlg('*** Lote/Talão de Produção gerado!',mtError, [mbOk], 0);
    exit;
  end;

  //28/08/2018
  if fDMCadPedido.qParametros_SerLIB_QTD_PEDIDO.AsString = 'S' then
  begin
    if fnc_Existe_Baixa(fDMCadPedido.cdsPedido_ConsultaID.AsInteger,0) then
    begin
      MessageDlg('*** Pedido não pode ser excluido, possui liberação para faturamento!',mtError, [mbOk], 0);
      exit;
    end;
  end;
  //*******************

  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'P') then
    if not fnc_senha('EXC','SENHA_PEDIDO','','','','',0) then
      exit;
  if (fDMCadPedido.cdsPedido_ConsultaROTULO_IMP.AsString = 'S') and (fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S') then
    if not fnc_senha('ROT','SENHA_PEDIDO','R','','Rótulo já impresso','',0) then
      exit;

  prc_Posiciona_Pedido;

  if fDMCadPedido.cdsPedido.IsEmpty then
    Exit;

  if (fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') and (fDMCadPedido.fnc_Existe_DupPaga(fDMCadPedido.cdsPedidoID.AsInteger) > 0) then
  begin
    MessageDlg('*** Pedido não pode ser excluído, pois já existe duplicatas pagas!', mtError, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  if fDMCadPedido.fnc_Existe_Fat(fDMCadPedido.cdsPedidoID.AsInteger) > 0 then
  begin
    MessageDlg('*** Pedido não pode ser excluído, pois já foi faturado!', mtError, [mbOk], 0);
    Exit;
  end;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadPedido.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPedido.prc_Excluir_Registro;
begin
  uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
end;

procedure TfrmCadPedido.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vAux: Real;
  ffrmSenha: TfrmSenha;
  vID_LocalAux: Integer;
  vItemAux: Integer;
begin
  //Alerta valores em atraso 11/05/2015
  if (fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger <= 0) and (fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
    if vID_LocalAux <= 0 then
      vID_LocalAux := 1;
    fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;
  end;

  if (fDMCadPedido.cdsParametrosALERTA_VLR_ATRASO.AsString = 'S') and (fDMCadPedido.cdsParametrosUSA_LIMITE_CREDITO.AsString <> 'S') then
  begin
    vAux := fnc_Limite_Credito(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,0,date);
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(fDMCadPedido.cdsParametrosSENHA_CREDITO.AsString) = EmptyStr) then
    begin
      if MessageDlg('Cliente possui título em atraso, confirma o pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        exit;
    end
    else
    if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (trim(fDMCadPedido.cdsParametrosSENHA_CREDITO.AsString) <> '') then
    begin
      if not fnc_senha('ATR','SENHA_CREDITO','','Valor em atraso: ' + FormatFloat('###,###,##0.00',vAux),'','',0) then
        exit;
    end;
  end;
  if (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') and ((fDMCadPedido.cdsPedidoDDD.AsInteger <= 0) or (trim(fDMCadPedido.cdsPedidoFONE.AsString) = '')) then
  begin
    if MessageDlg('Pedido não informado o fone par o envio do SMS, confirma o pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;
  if (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') and ((fDMCadPedido.cdsPedidoDDD.AsInteger <= 0) or (trim(fDMCadPedido.cdsPedidoFONE.AsString) = '')) then
  begin
    if MessageDlg('Pedido não informado o fone par o envio do SMS, confirma o pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;
  if (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S') and (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString = 'S') and
     (trim(fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString) = '') then
  begin
    if MessageDlg('Pedido não informado o email para envio referente a conferência, confirma o pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  //10/11/2015
  if fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.Eof do
      fDMCadPedido.cdsPedido_Parc.Delete;
    uCalculo_Pedido.fnc_Gerar_Pedido_Parc(fDMCadPedido);
  end;

  //10/11/2015
  uCalculo_Pedido.prc_Calcula_Perc_Comissao(fDMCadPedido);
  //******************
  //if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') and (vInclusao_Edicao = 'E') then
  //11/08/2016
    uGrava_Pedido.prc_Gravar(fDMCadPedido,'ALT');
  //else
    //fDMCadPedido.prc_Gravar;
  vIDAux := fDMCadPedido.cdsPedidoID.AsInteger;
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPedido.vMSGErro, mtError, [mbOk], 0);
    Exit;
  end;
  //23/06/2018 Supercrom
  if fDMCadPedido.qParametros_PedUSAR_COPIA_OS.AsString = 'S' then
  begin
    fDMCadPedido.qPedOS.Close;
    fDMCadPedido.qPedOS.ParamByName('ID').AsInteger := vIDAux;
    fDMCadPedido.qPedOS.Open;
    while not fDMCadPedido.qPedOS.Eof do
    begin
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.Close;
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.ParamByName('P_ID').AsInteger := fDMCadPedido.qPedOSID_OS_SERV.AsInteger;
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.ExecSQL;
      fDMCadPedido.qPedOS.Next;
    end;
    fDMCadPedido.qPedOS.Close;
  end;
  //****************

  vInclusao_Edicao := '';

  TS_Consulta.TabEnabled     := True;
  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Consulta;

  fDMCadPedido.mSenha.EmptyDataSet;

  prc_Consultar(vIDAux);
  prc_Posiciona_Pedido;

  fDMCadPedido.vID_CFOP := 0;
end;

procedure TfrmCadPedido.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  //if fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P' then
  //begin
    vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
    if vID_LocalAux <= 0 then
      exit;
  //end;

  vSenha := '';
  fDMCadPedido.mSenha.EmptyDataSet;

  prc_Informar_Filial;
  if vFilial <= 0 then
    exit;
    
  vInclusao_Edicao := 'I';

  fDMCadPedido.prc_Inserir;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString := 'P';

  if fDMCadPedido.cdsPedido.State in [dsBrowse] then
    Exit;

  if (fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P') or (vID_LocalAux > 0) then
    fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;

  prc_Habilitar_CamposNota;

  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;

  fDMCadPedido.prc_Abrir_CSTICMS(fDMCadPedido.cdsFilialSIMPLES.AsString);
  fDMCadPedido.cdsPedidoTIPO_ATENDIMENTO.AsInteger := 1;
  btnDadosCupom.Visible := False;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  RxDBLookupCombo2.ReadOnly   := False;
  rxdbCondicaoPgto.ReadOnly   := False;
  btnAlterar_CondPgto.Visible := False;

  if (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadPedido.qParametros_PedUSAR_VEND_USUARIO.AsString = 'S') then
  begin
    fDMCadPedido.qUsuario.Close;
    fDMCadPedido.qUsuario.ParamByName('USUARIO_LOG').AsString := vUsuario;
    fDMCadPedido.qUsuario.Open;
    if fDMCadPedido.qUsuarioCODIGO.AsInteger > 0 then
      fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.qUsuarioCODIGO.AsInteger;
  end;

  if (fDMCadPedido.qParametros_PedINF_CONSUMIDOR_AUT.AsString = 'S') and (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger > 0) then
    fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger;

  //fDMCadPedido.vID_CFOP := 0;

  if fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    fDMCadPedido.prc_Abrir_Servico
  else
  if (fDMCadPedido.qParametros_PedUSA_OPERACAO_AUT.AsString = 'S') and (fDMCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger > 0) then
  begin
    fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := fDMCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger;
    if (trim(fDMCadPedido.cdsFilialFINALIDADE_PADRAO.AsString) <> '') and (not(fDMCadPedido.cdsFilialFINALIDADE_PADRAO.IsNull)) then
      fDMCadPedido.cdsPedidoFINALIDADE.AsString := fDMCadPedido.cdsFilialFINALIDADE_PADRAO.AsString;
  end;
end;

procedure TfrmCadPedido.FormShow(Sender: TObject);
var
  i: Integer;
  vData: TDateTime;
  vTexto: String;
  vStatic_Processo: String;
begin
  vTipo_Pedido     := 'P';
  vInclusao_Edicao := '';
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  prc_Limpar_Edit_Consulta;

  fDMCadPedido.vID_CFOP     := 0;
  fDMCadPedido.vID_Variacao := 0;
  fDMCadPedido.prc_Abrir_cdsCliente;
  gbxVendedor.Visible := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');
  Label21.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  DBDateEdit2.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  //lblTabPreco.Visible  := (fDMCadPedido.cdsParametrosUSA_TAB_PRECO.AsString = 'S');
  //lblTabPreco.Caption  := '';

  btnTab_Preco.Visible := (fDMCadPedido.cdsParametrosUSA_TAB_PRECO.AsString = 'S') ;

  if vNum_Pedido_Pos > 0 then
  begin
    prc_Consultar(vNum_Pedido_Pos);
    RzPageControl1.ActivePage := TS_Cadastro;
  end
  else
  begin
    if fDMCadPedido.qParametros_PedCONS_PREENCHER_DTINI.AsString = 'S' then
    begin
      vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
      NxDatePicker1.Date := vData;
    end
    else
      NxDatePicker1.Clear;
    btnConsultarClick(Sender);
  end;
  NxDatePicker2.Date := Date;
  vNum_Pedido_Pos := 0;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if fDMCadPedido.cdsParametrosUSA_GRADE.AsString <> 'S' then
    begin
      if (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') then
        SMDBGrid2.Columns[i].Visible := False;
    end;
    if (lblNaoMostrarPreco.Visible) then
    begin
      vTexto := SMDBGrid2.Columns[i].FieldName;
      if copy(vTexto,1,4) = 'VLR_' then
        SMDBGrid2.Columns[i].Visible := False;
    end;
    if (SMDBGrid2.Columns[i].FieldName = 'CARIMBO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_CARIMBO.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'CAIXINHA') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_CAIXINHA.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadPedido.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
    if (SMDBGrid2.Columns[i].FieldName = 'PERC_COMISSAO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
    if (SMDBGrid2.Columns[i].FieldName = 'DTEXPEDICAO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'DTCONFERENCIA') or (SMDBGrid2.Columns[i].FieldName = 'HRCONFERENCIA') or (SMDBGrid2.Columns[i].FieldName = 'USUARIO_CONF') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString = 'S');
    if SMDBGrid2.Columns[i].FieldName = 'NUM_OS_SERV' then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
    if SMDBGrid2.Columns[i].FieldName = 'NUM_TALAO' then
      SMDBGrid2.Columns[i].Visible := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'I'));
    if SMDBGrid2.Columns[i].FieldName = 'ENCERADO' then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
    if SMDBGrid2.Columns[i].FieldName = 'VLR_MATERIAL' then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_GeralUSA_TIPO_MATERIAL.AsString = 'S');
    if SMDBGrid2.Columns[i].FieldName = 'NUMOS' then
    begin
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S');
      if (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
        SMDBGrid2.Columns[i].Title.Caption := 'Nº OC/OP';
    end;
    if (SMDBGrid2.Columns[i].FieldName = 'NUM_NOTA_ENT') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
  end;

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    vTexto := SMDBGrid1.Columns[i].FieldName;
    if (lblNaoMostrarPreco.Visible) then
    begin
      if copy(vTexto,1,4) = 'VLR_' then
        SMDBGrid1.Columns[i].Visible := False;
    end;
    if SMDBGrid1.Columns[i].FieldName = 'NOME_VENDEDOR' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_VENDEDOR.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'NUM_DOC' then
    begin
      SMDBGrid1.Columns[i].Visible := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
      if fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P' then
        SMDBGrid1.Columns[i].Title.Caption := 'Nº Lote Cliente';
    end;
    if SMDBGrid1.Columns[i].FieldName = 'NUM_OS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'DTENTREGA' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
    if (SMDBGrid1.Columns[i].FieldName = 'DTAPROVADO') or (trim(SMDBGrid1.Columns[i].FieldName) = 'APROVADO_PED') then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'DESCRICAO_STATUS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_PROCESSO.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'NOME_OPERACAO' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'DTRECEBIMENTO') or (SMDBGrid1.Columns[i].FieldName = 'NUM_NOTA_ENT') then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'AMOSTRA') then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_AMOSTRA.AsString = 'S');
  end;

  if (lblNaoMostrarPreco.Visible) or (fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString <> 'S')  then
  begin
    for i := 1 to SMDBGrid4.ColCount - 2 do
    begin
      vTexto := SMDBGrid4.Columns[i].FieldName;
      if copy(vTexto,1,4) = 'VLR_' then
        SMDBGrid4.Columns[i].Visible := False;
    end;
  end;
  pnlMaterial.Visible := (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S');
  ckMeiaFolha.Visible := (((amanho1.Enabled) and (amanho1.Visible)) or (fDMCadPedido.cdsParametrosIMP_MEIA_FOLHA_PED.AsString = 'S'));

  //Mostrar Preço
  Label76.Visible         := not(lblNaoMostrarPreco.Visible);
  Label80.Visible         := not(lblNaoMostrarPreco.Visible);
  DBEdit47.Visible        := not(lblNaoMostrarPreco.Visible);
  DBEdit52.Visible        := not(lblNaoMostrarPreco.Visible);
  TS_Valores.TabVisible   := not(lblNaoMostrarPreco.Visible);
  Panel2.Visible          := (fDMCadPedido.qParametros_GeralUSA_TRIANGULAR.AsString = 'S');
  ckImpDtProducao.Visible := (fDMCadPedido.cdsParametrosUSA_DTPRODUCAO.AsString = 'S');
  ckImpDtProducao.Checked := (fDMCadPedido.cdsParametrosUSA_DTPRODUCAO.AsString = 'S');
  Label35.Visible         := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
  DBEdit11.Visible        := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
  if (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P') then
    Label35.Caption := 'Nº Lote Cliente:';
  if ckMeiaFolha.Visible then
    ckMeiaFolha.Checked := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.cdsParametrosIMP_MEIA_FOLHA_PED.AsString = 'S'));
  if ckImpPreco.Visible then
    ckImpPreco.Checked := (fDMCadPedido.cdsParametrosIMP_PRECO_PED.AsString = 'S');
  if ckImpPeso.Visible then
    ckImpPeso.Checked := (fDMCadPedido.cdsParametrosIMP_PESO_PED.AsString = 'S');
  Label42.Visible       := (fDMCadPedido.cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA.AsString = 'S');
  RxDBComboBox1.Visible := (fDMCadPedido.cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA.AsString = 'S');
  pnlTipoItem.Visible   := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  ckImpFoto.Visible     := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  gbxDuplicata.Visible  := ((fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  //adiantamento pedido  10/11/2015
  if fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S' then
  begin
    Label72.Visible            := False;
    rxdbCondicaoPgto.Visible   := False;
    SpeedButton6.Visible       := False;
    Label74.Visible            := False;
    DBDateEdit3.Visible        := False;
    SMDBGrid_Dupl2.Visible     := False;
    btnGerarParcelas.Visible   := False;
    btnExcluirParcelas.Visible := False;
  end;
  //**********

  //gbxVlr_Adiantado.Visible := not(gbxDuplicata.Visible);
  if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
    fDMCadPedido.cdsPedido_Itens.AfterScroll := prc_scroll
  else
    fDMCadPedido.cdsPedido_Consulta.AfterScroll := prc_scroll2;

  TS_Trilhos.TabVisible   := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  TS_Roldanas.TabVisible  := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  pnlAcessorios.Visible   := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  gbImpressao.Visible     := (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S');
  btnCopiar_Item.Visible  := (fDMCadPedido.cdsParametrosUSA_COPIA_PEDIDO_ITEM.AsString = 'S');
  btnCopiarPedido.Visible := (fDMCadPedido.cdsParametrosUSA_COPIA_PEDIDO.AsString = 'S');
  btnConsOrd_Prod.Visible := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S');
  pnlLocalEstoque.Visible := ((fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S'));
  pnlTab_Preco.Visible    := (fDMCadPedido.qParametros_PedUSA_TAB_PRECO.AsString = 'S');
  Panel7.Visible          := ((pnlLocalEstoque.Visible) or (pnlTab_Preco.Visible));
  Shape10.Visible         := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Label50.Visible         := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Shape7.Visible          := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Label32.Visible         := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Shape13.Visible         := (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  Label82.Visible         := (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  ckNaoAprovado.Visible    := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  //gbxVlr_Adiantado.Visible := (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S');
  Label64.Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Label65.Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  if (lblNaoMostrarPreco.Visible) or (fDMCadPedido.qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO.AsString <> 'S') then
    pnlTotal.Visible := False;
  Label56.Visible       := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  NxDatePicker3.Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  Label60.Visible       := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  NxDatePicker4.Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
  TS_ObsNota.TabVisible := (fDMCadPedido.cdsParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S');
  vStatic_Processo := '';
  if fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
    vStatic_Processo := vStatic_Processo + '   F8 Sel.Produtos';
  if fDMCadPedido.qParametros_PedUSA_PROCESSO.AsString = 'S' then
    vStatic_Processo := vStatic_Processo + '   F11 Processos';
  if fDMCadPedido.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S' then
    vStatic_Processo := vStatic_Processo + '   F12 Cons.Alt.Por Senha';
  if fDMCadPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S' then
    StaticText1.Caption := 'Duplo clique para consultar       F3 Tabela de Preço    F4-Inf. Data Expedição    F6 Cons. Notas'
  else
    StaticText1.Caption := 'Duplo clique para consultar       F3 Tabela de Preço    F6 Cons. Notas';
  StaticText1.Caption := StaticText1.Caption + vStatic_Processo;

  Label63.Visible           := (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'P');
  RxDBLookupCombo12.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'P');
  DBCheckBox4.Visible       := (fDMCadPedido.qParametros_PedCONTROLAR_VLR_ENTRADA.AsString = 'S');

  Label61.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');

  if fDMCadPedido.qParametros_PedOPCAO_CONSULTA.AsString = 'P' then
    cbxOpcao.ItemIndex := 0
  else
    cbxOpcao.ItemIndex := 2;
  Label4.Visible  := (fDMCadPedido.qParametros_PedDESABILITAR_OC_PED.AsString <> 'S');
  DBEdit4.Visible := (fDMCadPedido.qParametros_PedDESABILITAR_OC_PED.AsString <> 'S');
  DBCheckBox1.Visible := (fDMCadPedido.qParametros_PedDESABILITAR_OC_PED.AsString <> 'S');
  btnAltDtEntrega.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_ALT_DT_ENTREGA.AsString = 'S');
  Label69.Visible := (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  rxdbTipoCobranca2.Visible := (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  //28/01/2017
  Label70.Visible       := (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  RxDBComboBox2.Visible := (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  btnDadosCupom.Visible := (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S');
  //***************

  Shape12.Visible := ((fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S'));
  Label75.Visible := ((fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S'));

  Label77.Visible  := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');
  DBEdit24.Visible := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');

  Label79.Visible  := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit25.Visible := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit26.Visible := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));

  Label78.Visible     := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
  DBDateEdit4.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
  if not(rxdbTipoCobranca2.Visible) then
  begin
    Label78.Left     := 16;
    DBDateEdit4.Left := 78;
  end;
  btnCopiarOS.Visible   := (fDMCadPedido.qParametros_PedUSAR_COPIA_OS.AsString = 'S');
  btnAltProdCli.Visible := False;
  ckImpOrdem.Checked    := (fDMCadPedido.qParametros_PedIMP_ORDEM_ITEM_PED.AsString = 'R');

  if fDMCadPedido.qParametros_ProdGRAVAR_PRIMEIRO_MAT.AsString = 'S' then
  begin
    pnlServico.Visible := True;
    Label73.Caption    := 'Material:';
    DBEdit23.DataField := 'OBSMATERIAL';
  end;
  btnConsTempo.Visible := (fDMCadPedido.qParametros_GeralUSA_TIPO_MATERIAL.AsString = 'S');
  DBCheckBox5.Visible  := (fDMCadPedido.qParametros_FinUSA_NGR.AsString = 'S');
  DBCheckBox6.Visible  := (fDMCadPedido.qParametros_PedUSA_AMOSTRA.AsString = 'S');
end;

procedure TfrmCadPedido.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE TIPO_REG = ' + QuotedStr('P');
  //17/01/2017
  if fDMCadPedido.qParametros_UsuarioMOSTRAR_PED_USUARIO.AsString = 'S' then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.USUARIO = ' + QuotedStr(vUsuario);
  //**************

  if ID > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.ID = ' + IntToStr(ID)
  else
  begin
    if cePedInterno.AsInteger > 0 then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.NUM_PEDIDO = ' + cePedInterno.Text;
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if Trim(edtPedCliente.Text) <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(edtPedCliente.Text);
    if NxDatePicker1.Text <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.DTEMISSAO >= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.DTEMISSAO <= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if Trim(edtCliente.Text) <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')' +
                                                     ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + '))';
    if RxDBLookupCombo8.Text <> '' then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND CLI.UF = ' + QuotedStr(RxDBLookupCombo8.Text);

    if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') and not(ckNaoAprovado.Checked) then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.APROVADO_PED <> ' + QuotedStr('N');
    if (NxDatePicker3.Visible) and (NxDatePicker3.Text <> '') then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND AP.DATA >= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker3.date));
    if (NxDatePicker4.Visible) and (NxDatePicker4.Text <> '') then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND AP.DATA <= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker4.date));
    case cbxOpcao.ItemIndex of
      0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO <> ' + QuotedStr('S');
      1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO = ' + QuotedStr('S');
    end;
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmCadPedido.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
  if (lblNaoMostrarPreco.Visible) or (fDMCadPedido.qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO.AsString <> 'S') then
    btnRecalcularClick(Sender);
end;

procedure TfrmCadPedido.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido.State in [dsBrowse]) or not(fDMCadPedido.cdsPedido.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    Exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMCadPedido.cdsPedido.CancelUpdates;
  vInclusao_Edicao := '';
  vSenha           := '';

  prc_Habilitar_CamposNota;

  fDMCadPedido.mSenha.EmptyDataSet;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  fDMCadPedido.vID_CFOP     := 0;
end;

procedure TfrmCadPedido.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPedido.btnAlterarClick(Sender: TObject);
var
  vVerSenha: Boolean;
begin
  if (fDMCadPedido.cdsPedido.IsEmpty) or not(fDMCadPedido.cdsPedido.Active) or (fDMCadPedido.cdsPedidoID.AsInteger < 1) then
    Exit;

  fDMCadPedido.mSenha.EmptyDataSet;

  if vInclusao_Edicao <> 'C' then
  begin
    if (fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') and (fDMCadPedido.fnc_Existe_DupPaga(fDMCadPedido.cdsPedidoID.AsInteger) > 0) then
    begin
      MessageDlg('*** Pedido não pode ser alterado, pois já existe duplicatas pagas!', mtInformation, [mbOk], 0);
      Exit;
    end;
    vVerSenha := True;
    vSenha    := '';
    if fDMCadPedido.qParametros_UsuarioALT_IT_PED_COM_OP.AsString <> 'S' then
    begin
      if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') then
      begin
        if trim(fDMCadPedido.qParametros_UsuarioSENHA_PEDIDO.AsString) = '' then
        begin
          MessageDlg('*** pedido já gerada a Ordem de Produção, e usuário não possui senha para alterar!!', mtInformation, [mbOk], 0);
          exit;
        end;
        if not fnc_senha('ALT','SENHA_PEDIDO','','','','',0) then
          exit;
        //vVerSenha := False;  
        //MessageDlg('*** pedido já gerada a Ordem de Produção!', mtInformation, [mbOk], 0);
        //Exit;
      end;
    end;
    if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString <> 'S') then
      vVerSenha := False
    else
    if (fDMCadPedido.cdsPedidoAPROVADO_PED.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') then
      vVerSenha := False;
    if vVerSenha then //******
      if not fnc_senha('ALT','SENHA_PEDIDO','','','','',0) then
        exit;
  end;

  vInclusao_Edicao   := 'E';
  fDMCadPedido.vID_Cond_Pagto_Ant := fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger;

  fDMCadPedido.cdsPedido.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;

  fDMCadPedido.vID_CFOP      := 0;

  fDMCadPedido.prc_Abrir_CSTICMS(fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString);
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
end;

procedure TfrmCadPedido.btnConfirmarClick(Sender: TObject);
begin
  if fDMCadPedido.qParametros_PedUSA_RETIRADA.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoNOME_PRODUTO_PROPOSTA.AsString := InputBox('Retirada','Retirada:',fDMCadPedido.cdsPedidoNOME_PRODUTO_PROPOSTA.AsString);
  end;

  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger < 1 then
    fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString := RxDBLookupCombo3.Text;
  fDMCadPedido.cdsPedido_Itens.First;
  SMDBGrid2.DisableScroll;
  SMDBGrid2.DataSource := nil;

  if (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString = 'S') then
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat))
  else
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));

  prc_Gravar_Registro;
  SMDBGrid2.DataSource := fDMCadPedido.dsPedido_Itens;

  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadPedido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmCadPedido.prc_Posiciona_Pedido;
begin
  SMDBGrid2.DataSource := nil;
  fDMCadPedido.prc_Localizar(fDMCadPedido.cdsPedido_ConsultaID.AsInteger);
  fDMCadPedido.cdsPedido_Itens.Close;
  fDMCadPedido.cdsPedido_Itens.Open;
  fDMCadPedido.cdsPedido_Cli.Close;
  fDMCadPedido.cdsPedido_Cli.Open;
  fDMCadPedido.cdsPedido_Parc.Close;
  fDMCadPedido.cdsPedido_Parc.Open;
  vFilial      := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
  SMDBGrid2.DataSource := fDMCadPedido.dsPedido_Itens;
  if fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    fDMCadPedido.prc_Abrir_Servico;
end;

function TfrmCadPedido.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
        (fDMCadPedido.cdsPedido_ConsultaID.AsInteger < 1) then
    Exit;

  Result := True;
end;

procedure TfrmCadPedido.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Itens.Active) and (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger < 1) then
    Exit;

  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
  begin
    MessageDlg('*** Item já possui quantidade faturada!',mtError, [mbOk], 0);
    Exit;
  end;

  if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fnc_Lote) then
  begin
    MessageDlg('*** Lote/Talão de Produção gerado!',mtError, [mbOk], 0);
    exit;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fnc_Lote) then
  begin
    MessageDlg('*** Lote/Talão de Produção gerado!',mtError, [mbOk], 0);
    exit;
  end;

  //28/08/2018
  if fDMCadPedido.qParametros_SerLIB_QTD_PEDIDO.AsString = 'S' then
  begin
    if fnc_Existe_Baixa(fDMCadPedido.cdsPedidoID.AsInteger,fDMCadPedido.cdsPedido_ItensITEM.AsInteger) then
    begin
      MessageDlg('*** Item não pode ser excluido, possui liberação para faturamento!',mtError, [mbOk], 0);
      exit;
    end;
  end;
  //*******************


  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  if (fDMCadPedido.cdsPedidoROTULO_IMP.AsString = 'S') and (fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S') then
    if not fnc_senha('ROT','SENHA_PEDIDO','R','','Rótulo já impresso','',0) then
      exit;

  uGrava_Pedido.prc_Excluir_Item_Ped(fDMCadPedido);

  if fDMCadPedido.cdsPedido_Itens.RecordCount < 1 then
    fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat  := 0;

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedido.btnInserir_ItensClick(Sender: TObject);
var
  i: Integer;
  vTexto1: String;
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if trim(fDMCadPedido.cdsClienteUF.AsString) = '' then
  begin
    MessageDlg('*** Cliente sem UF!', mtError, [mbOk], 0);
    Exit;
  end;
  if fDMCadPedido.qParametros_UsuarioALT_IT_PED_COM_OP.AsString <> 'S' then
  begin
    if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fnc_Lote) then
    begin
      MessageDlg('*** Lote/Talão de Produção gerado!', mtInformation, [mbOk], 0);
      exit;
    end;
  end;
  if (fDMCadPedido.cdsPedidoROTULO_IMP.AsString = 'S') and (fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S') then
    if not fnc_senha('ROT','SENHA_PEDIDO','R','','Rótulo já impresso','',0) then
      exit;

  //02/06/2016  incluido a filial
  if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') or
     (fDMCadPedido.qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') then
  begin
    fDMCadPedido.prc_Filtrar_Produto_Cliente;
  end;
  //****************

  fDMCadPedido.prc_Inserir_Itens;
  
  if fDMCadPedido.qParametros_PedUSA_ITEM_RED.AsString = 'S' then
  begin
    ffrmCadPedido_ItensRed := TfrmCadPedido_ItensRed.Create(self);
    ffrmCadPedido_ItensRed.fDMCadPedido   := fDMCadPedido;
    ffrmCadPedido_ItensRed.vMostrar_Preco := not(lblNaoMostrarPreco.Visible);
    ffrmCadPedido_ItensRed.ShowModal;
    FreeAndNil(ffrmCadPedido_ItensRed);
  end
  else
  begin
    ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
    ffrmCadPedido_Itens.fDMCadPedido   := fDMCadPedido;
    ffrmCadPedido_Itens.vMostrar_Preco := not(lblNaoMostrarPreco.Visible);
    ffrmCadPedido_Itens.ShowModal;
    FreeAndNil(ffrmCadPedido_Itens);
  end;
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedido.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
            (fDMCadPedido.cdsPedido_ConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Pedido;

      fDMCadPedido.prc_Abrir_CSTICMS(fDMCadPedido.cdsFilialSIMPLES.AsString);
      btnDadosCupom.Visible := ((fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S') and (fDMCadPedido.cdsPedidoTIPO_ATENDIMENTO.AsInteger = 4));

      RxDBLookupCombo10Change(Sender);
      RxDBLookupCombo3Change(Sender);
      prc_Opcao_Prazo;

      if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
      begin
        if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
          fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
        btnAltProdCli.Visible := ((fDMCadPedido.cdsClienteIMP_COR_CLIENTE.AsString = 'S') and (fDMCadPedido.qParametros_UsuarioALT_PROD_CLIENTE.AsString = 'S'));
      end
      else
        btnAltProdCli.Visible := False;
    end;
  end
  else
    RxDBLookupCombo3Change(Sender);
end;

procedure TfrmCadPedido.btnAlterar_ItensClick(Sender: TObject);
var
  vMSGAux: String;
  vItemAux: Integer;
begin
  vMSGAux := '';
  if (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0) then
    exit;
  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item já possui quantidade faturada!';

  if (fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item quantidade cancelada!';

  if fDMCadPedido.qParametros_UsuarioALT_IT_PED_COM_OP.AsString <> 'S' then
  begin
    //Foi liberado com senha no início 20/03/2018
    if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fnc_Lote) then
      //vMSGAux := vMSGAux + #13 + '*** Lote/Talão de Produção gerado!'
      vMSGAux := vMSGAux + ''
    else
    if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fnc_Lote) then
      vMSGAux := vMSGAux + #13 + '*** Lote/Talão de Produção gerado!';
  end;

  if Trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    Exit;
  end;

  if (fDMCadPedido.cdsPedidoROTULO_IMP.AsString = 'S') and (fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S') then
    if not fnc_senha('ROT','SENHA_PEDIDO','R','','Rótulo já impresso','',0) then
      exit;

  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;

  //02/06/2016  incluido a filial
  if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') or
     (fDMCadPedido.qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') then
    fDMCadPedido.prc_Filtrar_Produto_Cliente;
  //****************

  fDMCadPedido.cdsPedido_Itens.Edit;

  if fDMCadPedido.qParametros_PedUSA_ITEM_RED.AsString = 'S' then
  begin
    ffrmCadPedido_ItensRed := TfrmCadPedido_ItensRed.Create(self);
    ffrmCadPedido_ItensRed.fDMCadPedido   := fDMCadPedido;
    ffrmCadPedido_ItensRed.vMostrar_Preco := not(lblNaoMostrarPreco.Visible);
    ffrmCadPedido_ItensRed.ShowModal;
    FreeAndNil(ffrmCadPedido_ItensRed);
  end
  else
  begin
    ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
    ffrmCadPedido_Itens.fDMCadPedido := fDMCadPedido;
    ffrmCadPedido_Itens.vMostrar_Preco := not(lblNaoMostrarPreco.Visible);
    ffrmCadPedido_Itens.ShowModal;
    FreeAndNil(ffrmCadPedido_Itens);
  end;
  SMDBGrid2.DisableScroll;
  btnCalcular_ValoresClick(Sender);
  SMDBGrid2.EnableScroll;
  fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
end;

procedure TfrmCadPedido.btnDescontoClick(Sender: TObject);
begin
  ffrmCadPedido_Desconto := TfrmCadPedido_Desconto.Create(self);
  ffrmCadPedido_Desconto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Desconto.ShowModal;

  FreeAndNil(ffrmCadPedido_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedido.btnCalcular_ValoresClick(Sender: TObject);
begin
//aqui calcular Alumminium
//  try
    //if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then

  SMDBGrid2.DataSource := nil;
  SMDBGrid2.DisableScroll;
  uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
  SMDBGrid2.DataSource := fDMCadPedido.dsPedido_Itens;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadPedido.pnlClienteExit(Sender: TObject);
var
  //vCalcICMSSimples: Boolean;
  //vPercSimples: Real;
  vID_Aux: Integer;
begin
  prc_Posicionar_Cliente;

  if vID_ClienteAnt = fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    exit;

  if (fDMCadPedido.qParametros_PedUSA_TAB_PRECO.AsString = 'S') and (fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0) then
    fDMCadPedido.cdsPedidoID_TAB_PRECO.AsInteger := fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger;

  fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := 0;
  if fDMCadPedido.qParametros_PedUSAR_VEND_USUARIO.AsString <> 'S' then
    fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger;
  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadPedido.cdsVendedor.Locate('CODIGO',fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat
    else
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := fDMCadPedido.cdsVendedorPERC_COMISSAO_VEND.AsFloat;
  end;

  if trim(fDMCadPedido.cdsClienteENDERECO_ENT.AsString) <> '' then
    fDMCadPedido.cdsPedidoLOCALENTREGA.AsString := 'E';
  fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := fDMCadPedido.cdsClienteID_TRANSPORTADORA.AsInteger;
  fDMCadPedido.cdsPedidoID_REDESPACHO.AsInteger     := fDMCadPedido.cdsClienteID_REDESPACHO.AsInteger;

  //17/07/2017
  fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString := fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString;
  //*************

  //aqui verificar a condição para primeiro pedido    04/04/2016
  vID_Aux := 0;
  fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger := 0;
  if (fDMCadPedido.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S')
    and (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> vID_ClienteAnt)  then
  begin
    vID_Aux := fnc_Primeiro_Pedido(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger);
    if vID_Aux = 1 then
      MessageDlg('*** Cliente possui menos de 4 pedidos!'  +#13 + #13 + vOBS_Primeiro_Pedido , mtInformation, [mbOk], 0);
    //Conforme Michelle passou para Luciane 13/04/2016
    //else
    //if vID_Aux = 2 then
    //  MessageDlg('*** Cliente possui títulos em atraso, e possui menos de 10 pedidos!'  +#13 + #13 + vOBS_Primeiro_Pedido , mtInformation, [mbOk], 0);
  end;
  if vID_Aux > 0 then
  begin
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fDMCadPedido.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger;
    fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger := vID_Aux;
  end
  else
  if fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger  := fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger;
  RxDBLookupCombo2.ReadOnly   := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  rxdbCondicaoPgto.ReadOnly   := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  btnAlterar_CondPgto.Visible := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  //****************

  {vPercSimples     := 0;
  vCalcICMSSimples := (fDMCadPedido.cdsCFOPGERAR_ICMS_SIMPLES.AsString = 'S');
  if (vCalcICMSSimples) and (fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger > 0) and (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') then
  begin
    fDMCadPedido.qRegime_Trib.Close;
    fDMCadPedido.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadPedido.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadPedido.qRegime_Trib.Open;
    if fDMCadPedido.qRegime_TribCODIGO.AsInteger > 2 then
      vCalcICMSSimples := True;
  end;}

  btnAltProdCli.Visible := ((fDMCadPedido.cdsClienteIMP_COR_CLIENTE.AsString = 'S') and (fDMCadPedido.qParametros_UsuarioALT_PROD_CLIENTE.AsString = 'S'));
end;

procedure TfrmCadPedido.prc_Posicionar_Cliente;
begin
  fDMCadPedido.vAliqIcms := 0;
  fDMCadPedido.vSiglaUF  := '';
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsUFUF.AsString  <> fDMCadPedido.cdsClienteUF.AsString then
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0) and (fDMCadPedido.cdsVendedorCODIGO.AsInteger <>
      fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger) then
    fDMCadPedido.cdsVendedor.Locate('CODIGO',fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsFilialID.AsInteger <> fDMCadPedido.cdsPedidoFILIAL.AsInteger) then
    fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.vAliqIcms := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
  fDMCadPedido.vSiglaUF  := fDMCadPedido.cdsClienteUF.AsString;
end;

procedure TfrmCadPedido.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.IndexFieldNames := 'NOME';
  Label11.Visible := True;
end;

procedure TfrmCadPedido.prc_Habilitar_CamposNota;
var
  i: Integer;
begin
  //pnlItem.Enabled            := not(pnlItem.Enabled);
  pnlTransporte.Enabled      := not(pnlTransporte.Enabled);
  pnlVendedor.Enabled        := not(pnlVendedor.Enabled);
  pnlNota.Enabled            := not(pnlNota.Enabled);

  btnDesconto.Enabled         := not(btnDesconto.Enabled);
  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnRegravaItens.Enabled     := not(btnRegravaItens.Enabled);

  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);

  gbxIcms.Enabled             := not(gbxIcms.Enabled);
  gbxSubstituicao.Enabled     := not(gbxSubstituicao.Enabled);
  gbxTransfIcms.Enabled       := not(gbxTransfIcms.Enabled);

  DBMemo1.ReadOnly            := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly            := not(DBMemo2.ReadOnly);
  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
  TS_Valores.Enabled          := not(TS_Valores.Enabled);
  DBEdit8.ReadOnly            := not(DBEdit8.ReadOnly);

  btnInserir_Itens.Enabled    := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled    := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled    := not(btnExcluir_Itens.Enabled);
  btnGerarParcelas.Enabled    := not(btnGerarParcelas.Enabled);
  btnExcluirParcelas.Enabled  := not(btnExcluirParcelas.Enabled);
  btnCopiar_Item.Enabled      := not(btnCopiar_Item.Enabled);
  btnAltDtEntrega.Enabled     := not(btnAltDtEntrega.Enabled);

  btnInserir_Trilhos.Enabled := not(btnInserir_Trilhos.Enabled);
  btnAlterar_Trilhos.Enabled := not(btnAlterar_Trilhos.Enabled);
  btnExcluir_Trilhos.Enabled := not(btnExcluir_Trilhos.Enabled);

  btnInserir_Roldanas.Enabled := not(btnInserir_Roldanas.Enabled);
  btnAlterar_Roldanas.Enabled := not(btnAlterar_Roldanas.Enabled);
  btnExcluir_Roldanas.Enabled := not(btnExcluir_Roldanas.Enabled);

  SMDBGrid_Dupl2.ReadOnly     := not(SMDBGrid_Dupl2.ReadOnly);

  rxdbCondicaoPgto.Enabled    := not(rxdbCondicaoPgto.Enabled);
  rxdbTipoCobranca.Enabled    := not(rxdbTipoCobranca.Enabled);
  rxdbTipoCobranca2.Enabled   := not(rxdbTipoCobranca2.Enabled);
  rxdbConta.Enabled           := not(rxdbConta.Enabled);
  rxdbConta_Orcamento.Enabled := not(rxdbConta_Orcamento.Enabled);
  DBEdit16.Enabled            := not(DBEdit16.Enabled);

  SMDBGrid3.ReadOnly          := not(SMDBGrid3.ReadOnly);

  CancelarPedido1.Enabled       := not(CancelarPedido1.Enabled);
  CancelarItemdoPedido1.Enabled := not(CancelarItemdoPedido1.Enabled);
  btnCopiarOS.Enabled           := not(btnCopiarOS.Enabled);

  SMDBGrid2.ReadOnly          := not(SMDBGrid2.ReadOnly);
  vSenha                      := '';

  if not SMDBGrid2.ReadOnly then
  begin
    for i := 1 to SMDBGrid2.ColCount - 2 do
    begin
      if (SMDBGrid2.Columns[i].FieldName = 'VLR_UNITARIO') then
        SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].Visible)
      else
        SMDBGrid2.Columns[i].ReadOnly := True;
    end;
  end;
end;

procedure TfrmCadPedido.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    Exit;
  if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaIMPRESSO.AsString = 'S') then
  begin
    Background  := clOlive;
    AFont.Color := clWhite;
  end;

  if (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString <> 'S')
    and (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString <> 'P') and (fDMCadPedido.cdsPedido_ConsultaCONFERIDO.AsString = 'S') then
  begin
    Background  := $000080FF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString <> 'S') and (fDMCadPedido.qParametros_PedUSA_CONFERENCIA.AsString <> 'S')
    and (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString <> 'S') and (fDMCadPedido.cdsPedido_ConsultaCONFERIDO.AsString = 'S') then
  begin
    Background  := $000080FF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.qParametros_PedUSA_CONFERENCIA.AsString = 'S') and (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ConsultaQTD_LIBERADA.AsFloat)) > 0) then
  begin
    Background  := $000080FF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'S') then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P') then
  begin
    Background  := clAqua;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'C') then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'F') then
    Background  := clSilver
  else
  if ((fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (trim(fDMCadPedido.qParametros_LoteUSA_LOTE_PED_SPROC.AsString) = 'S')) and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') then
  begin
    Background  := $00FFAAAA;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and ((fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0)) then
  begin
    Background  := $00FFAAAA;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'N') then
  begin
    Background  := $00AAAAFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmCadPedido.SpeedButton1Click(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.Close;
  fDMCadPedido.cdsCliente.Open;
end;

procedure TfrmCadPedido.SpeedButton2Click(Sender: TObject);
begin
  fDMCadPedido.cdsTransportadora.Close;
  fDMCadPedido.cdsTransportadora.Open;
end;

procedure TfrmCadPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmCadPedido.pnlClienteEnter(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.IndexFieldNames := 'CODCFOP';
  vID_ClienteAnt := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
end;

procedure TfrmCadPedido.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedido.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedido.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedido.SpeedButton3Click(Sender: TObject);
begin
  fDMCadPedido.cdsVendedor.Close;
  fDMCadPedido.cdsVendedor.Open;
end;

procedure TfrmCadPedido.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsCondPgto.Close;
  fDMCadPedido.cdsCondPgto.Open;
end;

procedure TfrmCadPedido.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) > 0)
    and (fDMCadPedido.cdsPedido_ItensDTCONFERENCIA.AsDateTime > 10) then
  begin
    Background  := $000080FF;
    AFont.Color := clBlack;
  end
  else
  
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsPedido_ItensGRAVACAO_COM_ERRO.AsString = 'CST') then
  begin
    Background  := clMaroon;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadPedido.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadPedido_Copia: TfrmCadPedido_Copia;
  ffrmSel_Produto: TfrmSel_Produto;
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    Label17.Visible := not(Label17.Visible);
    DBEdit3.Visible := not(DBEdit3.Visible);
    BitBtn1.Visible := not(BitBtn1.Visible);
  end
  else
  if (Shift = [ssCtrl]) and (Key = 83) then //S
    btnRegravaItens.Visible := not(btnRegravaItens.Visible)
  else
  if (Key = Vk_F3) then
  begin
    ffrmSel_TabPreco := TfrmSel_TabPreco.Create(self);
    ffrmSel_TabPreco.ShowModal;
    FreeAndNil(ffrmSel_TabPreco);
  end
  else
  if (Key = Vk_F5) and (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) and (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
  begin
    ffrmCadPedido_Copia := TfrmCadPedido_Copia.Create(self);
    ffrmCadPedido_Copia.fDMCadPedido := fDMCadPedido;
    ffrmCadPedido_Copia.fDMCopiaPedido.mAux.EmptyDataSet;
    ffrmConsHist_Chapa := TfrmConsHist_Chapa.Create(self);
    ffrmConsHist_Chapa.fDMCopiaPedido := ffrmCadPedido_Copia.fDMCopiaPedido;
    ffrmConsHist_Chapa.vID_Cliente := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    ffrmConsHist_Chapa.ShowModal;
    ffrmCadPedido_Copia.prc_Le_Aux;
    FreeAndNil(ffrmConsHist_Chapa);
    FreeAndNil(ffrmCadPedido_Copia);
    btnCalcular_ValoresClick(Sender);
  end
  else
  //09/01/2017
  if (Key = Vk_F8) and (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S') then
  begin
    fDMSel_Produto  := TDMSel_Produto.Create(Self);
    fDMSel_Produto.vGravar_Carrinho := 'N';
    fDMSel_Produto.mCarrinho.EmptyDataSet;
    ffrmSel_Produto := TfrmSel_Produto.Create(Self);
    ffrmSel_Produto.fDMSel_Produto := fDMSel_Produto;
    ffrmSel_Produto.Tag := 1;
    ffrmSel_Produto.ShowModal;
    FreeAndNil(ffrmSel_Produto);
    if fDMSel_Produto.vGravar_Carrinho = 'S' then
    begin
      prc_Gravar_Carrinho;
    end;
  end;
  //*****************
end;

procedure TfrmCadPedido.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCadpedido.cdsTransportadora.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedido.RxDBLookupCombo6Enter(Sender: TObject);
begin
  fDMCadPedido.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedido.RxDBLookupCombo10Change(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
  begin
    fDMCadPedido.cdsOperacao_Nota.Locate('ID',RxDBLookupCombo10.KeyValue,[loCaseInsensitive]);
    rxcbFinalidade.Visible := (fDMCadPedido.cdsOperacao_NotaPEDIR_FINALIDADE.AsString = 'S');
    Label20.Visible        := (fDMCadPedido.cdsOperacao_NotaPEDIR_FINALIDADE.AsString = 'S');
    if not(rxcbFinalidade.Visible) and (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
    begin
      rxcbFinalidade.ItemIndex := 3;
      fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'O';
    end;
  end;
end;

procedure TfrmCadPedido.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPedido.cdsPedido_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadPedido.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0) then
  begin
    if (fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger > 0) and
       (fDMCadPedido.cdsClienteID_VENDEDOR.AsInteger = fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger) and
       (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat)) > 0) then
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat:= StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsClientePERC_COMISSAO.AsFloat))
    else
    begin
      if (fDMCadPedido.cdsVendedorCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger) then
        fDMCadPedido.cdsVendedor.Locate('CODIGO',fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger,[loCaseInsensitive]);
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsVendedorPERC_COMISSAO_VEND.AsFloat));
    end;
  end;
end;

procedure TfrmCadPedido.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    Mostrar_Tab_Preco(RxDBLookupCombo3.KeyValue)
  else
    Mostrar_Tab_Preco(0);
  prc_Opcao_Consumidor;
end;

procedure TfrmCadPedido.Mostrar_Tab_Preco(ID_Cliente: Integer);
begin
  {if ID_Cliente <= 0 then
    lblTabPreco.Caption := ''
  else
  begin
    if fDMCadPedido.cdsClienteCODIGO.AsInteger <> ID_Cliente then
      fDMCadPedido.cdsCliente.Locate('CODIGO',ID_Cliente,[loCaseInsensitive]);
    lblTabPreco.Caption := DMUtil.fnc_Buscar_Nome_TabPreco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger);
    if trim(lblTabPreco.Caption) <> '' then
      lblTabPreco.Caption := 'Tab. Preço: ' + lblTabPreco.Caption;
  end;}
  btnTab_Preco.Visible := (fDMCadPedido.cdsParametrosUSA_TAB_PRECO.AsString = 'S') ;
end;

procedure TfrmCadPedido.btnTab_PrecoClick(Sender: TObject);
var
  vAux: Integer;
begin
  vAux := 0;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
      fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
    vAux := fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger;
  end;

  ffrmCadTabPreco := TfrmCadTabPreco.Create(self);
  ffrmCadTabPreco.vID_TabPreco := vAux;
  ffrmCadTabPreco.ShowModal;

  FreeAndNil(ffrmCadTabPreco);
end;

procedure TfrmCadPedido.DBEdit4Exit(Sender: TObject);
var
  vAux: Integer;
begin
  vAux := uGrava_Pedido.fnc_Existe_OC(fDMCadPedido);
  if vAux > 0 then
  begin
    MessageDlg('*** Nº Pedido do cliente já foi digitado, está no pedido interno ' + IntToStr(vAux) , mtError, [mbOk], 0);
    DBEdit4.SetFocus;
  end;
end;

procedure TfrmCadPedido.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    cePedInterno.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPedido.prc_Limpar_Edit_Consulta;
begin
  cePedInterno.Clear;
  edtCliente.Clear;
  edtPedCliente.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
  NxDatePicker3.Clear;
  NxDatePicker4.Clear;
end;

procedure TfrmCadPedido.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;
  fDMCadPedido.cdsPedidoImp_Itens.First;

  if ckImpAcumulado.Checked then
  begin
    fDMCadPedido.cdsPedidoImp_Acu.Close;
    fDMCadPedido.sdsPedidoImp_Acu.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Acu.Open;
  end;

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoImp_Tipo.Close;
    fDMCadPedido.sdsPedidoImp_Tipo.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.sdsPedidoImp_Tipo.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
    fDMCadPedido.cdsPedidoImp_Tipo.Open;

    fDMCadPedido.cdsPedidoImp_Ace.Close;
    fDMCadPedido.sdsPedidoImp_Ace.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Ace.Open;

    fDMCadPedido.cdsPedidoImp_Rol.Close;
    fDMCadPedido.sdsPedidoImp_Rol.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Rol.Open;
  end;
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoImp_Tam.Close;
    fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
    fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
    fDMCadPedido.cdsPedidoImp_Tam.Open;
  end;
  if fDMCadPedido.qParametros_PedIMP_MATERIAL.AsString = 'S' then
  begin
    fDMCadPedido.cdsConsumo_Comb.Close;
    fDMCadPedido.sdsConsumo_Comb.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsConsumo_Comb.Open;
  end;

  vEmail_Fortes         := fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString;
  vEmail_Assunto_Fortes := 'Pedido Nº ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Pedido Nº ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString + #13;
  vTipo_Config_Email    := 5;
  vFilial			          := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
end;

procedure TfrmCadPedido.Normal1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;
  if (fDMCadPedido.cdsPedido_ConsultaIMPRESSO.AsString = 'S') and (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
    if MessageDlg('Pedido já impresso, deseja reimprimir?',mtConfirmation,[mbYes, mbNo],0) = mrNo then
      exit;
  prc_Controle_Imp('N');
end;

procedure TfrmCadPedido.Conferncia1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;

  fRelPedido2              := TfRelPedido2.Create(Self);
  fRelPedido2.vImpPreco    := ckImpPreco.Checked;
  fRelPedido2.fDMCadPedido := fDMCadPedido;
  fRelPedido2.RLReport1.PreviewModal;
  fRelPedido2.RLReport1.Free;
  FreeAndNil(fRelPedido2);
end;

procedure TfrmCadPedido.amanho1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  //fDMCadPedido.prc_Monta_Itens_Imp;
  prc_Monta_Itens_Imp(fDMCadPedido);

  if ckMeiaFolha.Checked then
  begin
    fRelPedido_Tam2              := TfRelPedido_Tam2.Create(Self);
    fRelPedido_Tam2.vImpPreco    := ckImpPreco.Checked;
    fRelPedido_Tam2.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam2.vTipo_Reg    := 'PS';
    fRelPedido_Tam2.RLReport1.PreviewModal;
    fRelPedido_Tam2.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam2);
  end
  else
  begin
    fRelPedido_Tam              := TfRelPedido_Tam.Create(Self);
    fRelPedido_Tam.vImpPreco    := ckImpPreco.Checked;
    fRelPedido_Tam.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam.vTipo_Reg    := 'PS';
    fRelPedido_Tam.RLReport1.PreviewModal;
    fRelPedido_Tam.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam);
  end;
end;

procedure TfrmCadPedido.Etiqueta1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  prc_Monta_Etiqueta_Nav;

  fRelEtiqueta_Nav := TfRelEtiqueta_Nav.Create(Self);
  fRelEtiqueta_Nav.fDMCadPedido := fDMCadPedido;
  fRelEtiqueta_Nav.RLReport1.PreviewModal;
  fRelEtiqueta_Nav.RLReport1.Free;
  FreeAndNil(fRelEtiqueta_Nav);
end;

procedure TfrmCadPedido.prc_Monta_Etiqueta_Nav;
var
  i: Integer;
  vQtd: Integer;
begin
  fDMCadPedido.mEtiqueta_Nav.EmptyDataSet;
  fDMCadPedido.cdsPedidoImp_Itens.First;
  while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
  begin
    fDMCadPedido.cdsPedidoImp_Mat.Close;
    fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
    fDMCadPedido.sdsPedidoImp_Mat.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
    fDMCadPedido.cdsPedidoImp_Mat.Open;

    fDMCadPedido.cdsPedidoImp_Mat.First;
    while not fDMCadPedido.cdsPedidoImp_Mat.Eof do
    begin
      if fDMCadPedido.cdsPedidoImp_MatIMPRIMIR_ETIQUETA_NAV.AsString = 'S' then
      begin
        fDMCadPedido.cdsPedidoImp_Etiqueta.Close;
        fDMCadPedido.sdsPedidoImp_Etiqueta.ParamByName('ID').AsInteger       := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
        fDMCadPedido.sdsPedidoImp_Etiqueta.ParamByName('ITEM').AsInteger     := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
        fDMCadPedido.sdsPedidoImp_Etiqueta.ParamByName('ITEM_MAT').AsInteger := fDMCadPedido.cdsPedidoImp_MatITEM_MAT.AsInteger;
        fDMCadPedido.cdsPedidoImp_Etiqueta.Open;
        //vQtd := fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger * fDMCadPedido.cdsPedidoImp_MatQTD_PECA.AsInteger;
        //vQtd := fDMCadPedido.cdsPedidoImp_MatQTD_PECA.AsInteger;
        vQtd := 1;
        for i := 1 to vQtd do
        begin
          if fDMCadPedido.cdsPedidoIMP_Etiqueta.IsEmpty then
            prc_Gravar_mEtiqueta_Nav('')
          else
          begin
            fDMCadPedido.cdsPedidoImp_Etiqueta.First;
            while not fDMCadPedido.cdsPedidoImp_Etiqueta.Eof do
            begin
              prc_Gravar_mEtiqueta_Nav(fDMCadPedido.cdsPedidoImp_EtiquetaTAMANHO.AsString);
              fDMCadPedido.cdsPedidoImp_Etiqueta.Next;
            end;
          end;
        end;
      end;
      fDMCadPedido.cdsPedidoImp_Mat.Next;
    end;
    fDMCadPedido.cdsPedidoImp_Itens.Next;
  end;
end;

procedure TfrmCadPedido.amanhoSemMaterial1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido);
  //fDMCadPedido.prc_Monta_Itens_Imp;

  if ckMeiaFolha.Checked then
  begin
    fRelPedido_Tam2              := TfRelPedido_Tam2.Create(Self);
    fRelPedido_Tam2.vImpPreco    := ckImpPreco.Checked;
    fRelPedido_Tam2.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam2.vTipo_Reg    := 'PN';
    fRelPedido_Tam2.RLReport1.PreviewModal;
    fRelPedido_Tam2.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam2);
  end
  else
  begin
    fRelPedido_Tam              := TfRelPedido_Tam.Create(Self);
    fRelPedido_Tam.vImpPreco    := ckImpPreco.Checked;
    fRelPedido_Tam.fDMCadPedido := fDMCadPedido;
    fRelPedido_Tam.vTipo_Reg    := 'PN';
    fRelPedido_Tam.RLReport1.PreviewModal;
    fRelPedido_Tam.RLReport1.Free;
    FreeAndNil(fRelPedido_Tam);
  end;
end;

procedure TfrmCadPedido.prc_Gravar_mEtiqueta_Nav(Tamanho: String);
begin
  fDMCadPedido.mEtiqueta_Nav.Insert;
  fDMCadPedido.mEtiqueta_NavNome_Empresa.AsString  := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
  fDMCadPedido.mEtiqueta_NavFone.AsString          := fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString;
  fDMCadPedido.mEtiqueta_NavNome_Etiqueta.AsString := fDMCadPedido.cdsPedidoImp_MatNOME_ETIQUETA.AsString;
  fDMCadPedido.mEtiqueta_NavUnidade.AsString       := fDMCadPedido.cdsPedidoImp_ItensUNIDADE.AsString;
  fDMCadPedido.mEtiqueta_NavTamanho.AsString       := Tamanho;
  fDMCadPedido.mEtiqueta_Nav.Post;
end;

procedure TfrmCadPedido.ckImpPrecoClick(Sender: TObject);
begin
  ckImpImposto.Checked := ckImpPreco.Checked;
end;

procedure TfrmCadPedido.Etiqueta2Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  prc_Monta_Etiqueta_Calcado('D');
  fDMCadPedido.mEtiqueta_Nav.IndexFieldNames := 'Referencia;Nome_Produto;Tamanho';
  prc_Imprimir_Etiqueta;

  MessageDlg('Etiquetas impressas!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadPedido.prc_Monta_Etiqueta_Calcado(Tipo: String); //D= DOS   A=A4 em windows
var
  i: Integer;
  vQtdDiv: Integer;
  vTexto: String;
  vQtdAux: Integer;
  vQtdPac: Integer;
  fDMPedidoImp: TDMPedidoImp;
  ffrmImpEtiq_Emb: TfrmImpEtiq_Emb;

begin
  vTexto := '1';
  if Tipo = 'A' then
    vTexto := InputBox('','Informar a Quantidade por Pacote', '72')
  else
  if Tipo = 'AE' then //Por Embalagem no produto tipo 'O'
  begin
    fDMPedidoImp := TDMPedidoImp.Create(Self);
    fDMPedidoImp.cdsPedEmb.Close;
    fDMPedidoImp.sdsPedEmb.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedidoImpID.AsInteger;
    fDMPedidoImp.cdsPedEmb.Open;

    ffrmImpEtiq_Emb := TfrmImpEtiq_Emb.Create(self);
    ffrmImpEtiq_Emb.fDMPedidoImp := fDMPedidoImp;
    ffrmImpEtiq_Emb.ShowModal;
    FreeAndNil(ffrmImpEtiq_Emb);
    if not fDMPedidoImp.vImp_Etiqueta then
      exit;
  end;
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) <> '' then
    vQtdDiv := StrToInt(vTexto)
  else
    vQtdDiv := 1;
  vQtdPac := vQtdDiv;
  vQtdAux := fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger div vQtdDiv;
  if fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger mod vQtdDiv > 0 then
    vQtdAux := vQtdAux + 1;
  vQtdDiv := vQtdAux;
  fDMCadPedido.mEtiqueta_Nav.EmptyDataSet;
  fDMCadPedido.cdsPedidoImp_Itens.First;
  while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
  begin
    if Tipo = 'AE' then
    begin
      if (fDMPedidoImp.cdsPedEmb.Locate('ITEM',fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger,[loCaseInsensitive])) and
         (fDMPedidoImp.cdsPedEmbSELECIONADO.AsString <> 'S') then
      begin
        fDMCadPedido.cdsPedidoImp_Itens.Next;
        continue;
      end;
    end;

    if Tipo = 'AE' then
    begin
      vQtdPac := StrToInt(FormatFloat('0',fDMPedidoImp.cdsPedEmbQTD_EMB.AsInteger));
      if vQtdPac <= 0 then
        vQtdPac := 1;
    end;

    vQtdAux := fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger;
    if (Tipo = 'A') or (Tipo = 'AE') then
    begin
      vQtdDiv := fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger div vQtdPac;
      if fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger mod vQtdPac > 0 then
        vQtdDiv := vQtdDiv + 1;
    end;

    if (Tipo <> 'A') and (Tipo <> 'AE') then
      vQtdDiv := vQtdAux;
    for i := 1 to vQtdDiv do
    begin
      fDMCadPedido.mEtiqueta_Nav.Insert;
      fDMCadPedido.mEtiqueta_NavReferencia.AsString   := fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString;
      fDMCadPedido.mEtiqueta_NavNome_Produto.AsString := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
      fDMCadPedido.mEtiqueta_NavItem_Ped.AsInteger    := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
      if (fDMCadPedido.cdsPedidoImpIMP_COR_CLIENTE.AsString = 'S') and (fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger > 0) and
         (fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString <> '') then
      begin
        fDMCadPedido.mEtiqueta_NavNome_Produto.AsString := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString + ' ' + fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString
                          + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_CLIENTE.AsString;
        if (trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString) <> '') and (trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString) <> '0') then
          fDMCadPedido.mEtiqueta_NavNome_Produto.AsString := fDMCadPedido.mEtiqueta_NavNome_Produto.AsString + ' TAM. ' + fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString;
      end
      else
      if fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger > 0 then
        fDMCadPedido.mEtiqueta_NavNome_Produto.AsString := fDMCadPedido.mEtiqueta_NavNome_Produto.AsString + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;
      fDMCadPedido.mEtiqueta_NavTamanho.AsString      := fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString;
      fDMCadPedido.mEtiqueta_NavNumOS.AsString        := fDMCadPedido.cdsPedidoImp_ItensNUMOS.AsString;
      fDMCadPedido.mEtiqueta_NavUnidade.AsString      := fDMCadPedido.cdsPedidoImp_ItensUNIDADE.AsString;
      if fDMCadPedido.cdsPedidoImp_ItensENCERADO.AsString = 'S' then
      begin
        fDMCadPedido.mEtiqueta_NavEncerado.AsString   := 'encerado';
        fDMCadPedido.mEtiqueta_NavReferencia.AsString := fDMCadPedido.mEtiqueta_NavReferencia.AsString + '-E';
      end
      else
        fDMCadPedido.mEtiqueta_NavEncerado.AsString     := '';
      if (Tipo = 'A') or (Tipo = 'AE') then
      begin
        if trim(fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString) <> '' then
          fDMCadPedido.mEtiqueta_NavProd_Cliente.AsString := fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString
        else
        begin
          fDMCadPedido.mEtiqueta_NavProd_Cliente.AsString := fnc_Busca_CodProduto_Cliente(fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger,
                                                                                          fDMCadPedido.cdsPedidoImpID_CLIENTE.AsInteger,
                                                                                          fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger,'',
                                                                                          fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString);
        end;
        fDMCadPedido.mEtiqueta_NavDtEmissao.AsDateTime    := fDMCadPedido.cdsPedidoImpDTEMISSAO.AsDateTime;
        fDMCadPedido.mEtiqueta_NavNome_Empresa.AsString   := fDMCadPedido.cdsPedidoImpNOME_INTERNO_FIL.AsString;
        fDMCadPedido.mEtiqueta_NavNome_Cliente.AsString   := fDMCadPedido.cdsPedidoImpNOME_CLI.AsString;
        fDMCadPedido.mEtiqueta_NavFantasia_Cli.AsString   := fDMCadPedido.cdsPedidoImpFANTASIA_CLI.AsString;
        fDMCadPedido.mEtiqueta_NavPedido_Cliente.AsString := fDMCadPedido.cdsPedidoImpPEDIDO_CLIENTE.AsString;
        if vQtdAux > vQtdPac then
          fDMCadPedido.mEtiqueta_NavQtd.AsInteger := vQtdPac
        else
          fDMCadPedido.mEtiqueta_NavQtd.AsInteger := vQtdAux;
        //fDMCadPedido.mEtiqueta_Nav.Post;
        vQtdAux := vQtdAux - vQtdPac;
        if vQtdAux <= 0 then
          vQtdDiv := i;
      end;
      if fDMCadPedido.mEtiqueta_Nav.State in [dsEdit,dsInsert] then
        fDMCadPedido.mEtiqueta_Nav.Post;
    end;
    fDMCadPedido.cdsPedidoImp_Itens.Next;
  end;
  if Tipo = 'AE' then //Por Embalagem no produto tipo 'O'
    FreeAndNil(fDMPedidoImp);
end;

procedure TfrmCadPedido.prc_Imprimir_Etiqueta;
var
  i: Integer;
  F: TextFile;
  vTexto: String;

Const
  cINegrito = #27#71;
  cFNegrito = #27#72;

begin
  if trim(fDMCadPedido.cdsParametrosEND_IMPRESSORA_DOS.AsString) <> '' then
    AssignFile(F,fDMCadPedido.cdsParametrosEND_IMPRESSORA_DOS.AsString) //impressao via dos
  else
  begin
    MessageDlg('*** Caminho da impressora DOS não informado!', mtInformation, [mbOk], 0);
    Exit;
  end;


  Rewrite(F);
  Write(F,'0'#15);
  for i := 1 to 2 do
    Writeln(F);
  fDMCadPedido.mEtiqueta_Nav.First;
  while not fDMCadPedido.mEtiqueta_Nav.EOF do
    begin
      vTexto := 'Referencia             Cor';
      Writeln(F,cINegrito + vTexto + cFNegrito);

      vTexto := fDMCadPedido.mEtiqueta_NavReferencia.AsString;
      for i := 1 to 23 - Length(vTexto) do
        vTexto := vTexto + ' ';
      vTexto := vTexto + copy(fDMCadPedido.mEtiqueta_NavNome_Produto.AsString,1,35);
      for i := 1 to 58 - Length(vTexto) do
        vTexto := vTexto + ' ';
      Writeln(F,cINegrito + vTexto + #18 + fDMCadPedido.mEtiqueta_NavTamanho.AsString + #15 + cFNegrito);
      for i := 1 to 2 do
        Writeln(F);
      fDMCadPedido.mEtiqueta_Nav.Next;
    end;
  CloseFile(F);
end;

procedure TfrmCadPedido.Excel1Click(Sender: TObject);
begin
  vTipo_Pedido := '';
  ffrmLeExcel := TfrmLeExcel.Create(self);
  ffrmLeExcel.fDMCadPedido := fDMCadPedido;
  ffrmLeExcel.Tag := 99;
  ffrmLeExcel.RadioGroup1.ItemIndex := 0;
  ffrmLeExcel.ShowModal;
  FreeAndNil(ffrmLeExcel);
  if vTipo_Pedido = 'P' then
  begin
    btnInserirClick(Sender);
    prc_Gravar_Pedido_Excel;
  end;
end;

procedure TfrmCadPedido.prc_Gravar_Pedido_Excel;
var
  vTexto: String;
  vID_VariacaoAux : Integer;
  vID_CFOPAnt : Integer;
begin
  fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := fDMCadPedido.vID_Cliente;
  fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime := Date;
  fDMCadPedido.cdsPedidoID_CFOP.AsInteger    := fDMCadPedido.vID_CFOP;
  //04/10/2018
  if fDMCadPedido.vID_Operacao > 0 then
    fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := fDMCadPedido.vID_Operacao;
  if trim(fDMCadPedido.vFinalidade) <> '' then
    fDMCadPedido.cdsPedidoFINALIDADE.AsString := fDMCadPedido.vFinalidade;
  //*********************
  pnlClienteEnter(frmCadPedido);
  pnlClienteExit(frmCadPedido);
  if fDMCadPedido.vID_Vendedor > 0 then
  begin
    fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMCadPedido.vID_Vendedor;
    RxDBLookupCombo6Exit(frmCadPedido);
  end;
  ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
  ffrmCadPedido_Itens.Tag := 99;
  ffrmCadPedido_Itens.fDMCadPedido   := fDMCadPedido;
  ffrmCadPedido_Itens.vMostrar_Preco := True;
  vTexto := '';
  fDMCadPedido.mAuxExcel.First;
  while not fDMCadPedido.mAuxExcel.Eof do
  begin
    try
      if fDMCadPedido.cdsProduto.Locate('REFERENCIA',fDMCadPedido.mAuxExcelReferencia.AsString,[loCaseInsensitive]) then
      begin
        fDMCadPedido.prc_Inserir_Itens;
        fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
        if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := 0;
        if fDMCadPedido.mAuxExcelID_CFOP.AsInteger > 0 then
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.mAuxExcelID_CFOP.AsInteger
        else
        if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
          uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,fDMCadPedido.vFinalidade);
        if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) and (fDMCadPedido.vID_CFOP > 0) then
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
        //if (fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger <= 0) and (fDMCadPedido.vID_Variacao > 0) then
         // fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := fDMCadPedido.vID_Variacao;
        if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
          vID_CFOPAnt := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger
        else
          vID_CFOPAnt := 0;
        ffrmCadPedido_Itens.pnlTipo1Exit(ffrmCadPedido_Itens);
        if (vID_CFOPAnt > 0) and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) then
        begin
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := vID_CFOPAnt;
          if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) then
            ffrmCadPedido_Itens.RxDBLookupCombo1Exit(ffrmCadPedido_Itens);
        end;

        ffrmCadPedido_Itens.prc_Move_Dados_Itens;
        fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.mAuxExcelReferencia.AsString;
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.mAuxExcelNome_Produto.AsString;
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadPedido.mAuxExcelVlr_Unitario.AsFloat));
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.000',fDMCadPedido.mAuxExcelQtd.AsFloat));
        fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
        ffrmCadPedido_Itens.BitBtn1Click(ffrmCadPedido_Itens);
      end
      else
      begin
        if vTexto = '' then
          vTexto := 'Códigos não gerados no pedido: ';
        vTexto := vTexto + #13 + fDMCadPedido.mAuxExcelReferencia.AsString;
      end;

    except
      fDMCadPedido.cdsPedido_Itens.Cancel;
    end;
    fDMCadPedido.mAuxExcel.Next;
  end;
  FreeAndNil(ffrmCadPedido_Itens);
  if trim(vTexto) <> '' then
    MessageDlg(vTexto, mtInformation, [mbOk], 0);
end;

procedure TfrmCadPedido.EtiquetaA41Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  prc_Monta_Etiqueta_Calcado('A');

  fRelEtiqueta              := TfRelEtiqueta.Create(Self);
  fRelEtiqueta.fDMCadPedido := fDMCadPedido;
  fRelEtiqueta.RLReport1.PreviewModal;
  fRelEtiqueta.RLReport1.Free;
  FreeAndNil(fRelEtiqueta);
end;

procedure TfrmCadPedido.RxDBLookupCombo3Exit(Sender: TObject);
begin
  Label11.Visible := False;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsClienteCODIGO.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  prc_Verifica_Limite(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,0,fDMCadPedido.cdsClienteVLR_LIMITE_CREDITO.AsFloat);

  if (fDMCadPedido.cdsClienteMOSTRAR_AVISO.AsString = 'S')and (trim(fDMCadPedido.cdsClienteOBS_AVISO.AsString) <> '') then
    MessageDlg('   AVISO  ' + #13 + #13+#13 + fDMCadPedido.cdsClienteOBS_AVISO.AsString,mtInformation, [mbOk], 0);

  if (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S') and (fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString = '') then
  begin
    if fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString <> '' then
      fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString := fDMCadPedido.cdsClienteEMAIL_COMPRAS.asstring;
  end;

  if (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') and (fDMCadPedido.cdsPedidoFONE.AsString = '') then
  begin
    if fDMCadPedido.cdsClienteCELULAR.AsString <> '' then
    begin
     fDMCadPedido.cdsPedidoFONE.AsString := fDMCadPedido.cdsClienteCELULAR.asstring;
     fDMCadPedido.cdsPedidoDDD.AsInteger := fDMCadPedido.cdsClienteDDDCELULAR.AsInteger;
    end;
  end;
  prc_Opcao_Consumidor;

end;

procedure TfrmCadPedido.prc_Opcao_Consumidor;
begin
  Label43.Visible  := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
  DBEdit12.Visible := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
end;

function TfrmCadPedido.fnc_senha(Opcao_Senha, Campo_Senha, Tipo, Desc1, Desc2, Desc3: String ; Item: Integer): Boolean;
var
  ffrmSenha: TfrmSenha;
  vSenha_Pertence: String;
begin
  fDMCadPedido.cdsParametros.Close;
  fDMCadPedido.cdsParametros.Open;
  Result := True;

  if (trim(fDMCadPedido.cdsParametros.FieldByName(Campo_Senha).AsString) <> '') or (trim(fDMCadPedido.qParametros_Usuario.FieldByName(Campo_Senha).AsString) <> '') then
  begin
    vSenha    := '';
    vSenha_Pertence := 'Principal';
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Panel1.Visible := (Tipo = 'R');
    ffrmSenha.Label2.Caption := Desc1;
    ffrmSenha.Label4.Caption := Desc2;
    ffrmSenha.Label3.Caption := Desc3;

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
      if vSenha <> fDMCadPedido.cdsParametros.FieldByName(Campo_Senha).AsString then
      begin
        if vSenha <> fDMCadPedido.qParametros_Usuario.FieldByName(Campo_Senha).AsString then
        begin
          Result := False;
          MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
          exit;
        end
        else
          vSenha_Pertence := vUsuario;
      end;
      if fDMCadPedido.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S' then
      begin
        if not fDMCadPedido.mSenha.Locate('Tipo_Alt;Item',VarArrayOf([Opcao_Senha,Item]),[locaseinsensitive]) then
        begin
          fDMCadPedido.mSenha.Insert;
          fDMCadPedido.mSenhaTipo_Alt.AsString       := Opcao_Senha;
          fDMCadPedido.mSenhaSenha.AsString          := vSenha;
          fDMCadPedido.mSenhaItem.AsInteger          := Item;
          fDMCadPedido.mSenhaTipo_Doc.AsString       := 'PED';
          fDMCadPedido.mSenhaSenha_Pertence.AsString := vSenha_Pertence;
          fDMCadPedido.mSenha.Post;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadPedido.EtiquetaCaixaIndividual1Click(Sender: TObject);
begin
  vTipo_Pedido := '';
  ffrmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  ffrmEtiq_Individual.CurrencyEdit1.AsInteger   := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  if (fDMCadPedido.cdsPedido_Consulta.Active) and (fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger > 0) then
    ffrmEtiq_Individual.RxDBLookupCombo3.KeyValue := fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger;
  ffrmEtiq_Individual.ShowModal;
  FreeAndNil(ffrmEtiq_Individual);
end;

procedure TfrmCadPedido.prc_Informar_Filial;
begin
  if fDMCadPedido.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadPedido.cdsFilial.Last;
    vFilial      := fDMCadPedido.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadPedido.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadPedido.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadPedido.btnFilialClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    prc_Informar_Filial;
    if vFilial <= 0 then
      exit;

    fDMCadPedido.cdsPedidoFILIAL.AsInteger := vFilial;
  end;
end;

procedure TfrmCadPedido.Personalizado1Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 1;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(False);//Color Shoes
end;

procedure TfrmCadPedido.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_Parc.IsEmpty) or (fDMCadPedido.cdsPedido_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedido_Parc.Delete;
end;

procedure TfrmCadPedido.btnGerarParcelasClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat)) <= 0 then
  begin
    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.Eof do
      fDMCadPedido.cdsPedido_Parc.Delete;
  end
  else
  if not uCalculo_Pedido.fnc_Gerar_Pedido_Parc(fDMCadPedido) then
    MessageDlg(fDMCadPedido.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadPedido.prc_Opcao_Prazo;
var
  vMostrarAux: String;
  vMostrarEntrada: String;
  vTipoCondicao: String;
begin
  vMostrarAux     := 'N';
  vMostrarEntrada := 'N';
  vTipoCondicao   := '';
  if (rxdbCondicaoPgto.Text <> '') and (fDMCadPedido.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive])) then
  begin
    vMostrarAux     := fDMCadPedido.cdsCondPgtoTIPO.AsString;
    vMostrarEntrada := fDMCadPedido.cdsCondPgtoENTRADA.AsString;
    vTipoCondicao   := fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString;
  end;
  btnGerarParcelas.Visible   := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  btnExcluirParcelas.Visible := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  Label47.Visible            := (((vMostrarAux = 'P') and (vMostrarEntrada = 'S')) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  DBEdit16.Visible           := (((vMostrarAux = 'P') and (vMostrarEntrada = 'S')) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label74.Visible            := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  DBDateEdit3.Visible        := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  SMDBGrid_Dupl2.Visible     := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    {if vMostrarAux = 'P' then
      rxcbTipo_Prazo.ItemIndex := 0
    else
    if vMostrarAux = 'V' then
      rxcbTipo_Prazo.ItemIndex := 1
    else
    if vMostrarAux = 'N' then
      rxcbTipo_Prazo.ItemIndex := 2;}
    if vMostrarEntrada = 'N' then
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  rxdbTipoCobranca.Visible    := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  SpeedButton5.Visible        := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  SpeedButton3.Visible        := (fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0);
  SpeedButton7.Visible        := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  rxdbConta.Visible           := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  rxdbConta_Orcamento.Visible := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label58.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label59.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label62.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  btnAlterar_CondPgto.Visible := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  RxDBLookupCombo2.ReadOnly   := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  rxdbCondicaoPgto.ReadOnly   := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  DBCheckBox4.Visible         := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat)) > 0);
end;

procedure TfrmCadPedido.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  prc_Opcao_Prazo;
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadPedido.RxDBLookupCombo2Change(Sender: TObject);
begin
  prc_Opcao_Prazo;
end;

procedure TfrmCadPedido.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString <> 'S') then
  begin
    if trim(DBEdit16.Text) <> '' then
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := StrToFloat(DBEdit16.Text)
    else
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := 0;
    btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadPedido.prc_scroll(DataSet: TDataSet);
begin
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    pnlPorta.Visible := fDMCadPedido.cdsPedido_ItensTIPO_ORCAMENTO.AsString = 'P';
    pnlVidro.Visible := fDMCadPedido.cdsPedido_ItensTIPO_ORCAMENTO.AsString = 'V';
  end
  else //28/04/2017
  if fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    pnlServico.Visible := (fDMCadPedido.cdsPedido_ItensTIPO_SERVICO.AsString  = 'S');
end;

procedure TfrmCadPedido.btnInserir_TrilhosClick(Sender: TObject);
begin
  fDMCadPedido.prc_Inserir_Trilhos;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Roldanas.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;

  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadPedido.btnAlterar_TrilhosClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Ace.IsEmpty then
    exit;

  fDMCadPedido.cdsPedido_Ace.Edit;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Roldanas.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;
  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadPedido.btnExcluir_TrilhosClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Ace.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.cdsPedido_Ace.Delete;
  uCalculo_Pedido.prc_Calcular_Trilhos(fDMCadPedido);
end;

procedure TfrmCadPedido.btnInserir_RoldanasClick(Sender: TObject);
begin
  fDMCadPedido.prc_Inserir_Roldanas;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Trilhos.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;

  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadPedido.btnAlterar_RoldanasClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Rol.IsEmpty then
    exit;

  fDMCadPedido.cdsPedido_Rol.Edit;

  ffrmCadpedido_Ace := TfrmCadpedido_Ace.Create(self);
  ffrmCadpedido_Ace.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Ace.TS_Trilhos.TabVisible := False;
  ffrmCadpedido_Ace.ShowModal;
  FreeAndNil(ffrmCadpedido_Ace);
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadPedido.btnExcluir_RoldanasClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Rol.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadPedido.cdsPedido_Rol.Delete;
  uCalculo_Pedido.prc_Calcular_Roldanas(fDMCadPedido);
end;

procedure TfrmCadPedido.Rtulo11Click(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    prc_Posiciona_Imp;
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Alumminium_Rotulo.fr3';
    if FileExists(vArq) then
      fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMCadPedido.frxReport1.ShowReport;
    Exit
  end;

  prc_Posiciona_Imp;

  prc_Monta_Etiqueta_Calcado('A');

  fDMCadPedido.qFilial_Rel.Close;
  fDMCadPedido.qFilial_Rel.ParamByName('ID').AsInteger      := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
  fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger    := 7;
  fDMCadPedido.qFilial_Rel.ParamByName('POSICAO').AsInteger := 1;
  fDMCadPedido.qFilial_Rel.Open;
  if trim(fDMCadPedido.qFilial_RelCAMINHO.AsString) = '' then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\SulTextil_Etiq1.fr3'
  else
    vArq := fDMCadPedido.qFilial_RelCAMINHO.AsString;
  if FileExists(vArq) then
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadPedido.frxReport1.ShowReport;
end;

procedure TfrmCadPedido.Rtulo21Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  ffrmGerar_Rotulos := TfrmGerar_Rotulos.Create(self);
  ffrmGerar_Rotulos.cePedInterno.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmGerar_Rotulos.ShowModal;
  FreeAndNil(ffrmGerar_Rotulos);
end;

procedure TfrmCadPedido.prc_Monta_Impressao(vGerar_Tamanho: Boolean);
var
  vArq: String;
  vCarimboAux: String;
  vReferenciaAux: String;
  vID_CorAux: Integer;
  vIndice: String;
  vAux: Integer;
  vOrdRef : String;
begin
  vIndice := fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames;
  fDMCadPedido.vMSGErro := '';
  vOrdRef := '';
  if ckImpOrdem.Checked then
    vOrdRef := ';REFERENCIA';
  fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;ITEM';
  if fDMCadPedido.vImpPedTerceiro then
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'NOME_ATELIER;ID'+vOrdRef+';ITEM'
  else
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID' + vOrdRef + ';ITEM';
  if (vGerar_Tamanho) or (fDMCadPedido.vTipo_Rel_Ped = 'P') or (fDMCadPedido.vTipo_Rel_Ped = 'R') then
    uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido);

  fDMCadPedido.cdsFilialRelatorios.Open;
  fDMCadPedido.mCarimbo.EmptyDataSet;
  if fDMCadPedido.cdsParametrosMOSTRAR_EMBALAGEM.AsString = 'S' then
    uCalculo_Pedido.prc_Gravar_mEmbalagem(fDMCadPedido,fDMCadPedido.cdsPedidoImpID.AsInteger);
  if fDMCadPedido.cdsParametrosUSA_CARIMBO.AsString = 'S' then
  begin
    fDMCadPedido.cdsPedidoImp_Carimbo.Close;
    fDMCadPedido.sdsPedidoImp_Carimbo.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedidoImpID.AsInteger;
    fDMCadPedido.cdsPedidoImp_Carimbo.Open;
    if fDMCadPedido.cdsPedidoImp_Carimbo.RecordCount > 1 then
    begin
      fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'CARIMBO;REFERENCIA;ID_COR';
      fDMCadPedido.cdsPedidoImp_Itens.First;
      vCarimboAux    := '';
      vReferenciaAux := '';
      vID_CorAux     := 0;
      while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
      begin
        if (vCarimboAux <> fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString) or
           (vReferenciaAux <> fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString) or
           (vID_CorAux <> fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger) then
          fDMCadPedido.prc_Gravar_mCarimbo(fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString,
                                           fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString,
                                           fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString);
        vCarimboAux    := fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString;
        vReferenciaAux := fDMCadPedido.cdsPedidoImp_ItensREFERENCIA.AsString;
        vID_CorAux     := fDMCadPedido.cdsPedidoImp_ItensID_COR.AsInteger;
        fDMCadPedido.cdsPedidoImp_Itens.Next;
      end;
    end
    else
    begin
      fDMCadPedido.prc_Gravar_mCarimbo(fDMCadPedido.cdsPedidoImp_CarimboCARIMBO.AsString,'TODAS','');
    end;
  end;
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;REFERENCIA;ID_COR;TAMANHO'
  else
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID'+vOrdRef+';ITEM';

  if (fDMCadPedido.vNum_Rel_Fast = 1) and (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
  begin
    if fDMCadPedido.cdsPedidoImpTIPO_NOTA.AsString = 'S' then
      fDMCadPedido.frxReport1.variables['ImpServico'] := QuotedStr('S')
    else
      fDMCadPedido.frxReport1.variables['ImpServico'] := QuotedStr('N');
  end;

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if (not cbPorta.Checked) and (not cbVidro.Checked) and (not cbOutros.Checked) then
    begin
      ShowMessage('Tipo de impressão (Porta, Vidro ou Outros) deve estar selecionado!');
      Exit;
    end;
    fDMCadPedido.cdsPedidoImp_Itens.Filtered := True;
    fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;DESCRICAO_TIPO;ITEM';
    //fDMCadPedido.cdsPedidoImp_Itens.Filter   := '1 = 0 ';
    fDMCadPedido.cdsPedidoImp_Itens.Filter   := 'DESCRICAO_TIPO IS NULL ';
    if cbVidro.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.Filter := fDMCadPedido.cdsPedidoImp_Itens.Filter + 'OR DESCRICAO_TIPO = ''VIDRO''';
    if cbPorta.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.Filter := fDMCadPedido.cdsPedidoImp_Itens.Filter + 'OR DESCRICAO_TIPO = ''PORTA''';
    fDMCadPedido.cdsPedidoImp_Itens.Filtered := True;
  end;

  //if fDMCadPedido.cdsFilialRelatorios.Locate('TIPO',2,([loCaseInsensitive])) then //tipo 2 = pedido
  if fDMCadPedido.vNum_Rel_Fast > 0 then
    vAux := fDMCadPedido.vNum_Rel_Fast
  else
  if vGerar_Tamanho then
    vAux := 2
  else
    vAux := 1;

  vArq := '';
  if fDMCadPedido.vTipo_Rel_Ped = 'P' then
  begin
    if fDMCadPedido.vImpPedTerceiro then
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Producao_Terceiro.fr3'
    else
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Producao.fr3';
  end
  else
  if fDMCadPedido.vTipo_Rel_Ped = 'R' then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Romaneio_Expedicao.fr3'
  else
  begin
    if fDMCadPedido.cdsFilialRelatorios.Locate('TIPO;POSICAO',VarArrayOf([2,vAux]),([loCaseInsensitive])) then //tipo 2 = Pedido
      vArq := fDMCadPedido.cdsFilialRelatoriosCAMINHO.AsString
    else
    begin
      ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
      exit;
    end;
  end;
  if (FileExists(vArq)) and (trim(vArq) <> '') then
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if not cbPorta.Checked then
      fDMCadPedido.frxReport1.variables['ImpTrilho'] := QuotedStr('N')
    else
    if not(fDMCadPedido.cdsPedidoImp_Ace.IsEmpty) then
      fDMCadPedido.frxReport1.variables['ImpTrilho'] := QuotedStr('S')
    else
      fDMCadPedido.frxReport1.variables['ImpTrilho'] := QuotedStr('N');
    if not cbPorta.Checked then
      fDMCadPedido.frxReport1.variables['ImpRoldana'] := QuotedStr('N')
    else
    if not(fDMCadPedido.cdsPedidoImp_Rol.IsEmpty) then
      fDMCadPedido.frxReport1.variables['ImpRoldana'] := QuotedStr('S')
    else
      fDMCadPedido.frxReport1.variables['ImpRoldana'] := QuotedStr('N');
    if ckImpPreco.Checked then
      fDMCadPedido.frxReport1.variables['ImpPreco'] := QuotedStr('S')
    else
      fDMCadPedido.frxReport1.variables['ImpPreco'] := QuotedStr('N');
    if cbOutros.Checked then
      fDMCadPedido.frxReport1.variables['ImpOutros'] := QuotedStr('S')
    else
      fDMCadPedido.frxReport1.variables['ImpOutros'] := QuotedStr('N');
  end;
  if fDMCadPedido.qParametros_PedIMP_MATERIAL.AsString = 'S' then
    fDMCadPedido.frxReport1.variables['ImpMaterial'] := QuotedStr('S');
  fDMCadPedido.frxReport1.ShowReport;
  fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := vIndice;
  if trim(fDMCadPedido.vMSGErro) <> '' then
    MessageDlg(fDMCadPedido.vMSGErro, mtInformation, [mbOk], 0);
end;

procedure TfrmCadPedido.Personalizado21Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 2;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(True);//Color Shoes
end;

procedure TfrmCadPedido.btnCopiar_ItemClick(Sender: TObject);
var
  ffrmCadPedido_Itens_Copia: TfrmCadPedido_Itens_Copia;
  //dataSetProvider: TDataSetProvider;
  cdsTemp: TClientDataSet;
  cdsTemp_Tipo: TClientDataSet;
  i: Integer;
  vItemAux: Integer;
  vItemPed: Integer;
  vItemOriginal: Integer;
begin
  if fDMCadPedido.cdsPedido_Itens.IsEmpty then
  begin
    MessageDlg('*** Não existe item lançado para copiar!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja copiar o item?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fnc_Lote) then
  begin
    MessageDlg('*** Lote/Talão de Produção gerado!',mtError, [mbOk], 0);
    exit;
  end;

  //02/06/2016  incluido a filial
  if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') or
     (fDMCadPedido.qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') then
    fDMCadPedido.prc_Filtrar_Produto_Cliente;
  //****************

  ffrmCadPedido_Itens_Copia  := TfrmCadPedido_Itens_Copia.Create(self);
  ffrmCadPedido_Itens_Copia.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Itens_Copia.ShowModal;
  FreeAndNil(ffrmCadPedido_Itens_Copia);

  if fDMCadPedido.vMSGErro = 'NAO' then
    exit;

  vItemPed := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Last;
  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItemPed,[loCaseInsensitive]);

  cdsTemp      := TClientDataSet.Create(nil);
  cdsTemp_Tipo := TClientDataSet.Create(nil);
  try
    cdsTemp.CloneCursor(fDMCadPedido.cdsPedido_Itens,False,False);
    cdsTemp_Tipo.CloneCursor(fDMCadPedido.cdsPedido_Item_Tipo,False,False);
    cdsTemp.Filtered := False;
    if fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger > 0 then
      cdsTemp.Filter := 'ITEM_ORIGINAL = ''' + IntToStr(fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger) + ''''
    else
      cdsTemp.Filter := 'ITEM = ' + IntToStr(fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
    cdsTemp.Filtered := True;
    cdsTemp.IndexFieldNames := 'ITEM';
    vItemOriginal := vItemAux + 1;
    cdsTemp.First;
    while not cdsTemp.Eof do
    begin
      vItemAux := vItemAux + 1;
      fDMCadPedido.cdsPedido_Itens.Insert;
      for i := 0 to ( cdsTemp.FieldCount - 1) do
      begin
        if (cdsTemp.Fields[i].FieldName <> 'sdsPedido_Item_Tipo') then
          fDMCadPedido.cdsPedido_Itens.FieldByName(cdsTemp.Fields[i].FieldName).AsVariant := cdsTemp.Fields[i].Value;
      end;
      fDMCadPedido.cdsPedido_ItensITEM.AsInteger          := vItemAux;
      fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger := vItemOriginal;
      fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger := 0;
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadPedido.vVlr_Unitario_Copia));
      if fDMCadPedido.vID_Cor_Copia > 0 then
        fDMCadPedido.cdsPedido_ItensID_COR.AsInteger      := fDMCadPedido.vID_Cor_Copia
      else
        fDMCadPedido.cdsPedido_ItensID_COR.AsInteger      := 0;
      fDMCadPedido.cdsPedido_ItensNUMOS.AsString          := fDMCadPedido.vOSRemessa_Copia;
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString        := fDMCadPedido.vCarimbo_Copia;
      fDMCadPedido.cdsPedido_Itens.Post;

      //26/09/2016
      cdsTemp_Tipo.First;
      while not cdsTemp_Tipo.Eof do
      begin
        fDMCadPedido.cdsPedido_Item_Tipo.Insert;
        fDMCadPedido.cdsPedido_Item_TipoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
        fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
        for i := 0 to ( cdsTemp_Tipo.FieldCount - 1) do
        begin
          fDMCadPedido.cdsPedido_Item_Tipo.FieldByName(cdsTemp_Tipo.Fields[i].FieldName).AsVariant := cdsTemp_Tipo.Fields[i].Value;
        end;
        fDMCadPedido.cdsPedido_Item_Tipo.Post;
        cdsTemp_Tipo.Next;
      end;
      //*********************

      cdsTemp.Next;
    end;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message);
  end;
  FreeAndNil(cdsTemp);
  FreeAndNil(cdsTemp_Tipo);
  btnCalcular_ValoresClick(Sender);

  {vItemPed := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Last;
  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Locate('ITEM',vItemPed,[loCaseInsensitive]);

  dataSetProvider := TDataSetProvider.Create(nil);
  dataSetProvider.DataSet := fDMCadPedido.sdsPedido_itens2;
  clientDataSet := TClientDataSet.Create(nil);
  clientDataSet.SetProvider(dataSetProvider);

  clientDataSet.Active := True;
  for i := 0 to fDMCadPedido.sdsPedido_Itens2.FieldCount - 1 do
    clientDataSet.Fields[i].DisplayLabel := fDMCadPedido.sdsPedido_Itens2.Fields[i].DisplayLabel;
  clientDataSet.Active := True;

  SMDBGrid2.DisableScroll;

  clientDataSet.Insert;

  for i := 0 to ( fDMCadPedido.sdsPedido_Itens2.FieldCount - 1) do
    clientDataSet.FieldByName(fDMCadPedido.sdsPedido_Itens2.Fields[i].FieldName).AsVariant := fDMCadPedido.cdsPedido_Itens.FieldByName(fDMCadPedido.sdsPedido_Itens2.Fields[i].FieldName).AsVariant;

  clientDataSet.Post;

  SMDBGrid2.EnableScroll;

  fDMCadPedido.cdsPedido_Itens.Insert;
  for i := 0 to ( clientDataSet.FieldCount - 1) do
    fDMCadPedido.cdsPedido_Itens.FieldByName(clientDataSet.Fields[i].FieldName).AsVariant := clientDataSet.Fields[i].Value;
  fDMCadPedido.cdsPedido_ItensITEM.AsInteger := vItemAux + 1;

  fDMCadPedido.cdsPedido_Itens.Post;}

end;

procedure TfrmCadPedido.btnCopiarPedidoClick(Sender: TObject);
var
  ffrmCadPedido_Copia: TfrmCadPedido_Copia;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  fDMCadPedido.mSenha.EmptyDataSet;
  vInclusao_Edicao := '';
  ffrmCadPedido_Copia := TfrmCadPedido_Copia.Create(self);
  ffrmCadPedido_Copia.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Copia.vNum_Pedido := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmCadPedido_Copia.ShowModal;
  FreeAndNil(ffrmCadPedido_Copia);

  if (fDMCadPedido.Tag = 1) then
  begin
    //02/06/2016  incluido a filial
    if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') or
      (fDMCadPedido.qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') then
      fDMCadPedido.prc_Filtrar_Produto_Cliente;
    //****************
    if (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
      fDMCadPedido.cdsPedido.Post;
    fDMCadPedido.cdsPedido.Edit;
    vInclusao_Edicao := 'C';
    RzPageControl1.ActivePage := TS_Cadastro;
    btnAlterarClick(Sender);
  end;
  fDMCadPedido.Tag := 0;
end;

procedure TfrmCadPedido.Rtulo31Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  ffrmGerar_Rotulos_Color := TfrmGerar_Rotulos_Color.Create(self);
  ffrmGerar_Rotulos_Color.cePedInterno.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmGerar_Rotulos_Color.ShowModal;
  FreeAndNil(ffrmGerar_Rotulos_Color);
end;

procedure TfrmCadPedido.Personalizado31Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 3;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(True);//Color Shoes
end;

procedure TfrmCadPedido.SMDBGrid9GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_AceQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_AceQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_AceQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua;
end;

procedure TfrmCadPedido.SMDBGrid10GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_RolQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_RolQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_RolQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua;
end;

procedure TfrmCadPedido.btnConsOrd_ProdClick(Sender: TObject);
var
  ffrmConsOrdProd_Ped: TfrmConsOrdProd_Ped;
begin
  ffrmConsOrdProd_Ped := TfrmConsOrdProd_Ped.Create(self);
  ffrmConsOrdProd_Ped.vID_PedidoLoc := fDMCadPedido.cdsPedidoID.AsInteger;
  ffrmConsOrdProd_Ped.ShowModal;
  FreeAndNil(ffrmConsOrdProd_Ped);
end;

procedure TfrmCadPedido.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmConsPedido_Nota: TfrmConsPedido_Nota;
  ffrmInformar_Processo_Ped: TfrmInformar_Processo_Ped;
  fDMConsPedido: TDMConsPedido;
  ffrmInformar_DtExpedicao: TfrmInformar_DtExpedicao;
  ffrmConsPedido_Senha: TfrmConsPedido_Senha;
begin
  if (Key = Vk_F12) then
  begin
    ffrmConsPedido_Senha := TfrmConsPedido_Senha.Create(self);
    ffrmConsPedido_Senha.CurrencyEdit1.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
    ffrmConsPedido_Senha.ComboBox1.ItemIndex     := 0;
    ffrmConsPedido_Senha.ShowModal;
    FreeAndNil(ffrmConsPedido_Senha);
  end
  else
  if (Key = Vk_F11) then
  begin
    ffrmInformar_Processo_Ped := TfrmInformar_Processo_Ped.Create(self);
    ffrmInformar_Processo_Ped.CurrencyEdit1.AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    ffrmInformar_Processo_Ped.ShowModal;
    FreeAndNil(ffrmInformar_Processo_Ped);
  end
  else
  if (Key = Vk_F6) and not(fDMCadPedido.cdsPedido_Consulta.IsEmpty) then
  begin
    fDMConsPedido := TDMConsPedido.Create(Self);
    ffrmConsPedido_Nota := TfrmConsPedido_Nota.Create(self);
    ffrmConsPedido_Nota.fDMConsPedido := fDMConsPedido;
    ffrmConsPedido_Nota.vID_Pedido_Cons   := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    ffrmConsPedido_Nota.vItem_Pedido_Cons := 0;
    ffrmConsPedido_Nota.ShowModal;
    FreeAndNil(ffrmConsPedido_Nota);
    FreeAndNil(fDMConsPedido);
  end
  else
  if (Key = Vk_F4) and not(fDMCadPedido.cdsPedido_Consulta.IsEmpty) then
  begin
    if not(lblInfDtExpedicao.Visible) or not(lblInfDtExpedicao.Enabled) then
      MessageDlg('*** Usuário não autorizado!', mtError, [mbOk], 0)
    else
    begin
      ffrmInformar_DtExpedicao := TfrmInformar_DtExpedicao.Create(self);
      ffrmInformar_DtExpedicao.Tag := 0;
      ffrmInformar_DtExpedicao.fDMCadPedido := fDMCadPedido;
      ffrmInformar_DtExpedicao.CurrencyEdit1.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
      ffrmInformar_DtExpedicao.ShowModal;
      FreeAndNil(ffrmInformar_DtExpedicao);
    end;
  end;
end;

procedure TfrmCadPedido.DBEdit14Enter(Sender: TObject);
begin
  vVlrFrete_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat));
end;

procedure TfrmCadPedido.DBEdit14Exit(Sender: TObject);
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)) > 0)  then
    fDMCadPedido.cdsPedidoPERC_ICMS_FRETE.AsFloat := fDMCadPedido.vAliqIcms;
  if StrToFloat(FormatFloat('0.00',vVlrFrete_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)) then
    btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedido.DBEdit16Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString = 'S') then
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat))
  else
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
end;

procedure TfrmCadPedido.btnRecalcularClick(Sender: TObject);
var
  vTotal, vPendente: Real;
begin
  SMDBGrid1.DisableScroll;
  vTotal    := 0;
  vPendente := 0;
  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    vTotal := StrToFloat(FormatFloat('0.00',vTotal + fDMCadPedido.cdsPedido_ConsultaVLR_TOTAL.AsFloat));
    if fDMCadPedido.cdsPedido_ConsultaAPROVADO_PED.AsString = 'P' then
      vPendente := StrToFloat(FormatFloat('0.00',vPendente + fDMCadPedido.cdsPedido_ConsultaVLR_TOTAL.AsFloat));
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;
  Label51.Caption := FormatFloat('###,###,##0.00',vTotal);
  Label65.Caption := FormatFloat('###,###,##0.00',vPendente);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadPedido.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #10) then
    Key := ' ';
end;

procedure TfrmCadPedido.BitBtn1Click(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    if (fDMCadPedido.cdsPedido_ConsultaID_VENDEDOR.AsInteger > 0) and (fDMCadPedido.cdsPedido_ConsultaID.AsInteger > 0) then
    begin
      fDMCadPedido.cdsMetas_Acum.Close;
      fDMCadPedido.sdsMetas_Acum.ParamByName('ID_VENDEDOR').AsInteger := fDMCadPedido.cdsPedido_ConsultaID_VENDEDOR.AsInteger;
      fDMCadPedido.sdsMetas_Acum.ParamByName('ANO').AsInteger         := YearOf(fDMCadPedido.cdsPedido_ConsultaDTEMISSAO.AsDateTime);
      fDMCadPedido.sdsMetas_Acum.ParamByName('MES').AsInteger         := MonthOf(fDMCadPedido.cdsPedido_ConsultaDTEMISSAO.AsDateTime);
      fDMCadPedido.cdsMetas_Acum.Open;
      if not fDMCadPedido.cdsMetas_Acum.IsEmpty then
        fDMCadPedido.cdsMetas_Acum.Edit
      else
      begin
        fDMCadPedido.cdsMetas_Acum.Insert;
        fDMCadPedido.cdsMetas_AcumID_VENDEDOR.AsInteger := fDMCadPedido.cdsPedido_ConsultaID_VENDEDOR.AsInteger;
        fDMCadPedido.cdsMetas_AcumANO.AsInteger         := YearOf(fDMCadPedido.cdsPedido_ConsultaDTEMISSAO.AsDateTime);
        fDMCadPedido.cdsMetas_AcumMES.AsInteger         := MonthOf(fDMCadPedido.cdsPedido_ConsultaDTEMISSAO.AsDateTime);
        fDMCadPedido.cdsMetas_AcumVALOR.AsFloat         := 0;
      end;
      fDMCadPedido.cdsMetas_AcumVALOR.AsFloat    := fDMCadPedido.cdsMetas_AcumVALOR.AsFloat + fDMCadPedido.cdsPedido_ConsultaVLR_ITENS.AsFloat;
      fDMCadPedido.cdsMetas_AcumANO_MES.AsString := fDMCadPedido.cdsMetas_AcumANO.AsString + FormatFloat('00',fDMCadPedido.cdsMetas_AcumMES.AsInteger);
      fDMCadPedido.cdsMetas_Acum.Post;
      fDMCadPedido.cdsMetas_Acum.ApplyUpdates(0);
    end;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;
  ShowMessage('Final da geração das Metas Acumuladas!');
end;

procedure TfrmCadPedido.rxdbContaChange(Sender: TObject);
begin
  if not fDMCadPedido.cdsPedido_Parc.IsEmpty then
  begin
    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.Eof do
    begin
      if (fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger <> fDMCadPedido.cdsPedidoID_CONTA.AsInteger) or
         (fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger) then
      begin
        fDMCadPedido.cdsPedido_Parc.Edit;
        if (fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger <> fDMCadPedido.cdsPedidoID_CONTA.AsInteger) then
        begin
          if fDMCadPedido.cdsPedidoID_CONTA.AsInteger > 0 then
            fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger := fDMCadPedido.cdsPedidoID_CONTA.AsInteger
          else
            fDMCadPedido.cdsPedido_ParcID_CONTA.Clear;
        end;
        if (fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger) then
        begin
          if fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
            fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger := fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger
          else
            fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.Clear;
        end;
        fDMCadPedido.cdsPedido_Parc.Post;
      end;
      fDMCadPedido.cdsPedido_Parc.Next;
    end;
  end;
end;

procedure TfrmCadPedido.SpeedButton7Click(Sender: TObject);
begin
  fDMCadPedido.cdsContas.Close;
  fDMCadPedido.cdsContas.Open;
end;

procedure TfrmCadPedido.btnAlterar_CondPgtoClick(Sender: TObject);
begin
  if not fnc_senha('CPG','SENHA_PEDIDO','','Cliente possui menos de 4 pedidos','','',0) then
    exit;
  RxDBLookupCombo2.ReadOnly := False;
  rxdbCondicaoPgto.ReadOnly := False;
end;

procedure TfrmCadPedido.PedidoProduo1Click(Sender: TObject);
begin
  fDMCadPedido.vImpPedTerceiro := False;
  fDMCadPedido.vNum_Rel_Fast := 0;
  fDMCadPedido.vTipo_Rel_Ped := 'P';
  prc_Posiciona_Imp;
  prc_Monta_Impressao(False);//Perfil
  fDMCadPedido.mItensImp.IndexFieldNames := 'Item_Imp;Item';
end;

procedure TfrmCadPedido.RomaneioParaExpedio1Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 0;
  fDMCadPedido.vTipo_Rel_Ped := 'R';
  prc_Posiciona_Imp;
  prc_Monta_Impressao(False);//Perfil
end;

procedure TfrmCadPedido.RtuloPorGrade1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  vTipo_Imp_Rotulo  := 'T';
  ffrmGerar_Rotulos := TfrmGerar_Rotulos.Create(self);
  ffrmGerar_Rotulos.cePedInterno.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmGerar_Rotulos.CheckBox1.Visible      := True;
  ffrmGerar_Rotulos.CheckBox1.Checked      := True;
  ffrmGerar_Rotulos.RadioGroup2.ItemIndex  := 0;
  ffrmGerar_Rotulos.ShowModal;
  FreeAndNil(ffrmGerar_Rotulos);
end;

procedure TfrmCadPedido.RxDBLookupCombo12Enter(Sender: TObject);
begin
  fDMCadPedido.cdsAtelier.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedido.DBEdit16Change(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit16.Text,0);
  DBCheckBox4.Visible := ((vAux <> '') and (StrToFloat(vAux) > 0));
end;

procedure TfrmCadPedido.Pictograma1Click(Sender: TObject);
var
  vArq: String;
  i: Word;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
        (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    Exit;
  Prc_Posiciona_Imp;

  fDMCadPedido.cdsProduto.IndexFieldNames := 'ID';

  if not fDMCadPedido.mRotulos_Prod.Active then
    fDMCadPedido.mRotulos_Prod.Open
  else
    fDMCadPedido.mRotulos_Prod.EmptyDataSet;


  fdmCadPedido.mRotulos.Insert;
  fDMCadPedido.mRotulosID.AsInteger := 1;
  fDMCadPedido.mRotulos.Post;

  while not fDMCadPedido.cdsPedidoImp_Itens.Eof do
  begin
    fDMCadPedido.cdsProduto.FindKey([fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger]);
    if fDMCadPedido.cdsProdutoPICTOGRAMA.AsString <> '' then
      for i := 1 to fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger do
      begin
        fDMCadPedido.mRotulos_Prod.Insert;
        fDMCadPedido.mRotulos_ProdID.AsInteger := 1;
        fDMCadPedido.mRotulos_ProdID_Produto.AsInteger := fDMCadPedido.cdsPedidoImp_ItensID_PRODUTO.AsInteger;
        fDMCadPedido.mRotulos_ProdPictograma.AsString  := fDMCadPedido.cdsProdutoPICTOGRAMA.AsString;
        fDMCadPedido.mRotulos_Prod.Post;
      end;
    fDMCadPedido.cdsPedidoImp_Itens.Next;
  end;

  fDMCadPedido.vTipo_Rel_Ped := 'PICTO';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\RZ_Pictograma1.fr3';
  if (FileExists(vArq)) and (trim(vArq) <> '') then
  begin
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq);
    fDMCadPedido.frxReport1.ShowReport;
  end
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
end;

procedure TfrmCadPedido.prc_scroll2(DataSet: TDataSet);
begin
  PedidoSaldo1.Enabled := (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P');
  btnExcluir.Enabled   := ((fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'N') or (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'N'));
end;

procedure TfrmCadPedido.prc_Controle_Imp(Tipo_Imp: String);
begin
  prc_Posiciona_Pedido;
  prc_Posiciona_Imp;

  //02/06/2016  incluido a filial
  if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') or
     (fDMCadPedido.qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S') then
    fDMCadPedido.prc_Filtrar_Produto_Cliente;
  //****************

  if fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    fRelPedido_JW              := TfRelPedido_JW.Create(Self);
    fRelPedido_JW.vImp_Foto    := ckImpFoto.Checked;
    fRelPedido_JW.vImpPreco    := ckImpPreco.Checked;
    fRelPedido_JW.vImp_Peso    := ckImpPeso.Checked;
    fRelPedido_JW.fDMCadPedido := fDMCadPedido;
    fRelPedido_JW.RLReport1.PreviewModal;
    fRelPedido_JW.RLReport1.Free;
    FreeAndNil(fRelPedido_JW);
  end
  else
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'PD' then
  begin
    if ckImpOrdem.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'REFERENCIA;NOME_COR_COMBINACAO;ITEM';
    fRelPedido_SulTextil     := TfRelPedido_SulTextil.Create(Self);
    fRelPedido_SulTextil.vImpPreco      := ckImpPreco.Checked;
    fRelPedido_SulTextil.vImpDtProducao := ckImpDtProducao.Checked;
    fRelPedido_SulTextil.fDMCadPedido   := fDMCadPedido;
    fRelPedido_SulTextil.vImpPeso       := ckImpPeso.Checked;
    if Tipo_Imp = 'S' then
      fRelPedido_SulTextil.vImpSaldo := True
    else
      fRelPedido_SulTextil.vImpSaldo := False;
    fRelPedido_SulTextil.RLReport1.PreviewModal;
    fRelPedido_SulTextil.RLReport1.Free;
    FreeAndNil(fRelPedido_SulTextil);
  end
  else
  begin
    if ckImpOrdem.Checked then
      fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'REFERENCIA;NOME_COR_COMBINACAO;ITEM';
    fRelPedido              := TfRelPedido.Create(Self);
    fRelPedido.vImpPreco    := ckImpPreco.Checked;
    fRelPedido.vImpImposto  := ((ckImpImposto.Checked) and (ckImpPreco.Checked));
    fRelPedido.vImpPeso     := ckImpPeso.Checked;
    fRelPedido.fDMCadPedido := fDMCadPedido;
    fRelPedido.RLReport1.PreviewModal;
    fRelPedido.RLReport1.Free;
    FreeAndNil(fRelPedido);
  end;

  if (fDMCadPedido.cdsPedidoIMPRESSO.AsString <> 'S') and (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin
    if not (fDMCadPedido.cdsPedido.State in [dsEdit]) then
      fDMCadPedido.cdsPedido.Edit;
    fDMCadPedido.cdsPedidoIMPRESSO.AsString := 'S';
    fDMCadPedido.cdsPedido.Post;
    fDMCadPedido.cdsPedido.ApplyUpdates(0);
  end;

end;

procedure TfrmCadPedido.PedidoSaldo1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Controle_Imp('S');
end;

procedure TfrmCadPedido.PedidoProduoTerceiro1Click(Sender: TObject);
begin
  fDMCadPedido.vImpPedTerceiro := True;
  fDMCadPedido.vNum_Rel_Fast := 0;
  fDMCadPedido.vTipo_Rel_Ped := 'P';
  prc_Posiciona_Imp;
  prc_Monta_Impressao(False);//Perfil
  fDMCadPedido.mItensImp.IndexFieldNames := 'Item_Imp;Item';
end;

procedure TfrmCadPedido.prc_Gravar_Carrinho;
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
    prc_Inserir_Registro;
  fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime := Date;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <= 0 then
    fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger;
  prc_Opcao_Consumidor;

  ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
  try
    ffrmCadPedido_Itens.fDMCadPedido := fDMCadPedido;
    fDMSel_Produto.mCarrinho.First;
    while not fDMSel_Produto.mCarrinho.Eof do
    begin
      fDMCadPedido.prc_Inserir_Itens;
      
      fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMSel_Produto.mCarrinhoID_Produto.AsInteger;
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMSel_Produto.mCarrinhoReferencia.AsString;
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMSel_Produto.mCarrinhoNome_Produto.AsString;
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      if fDMCadPedido.cdsProdutoID_CFOP_NFCE.AsInteger > 0 then
        fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsProdutoID_CFOP_NFCE.AsInteger
      else
      if fDMCadPedido.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger > 0 then
        fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger;

      fDMCadPedido.vID_Variacao := fDMCadPedido.fnc_Buscar_Regra_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger);
      fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := fDMCadPedido.vID_Variacao;

      ffrmCadPedido_Itens.prc_Move_Dados_Itens;

      fDMCadPedido.cdsPedido_ItensUNIDADE.AsString     := fDMSel_Produto.mCarrinhoUnidade.AsString;
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.00##',fDMSel_Produto.mCarrinhoQtd.AsFloat));
      fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00##',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00###',fDMSel_Produto.mCarrinhoVlr_Unitario.AsFloat));
      fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMSel_Produto.mCarrinhoVlr_Total.AsFloat));
      
      fDMCadPedido.cdsPedido_Itens.Post;
      fDMCadPedido.cdsPedido_Itens.ApplyUpdates(0);

      fDMSel_Produto.mCarrinho.Next;
    end;
  finally
    FreeAndNil(ffrmCadPedido_Itens);
  end;
  fDMCadPedido.cdsPedido.Edit;
  btnCalcular_ValoresClick(frmCadPedido);
end;

procedure TfrmCadPedido.EtiquetaPorItemdoPedido1Click(Sender: TObject);
begin
  vTipo_Pedido := '';
  ffrmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  ffrmEtiq_Individual.Tag := 1;
  ffrmEtiq_Individual.CurrencyEdit1.AsInteger   := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  if (fDMCadPedido.cdsPedido_Consulta.Active) and (fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger > 0) then
    ffrmEtiq_Individual.RxDBLookupCombo3.KeyValue := fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger;
  ffrmEtiq_Individual.ShowModal;
  FreeAndNil(ffrmEtiq_Individual);
end;

procedure TfrmCadPedido.btnRegravaItensClick(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    fDMCadPedido.cdsPedido_Itens.Edit;
    uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                           fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                           fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);
    fDMCadPedido.cdsPedido_Itens.Post;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
end;

procedure TfrmCadPedido.RxDBComboBox2Change(Sender: TObject);
begin
  btnDadosCupom.Visible := ((fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S') and (RxDBComboBox2.ItemIndex = 1));
end;

procedure TfrmCadPedido.btnDadosCupomClick(Sender: TObject);
var
  ffrmCadPedido_Cupom: TfrmCadPedido_Cupom;
begin
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger then
  begin
    MessageDlg('*** Cliente esta cadastrado, não é preciso informar os dados de entrega nesta opção!', mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadPedido_Cupom := TfrmCadPedido_Cupom.Create(self);
  ffrmCadPedido_Cupom.fDMCadPedido   := fDMCadPedido;
  ffrmCadPedido_Cupom.ShowModal;
  FreeAndNil(ffrmCadPedido_Cupom);
end;

procedure TfrmCadPedido.CancelarPedido1Click(Sender: TObject);
begin
  if fDMCadPedido.qParametros_UsuarioPERMITE_CANC_PED_OP.AsString <> 'S' then
  begin
    if (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or
      (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0) then
    begin
      MessageDlg('*** Lote/Talão já gerado para esse pedido!',mtError, [mbOk], 0);
      exit;
    end;
  end;
  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'P';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

procedure TfrmCadPedido.CancelarItemdoPedido1Click(Sender: TObject);
begin
  if fDMCadPedido.qParametros_UsuarioPERMITE_CANC_PED_OP.AsString <> 'S' then
  begin
    if (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or
      (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0) then
    begin
      MessageDlg('*** Lote/Talão já gerado para esse pedido!',mtError, [mbOk], 0);
      exit;
    end;
  end;

  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'I';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

procedure TfrmCadPedido.btnAltDtEntregaClick(Sender: TObject);
var
  vTexto: String;
  vDataAux: String;
  vData: TDateTime;
begin
  if fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe item para alterar a data de entrega!', mtError, [mbOk], 0);
    exit;
  end;

  vTexto := InputBox('DD/MM/AAAA','Informar a nova data de Entrega', '');
  vDataAux := vTexto;
  vTexto := Monta_Numero(vTexto,0);
  if Length(vTexto) < 8 then
  begin
    MessageDlg('*** Data inválida !', mtError, [mbOk], 0);
    exit;
  end;
  try
    vData := StrToDate(vDataAux);
  except
    vData := 0;
  end;
  if vData < 10 then
  begin
    MessageDlg('*** Data inválida !', mtError, [mbOk], 0);
    exit;
  end;

  vTexto := InputBox('Informar I/T/N','Alterar dt. entrega do item selecionado [I]/ de todos os item [T] / ou não alterar [N]' , '');
  if (UpperCase(vTexto) <> 'I') and (UpperCase(vTexto) <> 'T') then
  begin
    MessageDlg('*** Alteração não concluída!', mtInformation, [mbOk], 0);
    exit;
  end;

  if (UpperCase(vTexto) = 'I') then
  begin
    fDMCadPedido.cdsPedido_Itens.Edit;
    fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := vData;
    fDMCadPedido.cdsPedido_Itens.Post;
  end
  else
  begin
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      fDMCadPedido.cdsPedido_Itens.Edit;
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := vData;
      fDMCadPedido.cdsPedido_Itens.Post;
      fDMCadPedido.cdsPedido_Itens.Next;
    end;
  end;

  MessageDlg('*** Alteração Concluída!', mtConfirmation, [mbOk], 0);
end;

function TfrmCadPedido.fnc_Lote: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (trim(fDMCadPedido.qParametros_LoteUSA_LOTE_PED_SPROC.AsString) = 'S') then
    begin
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM LOTE_PED LP '
                         + ' WHERE LP.id_pedido = :ID_PEDIDO '
                         + ' AND LP.item_pedido = :ITEM_PEDIDO ';
      sds.ParamByName('ID_PEDIDO').AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
      sds.ParamByName('ITEM_PEDIDO').AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
      sds.Open;
      if sds.FieldByName('CONTADOR').AsInteger > 0 then
        Result := True;
      sds.Close;
    end
    else
    begin
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'select PED.ID, (SELECT COUNT(1) CONT_TALAO FROM TALAO_PED TP WHERE TP.ID_PEDIDO = PED.ID) CONT_TALAO, '
                         + ' (SELECT COUNT(1) CONT_TALAO2 FROM LOTE_PED_CALC LPC WHERE LPC.ID_PEDIDO = PED.ID) CONT_TALAO2 '
                         + ' from pedido PED  WHERE PED.ID = ' + IntToStr(fDMCadPedido.cdsPedidoID.AsInteger);
      sds.Open;
      if (sds.FieldByName('CONT_TALAO').AsInteger > 0) or (sds.FieldByName('CONT_TALAO2').AsInteger > 0) then
        Result := True;
      sds.Close;
    end;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadPedido.PedidoProduo2Click(Sender: TObject);
var
  vArq: String;
  fDMPedidoImp: TDMPedidoImp;
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  fDMPedidoImp := TDMPedidoImp.Create(Self);

  fDMPedidoImp.cdsPedidoImp.Close;
  fDMPedidoImp.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMPedidoImp.cdsPedidoImp.Open;

  fDMPedidoImp.cdsPedidoImp_Itens.Close;
  fDMPedidoImp.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMPedidoImp.cdsPedidoImp_Itens.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Conferencia.fr3';
  if FileExists(vArq) then
  begin
    fDMPedidoImp.frxReport1.Report.LoadFromFile(vArq);
    fDMPedidoImp.frxReport1.ShowReport;
  end
  else
    ShowMessage('Relatorio não localizado! ' + vArq);
  FreeAndNil(fDMPedidoImp);;
end;

procedure TfrmCadPedido.btnCopiarOSClick(Sender: TObject);
var
  ffrmSel_OS_Proc: TfrmSel_OS_Proc;
  vFinalidadeAux: String;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
  ffrmCadPedido_Itens.fDMCadPedido := fDMCadPedido;
  if fDMCadPedido.cdsPedido_Itens.RecordCount > 0 then
    fDMCadPedido.cdsPedido_Itens.Last;
  fDMCadPedido.vID_CFOP := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger;
  uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
  if (fDMCadPedido.vID_CFOP <= 0) and (fDMCadPedido.cdsPedidoID_CFOP.AsInteger > 0) then
    fDMCadPedido.vID_CFOP := fDMCadPedido.cdsPedidoID_CFOP.AsInteger;

  ffrmSel_OS_Proc := TfrmSel_OS_Proc.Create(self);
  ffrmSel_OS_Proc.fDMCadPedido := fDMCadPedido;
  ffrmSel_OS_Proc.ffrmCadPedido_Itens := ffrmCadPedido_Itens;
  ffrmSel_OS_Proc.vCodCliente := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  ffrmSel_OS_Proc.vFilial_Loc := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
  ffrmSel_OS_Proc.ShowModal;
  FreeAndNil(ffrmSel_OS_Proc);
  FreeAndNil(ffrmCadPedido_Itens);
end;

procedure TfrmCadPedido.SpeedButton8Click(Sender: TObject);
begin
  ffrmCadObs_Aux := TfrmCadObs_Aux.Create(self);
  ffrmCadObs_Aux.ShowModal;

  FreeAndNil(ffrmCadObs_Aux);
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadPedido.BitBtn2Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo11.Text) = '' then
  begin
    MessageDlg('*** Observação não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadPedido.cdsPedidoOBS.Value) = '' then
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsObs_AuxOBS.AsString
  else
    fDMCadPedido.cdsPedidoOBS.Value := fDMCadPedido.cdsPedidoOBS.Value + #13 + fDMCadPedido.cdsObs_AuxOBS.AsString;
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo11.SetFocus;
end;

procedure TfrmCadPedido.pnlDadosAdicionaisEnter(Sender: TObject);
begin
  fDMCadPedido.cdsObs_Aux.Close;
  fDMCadPedido.cdsObs_Aux.Open;
end;

procedure TfrmCadPedido.btnAltProdCliClick(Sender: TObject);
var
  ffrmCadPedido_ItensCli: TfrmCadPedido_ItensCli;
begin
  if fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0 then
    exit;
  ffrmCadPedido_ItensCli := TfrmCadPedido_ItensCli.Create(self);
  ffrmCadPedido_ItensCli.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_ItensCli.vChamada := 'P';
  ffrmCadPedido_ItensCli.ShowModal;
  FreeAndNil(ffrmCadPedido_ItensCli);
end;

procedure TfrmCadPedido.CarndePagamento1Click(Sender: TObject);
var
  vArq: String;
  vId: Integer;
begin
  if fDmCadPedido.cdsPedido_Consulta.IsEmpty then
    Exit
  else
  begin
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\CarnePed.fr3';
    if FileExists(vArq) then
      fDmCadPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    vId := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMCadPedido.cdsPedido_Consulta.Filtered := False;
    fDMCadPedido.cdsPedido_Consulta.Filter   := 'ID = ' + IntToStr(vId);
    fDMCadPedido.cdsPedido_Consulta.Filtered := True;

    fDMCadPedido.cdsPedidoImp.Close;
    fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := vId;
    fDMCadPedido.cdsPedidoImp.Open;

    fDMCadPedido.Abrir_Duplicatas(fDmCadPedido.cdsPedido_ConsultaID.AsInteger);

    fDmCadPedido.frxReport1.ShowReport;
    
    fDMCadPedido.cdsDuplicata.Close;
    fDMCadPedido.sdsDuplicata.CommandText := fDMCadPedido.ctDuplicata;

    fDMCadPedido.cdsPedido_Consulta.Filtered := False;
    fDMCadPedido.cdsPedido_Consulta.Filter   := '';
    fDMCadPedido.cdsPedido_Consulta.IndexFieldNames := 'ID';
    fDMCadPedido.cdsPedido_Consulta.FindKey([vId]);
  end;
end;

procedure TfrmCadPedido.aloPorPedido1Click(Sender: TObject);
var
  ffrmTalaoPed: TfrmTalaoPed;
  fDMConsPedido: TDMConsPedido;
begin
  ffrmTalaoPed := TfrmTalaoPed.Create(self);
  fDMConsPedido := TDMConsPedido.Create(Self);
  ffrmTalaoPed.fDMConsPedido := fDMConsPedido;
  ffrmTalaoPed.CurrencyEdit1.AsInteger := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
  ffrmTalaoPed.ShowModal;
  FreeAndNil(ffrmTalaoPed);
  FreeAndNil(fDMConsPedido);
end;

procedure TfrmCadPedido.btnConsTempoClick(Sender: TObject);
var
  ffrmConsPedido_Real: TfrmConsPedido_Real;
begin
  ffrmConsPedido_Real := TfrmConsPedido_Real.Create(self);
  ffrmConsPedido_Real.fDMCadPedido := fDMCadPedido;
  ffrmConsPedido_Real.ShowModal;
  FreeAndNil(ffrmConsPedido_Real);
end;

procedure TfrmCadPedido.EtiquetaA4Seleciona1Click(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or (fDMCadPedido.cdsPedido_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Imp;
  prc_Monta_Etiqueta_Calcado('AE');

  fRelEtiqueta              := TfRelEtiqueta.Create(Self);
  fRelEtiqueta.fDMCadPedido := fDMCadPedido;
  fRelEtiqueta.RLReport1.PreviewModal;
  fRelEtiqueta.RLReport1.Free;
  FreeAndNil(fRelEtiqueta);
end;

procedure TfrmCadPedido.aloPorProcesso1Click(Sender: TObject);
var
  ffrmTalaoPedProc: TfrmTalaoPedProc;
  fDMPedidoImp: TDMPedidoImp;
begin
  ffrmTalaoPedProc := TfrmTalaoPedProc.Create(self);
  fDMPedidoImp := TDMPedidoImp.Create(Self);
  ffrmTalaoPedProc.fDMPedidoImp            := fDMPedidoImp;
  ffrmTalaoPedProc.Edit2.Text              := fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString;
  ffrmTalaoPedProc.ShowModal;
  FreeAndNil(ffrmTalaoPedProc);
  FreeAndNil(fDMPedidoImp);
end;

function TfrmCadPedido.fnc_Existe_Baixa(ID, Item: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := True;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM BAIXA_PEDIDO B '
                       + ' WHERE B.ID_PEDIDO = :ID_PEDIDO ';
    if Item > 0 then
    begin
      sds.CommandText := sds.CommandText + '   AND B.ITEM_PEDIDO = :ITEM_PEDIDO ';
      sds.ParamByName('ITEM_PEDIDO').AsInteger := Item;
    end;
    sds.ParamByName('ID_PEDIDO').AsInteger := ID;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger <= 0 then
      Result := False;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

end.
