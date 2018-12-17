unit UCadPedidoLoja_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, UCadPedido_Itens_Imposto, Mask, RxDBComb, UCadProduto, UCadUnidade, UCadCFOP, ToolEdit,
  RXDBCtrl, RzTabs, RzPanel, UCadPessoa, UCadTabPreco, NxCollection, UDMInformar_Tam, UInformar_Tam, UCadPedido_Mat,
  NxEdit, UCadNCM, UCadPedido_TipoItem;

type
  TfrmCadPedidoLoja_Itens = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    Shape1: TShape;
    Label30: TLabel;
    lblEstoque: TLabel;
    pnlTipo1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    pnlCod_Barras: TPanel;
    Label20: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label3: TLabel;
    DBEdit23: TDBEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton6: TSpeedButton;
    gbxDesconto: TRzGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    dbedtVlrDesc: TDBEdit;
    dbedtPercDesc: TDBEdit;
    dbedtVlrProd: TDBEdit;
    Label43: TLabel;
    Label46: TLabel;
    DBEdit21: TDBEdit;
    Label47: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit13: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure pnlTipo1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure dbedtPercDescExit(Sender: TObject);
    procedure dbedtVlrDescEnter(Sender: TObject);
    procedure dbedtVlrDescExit(Sender: TObject);
    procedure dbedtVlrProdEnter(Sender: TObject);
    procedure dbedtVlrProdExit(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto;
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCFOP: TfrmCadCFOP;
    ffrmCadPessoa: TfrmCadPessoa;
    ffrmCadTabPreco: TfrmCadTabPreco;
    ffrmInformar_Tam: TfrmInformar_Tam;
    ffrmCadPedido_Mat: TfrmCadPedido_Mat;
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadPedido_TipoItem: TfrmCadPedido_TipoItem;

    vCodProdutoAnt: Integer;
    vID_CFOPAnt: Integer;
    vVlr_Material: Real;
    vQtd_Material: Integer;
    vState: String;
    vCarimbo_Ant, vRemessa_Ant: String;
    vQtd_Prod_Ant: Real;
    vVlr_Unitario_Ant: Real;
    vID_Produto_Ant: Integer;
    vID_Terceiro_Ant : Integer;
    vDtEntrega_Ant : TDateTime;
    vVlrDesc_Ant : Real;
    vVlrProd_Ant : Real;
    vPreco_Ori : Real;
    vID_Servico_Ant : Integer;
    vUnidade_Ant : String;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Calcular_VlrItens;
    procedure prc_Calcular_VlrMat;

    procedure prc_Gravar_Tam;

    function  fnc_Erro: Boolean;

    function fnc_Verificar_Cod_Barras: Boolean;
    function fnc_Verificar_Cod_Prod_Cli: Boolean;
    function fnc_Verificar_Produto(CodProduto: Integer): Boolean;

    procedure prc_Gravar_mItens;
    procedure prc_Chamar_FormTipoItem(Tipo: String);
    function fnc_Verifica_SubstTributaria: Boolean;
    procedure prc_Chama_Form_Produto;
    procedure prc_Abrir_Combinacao;
    procedure prc_Atualizar_Itens;
    procedure prc_Estoque(ID_Produto : Integer);
    procedure prc_Sel_Unidade(Venda : Boolean = False);

    function prc_Senha_Desconto : Boolean;
    function fnc_Busca_Preco_Orig : Real;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    fDMInformar_Tam: TDMInformar_Tam;
    vMostrar_Preco: Boolean;
    vPedidoSelecionado: Boolean;
    vGravacao_Ok : Boolean;    

    procedure prc_Move_Dados_Itens;
    function fnc_Estoque_OK(ID_Produto, ID_Cor: Integer ; Tamanho: String ; Qtd: Real): Boolean;
    
  end;

var
  frmCadPedidoLoja_Itens: TfrmCadPedidoLoja_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, USel_TabPreco, UMenu,
  USel_Unidade, Math, USenha, uCalculo_Pedido, UCadPedido_Itens_Serv;

{$R *.dfm}

procedure TfrmCadPedidoLoja_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Cancel;
  //Tamanhos
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_Itens.FormShow(Sender: TObject);
var
  vCODCFOP_Aux: String;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  vPreco_Pos := 0;
  //Tamanhos
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
    end;                                                                
  end;
  Label26.Visible     := (fDMCadPedido.cdsParametrosUSA_DTPRODUCAO.AsString = 'S');
  DBDateEdit4.Visible := (fDMCadPedido.cdsParametrosUSA_DTPRODUCAO.AsString = 'S');

  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vID_CFOPAnt    := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger;

  Label13.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');
  DBDateEdit1.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');

  gbxAtelier.Visible    := (fDMCadPedido.cdsParametrosCONFECCAO.AsString = 'S');
  TS_Atelier.TabVisible := (fDMCadPedido.cdsParametrosCONFECCAO.AsString = 'S');
  pnlCod_Barras.Visible := ((fDMCadPedido.cdsParametrosUSA_COD_BARRAS.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_COD_CLIENTE.AsString = 'S'));
  Label20.Visible       := (fDMCadPedido.cdsParametrosUSA_COD_BARRAS.AsString = 'S');
  Edit1.Visible         := (fDMCadPedido.cdsParametrosUSA_COD_BARRAS.AsString = 'S');
  Label42.Visible       := (fDMCadPedido.qParametros_PedUSA_COD_CLIENTE.AsString = 'S');
  Edit2.Visible         := (fDMCadPedido.qParametros_PedUSA_COD_CLIENTE.AsString = 'S');
  Label21.Visible       := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  //Tamanho
  if (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) and (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //***************
  vVlr_Material := 0;
  vQtd_Material := 0; 
  pnlMaterial.Visible := ((fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S'));
  if pnlMaterial.Visible then
  begin
    btnServico.Visible     := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
    btnDigMaterial.Visible := (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S');;
  end;

  if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and not(fDMCadPedido.cdsPedido_Material.IsEmpty) then
  begin
    vVlr_Material := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    vQtd_Material := fDMCadPedido.cdsPedido_ItensQTD.AsInteger;
  end;

  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    vState := 'E'
  else
  if fDMCadPedido.cdsPedido_Itens.State in [dsInsert] then
    vState := 'I';

  //Dapper
  label1.Visible  := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  label15.Visible := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  RxDBLookupCombo1.Visible := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  SpeedButton3.Visible     := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  SpeedButton5.Visible     := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  //********
  pnlTipo1.Visible := (fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '1');
  pnlTipo2.Visible := (fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '2');

  //Mostrar Preço
  Label7.Visible  := vMostrar_Preco;
  Label8.Visible  := vMostrar_Preco;
  DBEdit5.Visible := vMostrar_Preco;
  DBEdit6.Visible := vMostrar_Preco;
  //*****************
  //26/01/2017
  if fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S' then
    DBEdit5.ReadOnly := ((fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'C'));
  //************

  DBCheckBox1.Visible := (fDMCadPedido.cdsParametrosUSA_LOTE.AsString  = 'S');
  DBCheckBox2.Visible := (fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P');

  Label25.Visible  := (fDMCadPedido.cdsParametrosUSA_CARIMBO.AsString = 'S');
  DBEdit9.Visible  := (fDMCadPedido.cdsParametrosUSA_CARIMBO.AsString = 'S');
  Label28.Visible  := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'I'));
  DBEdit11.Visible := ((fDMCadPedido.cdsParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMCadPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'I'));
  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0 then
  begin
    if fDMCadPedido.cdsClienteUF.AsString = fDMCadPedido.cdsFilialUF.AsString then
      vCODCFOP_Aux := '5124'
    else
      vCODCFOP_Aux := '6124';
    if fDMCadPedido.cdsPedidoTIPO_VENDA.AsString = 'M' then
      if fDMCadPedido.cdsCFOP.Locate('CODCFOP',vCODCFOP_Aux,[loCaseInsensitive]) then
        fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsCFOPID.AsInteger;
    if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) and (fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger <= 0) then
      RxDBLookupCombo1Exit(Sender);
  end;
  pnlTipoOrcamento.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
  pnlCor.Visible           := ((fDMCadPedido.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
  if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger > 0 then
    prc_Abrir_Combinacao;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    btnDigMaterial.Caption := 'Digitar Opções';
  vCarimbo_Ant      := fDMCadPedido.cdsPedido_ItensCARIMBO.AsString;
  vRemessa_Ant      := fDMCadPedido.cdsPedido_ItensNUMOS.AsString;
  vID_Terceiro_Ant  := fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger;
  vDtEntrega_Ant    := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;

  vVlr_Unitario_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  if vState = 'E' then
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat))
  else
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',0));
  Label32.Visible  := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  DBEdit13.Visible := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  DBCheckBox3.Visible := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)) > 0);
  Label33.Visible          := (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'I');
  RxDBLookupCombo9.Visible := (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'I');

  //Alterado para incluir a opção se usa serviço  16/05/2017 (Sulcromo)
  Label10.Visible := ((fDMCadPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString <> 'S'));
  DBEdit1.Visible := ((fDMCadPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S') and (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString <> 'S'));
  //***********************

  gbxDesconto.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString = 'S');
  if fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString = 'S' then
    BitBtn3.Caption := 'Impostos';
  TS_Servico.TabVisible     := (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S');
  if fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    RzPageControl1.ActivePage := TS_Servico;
  if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger <> fDMCadPedido.cdsOperacao_NotaID.AsInteger then
      fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S' then
    begin
      fDMCadPedido.cdsServico_Int.Close;
      fDMCadPedido.cdsServico_Int.Open;
    end;
  end;
  Label40.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  RxDBLookupCombo11.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  Label39.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  RxDBLookupCombo10.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  DBEdit18.Visible := ((fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S'));
  DBCheckBox4.Visible := (fDMCadPedido.qParametros_LoteLOTE_TEXTIL.AsString = 'S');
  Label46.Visible     := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  DBEdit21.Visible    := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  Label47.Visible     := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  DBEdit22.Visible    := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
end;

procedure TfrmCadPedidoLoja_Itens.Panel2Enter(Sender: TObject);
var
  vVlrAux: Real;
  vVerificaCFOP : Boolean;
begin
  vVerificaCFOP := True;
  if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger <> fDMCadPedido.cdsOperacao_NotaID.AsInteger then
      fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S' then
      vVerificaCFOP := False;
  end;

  if vVerificaCFOP then
  begin
    if not(fDMCadPedido.fnc_verificar_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger)) and (RxDBLookupCombo1.Visible) and (Tag <> 99) then
    begin
      RxDBLookupCombo1.SetFocus;
      exit;
    end;
  end;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  if ((fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger < 1)) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
    exit;
  vPreco_Ori := 0;
  if (vState = 'I') or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) or
     (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
    prc_Move_Dados_Itens
  else
  //if vState = 'E' then //01/02/2017
    vPreco_Ori := fnc_Busca_Preco_Orig;

  if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') and not(fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty) then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vVlrAux;
  if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and (StrToFloat(FormatFloat('0.00000',vVlr_Material)) > 0) then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',vVlr_Material));
  if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and (vQtd_Material > 0) then
    fDMCadPedido.cdsPedido_ItensQTD.AsInteger := vQtd_Material;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Buscar_Imposto(Auxiliar, Nome: String);
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

procedure TfrmCadPedidoLoja_Itens.prc_Move_Dados_Itens;
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

  //28/04/2017  Sulcromo
  if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.cdsPedido_ItensTIPO_SERVICO.Value := fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.Value;
    //TS_Servico.TabVisible := (fDMCadPedido.cdsPedido_ItensTIPO_SERVICO.AsString = 'S');
    if (vState = 'I') and (fDMCadPedido.cdsPedido_ItensTIPO_SERVICO.AsString = 'S') then
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat := 1;
  end;
  if TS_Servico.TabVisible then
    RzPageControl1.ActivePage := TS_Servico;
  //***************

  if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;

  //30/08/2017
  if (fDMCadPedido.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S') and (trim(fDMCadPedido.cdsProdutoTAMANHO.AsString) <> '' ) then
    fDMCadPedido.cdsPedido_ItensTAMANHO.AsString := fDMCadPedido.cdsProdutoTAMANHO.AsString;
  //**********

  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString       := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  //28/08/2017
  fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString  := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsInteger := StrToInt(FormatFloat('0',1));
  //*************
  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
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
  btnGrade.Visible    := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'I'));
  lblTamanho.Visible  := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  dblcTamanho.Visible := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  DBEdit2.ReadOnly := ((fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  //25/08/2014
  //vai verificar as regras fiscais, Suspensão de IPI e PIS/COFINS
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
  //prc_Buscar_Imposto('','PIS');
  //prc_Buscar_Imposto('','COFINS');
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
    //23/05/2017  Foi incluido para buscar o preço por cor
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
  if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (fDMCadPedido.cdsPedido_Item_Tipo.RecordCount > 0) then
  begin
    //Foi alterado no dia 28/03/2014
    //fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat;
    //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat / fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat));
    //15/09/2015: Foi alterado conforme Adriano,
    if fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'C' then
    begin
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat;
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat));
      //11/09/2015: Foi alterado conforme Adriano, vai gravar no estoque por KG (usando o campo da nota QTD_ESTOQUE)
      //fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat / fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger         := fDMCadPedido.cdsPedido_Item_TipoQTD.AsInteger;
      //fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoQTD.AsInteger)));
      fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)));
    end
    else
    begin
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat / fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger         := fDMCadPedido.cdsPedido_Item_TipoQTD.AsInteger;
      fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',(0)));
    end;
  end;
  //Alterado 14/04/2016 para o cadastro de carimbo por cliente
  //if ((vState = 'I') or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt)) and (trim(fDMCadPedido.cdsClienteCARIMBO.AsString) <> '') then
    //fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := fDMCadPedido.cdsClienteCARIMBO.AsString;
  if ((vState = 'I') or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt)) then
  begin
    fDMCadPedido.qCarimbo.Close;
    fDMCadPedido.qCarimbo.ParamByName('ID_CLIENTE').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    fDMCadPedido.qCarimbo.ParamByName('ID_PRODUTO').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    fDMCadPedido.qCarimbo.Open;
    if fDMCadPedido.qCarimboCARIMBO_PRO_CLI.AsString <> '' then
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := fDMCadPedido.qCarimboCARIMBO_PRO_CLI.AsString
    else
    if fDMCadPedido.qCarimboCARIMBO_CLI.AsString <> '' then
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := fDMCadPedido.qCarimboCARIMBO_CLI.AsString
    else
    if fDMCadPedido.qCarimboCARIMBO.AsString <> '' then
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := fDMCadPedido.qCarimboCARIMBO.AsString;
  end;
  //********************

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
  DBCheckBox3.Visible := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)) > 0);
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
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Calcular_VlrItens;
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

procedure TfrmCadPedidoLoja_Itens.DBEdit5Exit(Sender: TObject);
begin
  if (fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString = 'C') and
    (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) < StrToFloat(FormatFloat('0.000000',vPreco_Ori))) then
  begin
    MessageDlg('*** Preço não pode ser menor que ' + FormatFloat('0.00####',vPreco_Ori), mtError, [mbOk], 0);
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vPreco_Ori;
    DBEdit5.SetFocus;
  end;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedidoLoja_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vDataSet: TDataSet;
  vCarimbo: String;
  vQtdAux: Real;
begin
  if fnc_Erro then
    exit;

  if fDMCadPedido.cdsPedido_ItensTIPO_SERVICO.AsString <> 'S' then
  begin
    fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.Clear;
    fDMCadPedido.cdsPedido_ItensNOME_SERVICO_INT.Clear;
  end;

  if trim(RxDBLookupCombo6.Text) = '' then
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := StrToInt(FormatFloat('0',0));
  if fDMCadPedido.cdsParametrosUSA_LOTE.AsString <> 'S' then
    fDMCadPedido.cdsPedido_ItensGERAR_LOTE.AsString := 'N';

  if fDMCadPedido.cdsCFOPID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger then
    fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
    fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString
  else
    fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := '';

  //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
  if vState = 'E' then
    vEditar := True
  else
    vEditar := False;

  //Controle do estoque  11/05/2015
  if (fDMCadPedido.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensGERAR_ESTOQUE.AsString = 'S') then
  begin
    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString <> 'S')
       or ((vEditar) and (StrToFloat(FormatFloat('0.0000',vQtd_Prod_Ant)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat))))  then
    begin
      //11/09/2015
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
      if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
        vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
      //if not fnc_Estoque_OK(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger, 11/09/2015
      //                      fDMCadPedido.cdsPedido_ItensTAMANHO.AsString,fDMCadPedido.cdsPedido_ItensQTD.AsFloat) then
      if not fnc_Estoque_OK(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                            fDMCadPedido.cdsPedido_ItensTAMANHO.AsString,vQtdAux) then
        exit;
    end
    else
    if not(vEditar) then
    begin
      vFlagErro := False;
      fDMInformar_Tam.mTamanho.First;
      while not fDMInformar_Tam.mTamanho.eof do
      begin
        if StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0 then
        begin
          if not fnc_Estoque_OK(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                                fDMInformar_Tam.mTamanhoTamanho.AsString,fDMInformar_Tam.mTamanhoQtd.AsFloat) then
          begin
            //fDMInformar_Tam.mTamanho.Delete
            fDMInformar_Tam.mTamanho.Last;
            vFlagErro := True;
          end
          else
            fDMInformar_Tam.mTamanho.Next
        end
        else
          fDMInformar_Tam.mTamanho.Next;
      end;
      if vFlagErro then
        exit;
      if fDMInformar_Tam.mTamanho.IsEmpty then
        exit;
    end;
  end;
  //**************  11/05/2015

  vFlagErro := False;
  try
    if RxDBLookupCombo7.Text <> '' then
      fDMCadPedido.cdsPedido_ItensNCM.AsString := RxDBLookupCombo7.Text;
    if fDMCadPedido.cdsProdutoID.AsInteger <>  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
    if (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString <> 'S') or (trim(fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString) = '') then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
    if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (fDMCadPedido.cdsPedido_Item_Tipo.RecordCount > 0) then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' ' + fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;
    if fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '1' then
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') and (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10) then
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime;
    if (fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_NCM.IsNull) then
      fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
    if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger then
      fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger,[loCaseInsensitive]);
    if (pnlCor.Visible) and (RxDBLookupCombo3.Text <> '') then
      fDMCadPedido.cdsPedido_ItensNOME_COR_COMBINACAO.AsString := RxDBLookupCombo3.Text;

    fDMCadPedido.cdsPedido_ItensNCM.AsString := fDMCadPedido.cdsTab_NCMNCM.AsString;

    fDMCadPedido.cdsPedido_ItensVLR_TOTAL_ATELIER.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO_ATELIER.AsFloat *
                                                             fDMCadPedido.cdsPedido_ItensQTD.AsFloat));

    //05/01/2017   estava abaixo do calculo
    fDMCadPedido.cdsPedido_ItensGRAVACAO_COM_ERRO.AsString := '';
    if   (((fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_CFOP.IsNull)) and (fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S'))
      or (fDMCadPedido.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S') then
    begin
      if not fnc_Verifica_SubstTributaria then
        exit;
    end;

    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString <> 'S') or (vState = 'E') then
      uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

    //Tamanho aqui  30/08/2017
    if fDMCadPedido.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString
    else
    if fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S' then
    begin
      //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
      if vState = 'E' then
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString
      else
      begin
        prc_Gravar_mItens;
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMInformar_Tam.vTamanho_Ini;
        fDMCadPedido.cdsPedido_ItensTAMANHO.AsString     := fDMInformar_Tam.vTamanho_Ini;
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMInformar_Tam.vQtd_Ini;
        fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMInformar_Tam.vQtd_Ini;

        uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                               fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                               fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

        vEditar := True;
      end;
    end;
    //*****
    //15/09/2016
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO_CALC.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat +
                                                                        fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));
    //***********

    fDMCadPedido.cdsPedido_Itens.Post;
    //foi alterado para ajustar os carimbos e o número de OS dos tamanhos   23/02/2015
    if vState = 'E' then
    begin
      prc_Atualizar_Itens;
    end;

    //Tamanho aqui
    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') then
      prc_Gravar_Tam;

  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;                                
  end;

  lblEstoque.Caption := '0';

  if vPedidoSelecionado then
  begin
    vPedidoSelecionado := False;
    exit;
  end;

  if not(vFlagErro) and (tag <> 99) then
  begin
    if vEditar then
      Close
    else
    begin
      vCarimbo := '';
      if fDMCadPedido.cdsPedido_ItensCARIMBO.AsString <> '' then
        vCarimbo := fDMCadPedido.cdsPedido_ItensCARIMBO.AsString;
      vID_Produto_Ant := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;

      vPreco_Pos := 0;

      fDMCadPedido.prc_Inserir_Itens;
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := vCarimbo;
      if fDMCadPedido.cdsParametrosREPETIR_ULTIMO_ITEM_PED.AsString = 'S' then
        fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vID_Produto_Ant;

      vState := 'I';
      vVlr_Material := 0;
      vQtd_Material := 0;
      if pnlCod_Barras.Visible then
      begin
        if Edit1.Visible then
        begin
          Edit1.Clear;
          Edit1.SetFocus;
        end;
        if Edit2.Visible then
        begin
          Edit2.Clear;
          Edit2.SetFocus;
        end;
      end
      else
      begin
        if DBEdit15.Visible then
          DBEdit15.SetFocus
        else
        begin
          if pnlTipo1.Visible then
            RxDBLookupCombo4.SetFocus
          else
            DBEdit10.SetFocus;
        end;
      end;
    end;
  end;
end;

function TfrmCadPedidoLoja_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
  vAux : Real;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  if (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'I') and (fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger <= 0) then
    if MessageDlg('Item não informado o Terceiro, confirma assim mesmo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  vMsgErro := '';
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) and (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') then
    vMsgErro := vMsgErro + #13 + '*** CFOP não informado!';
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) <= 0) and (vMostrar_Preco) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  if (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime < fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime) then
    vMSGErro := vMSGErro + #13 + '*** Data de entrega menor que a data de emissão!';
  if fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  //Aqui tamanho
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) = '') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and
     //(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
     (vState = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if (fDMCadPedido.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'B') then
  begin
    if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger <= 0 then
    begin
      prc_Abrir_Combinacao;
      if not (fDMCadPedido.cdsCombinacao.IsEmpty) then
        vMsgErro := vMsgErro + #13 + '*** Esse produto possui cor/combinação e não foi informado!';
    end;
  end;

  if (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat)) <= StrToFloat(FormatFloat('0.00',0))) and
     (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > StrToFloat(FormatFloat('0.00',0))) then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat / fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat) * 100));
    if StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat)) then
    begin
      if not prc_Senha_Desconto then    
        vMsgErro := vMsgErro + #13 + '*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!';
    end;
  end;

  //28/04/2017   SulCromo
  if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger <> fDMCadPedido.cdsOperacao_NotaID.AsInteger then
      fDMCadPedido.cdsOperacao_Nota.Locate('ID',fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,[loCaseInsensitive]);
    if (fDMCadPedido.cdsOperacao_NotaTIPO_NOTA.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensID_SERVICO_INT.AsInteger <= 0) then
      vMsgErro := vMsgErro + #13 + '*** Na operação ' + fDMCadPedido.cdsOperacao_NotaNOME.AsString + ' é obrigado a informar o serviço!';
  end;
  //**********************
  
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadPedidoLoja_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadPedidoLoja_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.vID_Produto_Local := 0;
  if RxDBLookupCombo8.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo8.KeyValue
  else
  if RxDBLookupCombo2.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo2.KeyValue;
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
  SpeedButton4Click(sender);
end;

procedure TfrmCadPedidoLoja_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsParametros.Close;
  fDMCadPedido.cdsParametros.Open;
  fDMCadPedido.prc_Abrir_Produto;
  SpeedButton12Click(Sender);
  if (RxDBLookupCombo8.Text <> '') or (RxDBLookupCombo2.Text <> '') then
    prc_Abrir_Combinacao;
end;

procedure TfrmCadPedidoLoja_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vQtdAux: Real;  
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender)
  else
  if (Key = Vk_F3) then
  begin
    vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    frmSel_Tabpreco  := TfrmSel_Tabpreco.Create(Self);
    frmSel_Tabpreco.ShowModal;
    FreeAndNil(frmSel_TabPreco);
    fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
    begin
      if (pnlTipo1.Visible) and (DBEdit15.Visible) then
        DBEdit15.SetFocus
      else
      begin
        if pnlTipo1.Visible then
          RxDBLookupCombo4.SetFocus
        else
        if pnlTipo2.Visible then
          RxDBLookupCombo8.SetFocus;
      end
    end;
    RxDBLookupCombo4Change(Sender);
  end;

end;

procedure TfrmCadPedidoLoja_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadPedidoLoja_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedidoLoja_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    prc_Estoque(RxDBLookupCombo4.KeyValue);
end;

procedure TfrmCadPedidoLoja_Itens.pnlTipo1Exit(Sender: TObject);
var
  vFinalidadeAux: String;
  vID_VariacaoAux: Integer;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
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
    RxDBLookupCombo1.KeyValue := fDMCadPedido.vID_CFOP;
    if StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao)) > 1000 then
      fDMCadPedido.vID_Variacao := StrToInt(FormatFloat('0',0));
    RxDBLookupCombo6.ClearValue;
    if StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao)) > 0 then
      RxDBLookupCombo6.KeyValue := StrToInt(FormatFloat('0',fDMCadPedido.vID_Variacao));
    RxDBLookupCombo1Exit(Sender);
  end;
  prc_Abrir_Combinacao;
end;

procedure TfrmCadPedidoLoja_Itens.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtError, [mbOk], 0)
    else
    begin
      fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
      if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
        DBEdit2.SetFocus
      else
      if RxDBLookupCombo1.Visible then
        RxDBLookupCombo1.SetFocus;
    end;
  end;
end;

function TfrmCadPedidoLoja_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit15.Text) <> '') then
  begin
    if not fnc_Verificar_Produto(StrToInt(DBEdit15.Text)) then
      MessageDlg('*** Código do Produto não encontrado!', mtError, [mbOk], 0)
    else
    begin
      //fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
      if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
      begin
        if pnlCor.Visible then
          RxDBLookupCombo3.SetFocus
        else
          DBEdit2.SetFocus;
      end
      else
      if RxDBLookupCombo1.Visible then
        RxDBLookupCombo1.SetFocus;
    end;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

function TfrmCadPedidoLoja_Itens.fnc_Verificar_Produto(CodProduto: Integer): Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('ID',CodProduto,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Gravar_Tam;
var
  x: Integer;
  vItemAux: Integer;
begin
  fDMInformar_Tam.mItens.First;
  fDMInformar_Tam.mItens_Mat.First;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (fDMInformar_Tam.mTamanhoTamanho.AsString <> fDMInformar_Tam.vTamanho_Ini) and (StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) then
    begin
      fDMCadPedido.prc_Inserir_Itens;
      for x := 0 to (fDMInformar_Tam.mItens.FieldCount - 1) do
      begin
        try
          if (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Item') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PIS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_COFINS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Tipo_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Tipo_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Origem_Prod') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Nome_Produto') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_MovEstoque') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Gerar_Duplicata') and
             //(fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Gerar_Estoque') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Numero_OC') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Numero_OC') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Numero_OS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Item_Pedido') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Somar_Transf_Icms') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Somar_VlrTotalProduto') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_OutrasDespesas') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Seguro') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_IcmsFrete') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSOUTRASDESPESAS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_IMPORTACAO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ADUANEIRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OPERACAO_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'FINALIDADE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'IMP_OC_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Num_Pedido') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_DUPLICATA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_IMPORTACAO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_REDUCAO_ICMSSUBST') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Nome_Produto_Original') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CONTA_ORCAMENTO_ID') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CENTRO_CUSTO_ID') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTDRESTANTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTDDEVOLVIDA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CODCOFINS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CODPIS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_ADEVOLVER') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_PACOTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PEDIDO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TABCSTICMS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'MAOOBRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_PRODUTO_FORN') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_BARRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_NTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_NTE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_NOTAATUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_DEVOL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'TIPO_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'TIPO_REG') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MVA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_MOVIMENTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'POSSUI_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_FCI') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_USADO_FCI') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OBS_LEI_NCM') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_VALE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_ICMSSUBST_INTERNO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSSUBST_INTERNO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_ICMSSUBST_PROPRIO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSSUBST_PROPRIO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'BASE_ICMSSUBST_PROPRIO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSDESONERADO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_MOTIVO_DESONERADO')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_DESONERACAO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSOPERACAO')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PEDIDO_FUT')  and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_PEDIDO_FUT')        and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_OS')                and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_OS_MAT') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_OSERVICO')           and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VERSAO_TRIBUTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'IBPT_CHAVE')             and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'FONTE_TRIBUTO')          and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_ESTADUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_MUNICIPAL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_ESTADUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_MUNICIPAL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_FEDERAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_FEDERAL')   and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_TaxaCiscomex') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DIFERENCA_ICMS')         and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CALCULAR_ST') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COMPLEMENTO_PROD')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Num_Lote_Controle') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_EnqIPI')              and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_ICMS_Inter') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Outros')             and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_PIS_COFINS_SUFRAMA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'IBPT_CHAVE') then
            fDMCadPedido.cdsPedido_Itens.FieldByName(fDMInformar_Tam.mItens.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItens.Fields[x].Value;
        except
        end;
      end;
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensTAMANHO.AsString     := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := 0;
                                                                     
      uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

      fDMCadPedido.cdsPedido_Itens.Post;

      if fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S' then
      begin
        vItemAux := 0;
        fDMInformar_Tam.mItens_Mat.First;
        while not fDMInformar_Tam.mItens_Mat.Eof do
        begin
          vItemAux := vItemAux + 1;
          fDMCadPedido.cdsPedido_Material.Insert;
          fDMCadPedido.cdsPedido_MaterialID.AsInteger          := fDMCadPedido.cdsPedido_ItensID.AsInteger;
          fDMCadPedido.cdsPedido_MaterialITEM.AsInteger        := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
          fDMCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger    := vItemAux;
          fDMCadPedido.cdsPedido_MaterialID_PRODUTO.AsInteger  := fDMInformar_Tam.mItens_MatID_PRODUTO.AsInteger;
          fDMCadPedido.cdsPedido_MaterialQTD_CONSUMO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mItens_MatQTD_CONSUMO.AsFloat));
          fDMCadPedido.cdsPedido_MaterialVLR_UNITARIO.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mItens_MatVLR_UNITARIO.AsFloat));
          fDMCadPedido.cdsPedido_MaterialVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',fDMInformar_Tam.mItens_MatVLR_TOTAL.AsFloat));
          fDMCadPedido.cdsPedido_MaterialUNIDADE.AsString      := fDMInformar_Tam.mItens_MatUNIDADE.AsString;
          fDMCadPedido.cdsPedido_MaterialNOME_PRODUTO.AsString := fDMInformar_Tam.mItens_MatNOME_PRODUTO.AsString;
          fDMCadPedido.cdsPedido_Material.Post;
          fDMInformar_Tam.mItens_Mat.Next;
        end;
      end;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItens.EmptyDataSet;
  fDMInformar_Tam.mPedido_Cli.EmptyDataSet;
  fDMInformar_Tam.mItens_Mat.EmptyDataSet;

  fDMInformar_Tam.mItens.Insert;
  for x := 0 to (fDMCadPedido.cdsPedido_Itens.FieldCount - 1) do
  begin
    if (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Cli') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Tam') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Material') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Item_Tipo') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TIPO_ACESSORIO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'COMPRIMENTO_VOLUME') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTEXPEDICAO') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTFATURA') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_FCP') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_UF_DEST') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_PARTILHA') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_FCP') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_DEST') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_REMET') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_INTER') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'GRAVOU_TAB_TAMANHO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_DESCONTO_CALC') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_CONFERIDO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTCONFERENCIA') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'HRCONFERENCIA') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'USUARIO_CONF') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_SOBRA_OC') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMSFRETE') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TIPO_SERVICO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_SERVICO_INT') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NOME_SERVICO_INT') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_OS_SERV') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NUM_OS_SERV') and  (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_SERVICO') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NUM_NOTA_ENT') and  (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'SERIE_NOTA_ENT') then
      fDMInformar_Tam.mItens.FieldByName(fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Itens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensItem_original.AsInteger        := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  fDMInformar_Tam.mItensNome_Produto_Original.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString;
  fDMInformar_Tam.mItens.Post;

  fDMCadPedido.cdsPedido_Material.First;
  while not fDMCadPedido.cdsPedido_Material.Eof do
  begin
    fDMInformar_Tam.mItens_Mat.Insert;
    for x := 0 to (fDMCadPedido.cdsPedido_Material.FieldCount - 1) do
    begin
      if (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'ID') and (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'ITEM') and
         (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'REFERENCIA') then
        fDMInformar_Tam.mItens_Mat.FieldByName(fDMCadPedido.cdsPedido_Material.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Material.Fields[x].Value;
    end;
    fDMInformar_Tam.mItens_Mat.Post;
    fDMCadPedido.cdsPedido_Material.Next;
  end;

  if not fDMCadPedido.cdsPedido_Cli.IsEmpty then
  begin
    fDMCadPedido.cdsPedido_Cli.First;
    while not fDMCadPedido.cdsPedido_Cli.Eof do
    begin
      fDMInformar_Tam.mPedido_Cli.Insert;
      for x := 0 to (fDMCadPedido.cdsPedido_Cli.FieldCount - 1) do
      begin
        fDMInformar_Tam.mPedido_Cli.FieldByName(fDMCadPedido.cdsPedido_Cli.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Cli.Fields[x].Value;
      end;
      fDMInformar_Tam.mPedido_Cli.Post;
      fDMCadPedido.cdsPedido_Cli.Next;
    end;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Calcular_VlrMat;
begin
  vVlr_Material := 0;
  vQtd_Material := 0;
  fDMCadPedido.cdsPedido_Material.First;
  while not fDMCadPedido.cdsPedido_Material.Eof do
  begin
    vVlr_Material := StrToFloat(FormatFloat('0.00',vVlr_Material + fDMCadPedido.cdsPedido_MaterialVLR_TOTAL.AsFloat));
    if (fDMCadPedido.cdsMaterial.Locate('ID',fDMCadPedido.cdsPedido_MaterialID_PRODUTO.AsInteger,[loCaseInsensitive])) and (fDMCadPedido.cdsMaterialIMPRIMIR_ETIQUETA_NAV.AsString = 'S') then
      vQtd_Material := vQtd_Material + fDMCadPedido.cdsPedido_MaterialQTD_PECA.AsInteger;
    fDMCadPedido.cdsPedido_Material.Next;
  end;
  if (vQtd_Material > 0) and (StrToFloat(FormatFloat('0.00000',vVlr_Material)) > 0) then
    vVlr_Material := StrToFloat(FormatFloat('0.0000',vVlr_Material / vQtd_Material));
end;

procedure TfrmCadPedidoLoja_Itens.DBDateEdit1Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime < 10) then
    fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Chamar_FormTipoItem(Tipo: String);
begin
  ffrmCadPedido_TipoItem := TfrmCadPedido_TipoItem.Create(self);
  if not fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty then
    fDMCadPedido.cdsPedido_Item_Tipo.Edit
  else
  begin
    fDMCadPedido.cdsPedido_Item_Tipo.Insert;
    fDMCadPedido.cdsPedido_Item_TipoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
    fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  end;
  ffrmCadPedido_TipoItem.fDMCadPedido := fDMCadPedido;
  if Tipo = 'C' then
  begin
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Chapas;
    if fDMCadPedido.cdsPedido_Item_Tipo.State in [dsInsert] then
    begin
      fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat := fDMCadPedido.vComprimento;
      fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat     := fDMCadPedido.vLargura;
      fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat      := fDMCadPedido.vAltura;
    end;
  end
  else
  if Tipo = 'R' then
  begin
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage    := ffrmCadPedido_TipoItem.TS_Redondos;
    if fDMCadPedido.cdsPedido_Item_Tipo.State in [dsInsert] then
    begin
      fDMCadPedido.cdsPedido_Item_TipoDIAMETRO.AsFloat    := fDMCadPedido.vDiametro;
      fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat := fDMCadPedido.vComprimento;
    end;
  end
  else
  if Tipo = 'T' then
  begin
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Tubos;
    if fDMCadPedido.cdsPedido_Item_Tipo.State in [dsInsert] then
    begin
      fDMCadPedido.cdsPedido_Item_TipoDIAMETRO_EXT.AsFloat := fDMCadPedido.vDiametro_Ext;
      fDMCadPedido.cdsPedido_Item_TipoDIAMETRO_INT.AsFloat := fDMCadPedido.vDiametro_Int;
      fDMCadPedido.cdsPedido_Item_TipoPAREDE.AsFloat       := fDMCadPedido.vParede;
      fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat  := fDMCadPedido.vComprimento;
    end;
  end
  else //Ambientes
  if Tipo = 'P' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Porta
  else
  if Tipo = 'V' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Vidro;
  ffrmCadPedido_TipoItem.vVlr_Produto           := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;
  ffrmCadPedido_TipoItem.TS_Chapas.TabVisible   := (Tipo = 'C');
  ffrmCadPedido_TipoItem.TS_Redondos.TabVisible := (Tipo = 'R');
  ffrmCadPedido_TipoItem.TS_Tubos.TabVisible    := (Tipo = 'T');
  ffrmCadPedido_TipoItem.TS_Porta.TabVisible    := (Tipo = 'P');
  ffrmCadPedido_TipoItem.TS_Vidro.TabVisible    := (Tipo = 'V');
  ffrmCadPedido_TipoItem.ShowModal;
  FreeAndNil(ffrmCadPedido_TipoItem);
  if not fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty then
    DBEdit2.SetFocus;
end;

function TfrmCadPedidoLoja_Itens.fnc_Verifica_SubstTributaria: Boolean;
var
  vMSGAux: String;
begin
  vMSGAux := '';
  if fDMCadPedido.cdsParametrosCONTROLAR_NOTIFICACAO.AsString <> 'S' then
  begin
    Result := True;
    exit;
  end;
  if (((fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_CFOP.IsNull)) and (fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S')) then
    vMSGAux := 'Não foi lançada CFOP'
  else
    vMSGAux := 'CFOP ' + fDMCadPedido.cdsCFOPCODCFOP.AsString + ' esta marcada para calcular a ST!';
  Result := True;
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_ICMSSUBST.AsFloat)) <= 0) then
  begin
    if MessageDlg('Item não foi calculada a substituição tributária!' + #13
                 + 'Motivo: ' + vMSGAux + #13
                 + '        Verifique se a NCM esta configurada para o estado com o MVA ' + #13
                 + '        Verifique se na UF de destino existe % ICMS Interno' + #13 + #13 + #13
                 + ' Confirmar assim a gravação do item?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Result := False
    else
    if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
      fDMCadPedido.cdsPedido_ItensGRAVACAO_COM_ERRO.AsString := 'CST';
  end;
end;

procedure TfrmCadPedidoLoja_Itens.SpeedButton13Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);

end;

procedure TfrmCadPedidoLoja_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPedido.cdsUnidade.Close;
  fDMCadPedido.cdsUnidade.Open;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Chama_Form_Produto;
begin
  vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vCodPessoa_Pos  := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  if fDMCadPedido.cdsParametrosMOSTRAR_MATERIAL_PED.AsString = 'S' then
    frmSel_Produto.vTipo_Prod := ''
  else
    frmSel_Produto.vTipo_Prod := 'P';
  frmSel_Produto.ShowModal;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
  begin
    if (pnlTipo1.Visible) and (DBEdit15.Visible) then
      DBEdit15.SetFocus
    else
    begin
      if pnlTipo1.Visible then
        RxDBLookupCombo4.SetFocus
      else
      if pnlTipo2.Visible then
        RxDBLookupCombo8.SetFocus;
    end
  end;
  RxDBLookupCombo4Change(RxDBLookupCombo4);
end;

procedure TfrmCadPedidoLoja_Itens.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadPedidoLoja_Itens.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit23KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Sel_Unidade(False);
end;

procedure TfrmCadPedidoLoja_Itens.prc_Abrir_Combinacao;
begin
  fDMCadPedido.cdsCombinacao.Close;
  fDMCadPedido.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  fDMCadPedido.cdsCombinacao.Open;
end;

procedure TfrmCadPedidoLoja_Itens.Panel1Exit(Sender: TObject);
begin
  //Ambientes
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
        exit;
    if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') and (fDMCadPedido.cdsProdutoID_GRUPO.AsInteger > 0) then
    begin
      fDMCadPedido.qGrupo.Close;
      fDMCadPedido.qGrupo.ParamByName('ID').AsInteger := fDMCadPedido.cdsProdutoID_GRUPO.AsInteger;
      fDMCadPedido.qGrupo.Open;
      pnlMaterial.Visible := ((fDMCadPedido.qGrupoTIPO_PROD.AsString = 'P') or (fDMCadPedido.qGrupoTIPO_PROD.AsString = 'V'));
      if pnlMaterial.Visible then
        btnDigMaterial.SetFocus;
    end;
  end;
  if (vID_Produto_Ant <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) and (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
  begin
    if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Atualizar_Itens;
var
  vItemAux: Integer;
  vId_ProdutoAux: Integer;
  vId_CombinacaoAux: Integer;
  vAux: Integer;
  vCarimboAux, vRemessaAux: String;
  vVlr_Unitario_Aux: Real;
  vID_Terceiro_Aux : Integer;
  vDTEntrega_Aux : TDateTime;
begin
  if fDMCadPedido.cdsPedido_Itens.RecordCount <= 1 then
    exit;
  if (trim(vCarimbo_Ant) <> trim(fDMCadPedido.cdsPedido_ItensCARIMBO.AsString)) or (trim(vRemessa_Ant) <> trim(fDMCadPedido.cdsPedido_ItensNUMOS.AsString)) or
    (StrToFloat(FormatFloat('0.0000',vVlr_Unitario_Ant)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat))) or
    (vID_Terceiro_Ant <> fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger) or (vDtEntrega_Ant <> fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime) then
  begin
    vItemAux          := fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger;
    vId_ProdutoAux    := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    vId_CombinacaoAux := fDMCadPedido.cdsPedido_ItensID_COR.AsInteger;
    vCarimboAux       := fDMCadPedido.cdsPedido_ItensCARIMBO.AsString;
    vRemessaAux       := fDMCadPedido.cdsPedido_ItensNUMOS.AsString;
    vVlr_Unitario_Aux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    vID_Terceiro_Aux  := fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger;
    vDTEntrega_Aux    := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;

    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      if fDMCadPedido.cdsPedido_ItensITEM_ORIGINAL.AsInteger =  vItemAux then
      //if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger = vId_ProdutoAux) and (fDMCadPedido.cdsPedido_ItensID_COR.AsInteger = vId_CombinacaoAux) then
      begin
        fDMCadPedido.cdsPedido_Itens.Edit;
        if fDMCadPedido.cdsPedido_ItensCARIMBO.AsString <> vCarimboAux then
          fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := vCarimboAux;
        if fDMCadPedido.cdsPedido_ItensNUMOS.AsString <> vRemessaAux then
          fDMCadPedido.cdsPedido_ItensNUMOS.AsString := vRemessaAux;
        if fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime <> vDTEntrega_Aux then
          fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := vDTEntrega_Aux;
        if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) <> StrToFloat(FormatFloat('0.0000',vVlr_Unitario_Aux)) then
        begin
        //aqui 
          fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',vVlr_Unitario_Aux));
        end;
        if fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger <> vID_Terceiro_Aux then
          fDMCadPedido.cdsPedido_ItensID_ATELIER.AsInteger := vID_Terceiro_Aux;
        fDMCadPedido.cdsPedido_Itens.Post;
      end;
      fDMCadPedido.cdsPedido_Itens.Next;
    end;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit2Enter(Sender: TObject);
begin
  vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
end;

function TfrmCadPedidoLoja_Itens.fnc_Estoque_OK(ID_Produto, ID_Cor: Integer;
  Tamanho: String; Qtd: Real): Boolean;
var
  ffrmSenha: TfrmSenha;
  vQtdAux: Real;
  vID_LocalAux: Integer;
begin
  Result := True;
  if fDMCadPedido.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString <> 'S' then
    exit;
  //12/11/2015
  vID_LocalAux := fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger;
  if (fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S') and (fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString)
  else
  if (fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
    vID_LocalAux := 0;
  //**********
  vQtdAux := fnc_Busca_Estoque2(fDMCadPedido.cdsPedidoFILIAL.AsInteger,ID_Produto,ID_Cor,Tamanho,vID_LocalAux);
  if StrToFloat(FormatFloat('0.0000',vQtdAux)) < StrToFloat(FormatFloat('0.0000',Qtd)) then
  begin
    if trim(fDMCadPedido.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString) = '' then
      //Result := MessageDlg('Produto com quantidade menor no estoque, confirma inclusão do produto ?',mtConfirmation,[mbYes,mbNo],0) = mrNo
      Result := (MessageDlg('Produto com quantidade menor no estoque, confirma inclusão do produto ?',mtConfirmation,[mbYes,mbNo],0) = mrYes)
    else
    begin
      ffrmSenha := TfrmSenha.Create(self);
      ffrmSenha.Label2.Caption := 'Produto com estoque negativo ';
      ffrmSenha.Label3.Caption := 'Informe a senha para liberar ';
      if Tamanho <> '' then
        ffrmSenha.Label4.Caption := 'Tamanho = ' + Tamanho
      else
        ffrmSenha.Label4.Caption := '';
      ffrmSenha.Label4.Caption := ffrmSenha.Label4.Caption + '   Qtd Est. ' + FormatFloat('0.####',vQtdAux);
      if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
        ffrmSenha.Label4.Font.Color := clRed
      else
        ffrmSenha.Label4.Font.Color := clBlue;
      ffrmSenha.vControlaSenha := True;
      ffrmSenha.vSenha_Param := fDMCadPedido.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString;
      ffrmSenha.ShowModal;
      FreeAndNil(ffrmSenha);
      if vSenha <> fDMCadPedido.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString then
        Result := False;
    end;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit15Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
    prc_Estoque(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
end;

procedure TfrmCadPedidoLoja_Itens.dbedtPercDescExit(Sender: TObject);
var
  vAux : Real;
  vGravarAux : Boolean;
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

procedure TfrmCadPedidoLoja_Itens.dbedtVlrDescEnter(Sender: TObject);
begin
  vVlrDesc_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadPedidoLoja_Itens.dbedtVlrDescExit(Sender: TObject);
var
  vAux : Real;
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

procedure TfrmCadPedidoLoja_Itens.dbedtVlrProdEnter(Sender: TObject);
begin
  vVlrProd_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
end;

procedure TfrmCadPedidoLoja_Itens.dbedtVlrProdExit(Sender: TObject);
var
  vAux, vAux2 : Real;
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

function TfrmCadPedidoLoja_Itens.prc_Senha_Desconto: Boolean;
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

function TfrmCadPedidoLoja_Itens.fnc_Busca_Preco_Orig: Real;
var
  vPrecoAux : Real;
begin
  Result    := StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  {vPrecoAux := 0;
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if StrToFloat(FormatFloat('0.00000',vPreco_Pos)) > 0 then
    vPrecoAux := StrToFloat(FormatFloat('0.00000',vPreco_Pos))
  else
  if fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0 then
    vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger);
  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    Result := StrToFloat(FormatFloat('0.000000',vPrecoAux))
  else
    Result := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;}
end;

procedure TfrmCadPedidoLoja_Itens.Panel1Enter(Sender: TObject);
begin
  vID_Produto_Ant := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
end;

function TfrmCadPedidoLoja_Itens.fnc_Verificar_Cod_Prod_Cli: Boolean;
begin
  Result := False;
  fDMCadPedido.qProduto_Cli.Close;
  fDMCadPedido.qProduto_Cli.ParamByName('COD_MATERIAL_FORN').AsString := Edit2.Text;
  fDMCadPedido.qProduto_Cli.ParamByName('ID_FORNECEDOR').AsInteger    := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  fDMCadPedido.qProduto_Cli.Open;
  if not(fDMCadPedido.qProduto_Cli.IsEmpty) and (fDMCadPedido.qProduto_CliID.AsInteger > 0) then
  begin
    fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.qProduto_CliID.AsInteger;
    RxDBLookupCombo4.KeyValue := fDMCadPedido.qProduto_CliID.AsInteger;
    RxDBLookupCombo2.KeyValue := fDMCadPedido.qProduto_CliID.AsInteger;
    RxDBLookupCombo4.SetFocus;
    Result := True;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.prc_Estoque(ID_Produto: Integer);
var
  vQtdAux: Real;
  vID_Cor : Integer;
begin
  vQtdAux := 0;
  vID_Cor := 0;
  if trim(RxDBLookupCombo3.Text) <> '' then
    vID_Cor := RxDBLookupCombo3.KeyValue;
  vQtdAux := fnc_Buscar_Estoque(ID_Produto,fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger,vID_Cor);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
end;

procedure TfrmCadPedidoLoja_Itens.prc_Sel_Unidade(Venda: Boolean);
begin
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <= 0 then
    ShowMessage('Não foi escolhido nenhum produto!')
  else
  begin
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    vUnidade_Pos    := fDMCadPedido.cdsPedido_ItensUNIDADE.AsString;
    frmSel_Unidade  := TfrmSel_Unidade.Create(Self);
    frmSel_Unidade.vID_Produto_Uni := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    frmSel_Unidade.vUnidade_Ori    := fDMCadPedido.cdsProdutoUNIDADE.AsString;
    frmSel_Unidade.ShowModal;
    if trim(vUnidade_Pos) <> '' then
    begin
      if Venda then
        fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString := vUnidade_Pos
      else
        fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := vUnidade_Pos;
    end;
  end;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit21KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //if (Key = Vk_F2) then
  //  prc_Sel_Unidade(True);
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit23Enter(Sender: TObject);
begin
  vUnidade_Ant := fDMCadPedido.cdsPedido_ItensUNIDADE.AsString;
end;

procedure TfrmCadPedidoLoja_Itens.DBEdit23Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensUNIDADE.AsString <> vUnidade_Ant) and (trim(fDMCadPedido.cdsPedido_ItensUNIDADE.AsString) <> '') then
  begin
    if (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensUNIDADE.AsString <> fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString) then
      fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat := StrToFloat(FormatFloat('0.0000',fnc_Retorna_Qtd_UConv(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,
                                                                   fDMCadPedido.cdsPedido_ItensUNIDADE.AsString)));
    if fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsInteger <= 0 then
      fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsInteger := 1;
  end;
end;

end.
