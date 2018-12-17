unit UCadPedidoLoja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB, NxEdit,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl, Math,
  UCadPedido_Desconto, UEscolhe_Filial, UCBase, RzPanel, UCadTabPreco, UCadPedido_Cancelamento, DateUtils, dbXPress, Menus, 
  NxCollection, Variants, USel_TabPreco, VarUtils, DBClient, Provider, UCadPedido_Itens, UDMPedidoImp, UDMSel_Produto;

type
  TfrmCadPedidoLoja = class(TForm)
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
    btnConsultar: TNxButton;
    PopupMenu1: TPopupMenu;
    Label41: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    ckImpPreco: TCheckBox;
    ckImpImposto: TCheckBox;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    DBEdit12: TDBEdit;
    Label43: TLabel;
    Personalizado1: TMenuItem;
    Personalizado21: TMenuItem;
    Personalizado31: TMenuItem;
    PedidosPersonalizados1: TMenuItem;
    lblInfDtExpedicao: TLabel;
    cbxOpcao: TComboBox;
    Label67: TLabel;
    btnOutrasOpcoes: TNxButton;
    PopupMenu2: TPopupMenu;
    CancelarPedido1: TMenuItem;
    CancelarItemdoPedido1: TMenuItem;
    Label77: TLabel;
    DBEdit24: TDBEdit;
    Label79: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label49: TLabel;
    DBEdit11: TDBEdit;
    Label61: TLabel;
    DBEdit17: TDBEdit;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    btnDifal: TNxButton;
    btnDesconto: TNxButton;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    btnCalcular_Valores: TBitBtn;
    btnRegravaItens: TBitBtn;
    RzGroupBox1: TRzGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    btnConfirmar_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnCancelar_Itens: TNxButton;
    pnlProduto: TPanel;
    Label10: TLabel;
    Label33: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    pnlDigitacao: TPanel;
    Label35: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label48: TLabel;
    dbedtQtd: TDBEdit;
    dbedtVlrUnitario: TDBEdit;
    gbxDesconto: TRzGroupBox;
    lblVlrDesc: TLabel;
    lblPercDesc: TLabel;
    Label73: TLabel;
    dbedtVlrDesc: TDBEdit;
    dbedtPercDesc: TDBEdit;
    dbedtVlrProd: TDBEdit;
    dbedtQtdCaixa: TDBEdit;
    dbedtVlrTotal: TDBEdit;
    Panel7: TPanel;
    Shape3: TShape;
    Shape2: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Label34: TLabel;
    Label11: TLabel;
    SMDBGrid2: TSMDBGrid;
    btnLocalEstoque: TNxButton;
    Panel8: TPanel;
    btnEntrega: TNxButton;
    btnObs: TNxButton;
    btnPagamento: TNxButton;
    btnLucratividade: TNxButton;
    Label27: TLabel;
    edtLote: TEdit;
    Label26: TLabel;
    ceEstoque: TCurrencyEdit;
    Label28: TLabel;
    RzGroupBox2: TRzGroupBox;
    ceQtdEmb: TCurrencyEdit;
    Label2: TLabel;
    Label29: TLabel;
    ceQtdPeca: TCurrencyEdit;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    Label32: TLabel;
    Lucratividade1: TMenuItem;
    Analtico1: TMenuItem;
    Sintet1: TMenuItem;
    ckImpCancelados: TCheckBox;
    Label37: TLabel;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    Label38: TLabel;
    Shape7: TShape;
    Label39: TLabel;
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
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnDescontoClick(Sender: TObject);
    procedure btnCalcular_ValoresClick(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlClienteEnter(Sender: TObject);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure ckImpPrecoClick(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure Personalizado1Click(Sender: TObject);
    procedure Personalizado21Click(Sender: TObject);
    procedure Personalizado31Click(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure btnRegravaItensClick(Sender: TObject);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure CancelarItemdoPedido1Click(Sender: TObject);
    procedure pnlDigitacaoEnter(Sender: TObject);
    procedure dbedtQtdEnter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtQtdExit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlProdutoExit(Sender: TObject);
    procedure dbedtVlrUnitarioExit(Sender: TObject);
    procedure btnConfirmar_ItensClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelar_ItensClick(Sender: TObject);
    procedure dbedtPercDescExit(Sender: TObject);
    procedure dbedtVlrDescExit(Sender: TObject);
    procedure dbedtVlrDescEnter(Sender: TObject);
    procedure dbedtVlrProdEnter(Sender: TObject);
    procedure dbedtVlrProdExit(Sender: TObject);
    procedure pnlProdutoEnter(Sender: TObject);
    procedure btnEntregaClick(Sender: TObject);
    procedure btnObsClick(Sender: TObject);
    procedure btnLocalEstoqueClick(Sender: TObject);
    procedure gbxDescontoEnter(Sender: TObject);
    procedure gbxDescontoExit(Sender: TObject);
    procedure RzGroupBox1Enter(Sender: TObject);
    procedure RzGroupBox1Exit(Sender: TObject);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnDifalClick(Sender: TObject);
    procedure btnLucratividadeClick(Sender: TObject);
    procedure edtLoteExit(Sender: TObject);
    procedure edtLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtQtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtVlrUnitarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure edtLoteEnter(Sender: TObject);
    procedure Analtico1Click(Sender: TObject);
    procedure Sintet1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadPedido: TDMCadPedido;
    fDMPedidoImp: TDMPedidoImp;
    fDMSel_Produto: TDMSel_Produto;
    ffrmCadPedido_Desconto: TfrmCadPedido_Desconto;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadTabPreco: TfrmCadTabPreco;
    ffrmCadPedido_Cancelamento: TfrmCadPedido_Cancelamento;
    ffrmSel_TabPreco: TfrmSel_TabPreco;
    ffrmCadPedido_Itens: TfrmCadPedido_Itens;

    vVlrDesc_Ant: Real;
    vVlrProd_Ant: Real;
    vPreco_Ori: Real;
    vQtd_Prod_Ant: Real;
    vCodProdutoAnt: Integer;
    vID_Produto_Ant: Integer;

    vID_ClienteAnt: Integer;
    vVlrFrete_Ant: Real;
    vVlrMao_Obra_Ant: Real;
    vInclusao_Edicao: String; //I=Incluir   E=Editar

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Informar_Filial;
    procedure prc_Posiciona_Pedido;
    procedure prc_Posicionar_Cliente;
    procedure prc_Habilitar_CamposNota;
    function fnc_Verifica_Registro: Boolean;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_Imp;
    procedure prc_Opcao_Consumidor;
    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Monta_Lucratividade;

    procedure prc_scroll2(DataSet: TDataSet);
    procedure prc_Monta_Impressao(vGerar_Tamanho: Boolean);

    procedure prc_Controle_Imp(Tipo_Imp: String = 'N');

    procedure prc_Gravar_Carrinho;

    procedure prc_Habilita_Itens;

    function fnc_Lote: Boolean;
    function prc_Senha_Desconto: Boolean;
    function fnc_Verifica_Lote(ID_Produto: Integer): Boolean;

    procedure prc_Inserir_Item;

    procedure prc_CFOP;
    procedure prc_CFOP_Variacao;
    procedure prc_Calcular_VlrItens;
    procedure prc_Move_Dados_Itens;
    procedure prc_Chama_Form_Produto;
    procedure prc_Estoque(ID_Produto: Integer);
    procedure prc_Limpa_Campo_Itens;
    procedure prc_Verifica_Itens;
    procedure prc_scroll(DataSet: TDataSet);
  public
    { Public declarations }
    vQtd_Caixa: Integer;
  end;

var
  frmCadPedidoLoja: TfrmCadPedidoLoja;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, uRelPedido, uRelPedido_SulTextil, uRelPedido2, USel_Pessoa, UDMUtil, USenha,
  uUtilCliente, uCalculo_Pedido,
  UConsPedido_Nota, UDMConsPedido, USel_Produto,
  USel_OS_Proc, URelPedido_Tam, uRelPedido_Tam2, UCadPedido,
  URelPedido_JW, UCadPedidoLoja_Frete, UCadPedidoLoja_Obs,
  UCadPedidoLoja_Difal, UCadPedidoLoja_LocalEst,
  UCadPedidoLoja_Pag, UCadPedido_Custo, USel_Produto_Lote, UOpcaoImp,
  UConsPedido, uGrava_Pedido;

{$R *.dfm}

procedure TfrmCadPedidoLoja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vNum_Pedido_Pos := 0;
  vTipo_Pedido    := '';
  FreeAndNil(fDMCadPedido);
  FreeAndNil(fDMPedidoImp);
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    Exit;

  if ((fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S'))
    or ((fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and ((fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0))) then
  begin
    MessageDlg('*** Lote/Talão de Produção gerado!',mtError, [mbOk], 0);
    exit;
  end;

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

procedure TfrmCadPedidoLoja.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPedidoLoja.prc_Excluir_Registro;
begin
  uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
end;

procedure TfrmCadPedidoLoja.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vAux: Real;
  ffrmSenha: TfrmSenha;
  vID_LocalAux: Integer;
  vItemAux: Integer;
  vAprazo_Avista: String;
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
    end;
  end;

  if fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S' then
  begin
    vAux           := 0;
    vAprazo_Avista := '';
    if (fDMCadPedido.cdsCondPgto.Locate('ID',fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger,[loCaseInsensitive])) then
      vAprazo_Avista  := fDMCadPedido.cdsCondPgtoTIPO.AsString;
    if vAprazo_Avista <> 'V' then
    begin
      fDMCadPedido.cdsPedido_Parc.First;
      while not fDMCadPedido.cdsPedido_Parc.Eof do
      begin
        vAux := StrToFloat(FormatFloat('0.00',vAux + fDMCadPedido.cdsPedido_ParcVLR_VENCIMENTO.AsFloat));
        fDMCadPedido.cdsPedido_Parc.Next;
      end;
      if StrToFloat(FormatFloat('0.00',vAux)) <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat)) then
      begin
        if MessageDlg('Parcelas com valor diferente do valor do pedido, gravar assim mesmo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
          exit;
      end;
    end;
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
  vInclusao_Edicao := '';

  TS_Consulta.TabEnabled     := True;
  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Consulta;

  fDMCadPedido.mSenha.EmptyDataSet;

  prc_Consultar(vIDAux);
  prc_Posiciona_Pedido;
end;

procedure TfrmCadPedidoLoja.prc_Inserir_Registro;
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

  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.prc_Abrir_CSTICMS('S')
  else
    fDMCadPedido.prc_Abrir_CSTICMS('N');
  fDMCadPedido.cdsPedidoTIPO_ATENDIMENTO.AsInteger := 1;

  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;

  fDMCadPedido.prc_Abrir_cdsCFOP('S');

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

  fDMCadPedido.vID_CFOP := 0;

  if fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    fDMCadPedido.prc_Abrir_Servico;

  if fDMCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := fDMCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger;
    fDMCadPedido.cdsPedidoFINALIDADE.AsString        := 'C';
  end;
  prc_Limpa_Campo_Itens;
end;

procedure TfrmCadPedidoLoja.FormShow(Sender: TObject);
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
  Label21.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  DBDateEdit2.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P');
  //lblTabPreco.Visible  := (fDMCadPedido.cdsParametrosUSA_TAB_PRECO.AsString = 'S');
  //lblTabPreco.Caption  := '';

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
    if (SMDBGrid2.Columns[i].FieldName = 'CARIMBO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_CARIMBO.AsString = 'S');
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
    if (SMDBGrid1.Columns[i].FieldName = 'DTAPROVADO') or (trim(SMDBGrid1.Columns[i].FieldName) = 'APROVADO_PED') then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'DESCRICAO_STATUS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_PROCESSO.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'NOME_OPERACAO' then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'DTRECEBIMENTO') or (SMDBGrid1.Columns[i].FieldName = 'NUM_NOTA_ENT') then
      SMDBGrid1.Columns[i].Visible := (fDMCadPedido.qParametros_PedMOSTRAR_DT_REC.AsString = 'S');
  end;

  //Mostrar Preço
  if ckImpPreco.Visible then
    ckImpPreco.Checked := (fDMCadPedido.cdsParametrosIMP_PRECO_PED.AsString = 'S');

  fDMCadPedido.cdsPedido_Consulta.AfterScroll := prc_scroll2;
  fDmCadPedido.cdsPedido_Itens.AfterScroll    := prc_scroll;

  btnLocalEstoque.Visible := ((fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S'));
  vStatic_Processo := '';
  if fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S' then
    vStatic_Processo := vStatic_Processo + '   F8 Sel.Produtos';
  StaticText1.Caption := 'Duplo clique para consultar       F3 Tabela de Preço    F6 Cons. Notas     F7 Cons Pedidos';
  StaticText1.Caption := StaticText1.Caption + vStatic_Processo;

  if fDMCadPedido.qParametros_PedOPCAO_CONSULTA.AsString = 'P' then
    cbxOpcao.ItemIndex := 0
  else
    cbxOpcao.ItemIndex := 2;
  Label4.Visible  := (fDMCadPedido.qParametros_PedDESABILITAR_OC_PED.AsString <> 'S');
  DBEdit4.Visible := (fDMCadPedido.qParametros_PedDESABILITAR_OC_PED.AsString <> 'S');

  Label77.Visible  := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');
  DBEdit24.Visible := (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S');
  Lucratividade1.Visible := (btnLucratividade.Visible);

  Label79.Visible  := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit25.Visible := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
  DBEdit26.Visible := ((fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') or (fDMCadPedido.qParametros_PedMOSTRAR_FONE.AsString = 'S'));
end;

procedure TfrmCadPedidoLoja.prc_Consultar(ID: Integer);
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
    if ckImpCancelados.Checked then
      fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                     ' AND PED.FATURADO <> ' + QuotedStr('C');

    case cbxOpcao.ItemIndex of
      0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO <> ' + QuotedStr('S');
      1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO = ' + QuotedStr('S');
    end;
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmCadPedidoLoja.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadPedidoLoja.btnCancelarClick(Sender: TObject);
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
end;

procedure TfrmCadPedidoLoja.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPedidoLoja.btnAlterarClick(Sender: TObject);
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
    if fDMCadPedido.qParametros_UsuarioALT_IT_PED_COM_OP.AsString <> 'S' then
    begin
      if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') then
      begin
        MessageDlg('*** pedido já gerada a Ordem de Produção!', mtInformation, [mbOk], 0);
        Exit;
      end;
    end;
    if (fDMCadPedido.qParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S') and (fDMCadPedido.cdsPedidoFINANCEIRO_CONF.AsString = 'S') then
    begin
      if fDMCadPedido.qParametros_UsuarioALT_FINANCEIRO_CONF.AsString <> 'S' then
      begin
        MessageDlg('*** Pedido já esta conferido o Financeiro!', mtInformation, [mbOk], 0);
        Exit;
      end;
    end;

    vVerSenha := True;
    vSenha    := '';
    if (fDMCadPedido.cdsPedidoAPROVADO_PED.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S') then
      vVerSenha := False;
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
  prc_Limpa_Campo_Itens;
end;

procedure TfrmCadPedidoLoja.btnConfirmarClick(Sender: TObject);
begin
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

procedure TfrmCadPedidoLoja.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmCadPedidoLoja.prc_Posiciona_Pedido;
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

function TfrmCadPedidoLoja.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
        (fDMCadPedido.cdsPedido_ConsultaID.AsInteger < 1) then
    Exit;

  Result := True;
end;

procedure TfrmCadPedidoLoja.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
    Exit;

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

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  uGrava_Pedido.prc_Excluir_Item_Ped(fDMCadPedido);

  if fDMCadPedido.cdsPedido_Itens.RecordCount < 1 then
    fDMCadPedido.cdsPedidoVLR_DESCONTO.AsFloat  := 0;

  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedidoLoja.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadPedido.cdsPedido_Consulta.Active) or (fDMCadPedido.cdsPedido_Consulta.IsEmpty) or
            (fDMCadPedido.cdsPedido_ConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Pedido;

      if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
        fDMCadPedido.prc_Abrir_CSTICMS('S')
      else
        fDMCadPedido.prc_Abrir_CSTICMS('N');
      prc_Opcao_Consumidor;

      RxDBLookupCombo10Change(Sender);
      Label32.Caption := '';
      Label32.Visible := (not(fDMCadPedido.cdsPedido.State in [dsInsert])  and (fDMCadPedido.qParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S'));
      if (fDMCadPedido.qParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S') and (fDMCadPedido.cdsPedidoFINANCEIRO_CONF.AsString = 'S') then
        Label32.Caption := 'Financeiro Conferido'
      else
      if (fDMCadPedido.qParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S') then
        Label32.Caption := 'Financeiro Não Conferido';
    end;
  end
  else
  if (fDMCadPedido.cdsPedido.State in [dsInsert]) and (RzPageControl1.ActivePage = TS_Cadastro) then
    Label32.Caption := '';
end;

procedure TfrmCadPedidoLoja.btnAlterar_ItensClick(Sender: TObject);
var
  vMSGAux: String;
  vItemAux: Integer;
begin
  if not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
    Exit;
  vMSGAux := '';
  if (fDMCadPedido.cdsPedido_Itens.IsEmpty) or (fDMCadPedido.cdsPedido_ItensITEM.AsInteger <= 0) then
    exit;
  if (fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item já possui quantidade faturada!';

  if (fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat > 0) then
    vMSGAux := vMSGAux + #13 + '*** Item quantidade cancelada!';

  if fDMCadPedido.qParametros_UsuarioALT_IT_PED_COM_OP.AsString <> 'S' then
  begin
    if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fnc_Lote) then
      vMSGAux := vMSGAux + #13 + '*** Lote/Talão de Produção gerado!'
    else
    if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fnc_Lote) then
      vMSGAux := vMSGAux + #13 + '*** Lote/Talão de Produção gerado!';
  end;

  if Trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    Exit;
  end;
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  btnAlterar_Itens.Tag := 1;
  Edit2.Text := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsString;
  Edit3.Text := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString;
  edtLote.Text := fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString;
  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  ceQtdEmb.Value := fDMCadPedido.cdsProdutoQTD_EMBALAGEM.AsFloat;
  ceQtdPeca.Value := fDMCadPedido.cdsProdutoQTD_PECA_EMB.AsInteger;
  fDMCadPedido.cdsPedido_Itens.Edit;
  dbedtQtd.SetFocus;
  prc_Habilita_Itens;
end;

procedure TfrmCadPedidoLoja.btnDescontoClick(Sender: TObject);
begin
  ffrmCadPedido_Desconto := TfrmCadPedido_Desconto.Create(self);
  ffrmCadPedido_Desconto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Desconto.ShowModal;
  FreeAndNil(ffrmCadPedido_Desconto);
  btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedidoLoja.btnCalcular_ValoresClick(Sender: TObject);
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

procedure TfrmCadPedidoLoja.pnlClienteExit(Sender: TObject);
var
  //vCalcICMSSimples: Boolean;
  //vPercSimples: Real;
  vID_Aux: Integer;
begin
  prc_Posicionar_Cliente;

  if vID_ClienteAnt = fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    exit;

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

  vID_Aux := 0;
  fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger := 0;
  if (fDMCadPedido.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString = 'S')
    and (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> vID_ClienteAnt)  then
  begin
    vID_Aux := fnc_Primeiro_Pedido(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger);
    if vID_Aux = 1 then
      MessageDlg('*** Cliente possui menos de 4 pedidos!'  +#13 + #13 + vOBS_Primeiro_Pedido , mtInformation, [mbOk], 0);
  end;
  if vID_Aux > 0 then
  begin
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fDMCadPedido.qParametros_PedID_CONDPGTO_PRIMEIRO_PED.AsInteger;
    fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger := vID_Aux;
  end
  else
  if fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger  := fDMCadPedido.cdsClienteID_CONDPGTO.AsInteger;
end;

procedure TfrmCadPedidoLoja.prc_Posicionar_Cliente;
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

procedure TfrmCadPedidoLoja.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.IndexFieldNames := 'NOME';
  Label11.Visible := True;
end;

procedure TfrmCadPedidoLoja.prc_Habilitar_CamposNota;
var
  i: Integer;
begin
  //pnlItem.Enabled            := not(pnlItem.Enabled);
  pnlNota.Enabled            := not(pnlNota.Enabled);

  btnDesconto.Enabled         := not(btnDesconto.Enabled);
  btnCalcular_Valores.Enabled := not(btnCalcular_Valores.Enabled);
  btnRegravaItens.Enabled     := not(btnRegravaItens.Enabled);
  btnDifal.Enabled            := not(btnDifal.Enabled);

  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);

  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);

  CancelarPedido1.Enabled       := not(CancelarPedido1.Enabled);
  CancelarItemdoPedido1.Enabled := not(CancelarItemdoPedido1.Enabled);
  pnlProduto.Enabled          := not(pnlProduto.Enabled);

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

{procedure TfrmCadPedido.prc_Abrir_CSTICMS(Tipo: String);
begin
  fDMCadPedido.cdsTab_CSTICMS.Close;
  fDMCadPedido.sdsTab_CSTICMS.CommandText := 'SELECT * FROM TAB_CSTICMS ';
  if Tipo <> '' then
    fDMCadPedido.sdsTab_CSTICMS.CommandText := fDMCadPedido.sdsTab_CSTICMS.CommandText
                                                 + ' WHERE TIPO = ' + QuotedStr(Tipo);
  fDMCadPedido.cdsTab_CSTICMS.Open;
end;}

procedure TfrmCadPedidoLoja.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    Exit;

  if (fDMCadPedido.qParametros_PedCONFERENCIA_SIMPLES.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString <> 'S')
    and (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString <> 'P') and (fDMCadPedido.cdsPedido_ConsultaCONFERIDO.AsString = 'S') then
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
    Background  := clAqua
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
  if (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') then
  begin
    Background  := $00FF4A4A;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and ((fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0)) then
  begin
    Background  := $00FF4A4A;
    AFont.Color := clWhite;
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
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFINANCEIRO_CONF.AsString = 'S') then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadPedidoLoja.SpeedButton1Click(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.Close;
  fDMCadPedido.cdsCliente.Open;
end;

procedure TfrmCadPedidoLoja.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmCadPedidoLoja.pnlClienteEnter(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.IndexFieldNames := 'CODCFOP';
  vID_ClienteAnt := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
end;

procedure TfrmCadPedidoLoja.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedidoLoja.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedidoLoja.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPedidoLoja.SMDBGrid2GetCellParams(Sender: TObject;
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

procedure TfrmCadPedidoLoja.RxDBLookupCombo3KeyDown(Sender: TObject;
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

procedure TfrmCadPedidoLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_Produto: TfrmSel_Produto;
  fDMConsPedido: TDMConsPedido;
  ffrmConsPedido: TfrmConsPedido;
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    Label17.Visible := not(Label17.Visible);
    DBEdit3.Visible := not(DBEdit3.Visible);
    if vUsuario = 'servisoft' then
      begin
        Label8.Visible := not Label8.Visible;
        DBEdit2.Visible := not DBEdit2.Visible;
      end;
  end
  else
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    btnRegravaItens.Visible     := not(btnRegravaItens.Visible);
    btnCalcular_Valores.Visible := not(btnCalcular_Valores.Visible);
  end
  else
  if (Key = Vk_F3) then
  begin
    ffrmSel_TabPreco := TfrmSel_TabPreco.Create(self);
    ffrmSel_TabPreco.vPreco_Custo := ckImpPreco.Enabled;
    ffrmSel_TabPreco.ShowModal;
    FreeAndNil(ffrmSel_TabPreco);
  end
  else
  if (Key = Vk_F4) then
  begin
    btnEntregaClick(Sender);
  end
  else
  if (Key = Vk_F5) then
  begin
    btnObsClick(Sender);
  end
  else
  if (Key = Vk_F7) and not(fDMCadPedido.cdsPedido_Consulta.IsEmpty) then
  begin
    fDMConsPedido := TDMConsPedido.Create(Self);
    frmConsPedido := TfrmConsPedido.Create(self);
    frmConsPedido.fDMConsPedido := fDMConsPedido;
    frmConsPedido.ShowModal;
    FreeAndNil(frmConsPedido);
    FreeAndNil(fDMConsPedido);
  end
  else
  if (Key = Vk_F10) then
  begin
    btnPagamentoClick(Sender);
  end
  else
  if (Key = Vk_F7) and (fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert]) then
  begin
    btnConfirmar_ItensClick(Sender);
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

procedure TfrmCadPedidoLoja.RxDBLookupCombo6Enter(Sender: TObject);
begin
  fDMCadPedido.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedidoLoja.RxDBLookupCombo10Change(Sender: TObject);
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

procedure TfrmCadPedidoLoja.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadPedidoLoja.RxDBLookupCombo6Exit(Sender: TObject);
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

procedure TfrmCadPedidoLoja.DBEdit4Exit(Sender: TObject);
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

procedure TfrmCadPedidoLoja.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    cePedInterno.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPedidoLoja.prc_Limpar_Edit_Consulta;
begin
  cePedInterno.Clear;
  edtCliente.Clear;
  edtPedCliente.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
end;

procedure TfrmCadPedidoLoja.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;
  fDMCadPedido.cdsPedidoImp_Itens.First;

  vEmail_Fortes         := fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString;
  vEmail_Assunto_Fortes := 'Pedido Nº ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo Pedido Nº ' + fDMCadPedido.cdsPedidoImpNUM_PEDIDO.AsString + #13;
  vTipo_Config_Email    := 5;
  vFilial			          := fDMCadPedido.cdsPedidoImpFILIAL.AsInteger;
end;

procedure TfrmCadPedidoLoja.ckImpPrecoClick(Sender: TObject);
begin
  ckImpImposto.Checked := ckImpPreco.Checked;
end;

procedure TfrmCadPedidoLoja.RxDBLookupCombo3Exit(Sender: TObject);
begin
  Label11.Visible := False;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsClienteCODIGO.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  prc_Verifica_Limite(fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,0,fDMCadPedido.cdsClienteVLR_LIMITE_CREDITO.AsFloat);


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

procedure TfrmCadPedidoLoja.prc_Opcao_Consumidor;
begin
  Label43.Visible  := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
  DBEdit12.Visible := (((RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo3.KeyValue = fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger)) or (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S'));
  if DBEdit12.Visible then
    DBEdit12.SetFocus;
end;

procedure TfrmCadPedidoLoja.prc_Informar_Filial;
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

procedure TfrmCadPedidoLoja.Personalizado1Click(Sender: TObject);
var
  ffrmOpcaoImp: TfrmOpcaoImp;
begin
  fDMCadPedido.mImpPed.EmptyDataSet;

  ffrmOpcaoImp := TfrmOpcaoImp.Create(self);
  ffrmOpcaoImp.fDMCadPedido := fDMCadPedido;
  ffrmOpcaoImp.ShowModal;
  FreeAndNil(ffrmOpcaoImp);

  if fDMCadPedido.mImpPed.IsEmpty then
  begin
    MessageDlg('*** Não foi selecionada nenhuma via para impressão!',mtError, [mbOk], 0);
    exit;
  end;

  fDMCadPedido.vNum_Rel_Fast := 1;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(False);
end;

procedure TfrmCadPedidoLoja.prc_Monta_Impressao(vGerar_Tamanho: Boolean);
var
  vArq: String;
  vIndice: String;
  vAux: Integer;
begin
  vIndice := fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames;
  fDMCadPedido.vMSGErro := '';

  fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;ITEM';
  if (vGerar_Tamanho) or (fDMCadPedido.vTipo_Rel_Ped = 'P') or (fDMCadPedido.vTipo_Rel_Ped = 'R') then
    uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido);

  fDMCadPedido.cdsFilialRelatorios.Open;
  fDMCadPedido.mCarimbo.EmptyDataSet;
  if fDMCadPedido.cdsParametrosMOSTRAR_EMBALAGEM.AsString = 'S' then
    uCalculo_Pedido.prc_Gravar_mEmbalagem(fDMCadPedido,fDMCadPedido.cdsPedidoImpID.AsInteger);
  fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := 'ID;ITEM';

  fDMCadPedido.mImpPed.First;

  if fDMCadPedido.vNum_Rel_Fast > 0 then
    vAux := fDMCadPedido.vNum_Rel_Fast
  else
  if vGerar_Tamanho then
    vAux := 2
  else
    vAux := 1;

  vArq := '';
  if fDMCadPedido.cdsFilialRelatorios.Locate('TIPO;POSICAO',VarArrayOf([2,vAux]),([loCaseInsensitive])) then //tipo 2 = Pedido
    vArq := fDMCadPedido.cdsFilialRelatoriosCAMINHO.AsString
  else
  begin
    ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
    exit;
  end;
  if (FileExists(vArq)) and (trim(vArq) <> '') then
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  if fDMCadPedido.vImp_cabecalho then
    fDMCadPedido.frxReport1.Variables['ImpCab'] := QuotedStr('S')
  else
    fDMCadPedido.frxReport1.Variables['ImpCab'] := QuotedStr('N');
  fDMCadPedido.frxReport1.ShowReport;
  fDMCadPedido.cdsPedidoImp_Itens.IndexFieldNames := vIndice;
  if trim(fDMCadPedido.vMSGErro) <> '' then
    MessageDlg(fDMCadPedido.vMSGErro, mtInformation, [mbOk], 0);
end;

procedure TfrmCadPedidoLoja.Personalizado21Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 2;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(True);
end;

procedure TfrmCadPedidoLoja.Personalizado31Click(Sender: TObject);
begin
  fDMCadPedido.vNum_Rel_Fast := 3;
  fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.vImpPreco     := ckImpPreco.Checked;
  prc_Posiciona_Imp;
  prc_Monta_Impressao(True);
end;

procedure TfrmCadPedidoLoja.RxDBLookupCombo12Enter(Sender: TObject);
begin
  fDMCadPedido.cdsAtelier.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedidoLoja.prc_scroll2(DataSet: TDataSet);
begin
  btnExcluir.Enabled := ((fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'N') or (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'N'));
end;

procedure TfrmCadPedidoLoja.prc_Controle_Imp(Tipo_Imp: String);
begin
  prc_Posiciona_Pedido;
  prc_Posiciona_Imp;

  if (fDMCadPedido.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadPedido.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadPedido.prc_Filtrar_Produto_Cliente;

  fRelPedido              := TfRelPedido.Create(Self);
  fRelPedido.vImpPreco    := ckImpPreco.Checked;
  fRelPedido.vImpImposto  := ((ckImpImposto.Checked) and (ckImpPreco.Checked));
  fRelPedido.fDMCadPedido := fDMCadPedido;
  fRelPedido.RLReport1.PreviewModal;
  fRelPedido.RLReport1.Free;
  FreeAndNil(fRelPedido);
end;

procedure TfrmCadPedidoLoja.prc_Gravar_Carrinho;
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

procedure TfrmCadPedidoLoja.btnRegravaItensClick(Sender: TObject);
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

procedure TfrmCadPedidoLoja.CancelarPedido1Click(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or
    (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0) then
  begin
    MessageDlg('*** Lote/Talão já gerado para esse pedido!',mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'P';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

procedure TfrmCadPedidoLoja.CancelarItemdoPedido1Click(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ConsultaGEROU_PRODUCAO.AsString = 'S') or (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO.AsInteger > 0) or
    (fDMCadPedido.cdsPedido_ConsultaCONT_TALAO2.AsInteger > 0) then
  begin
    MessageDlg('*** Lote/Talão já gerado para esse pedido!',mtError, [mbOk], 0);
    exit;
  end;

  ffrmCadPedido_Cancelamento                 := TfrmCadPedido_Cancelamento.Create(self);
  ffrmCadPedido_Cancelamento.fDMCadPedido    := fDMCadPedido;
  ffrmCadPedido_Cancelamento.vOpcao_Cancelar := 'I';
  ffrmCadPedido_Cancelamento.ShowModal;
  FreeAndNil(ffrmCadPedido_Cancelamento);
end;

function TfrmCadPedidoLoja.fnc_Lote: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    if fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
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

procedure TfrmCadPedidoLoja.pnlDigitacaoEnter(Sender: TObject);
var
  vVlrAux: Real;
  vVerificaCFOP: Boolean;
begin
  if (trim(Edit2.Text) = '') or not(fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert]) then
  begin
    if pnlProduto.Enabled then
      Edit2.SetFocus
    else
      SMDBGrid2.SetFocus;
    Exit;
  end;

  vVerificaCFOP := True;
  if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger <> fDMCadPedido.cdsOperacao_NotaID.AsInteger then
      fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S' then
      vVerificaCFOP := False;
  end;

  {if vVerificaCFOP then
  begin
    if not(fDMCadPedido.fnc_verificar_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger)) and (RxDBLookupCombo1.Visible) and (Tag <> 99) then
    begin
      RxDBLookupCombo1.SetFocus;
      exit;
    end;
  end;}
  //if ((fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger < 1)) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
  //  exit;
  vPreco_Ori := 0;
  //23/10/2017
  //if (btnAlterar_Itens.Tag <> 1) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) or
  if (btnAlterar_Itens.Tag <> 1) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
  begin
    prc_CFOP;
    prc_Move_Dados_Itens;
  end
  else
    vPreco_Ori := fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat;

  //26/01/2017
  if fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S' then
    dbedtVlrUnitario.ReadOnly := ((fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'C'));
  //************
end;

procedure TfrmCadPedidoLoja.dbedtQtdEnter(Sender: TObject);
begin
  vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
end;

procedure TfrmCadPedidoLoja.Edit2Exit(Sender: TObject);
begin
  if trim(Edit2.Text) = '' then
  begin
    Edit3.Text;
    exit;
  end;

  Edit3.Clear;
  Edit2.Text := Trim(Edit2.Text);
  fDMCadPedido.prc_Abrir_ProdutoLoja(StrToInt(Edit2.Text),'','');
  if fDMCadPedido.cdsProduto.IsEmpty then
  begin
    MessageDlg('*** Produto não encontrado!',mtError, [mbOk], 0);
    Edit2.SetFocus;
    exit;
  end;
  Edit3.Text := fDMCadPedido.cdsProdutoNOME.AsString;
  if edtLote.Visible then
    edtLote.SetFocus
  else
    dbedtQtd.SetFocus;
end;

procedure TfrmCadPedidoLoja.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (trim(Edit2.text) = '') then
  begin
    vCodProduto_Pos := 0;
    vNum_Lote_Pos   := edtLote.Text;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.Edit1.Text := Edit3.Text;
    frmSel_Produto.vTipo_Prod := 'A';
    frmSel_Produto.vVenda := True;
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    if vCodProduto_Pos > 0 then
    begin
      Edit2.Text := IntToStr(vCodProduto_Pos);
      Edit2Exit(Sender);
      if fDMCadPedido.cdsProduto.IsEmpty then
        Edit2.SetFocus
      else
        edtLote.Text := vNum_Lote_Pos;
    end;
  end
end;

procedure TfrmCadPedidoLoja.dbedtQtdExit(Sender: TObject);
var
  vAux: Real;
  vQtdAux: Real;
begin
  if (ceQtdEmb.Value > 0) and (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) > 0) then
  begin
    //fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsInteger := fDMCadPedido.cdsPedido_ItensQTD.as asfAsInteger / ceQtdEmb.AsInteger;
    vQtdAux := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
    vAux := fDMCadPedido.cdsPedido_ItensQTD.AsCurrency / ceQtdEmb.Value;
    if Frac(vAux) > 0 then
      vAux := vAux + 1;
    fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsInteger := Trunc(vAux);
    vAux := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsInteger * ceQtdEmb.Value));
    if StrToFloat(FormatFloat('0.000',vAux)) <> StrToFloat(FormatFloat('0.000',vQtdAux)) then
    begin
      if MessageDlg('Quantidade desejada pelo Cliente: ' + FormatFloat('0.000',vQtdAux) + #13 +
                    'Quantidade recalcudada: ' + FormatFloat('0.000',vAux) + #13 + #13+ 'Verifica junto ao cliente que a qtde, vai ser alterada ' + #13+
                    'Confirma alteração?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensQTD_CAIXA.AsInteger * ceQtdEmb.Value));
    end;
  end;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedidoLoja.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(Edit1.Text) <> '') then
  begin
    fDMCadPedido.prc_Abrir_ProdutoLoja(0,Edit1.Text,'');
    if fDMCadPedido.cdsProdutoID.AsInteger <= 0 then
    begin
      MessageDlg('*** Código de barra não encontrado!',mtError, [mbOk], 0);
      exit;
    end;
    Edit2.Text := fDMCadPedido.cdsProdutoID.AsString;
    Edit3.Text := fDMCadPedido.cdsProdutoNOME.AsString;
    dbedtQtd.SetFocus;
  end;
end;

procedure TfrmCadPedidoLoja.pnlProdutoExit(Sender: TObject);
begin
  if (trim(Edit2.Text) <> '')  then
  begin
    fDMCadPedido.prc_Abrir_ProdutoLoja(StrToInt(Edit2.Text),'','');
    if trim(edtLote.Text) = '' then
      prc_Estoque(fDMCadPedido.cdsProdutoID.AsInteger);
    if (btnAlterar_Itens.Tag = 0) and not(fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert]) then
    begin
      prc_Habilita_Itens;
      prc_Inserir_Item;
      ceQtdEmb.Value := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoQTD_EMBALAGEM.AsFloat));
      ceQtdPeca.Value := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoQTD_PECA_EMB.AsFloat));
    end
    else
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> StrToInt(trim(Edit2.Text)) then
    begin
      fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
      ceQtdEmb.Value := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoQTD_EMBALAGEM.AsFloat));
      ceQtdPeca.Value := StrToFloat(FormatFloat('0.0000', fDMCadPedido.cdsProdutoQTD_PECA_EMB.AsFloat));
    end;
    //prc_CFOP;
    //prc_Move_Dados_Itens;
    if trim(edtLote.Text) <> '' then
      fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString := edtLote.Text
    else
      fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString := '';
  end;
  Label28.Caption := '';
end;

procedure TfrmCadPedidoLoja.prc_Habilita_Itens;
begin
  btnAlterar_Itens.Enabled   := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled   := not(btnExcluir_Itens.Enabled);
  btnConfirmar_Itens.Enabled := not(btnConfirmar_Itens.Enabled);
  btnCancelar_Itens.Enabled  := not(btnCancelar_Itens.Enabled);
  SMDBGrid2.Enabled          := not(SMDBGrid2.Enabled);
end;

procedure TfrmCadPedidoLoja.dbedtVlrUnitarioExit(Sender: TObject);
begin
  if (fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString = 'C') and
    (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) < StrToFloat(FormatFloat('0.000000',vPreco_Ori))) then
  begin
    MessageDlg('*** Preço não pode ser menor que ' + FormatFloat('0.00####',vPreco_Ori), mtError, [mbOk], 0);
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vPreco_Ori;
    dbedtVlrUnitario.SetFocus;
  end;
  if StrToFloat(FormatFloat('0.0000',vPreco_Ori)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) then
    UCalculo_Pedido.prc_Calcular_Lucratividade(fDMCadPedido,'V');
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedidoLoja.prc_Inserir_Item;
begin
  fDMCadPedido.prc_Inserir_Itens;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
  fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
end;

procedure TfrmCadPedidoLoja.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadPedido.cdsPedido_ItensQTD.AsFloat > 0) and (fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  //04/01/2017
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00', (vAux * fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat) / 100));
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vAux));
  end
  else
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
  //****************
end;

procedure TfrmCadPedidoLoja.prc_Move_Dados_Itens;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
  vIPI_Suspenso: Boolean;
  vPerc_Icms_Suf, vPerc_Cofins_Suf, vPerc_Pis_Suf, vPerc_IPI_Suf: Real;
  vAux: Real;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;
  vPerc_Icms_Suf   := 0;
  vPerc_Cofins_Suf := 0;
  vPerc_Pis_Suf    := 0;
  vPerc_IPI_Suf    := 0;
  //07/03/2015  para gravação do estoque dentro do pedido
  if fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P' then
    fDMCadPedido.cdsPedido_ItensGERAR_ESTOQUE.AsString := 'S'
  else
    fDMCadPedido.cdsPedido_ItensGERAR_ESTOQUE.AsString := 'N';
  //*********************************

  fDMCadPedido.cdsPedido_ItensTAMANHO.AsString := '';
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString       := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString  := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsInteger := StrToInt(FormatFloat('0',1));
  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger       := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
  if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) and not(fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive])) then
    exit;

  if fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsCFOP_Variacao.Locate('ITEM',fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger,[loCaseInsensitive]) then
    begin
      vID_IPI  := fDMCadPedido.cdsCFOP_VariacaoID_CSTIPI.AsInteger;
      vID_ICMS := fDMCadPedido.cdsCFOP_VariacaoID_CSTICMS.AsInteger;
    end;
  end
  else
  begin
    vID_IPI  := fDMCadPedido.cdsCFOPID_CSTIPI.AsInteger;
    vID_ICMS := fDMCadPedido.cdsCFOPID_CSTICMS.AsInteger;
  end;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  vIPI_Suspenso := False;
  fDMCadPedido.qPessoa_Fiscal.Close;
  fDMCadPedido.qPessoa_Fiscal.ParamByName('CODIGO').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  fDMCadPedido.qPessoa_Fiscal.Open;
  if not fDMCadPedido.qPessoa_Fiscal.IsEmpty then
  begin
    if (fDMCadPedido.qPessoa_FiscalIPI_SUSPENSO.AsString = 'S') and (fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime >= fDMCadPedido.qPessoa_FiscalIPI_DT_INICIO.AsDateTime) and
       (fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime <= fDMCadPedido.qPessoa_FiscalIPI_DT_FINAL.AsDateTime) then
    begin
      vID_IPI := fDMCadPedido.qPessoa_FiscalIPI_ID_CSTIPI.AsInteger;
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
      vIPI_Suspenso := True;
    end;

    //Suframa 09/11/2015
    if fDMCadPedido.qPessoa_FiscalDESC_SUFRAMA_ICMS.AsString = 'S' then
    begin
      if (fDMCadPedido.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fDMCadPedido.cdsFilialUF.AsString <> fDMCadPedido.cdsUFUF.AsString) then
        vPerc_Icms_Suf := fDMCadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat
      else
        vPerc_Icms_Suf := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
    end;
    if fDMCadPedido.qPessoa_FiscalDESC_SUFRAMA_IPI.AsString = 'S' then
      vPerc_IPI_Suf := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat;
    if fDMCadPedido.qPessoa_FiscalDESC_SUFRAMA_PIS_COFINS.AsString = 'S' then
    begin
      vPerc_Pis_Suf    := fDMCadPedido.cdsFilialPERC_PIS.AsFloat;
      vPerc_Cofins_Suf := fDMCadPedido.cdsFilialPERC_COFINS.AsFloat;
    end;
    //******************
  end;
  if ((fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0)) and (fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_IPI.AsFloat)) > 0)
    and not(vIPI_Suspenso) then
    vID_IPI := fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger;
  //*********
  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS
  else
    prc_Buscar_Imposto('CST','ICMS');
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI
  else
    prc_Buscar_Imposto('CST','IPI');

  //IF incluido para verificar Suframa  09/11/2015
  if (StrToFloat(FormatFloat('0.00',vPerc_Icms_Suf)) > 0) and (fDMCadPedido.qPessoa_FiscalID_CST_ICMS_SUFRAMA.AsInteger > 0) then
    vID_ICMS := fDMCadPedido.qPessoa_FiscalID_CST_ICMS_SUFRAMA.AsInteger;

  //30/06/2017   Feito para a Ciex quando for para Revenda na Zona Franca de Manaus
  if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger then
    fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST.AsInteger > 0) and (fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S') and
     (fDMCadPedido.cdsClienteTIPO_CONSUMIDOR.AsInteger = 0) and ((fDMCadPedido.cdsCFOPCODCFOP.AsString = '6109') or (fDMCadPedido.cdsCFOPCODCFOP.AsString = '6110')) then
    vID_ICMS := fDMCadPedido.qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST.AsInteger;
  //********************

  //09/11/2015
  if (StrToFloat(FormatFloat('0.00',vPerc_IPI_Suf)) > 0) and (fDMCadPedido.qPessoa_FiscalID_CST_IPI_SUFRAMA.AsInteger > 0) then
    vID_IPI := fDMCadPedido.qPessoa_FiscalID_CST_IPI_SUFRAMA.AsInteger;
  //******************
  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS;
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI;
  if (vID_IPI > 0) and (fDMCadPedido.cdsTab_CSTIPIID.AsInteger <> vID_IPI) then
    fDMCadPedido.cdsTab_CSTIPI.Locate('ID',vID_IPI,[loCaseInsensitive]);
  if fDMCadPedido.cdsTab_CSTICMS.Locate('ID',vID_ICMS,[loCaseInsensitive]) then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := 0;
  if (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') and (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat));

  if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') or (fDMCadPedido.cdsCFOPGERAR_ICMS.AsString <> 'S') then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0
  else
  if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
  begin
    //07/11/2015
    if (fDMCadPedido.cdsCFOPUSA_REGRA_ORGAO_PUBLICO.AsString = 'S') and (fDMCadPedido.cdsParametrosUSA_PERC_ORGAO_PUBLICO.AsString = 'S') and
       (fDMCadPedido.cdsClienteORGAO_PUBLICO.AsString = 'S') and (copy(fDMCadPedido.cdsCFOPCODCFOP.AsString,1,1) = '6') then
    begin
      fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsFilialUF.AsString,[loCaseInsensitive]);
      if (fDMCadPedido.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fDMCadPedido.cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP.AsString <> 'S') then
        fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat
      else
        fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
    end //****** foi incluido para o cálculo do orgão público
    else
    begin
      if (fDMCadPedido.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fDMCadPedido.cdsFilialUF.AsString <> fDMCadPedido.cdsUFUF.AsString) then
        fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat
      else
        fDMCadPedido.cdsPedido_itensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
    end;
  end;
  //25/08/2014
  if ((fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0)) and not(vIPI_Suspenso) then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat
  else
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;

  vPrecoAux := 0;
  if StrToFloat(FormatFloat('0.00000',vPreco_Pos)) > 0 then
    vPrecoAux := StrToFloat(FormatFloat('0.00000',vPreco_Pos))
  else
  if fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0 then  //23/05/2017  Foi alterado para buscar por Cor
  begin
    if (fDMCadPedido.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger)
    else
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger,0);
  end;
  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000000',vPrecoAux))
  else
  begin
    if (fDMCadPedido.cdsPedido_ItensID_COR.AsInteger > 0) and (fDMCadPedido.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
    begin
      if fDMCadPedido.cdsCombinacao.Locate('ID_COR_COMBINACAO',fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,[loCaseInsensitive]) then
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsCombinacaoPRECO_VENDA.AsFloat;
      if StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsCombinacaoPRECO_VENDA.AsFloat)) <= 0 then
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;
    end
    else
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;
  end;
  //01/02/2017
  vPreco_Ori := StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  //******************
  
  fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensCOD_CST.AsString := fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString
  else
    fDMCadPedido.cdsPedido_ItensCOD_CST.Clear;
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensCOD_IPI.AsString := fDMCadPedido.cdsTab_CSTIPICOD_IPI.AsString
  else
    fDMCadPedido.cdsPedido_ItensCOD_IPI.Clear;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) and (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') then
  begin
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat));
    if fDMCadPedido.cdsProdutoID_CSTICMS_BRED.AsInteger > 0 then
      fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := fDMCadPedido.cdsProdutoID_CSTICMS_BRED.AsInteger;
  end
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat));
  vPreco_Pos := 0;

  //09/11/2015
  if (StrToFloat(FormatFloat('0.00',vPerc_Icms_Suf)) > 0) and (fDMCadPedido.qPessoa_FiscalID_CST_ICMS_SUFRAMA.AsInteger > 0) then
  begin
    if fDMCadPedido.cdsTab_CSTICMSID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger then
      fDMCadPedido.cdsTab_CSTICMS.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat)) <= 0 then
      fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0;
  end;
  if (StrToFloat(FormatFloat('0.00',vPerc_IPI_Suf)) > 0) and (fDMCadPedido.qPessoa_FiscalID_CST_IPI_SUFRAMA.AsInteger > 0) then
  begin
    if fDMCadPedido.cdsTab_CSTIPIID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger then
      fDMCadPedido.cdsTab_CSTIPI.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.cdsTab_CSTIPIGERAR_IPI.AsString <> 'S' then
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
  end;
  vAux := StrToFloat(FormatFloat('0.00',vPerc_Cofins_Suf + vPerc_Icms_Suf + vPerc_IPI_Suf + vPerc_Pis_Suf));
  if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
  begin
    fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
  end;
  //*****************
  //10/11/2015 Comissão por item
  if (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
    fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',0))
  else
  if (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vID_Produto_Ant) then
    fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := fnc_Buscar_Comissao_Prod(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger);
  //****************
  if fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICMS.AsString = 'S' then
  begin
    if (fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = 'F') and (fDMCadPedido.cdsPedidoFINALIDADE.AsString = 'C') then
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'S'
    else
    if (fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = '1') and (fDMCadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 1) then
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'S'
    else
    if (fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = '2') and ((fDMCadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 2) or (fDMCadPedido.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 9)) then
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'S'
    else
    if (fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = '9') then
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'S'
    else
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'N'
  end
  else
    fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'N';

  //23/11/2017
  if fDMCadPedido.qParametros_PedINF_LUCRATIVIDADE.AsString = 'S' then
    uCalculo_Pedido.prc_Inf_Lucratividade(fDMCadPedido);
end;

procedure TfrmCadPedidoLoja.prc_CFOP;
var
  vFinalidadeAux: String;
  vID_VariacaoAux: Integer;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  //fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) then
  begin
    if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) then
    begin
      uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
      if (fDMCadPedido.vID_CFOP <= 0) and (fDMCadPedido.cdsPedidoID_CFOP.AsInteger > 0) then
        fDMCadPedido.vID_CFOP := fDMCadPedido.cdsPedidoID_CFOP.AsInteger;
      fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
    end
    else
    if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
      fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger;
  end;

  if fDMCadPedido.vID_CFOP > 0 then
  begin
    fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
    if StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao)) > 1000 then
      fDMCadPedido.vID_Variacao := StrToInt(FormatFloat('0',0));
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := 0;
    if StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao)) > 0 then
      fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao));
    prc_CFOP_Variacao;
  end;
end;

procedure TfrmCadPedidoLoja.prc_CFOP_Variacao;
var
  vID_VariacaoAux: Integer;
begin
  vID_VariacaoAux := fDMCadPedido.fnc_Buscar_Regra_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger);
  if vID_VariacaoAux > 0 then
  begin
    fDMCadPedido.vID_Variacao := vID_VariacaoAux;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := vID_VariacaoAux;
  end
  else
  begin
    fDMCadPedido.vID_Variacao := 0;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := 0;
  end;
end;

procedure TfrmCadPedidoLoja.prc_Buscar_Imposto(Auxiliar, Nome: String);
begin
  if fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat  := fDMCadPedido.cdsCFOP.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsCFOP.FieldByName('TIPO_'+Nome).AsString;
    end;
  end
  else
  if fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat := fDMCadPedido.cdsFilial.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsFilial.FieldByName('TIPO_'+Nome).AsString;
    end;
  end;
end;

procedure TfrmCadPedidoLoja.btnConfirmar_ItensClick(Sender: TObject);
begin
  ffrmCadPedido_Itens.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Itens.Tag := 2;
  ffrmCadPedido_Itens.BitBtn1Click(ffrmCadPedido_Itens);
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
  begin
    Edit2.SetFocus;
    btnAlterar_Itens.Tag := 1;
  end
  else
  begin
    btnCancelar_ItensClick(Sender);
    Edit2.SetFocus;
    btnCalcular_ValoresClick(Sender);
  end;
end;

procedure TfrmCadPedidoLoja.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    if trim(Edit2.Text) = '' then
      Edit3.SetFocus
    else
    begin
      if edtLote.Visible then
        edtLote.SetFocus
      else
        dbedtQtd.SetFocus;
    end;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadPedidoLoja.btnCancelar_ItensClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Cancel;
  prc_Limpa_Campo_Itens;
  prc_Habilita_Itens;
end;

procedure TfrmCadPedidoLoja.dbedtPercDescExit(Sender: TObject);
var
  vAux: Real;
  vGravarAux: Boolean;
begin
  vGravarAux := True;
  if (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat))) then
  begin
    if not prc_Senha_Desconto then
    begin
    //MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
      dbedtPercDesc.SetFocus;
      vGravarAux := False;
    end;
  end;

  if vGravarAux then
  begin
    vAux := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00', (vAux * fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat) / 100));
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vAux));
  end;
end;

procedure TfrmCadPedidoLoja.dbedtVlrDescExit(Sender: TObject);
var
  vAux: Real;
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrDesc_Ant)) then
  begin
    fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
    vAux := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00000',(fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat / fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat) * 100));
    fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00000', vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
    if (StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat))) and (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') then
    begin
      if not prc_Senha_Desconto then
      //MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
        dbedtVlrDesc.SetFocus;
    end;
  end;
end;

procedure TfrmCadPedidoLoja.dbedtVlrDescEnter(Sender: TObject);
begin
  vVlrDesc_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadPedidoLoja.dbedtVlrProdEnter(Sender: TObject);
begin
  vVlrProd_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
end;

procedure TfrmCadPedidoLoja.dbedtVlrProdExit(Sender: TObject);
var
  vAux, vAux2: Real;
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrProd_Ant)) then
  begin
    vAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat)) > StrToFloat(FormatFloat('0.00',vAux)) then
      fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat)) = StrToFloat(FormatFloat('0.00',vAux)) then
    begin
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat  := 0;
      fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := 0;
    end
    else
    begin
      vAux2 := StrToFloat(FormatFloat('0.00000',100 - ((fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat / vAux) * 100)));
      fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00000',vAux2));
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',vAux - fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
    end;
  end;
end;

procedure TfrmCadPedidoLoja.pnlProdutoEnter(Sender: TObject);
begin
  if trim(Edit2.Text) <> '' then
    vCodProdutoAnt := StrToInt(trim(Edit2.Text))
  else
    vCodProdutoAnt := 0;
end;

procedure TfrmCadPedidoLoja.btnEntregaClick(Sender: TObject);
var
  ffrmCadPedidoLoja_Frete: TfrmCadPedidoLoja_Frete;
begin
  prc_Verifica_Itens;

  vVlrFrete_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat));
  vVlrMao_Obra_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_MAO_OBRA.AsFloat));
  ffrmCadPedidoLoja_Frete := TfrmCadPedidoLoja_Frete.Create(self);
  ffrmCadPedidoLoja_Frete.fDMCadPedido := fDMCadPedido;
  ffrmCadPedidoLoja_Frete.ShowModal;
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat)) > 0)  then
    fDMCadPedido.cdsPedidoPERC_ICMS_FRETE.AsFloat := fDMCadPedido.vAliqIcms;
  if (StrToFloat(FormatFloat('0.00',vVlrFrete_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_FRETE.AsFloat))) or
     (StrToFloat(FormatFloat('0.00',vVlrMao_Obra_Ant)) <> StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_MAO_OBRA.AsFloat))) then
    btnCalcular_ValoresClick(Sender);
end;

procedure TfrmCadPedidoLoja.btnObsClick(Sender: TObject);
var
  ffrmCadPedidoLoja_Obs: TfrmCadPedidoLoja_Obs;
begin
  prc_Verifica_Itens;

  ffrmCadPedidoLoja_Obs := TfrmCadPedidoLoja_Obs.Create(self);
  ffrmCadPedidoLoja_Obs.fDMCadPedido := fDMCadPedido;
  ffrmCadPedidoLoja_Obs.ShowModal;
  FreeAndNil(ffrmCadPedidoLoja_Obs);
end;

procedure TfrmCadPedidoLoja.btnLocalEstoqueClick(Sender: TObject);
var
  ffrmCadPedidoLoja_LocalEst: TfrmCadPedidoLoja_LocalEst;
begin
  ffrmCadPedidoLoja_LocalEst := TfrmCadPedidoLoja_LocalEst.Create(self);
  ffrmCadPedidoLoja_LocalEst.fDMCadPedido := fDMCadPedido;
  ffrmCadPedidoLoja_LocalEst.ShowModal;
  FreeAndNil(ffrmCadPedidoLoja_LocalEst);
end;

procedure TfrmCadPedidoLoja.gbxDescontoEnter(Sender: TObject);
begin
  dbedtPercDesc.TabStop := True;
  dbedtVlrDesc.TabStop  := True;
  dbedtVlrProd.TabStop  := True;
end;

procedure TfrmCadPedidoLoja.gbxDescontoExit(Sender: TObject);
begin
  dbedtPercDesc.TabStop := False;
  dbedtVlrDesc.TabStop  := False;
  dbedtVlrProd.TabStop  := False;
end;

function TfrmCadPedidoLoja.prc_Senha_Desconto: Boolean;
var
  ffrmSenha: TfrmSenha;
begin
  if (trim(fDMCadPedido.qParametros_FinSENHA_LIBERAR_DESC.AsString) = '') or (fDMCadPedido.qParametros_FinSENHA_LIBERAR_DESC.IsNull) then
  begin
    MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
    Result   := False;
    exit;
  end;
  
  Result := True;
  ffrmSenha := TfrmSenha.Create(self);
  ffrmSenha.Label2.Caption := '% Desconto informado maior que ';
  ffrmSenha.Label3.Caption := ' o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat);
  
  //ffrmSenha.Label4.Caption := 'Para liberar o desconto'

  ffrmSenha.vControlaSenha := True;
  ffrmSenha.vSenha_Param := fDMCadPedido.qParametros_FinSENHA_LIBERAR_DESC.AsString;
  ffrmSenha.ShowModal;
  FreeAndNil(ffrmSenha);
  if vSenha <> fDMCadPedido.qParametros_FinSENHA_LIBERAR_DESC.AsString then
    Result := False;
end;

procedure TfrmCadPedidoLoja.RzGroupBox1Enter(Sender: TObject);
begin
  ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
  ffrmCadPedido_Itens.fDMCadPedido := fDMCadPedido;
end;

procedure TfrmCadPedidoLoja.RzGroupBox1Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) <= 0 then
    begin
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      edtLote.Clear;

      fDMCadPedido.cdsPedido_Itens.Cancel;
      prc_Habilita_Itens;
    end
    else
    begin
      MessageDlg('*** Item esta em aberto, Favor Confirmar ou Cancelar a digitação do item', mtInformation, [mbOk], 0);
      Edit2.SetFocus;
      exit;
    end;
    //fDMCadPedido.cdsPedido_Itens.Cancel;
    //prc_Habilita_Itens;
  end;
  FreeAndNil(ffrmCadPedido_Itens);
end;

procedure TfrmCadPedidoLoja.btnPagamentoClick(Sender: TObject);
var
  ffrmCadPedidoLoja_Pag: TfrmCadPedidoLoja_Pag;
begin
  prc_Verifica_Itens;
  ffrmCadPedidoLoja_Pag := TfrmCadPedidoLoja_Pag.Create(self);
  ffrmCadPedidoLoja_Pag.fDMCadPedido := fDMCadPedido;
  ffrmCadPedidoLoja_Pag.ShowModal;
  FreeAndNil(ffrmCadPedidoLoja_Pag);
end;

procedure TfrmCadPedidoLoja.btnDifalClick(Sender: TObject);
var
  ffrmCadPedidoLoja_Difal: TfrmCadPedidoLoja_Difal;
begin
  ffrmCadPedidoLoja_Difal := TfrmCadPedidoLoja_Difal.Create(self);
  ffrmCadPedidoLoja_Difal.fDMCadPedido := fDMCadPedido;
  ffrmCadPedidoLoja_Difal.ShowModal;
  FreeAndNil(ffrmCadPedidoLoja_Difal);
end;

procedure TfrmCadPedidoLoja.btnLucratividadeClick(Sender: TObject);
var
  ffrmCadPedido_Custo: TfrmCadPedido_Custo;
begin
  prc_Verifica_Itens;
  ffrmCadPedido_Custo := TfrmCadPedido_Custo.Create(self);
  ffrmCadPedido_Custo.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Custo.ShowModal;
  FreeAndNil(ffrmCadPedido_Custo);
  //fDMCadPedido.cdsPedido_Itens.AfterScroll := prc_scroll;
end;

procedure TfrmCadPedidoLoja.prc_Chama_Form_Produto;
var
  vAux: String;
begin
  vAux := Monta_Numero(Edit2.Text,0);
  if trim(Edit2.Text) <> '' then
    vCodProduto_Pos := StrToInt(Edit2.Text);
  vCodPessoa_Pos := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  vNum_Lote_Pos  := edtLote.Text;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vVenda := True;
  if fDMCadPedido.cdsParametrosMOSTRAR_MATERIAL_PED.AsString = 'S' then
    frmSel_Produto.vTipo_Prod := ''
  else
    frmSel_Produto.vTipo_Prod := 'P';
  frmSel_Produto.ShowModal;
  if vCodProduto_Pos > 0 then
  begin
    Edit2.Text := IntToStr(vCodProduto_Pos);
    fDMCadPedido.prc_Abrir_ProdutoLoja(StrToInt(Edit2.Text),'','');
    Edit3.Text := fDMCadPedido.cdsProdutoNOME.AsString;
    edtLote.Text := vNum_Lote_Pos;
  end;
end;

function TfrmCadPedidoLoja.fnc_Verifica_Lote(ID_Produto: Integer): Boolean;
begin
  Result := True;
  if trim(edtLote.Text) = '' then
    exit;

  fDMCadPedido.qProduto_Lote.Close;
  fDMCadPedido.qProduto_Lote.ParamByName('ID').AsInteger := ID_Produto;
  fDMCadPedido.qProduto_Lote.ParamByName('NUM_LOTE_CONTROLE').AsString := edtLote.Text;
  fDMCadPedido.qProduto_Lote.Open;
  if fDMCadPedido.qProduto_Lote.IsEmpty then
    Result := False;
end;

procedure TfrmCadPedidoLoja.prc_Estoque(ID_Produto: Integer);
var
  vQtdAux: Real;
begin
  vQtdAux := 0;
  vQtdAux := fnc_Buscar_Estoque(ID_Produto,fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger,0);
  ceEstoque.Value := StrToFloat(FormatFloat('0.####',vQtdAux));
end;

procedure TfrmCadPedidoLoja.edtLoteExit(Sender: TObject);
begin
  ceEstoque.Clear;
  if trim(edtLote.Text) = '' then
    exit;
  if fDMCadPedido.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
  begin
    fDMCadPedido.prc_Abrir_ProdutoLoja(StrToInt(Edit2.Text),'','');
    if not fnc_Verifica_Lote(fDMCadPedido.cdsProdutoID.AsInteger) then
    begin
      MessageDlg('*** Lote ' + edtLote.Text + ', não encontrado no produto!',mtError, [mbOk], 0);
      edtLote.SetFocus;
      exit;
    end;
    ceEstoque.Value := StrToFloat(FormatFloat('0.00##',fDMCadPedido.qProduto_LoteQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00#',fDMCadPedido.qProduto_LotePRECO_VENDA.AsFloat)) > 0 then
      vPreco_Pos := StrToFloat(FormatFloat('0.00#',fDMCadPedido.qProduto_LotePRECO_VENDA.AsFloat));
  end;
end;

procedure TfrmCadPedidoLoja.edtLoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    fDMCadPedido.prc_Abrir_ProdutoLoja(StrToInt(Edit2.Text),'','');
    vNum_Lote_Pos := edtLote.Text;
    frmSel_Produto_Lote := TfrmSel_Produto_Lote.Create(Self);
    frmSel_Produto_Lote.Tag := 0;
    frmSel_Produto_Lote.vID_Produto_Loc := fDMCadPedido.cdsProdutoID.AsInteger;
    frmSel_Produto_Lote.ShowModal;
    FreeAndNil(frmSel_Produto_Lote);
    edtLote.Text := vNum_Lote_Pos;
  end
  else
  if key = vk_Return then
    dbedtQtd.SetFocus;
end;

procedure TfrmCadPedidoLoja.prc_Limpa_Campo_Itens;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  ceQtdEmb.Clear;
  ceQtdPeca.Clear;
  edtLote.Clear;
  ceEstoque.Clear;
  btnAlterar_Itens.Tag := 0;
  vNum_Lote_Pos := '';
end;

procedure TfrmCadPedidoLoja.dbedtQtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vAux: String;
begin
  vAux := Monta_Numero(dbedtQtd.Text,0);
  if (Key = vk_Return) and (trim(vAux) <> '') and (StrToFloat(vAux) > 0) then
  begin
    if not(dbedtVlrUnitario.ReadOnly) then
      dbedtVlrUnitario.SetFocus
    else
      btnConfirmar_Itens.SetFocus;
  end
end;

procedure TfrmCadPedidoLoja.dbedtVlrUnitarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vAux: String;
begin
  vAux := Monta_Numero(dbedtVlrUnitario.Text,0);
  if (Key = vk_Return) and (trim(vAux) <> '') and (StrToFloat(vAux) > 0) then
    dbedtPercDesc.SetFocus;
end;

procedure TfrmCadPedidoLoja.Edit2Enter(Sender: TObject);
begin
  Label28.Caption := 'F2 Consulta Produto';
end;

procedure TfrmCadPedidoLoja.Edit3Enter(Sender: TObject);
begin
  Label28.Caption := 'F2 Consulta Produto';
end;

procedure TfrmCadPedidoLoja.edtLoteEnter(Sender: TObject);
begin
  Label28.Caption := 'F2 Consulta Lote';
end;

procedure TfrmCadPedidoLoja.prc_Verifica_Itens;
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
  begin
    if (trim(Edit2.Text) <> '') and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) > 0) and
       (StrToFLoat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) > 0) then
    begin
      prc_Calcular_VlrItens;
      btnConfirmar_ItensClick(nil);
    end;
  end;
end;

procedure TfrmCadPedidoLoja.Analtico1Click(Sender: TObject);
var
  vArq: String;
  i: Integer;
begin
  fDMPedidoImp := TDMPedidoImp.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMPedidoImp);
  SMDBGrid1.DisableScroll;
  fDMCadPedido.cdsPedido_Consulta.First;
  prc_Monta_Lucratividade;
  fDMPedidoImp.mPedido_Lucratividade.First;
  SMDBGrid1.EnableScroll;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Lucratividade_Analitico.fr3';
  if FileExists(vArq) then
    fDMPedidoImp.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  fDMPedidoImp.frxReport1.ShowReport;
end;

procedure TfrmCadPedidoLoja.prc_Monta_Lucratividade;
var
  vAux: Double;
begin
  fDMPedidoImp.mPedido_Lucratividade.EmptyDataSet;
  fDMPedidoImp.mPedido_Lucratividade_Item.EmptyDataSet;
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
  begin
    ShowMessage('Nenhum registro encontrado!');
    Exit;
  end;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    fDMPedidoImp.mPedido_Lucratividade.Insert;
    fDMPedidoImp.mPedido_LucratividadeID.AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
    fDMPedidoImp.mPedido_LucratividadeID_Pessoa.AsInteger     := fDMCadPedido.cdsPedido_ConsultaID_CLIENTE.AsInteger;
    fDMPedidoImp.mPedido_LucratividadePedido_Clinete.AsString := fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString;
    fDMPedidoImp.mPedido_LucratividadeNome_Cliente.AsString   := fDMCadPedido.cdsPedido_ConsultaNOME_CLIENTE.AsString;
    fDMPedidoImp.mPedido_LucratividadeData_Emissao.AsDateTime := fDMCadPedido.cdsPedido_ConsultaDTEMISSAO.AsDateTime;
    fDMPedidoImp.mPedido_LucratividadeValor_Total.AsFloat     := fDMCadPedido.cdsPedido_ConsultaVLR_TOTAL.AsFloat;
    fDMPedidoImp.mPedido_LucratividadeValor_Custo.AsFloat     := fDMCadPedido.cdsPedido_ConsultaVALOR_CUSTO.AsFloat;
    fDMPedidoImp.mPedido_Lucratividade.Post;
    vAux := fDMPedidoImp.mPedido_LucratividadeValor_Diferenca.AsFloat;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;
end;                          

procedure TfrmCadPedidoLoja.Sintet1Click(Sender: TObject);
var
  vArq: String;
begin
  fDMPedidoImp := TDMPedidoImp.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMPedidoImp);
  SMDBGrid1.DisableScroll;
  fDMCadPedido.cdsPedido_Consulta.First;
  fDMPedidoImp.cdsPedidoImp.Close;
  prc_Monta_Lucratividade;
  fDMPedidoImp.mPedido_Lucratividade.First;
  SMDBGrid1.EnableScroll;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Lucratividade.fr3';
  fDMPedidoImp.mPedido_Lucratividade.IndexFieldNames := 'ID';
  if FileExists(vArq) then
    fDMPedidoImp.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  fDMPedidoImp.frxReport1.ShowReport;   
end;

procedure TfrmCadPedidoLoja.prc_scroll(DataSet: TDataSet);
begin
  Label38.Visible := False;
  DBMemo1.Visible := False;
  if fDMCadPedido.cdsPedido_ItensCANCELADO.AsString = 'S' then
  begin
    DBMemo1.Visible := True;
    Label38.Visible := True;
  end;
end;

end.
